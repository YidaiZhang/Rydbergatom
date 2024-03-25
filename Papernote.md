# Extracting Quantum Many-Body Scarred Eigenstates with Matrix Product States
## Abstract
Quantum many-body scarred systems host nonthermal excited eigenstates immersed in a sea of thermal ones.
In cases where exact expressions for these special eigenstates are not known, it is computationally demanding to distinguish them from their exponentially many thermal neighbors. We propose a (MPS) algorithm, dubbed DMRG-S, to extract such states at system sizes far beyond the scope of exact diagonalization. Using this technique, we obtain scarred eigenstates in Rydberg-blockaded chains of up to 80 sites and perform a finite-size scaling study to address the lingering question of the stability for the Neel state revivals in the thermodynamic limit. Our method also provides a systematic way to obtain exact MPS representations for scarred eigenstates near the target energy without a priori knowledge. 

本征态和系统的能量本征值之间存在紧密的关系。在量子力学中，系统的能量由哈密顿算符所描述，而哈密顿算符的本征函数（即本征态）对应着系统的能量本征值。

具体来说，系统的能量本征值是通过作用于本征态的哈密顿算符得到的。当系统处于某个本征态时，对应的能量本征值即是系统可能具有的能量值。这意味着在本征态下，系统的能量是确定的，而在其他态下系统的能量是不确定的。

因此，本征态和系统的能量本征值之间的关系可以用来描述系统的能量状态。通过寻找系统的本征态以及对应的能量本征值，我们可以得到系统可能存在的能量级别，并且可以通过对本征态的叠加来描述系统的总体态。这种关系在量子力学中对于描述和理解系统的能量分布和量子行为非常重要。

Exact diagonalization 是一种用于求解量子力学系统哈密顿量的本征态和本征能量的方法。这种方法通常用于小规模的系统，其中所有可能的量子态都可以被精确地考虑。

在exact diagonalization 中，首先需要构建系统的哈密顿矩阵，这个矩阵的维度会随着系统的尺寸和自由度的增加而增加。然后，利用数值对角化的方法（如对称矩阵的对角化）来求解哈密顿矩阵的本征值和本征态。这个过程会得到系统的精确本征态和本征能量。

尽管exact diagonalization 是一种强大的方法，但它的计算复杂度随着系统的尺寸增加而快速增加，因此通常只适用于小型系统。对于大规模的系统，exact diagonalization 的计算成本会变得极高，因此通常需要采用其他近似方法，如密度矩阵重整化群（DMRG）等。

$[ P_i = \frac{1 - Z_i}{2} ] [ P_i = \frac{1}{2} \begin{bmatrix} 1 & 0 \ 0 & 1 \end{bmatrix} - \frac{1}{2} \begin{bmatrix} 1 & 0 \ 0 & -1 \end{bmatrix} ] [ P_i = \frac{1}{2} \begin{bmatrix} 1 & 0 \ 0 & 1 \end{bmatrix} + \frac{1}{2} \begin{bmatrix} -1 & 0 \ 0 & 1 \end{bmatrix} ] [ P_i = \begin{bmatrix} 0 & 0 \ 0 & 1 \end{bmatrix} ]$