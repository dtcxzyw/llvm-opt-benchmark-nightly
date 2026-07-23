inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  br i1 %.not45661, label %bb.rp, label %.preheader54690

bb.rp:                                            ; preds = %bb.ro
  %.val48811 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ekg = getelementptr inbounds nuw i8, ptr %.val48811, i64 %i.egn
  %.0.copyload.i51874 = load i32, ptr %i.ekg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51874) #7, !srcloc !19
  br label %.loopexit54691

.preheader54690:                                  ; preds = %bb.ro, %bb.rr
  %.4143875 = phi i32 [ %i.ekj, %bb.rr ], [ 0, %bb.ro ]
  %.val48810 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ekh = getelementptr inbounds nuw i8, ptr %.val48810, i64 %i.ejy
  %i.eki = getelementptr inbounds nuw i8, ptr %i.ekh, i64 40
  %.0.copyload.i51875 = load i32, ptr %i.eki, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51875) #7, !srcloc !19
  %i.ekj = add nuw i32 %.4143875, 1               ; 3 uses
  %i.ekk = shl i32 %i.ekj, 3
  %i.ekl = add i32 %.0.copyload.i51875, %i.ekk
  %i.ekm = zext i32 %i.ekl to i64
  %.val48809 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ekn = getelementptr inbounds nuw i8, ptr %.val48809, i64 %i.ekm
  %.0.copyload.i51876 = load i32, ptr %i.ekn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51876) #7, !srcloc !19
  %.val48808 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eko = getelementptr inbounds nuw i8, ptr %.val48808, i64 %i.egn
  %.0.copyload.i51877 = load i32, ptr %i.eko, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51877) #7, !srcloc !19
  %.val48807 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ekp = getelementptr inbounds nuw i8, ptr %.val48807, i64 %i.nc
  %i.ekq = getelementptr inbounds nuw i8, ptr %i.ekp, i64 184
  %.0.copyload.i51878 = load i32, ptr %i.ekq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51878) #7, !srcloc !19
  %.not45662 = icmp ult i32 %.0.copyload.i51877, %.0.copyload.i51878
  br i1 %.not45662, label %bb.rr, label %bb.rq

bb.rq:                                            ; preds = %.preheader54690
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.egi, i32 noundef %i.ege, i32 noundef 0, i32 noundef 4) #7
  %.val48806 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ekr = getelementptr inbounds nuw i8, ptr %.val48806, i64 %i.egn
  %.0.copyload.i51879 = load i32, ptr %i.ekr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51879) #7, !srcloc !19
  br label %bb.rr

bb.rr:                                            ; preds = %bb.rq, %.preheader54690
  %.2144272 = phi i32 [ %.0.copyload.i51879, %bb.rq ], [ %.0.copyload.i51877, %.preheader54690 ]
  %.val48805 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eks = getelementptr inbounds nuw i8, ptr %.val48805, i64 %i.egh
  %.0.copyload.i51880 = load i32, ptr %i.eks, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51880) #7, !srcloc !19
  %i.ekt = shl i32 %.2144272, 2
  %i.eku = add i32 %.0.copyload.i51880, %i.ekt
  %i.ekv = zext i32 %i.eku to i64
  %.val50138 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ekw = getelementptr inbounds nuw i8, ptr %.val50138, i64 %i.ekv
  store i32 %.0.copyload.i51876, ptr %i.ekw, align 1
  %.val48804 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ekx = getelementptr inbounds nuw i8, ptr %.val48804, i64 %i.egn
  %.0.copyload.i51881 = load i32, ptr %i.ekx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51881) #7, !srcloc !19
  %i.eky = add i32 %.0.copyload.i51881, 1         ; 2 uses
  %.val50137 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ekz = getelementptr inbounds nuw i8, ptr %.val50137, i64 %i.egn
  store i32 %i.eky, ptr %i.ekz, align 1
  %.not45663 = icmp eq i32 %i.ekj, %i.ekf
  br i1 %.not45663, label %.loopexit54691, label %.preheader54690

bb.rs:                                            ; preds = %.preheader54704
  %.not45686 = icmp eq i8 %.0.copyload.i51872, 106
  %or.cond46772 = select i1 %.not45659, i1 %.not45686, i1 false
  br i1 %or.cond46772, label %bb.rt, label %bb.xn

bb.rt:                                            ; preds = %bb.rs
  %.val48803 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ela = getelementptr inbounds nuw i8, ptr %.val48803, i64 %i.ejy
  %i.elb = getelementptr inbounds nuw i8, ptr %i.ela, i64 44
  %.0.copyload.i51882 = load i32, ptr %i.elb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51882) #7, !srcloc !19
  %i.elc = add i32 %.0.copyload.i51882, -1        ; 2 uses
  %i.eld = icmp ult i32 %i.elc, 2
  br i1 %i.eld, label %bb.xn, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %i.ele = lshr i32 %i.elc, 1
  %.val50983 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.elf = getelementptr inbounds nuw i8, ptr %.val50983, i64 %i.egn
  store i64 34359738368, ptr %i.elf, align 1
  %.val50136 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.elg = getelementptr inbounds nuw i8, ptr %.val50136, i64 %i.egh
  store i32 %i.ege, ptr %i.elg, align 1
  %.val50982 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.elh = getelementptr inbounds nuw i8, ptr %.val50982, i64 %i.ego
  store i64 34359738368, ptr %i.elh, align 1
  %.val50135 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eli = getelementptr inbounds nuw i8, ptr %.val50135, i64 %i.egp
  store i32 %i.egd, ptr %i.eli, align 1
  br label %bb.rv

bb.rv:                                            ; preds = %bb.rz, %bb.ru
  %.4243876 = phi i32 [ 0, %bb.ru ], [ %i.ems, %bb.rz ] ; 2 uses
  %.val48802 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.elj = getelementptr inbounds nuw i8, ptr %.val48802, i64 %i.ejy
  %i.elk = getelementptr inbounds nuw i8, ptr %i.elj, i64 40
  %.0.copyload.i51883 = load i32, ptr %i.elk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51883) #7, !srcloc !19
  %i.ell = shl i32 %.4243876, 4                   ; 2 uses
  %i.elm = or disjoint i32 %i.ell, 8
  %i.eln = add i32 %i.elm, %.0.copyload.i51883
  %i.elo = zext i32 %i.eln to i64
  %.val48801 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.elp = getelementptr inbounds nuw i8, ptr %.val48801, i64 %i.elo
  %.0.copyload.i51884 = load i32, ptr %i.elp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51884) #7, !srcloc !19
  %i.elq = add i32 %i.ell, 16
  %i.elr = add i32 %i.elq, %.0.copyload.i51883
  %i.els = zext i32 %i.elr to i64
  %.val48800 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.elt = getelementptr inbounds nuw i8, ptr %.val48800, i64 %i.els
  %.0.copyload.i51885 = load i32, ptr %i.elt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51885) #7, !srcloc !19
  %.val48799 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.elu = getelementptr inbounds nuw i8, ptr %.val48799, i64 %i.egn
  %.0.copyload.i51886 = load i32, ptr %i.elu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51886) #7, !srcloc !19
  %.val48798 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.elv = getelementptr inbounds nuw i8, ptr %.val48798, i64 %i.nc
  %i.elw = getelementptr inbounds nuw i8, ptr %i.elv, i64 184
  %.0.copyload.i51887 = load i32, ptr %i.elw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51887) #7, !srcloc !19
  %.not45687 = icmp ult i32 %.0.copyload.i51886, %.0.copyload.i51887
  br i1 %.not45687, label %bb.rx, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.egi, i32 noundef %i.ege, i32 noundef 0, i32 noundef 4) #7
  %.val48797 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.elx = getelementptr inbounds nuw i8, ptr %.val48797, i64 %i.egn
  %.0.copyload.i51888 = load i32, ptr %i.elx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51888) #7, !srcloc !19
  br label %bb.rx

bb.rx:                                            ; preds = %bb.rw, %bb.rv
  %.2244273 = phi i32 [ %.0.copyload.i51888, %bb.rw ], [ %.0.copyload.i51886, %bb.rv ]
  %.val48796 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ely = getelementptr inbounds nuw i8, ptr %.val48796, i64 %i.egh
  %.0.copyload.i51889 = load i32, ptr %i.ely, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51889) #7, !srcloc !19
  %i.elz = shl i32 %.2244273, 2
  %i.ema = add i32 %.0.copyload.i51889, %i.elz
  %i.emb = zext i32 %i.ema to i64
  %.val50134 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.emc = getelementptr inbounds nuw i8, ptr %.val50134, i64 %i.emb
  store i32 %.0.copyload.i51884, ptr %i.emc, align 1
  %.val48795 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.emd = getelementptr inbounds nuw i8, ptr %.val48795, i64 %i.egn
  %.0.copyload.i51890 = load i32, ptr %i.emd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51890) #7, !srcloc !19
  %i.eme = add i32 %.0.copyload.i51890, 1
  %.val50133 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.emf = getelementptr inbounds nuw i8, ptr %.val50133, i64 %i.egn
  store i32 %i.eme, ptr %i.emf, align 1
  %.val48794 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.emg = getelementptr inbounds nuw i8, ptr %.val48794, i64 %i.ego
  %.0.copyload.i51891 = load i32, ptr %i.emg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51891) #7, !srcloc !19
  %.val48793 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.emh = getelementptr inbounds nuw i8, ptr %.val48793, i64 %i.nc
  %i.emi = getelementptr inbounds nuw i8, ptr %i.emh, i64 472
  %.0.copyload.i51892 = load i32, ptr %i.emi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51892) #7, !srcloc !19
  %.not45688 = icmp ult i32 %.0.copyload.i51891, %.0.copyload.i51892
  br i1 %.not45688, label %bb.rz, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.egq, i32 noundef %i.egd, i32 noundef 0, i32 noundef 4) #7
  %.val48792 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.emj = getelementptr inbounds nuw i8, ptr %.val48792, i64 %i.ego
  %.0.copyload.i51893 = load i32, ptr %i.emj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51893) #7, !srcloc !19
  br label %bb.rz

bb.rz:                                            ; preds = %bb.ry, %bb.rx
  %.2344274 = phi i32 [ %.0.copyload.i51893, %bb.ry ], [ %.0.copyload.i51891, %bb.rx ]
  %.val48791 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.emk = getelementptr inbounds nuw i8, ptr %.val48791, i64 %i.egp
  %.0.copyload.i51894 = load i32, ptr %i.emk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51894) #7, !srcloc !19
  %i.eml = shl i32 %.2344274, 2
  %i.emm = add i32 %.0.copyload.i51894, %i.eml
  %i.emn = zext i32 %i.emm to i64
  %.val50132 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.emo = getelementptr inbounds nuw i8, ptr %.val50132, i64 %i.emn
  store i32 %.0.copyload.i51885, ptr %i.emo, align 1
  %.val48790 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.emp = getelementptr inbounds nuw i8, ptr %.val48790, i64 %i.ego
  %.0.copyload.i51895 = load i32, ptr %i.emp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51895) #7, !srcloc !19
  %i.emq = add i32 %.0.copyload.i51895, 1
  %.val50131 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.emr = getelementptr inbounds nuw i8, ptr %.val50131, i64 %i.ego
  store i32 %i.emq, ptr %i.emr, align 1
  %i.ems = add nuw nsw i32 %.4243876, 1           ; 2 uses
  %.not45689 = icmp eq i32 %i.ems, %i.ele
  br i1 %.not45689, label %bb.sa, label %bb.rv

bb.sa:                                            ; preds = %bb.rz
  %.val48789 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.emt = getelementptr inbounds nuw i8, ptr %.val48789, i64 %i.egr
  %.0.copyload.i51896 = load i32, ptr %i.emt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51896) #7, !srcloc !19
  %.val50130 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.emu = getelementptr inbounds nuw i8, ptr %.val50130, i64 %i.aoj
  store i32 %.0.copyload.i51896, ptr %i.emu, align 1
  %.val50588 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.emv = getelementptr inbounds nuw i8, ptr %.val50588, i64 %i.egh
  %.0.copyload.i51897 = load i64, ptr %i.emv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i51897) #7, !srcloc !20
  %.val50981 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.emw = getelementptr inbounds nuw i8, ptr %.val50981, i64 %i.nc
  %i.emx = getelementptr inbounds nuw i8, ptr %i.emw, i64 136
  store i64 %.0.copyload.i51897, ptr %i.emx, align 1
  %.val50980 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.emy = getelementptr inbounds nuw i8, ptr %.val50980, i64 %i.egs
  store i64 %.0.copyload.i51897, ptr %i.emy, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ASerializedLiteralGenerator0x3A0x3AserializeBuffer0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3ALiteral0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x260x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.efy, i32 noundef %i.egt, i32 noundef %i.efv, i32 noundef 1)
  %.val48788 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.emz = getelementptr inbounds nuw i8, ptr %.val48788, i64 %i.aoj
  %.0.copyload.i51898 = load i32, ptr %i.emz, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51898) #7, !srcloc !19
  %.val48787 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ena = getelementptr inbounds nuw i8, ptr %.val48787, i64 %i.egr
  %.0.copyload.i51899 = load i32, ptr %i.ena, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51899) #7, !srcloc !19
  %i.enb = sub i32 %.0.copyload.i51898, %.0.copyload.i51899 ; 9 uses
  %.val48786 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.enc = getelementptr inbounds nuw i8, ptr %.val48786, i64 %i.egu
  %.0.copyload.i51900 = load i32, ptr %i.enc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51900) #7, !srcloc !19
  %.not45690 = icmp eq i32 %.0.copyload.i51900, 0
  br i1 %.not45690, label %bb.sk, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %.val48785 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.end = getelementptr inbounds nuw i8, ptr %.val48785, i64 %i.egv
  %.0.copyload.i51901 = load i32, ptr %i.end, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51901) #7, !srcloc !19
  %.val50129 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ene = getelementptr inbounds nuw i8, ptr %.val50129, i64 %i.nc
  %i.enf = getelementptr inbounds nuw i8, ptr %i.ene, i64 1732
  store i32 %i.enb, ptr %i.enf, align 1
  %.val50128 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eng = getelementptr inbounds nuw i8, ptr %.val50128, i64 %i.egw
  store i32 %.0.copyload.i51899, ptr %i.eng, align 1
  %.val50587 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.enh = getelementptr inbounds nuw i8, ptr %.val50587, i64 %i.egw
  %.0.copyload.i51902 = load i64, ptr %i.enh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i51902) #7, !srcloc !20
  %.val50979 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eni = getelementptr inbounds nuw i8, ptr %.val50979, i64 %i.nc
  %i.enj = getelementptr inbounds nuw i8, ptr %i.eni, i64 128
  store i64 %.0.copyload.i51902, ptr %i.enj, align 1
  %i.enk = add i32 %.0.copyload.i51900, -1
  %i.enl = tail call i32 @w2c_hermes_llvh0x3A0x3Ahash_value0x28llvh0x3A0x3AStringRef0x29(ptr noundef nonnull %0, i32 noundef %i.egx) #7
  %.not45692 = icmp eq i32 %.0.copyload.i51899, -2
  %i.enm = icmp eq i32 %.0.copyload.i51899, %.0.copyload.i51898
  br label %bb.sc

bb.sc:                                            ; preds = %bb.sj, %bb.sb
  %.4343877 = phi i32 [ %i.enl, %bb.sb ], [ %i.eoe, %bb.sj ]
  %.1443745 = phi i32 [ 1, %bb.sb ], [ %i.eof, %bb.sj ] ; 2 uses
  %i.enn = and i32 %.4343877, %i.enk              ; 2 uses
  %i.eno = mul i32 %i.enn, 12
  %i.enp = add i32 %i.eno, %.0.copyload.i51901    ; 2 uses
  %i.enq = zext i32 %i.enp to i64                 ; 2 uses
  %.val50586 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.enr = getelementptr inbounds nuw i8, ptr %.val50586, i64 %i.enq
  %.0.copyload.i51903 = load i64, ptr %i.enr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i51903) #7, !srcloc !20
  %i.ens = trunc i64 %.0.copyload.i51903 to i32   ; 2 uses
  switch i32 %i.ens, label %bb.sd [
    i32 -2, label %bb.sg
    i32 -1, label %bb.sh
  ]

bb.sd:                                            ; preds = %bb.sc
  %i.ent = lshr i64 %.0.copyload.i51903, 32
  %i.enu = trunc nuw i64 %i.ent to i32
  %i.env = icmp eq i32 %i.enb, %i.enu
  br i1 %i.env, label %bb.se, label %bb.sj

bb.se:                                            ; preds = %bb.sd
  br i1 %i.enm, label %.loopexit54703, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.enw = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %.0.copyload.i51899, i32 noundef %i.ens, i32 noundef %i.enb) #7
  %.not45693 = icmp eq i32 %i.enw, 0
  br i1 %.not45693, label %.loopexit54703, label %bb.sj

bb.sg:                                            ; preds = %bb.sc
  br i1 %.not45692, label %.loopexit54703, label %bb.sj

bb.sh:                                            ; preds = %bb.sc
  %.not45691 = icmp eq i32 %.0.copyload.i51899, -1
  br i1 %.not45691, label %.loopexit54703, label %bb.sk

.loopexit54703:                                   ; preds = %bb.sg, %bb.sf, %bb.se, %bb.sh
  %.val48784 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.enx = getelementptr inbounds nuw i8, ptr %.val48784, i64 %i.egv
  %.0.copyload.i51904 = load i32, ptr %i.enx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51904) #7, !srcloc !19
  %.val48783 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eny = getelementptr inbounds nuw i8, ptr %.val48783, i64 %i.egu
  %.0.copyload.i51905 = load i32, ptr %i.eny, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51905) #7, !srcloc !19
  %i.enz = mul i32 %.0.copyload.i51905, 12
  %i.eoa = add i32 %i.enz, %.0.copyload.i51904
  %i.eob = icmp eq i32 %i.enp, %i.eoa
  br i1 %i.eob, label %bb.sk, label %bb.si

bb.si:                                            ; preds = %.loopexit54703
  %.val48782 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eoc = getelementptr inbounds nuw i8, ptr %.val48782, i64 %i.enq
  %i.eod = getelementptr inbounds nuw i8, ptr %i.eoc, i64 8
  %.0.copyload.i51906 = load i32, ptr %i.eod, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51906) #7, !srcloc !19
  br label %.loopexit54698

bb.sj:                                            ; preds = %bb.sd, %bb.sf, %bb.sg
  %i.eoe = add i32 %i.enn, %.1443745
  %i.eof = add i32 %.1443745, 1
  br label %bb.sc

bb.sk:                                            ; preds = %.loopexit54703, %bb.sh, %bb.sa
  %.val48781 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eog = getelementptr inbounds nuw i8, ptr %.val48781, i64 %i.egy
  %.0.copyload.i51907 = load i32, ptr %i.eog, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51907) #7, !srcloc !19
  %.val48780 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eoh = getelementptr inbounds nuw i8, ptr %.val48780, i64 %i.egz
  %.0.copyload.i51908 = load i32, ptr %i.eoh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51908) #7, !srcloc !19
  %i.eoi = add i32 %.0.copyload.i51908, %.0.copyload.i51907
  %.val48779 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eoj = getelementptr inbounds nuw i8, ptr %.val48779, i64 %i.eha
  %.0.copyload.i51909 = load i32, ptr %i.eoj, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51909) #7, !srcloc !19
  %.val48778 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eok = getelementptr inbounds nuw i8, ptr %.val48778, i64 %i.ehb
  %.0.copyload.i51910 = load i32, ptr %i.eok, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51910) #7, !srcloc !19
  %i.eol = sub i32 %.0.copyload.i51909, %.0.copyload.i51910
  %i.eom = ashr i32 %i.eol, 2
  %i.eon = mul i32 %i.eom, 341
  %i.eoo = add i32 %i.eon, -1
  %.not45694 = icmp eq i32 %.0.copyload.i51910, %.0.copyload.i51909
  %i.eop = select i1 %.not45694, i32 0, i32 %i.eoo
  %i.eoq = icmp eq i32 %i.eoi, %i.eop
  br i1 %i.eoq, label %bb.sl, label %bb.sm

bb.sl:                                            ; preds = %bb.sk
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Adeque0x3Cstd0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x3E0x3E0x3A0x3A_0x5Fadd_back_capacity0x280x29(ptr noundef nonnull %0, i32 noundef %i.egc) #7
  %.val48777 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eor = getelementptr inbounds nuw i8, ptr %.val48777, i64 %i.eha
  %.0.copyload.i51911 = load i32, ptr %i.eor, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51911) #7, !srcloc !19
  %.val48776 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eos = getelementptr inbounds nuw i8, ptr %.val48776, i64 %i.ehb
  %.0.copyload.i51912 = load i32, ptr %i.eos, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51912) #7, !srcloc !19
  br label %bb.sm

bb.sm:                                            ; preds = %bb.sl, %bb.sk
  %.4443878 = phi i32 [ %.0.copyload.i51912, %bb.sl ], [ %.0.copyload.i51910, %bb.sk ] ; 2 uses
  %.1543746 = phi i32 [ %.0.copyload.i51911, %bb.sl ], [ %.0.copyload.i51909, %bb.sk ]
  %i.eot = icmp eq i32 %.4443878, %.1543746
  br i1 %i.eot, label %bb.so, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %.val48775 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eou = getelementptr inbounds nuw i8, ptr %.val48775, i64 %i.egy
  %.0.copyload.i51913 = load i32, ptr %i.eou, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51913) #7, !srcloc !19
  %.val48774 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eov = getelementptr inbounds nuw i8, ptr %.val48774, i64 %i.egz
  %.0.copyload.i51914 = load i32, ptr %i.eov, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51914) #7, !srcloc !19
  %i.eow = add i32 %.0.copyload.i51914, %.0.copyload.i51913 ; 2 uses
  %i.eox = udiv i32 %i.eow, 341                   ; 2 uses
  %i.eoy = shl nuw nsw i32 %i.eox, 2
  %i.eoz = add i32 %i.eoy, %.4443878
  %i.epa = zext i32 %i.eoz to i64
  %.val48773 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.epb = getelementptr inbounds nuw i8, ptr %.val48773, i64 %i.epa
  %.0.copyload.i51915 = load i32, ptr %i.epb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51915) #7, !srcloc !19
  %.neg45695 = mul i32 %i.eox, -341
  %i.epc = add i32 %.neg45695, %i.eow
  %i.epd = mul i32 %i.epc, 12
  %i.epe = add i32 %i.epd, %.0.copyload.i51915
  br label %bb.so

bb.so:                                            ; preds = %bb.sm, %bb.sn
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3Adiv_rem0x3A0x3Acompute0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29:bb.a
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.0 = phi i32 [ %i.cd, %bb.p ], [ 0, %bb.o ]
  %i.ce = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.bx, i32 noundef %.0, i32 noundef %i.bw) #7 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.not1498 = icmp eq i32 %.01436, 0
  br i1 %.not1498, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcNegate0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.bo, i32 noundef %i.o) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.val1552 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val1552, i64 %i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 %i.o, ptr %i.cg, align 1
  %.val1551 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1551, i64 %i.i
  store i32 %i.bo, ptr %i.ch, align 1
  %.val1546 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val1546, i64 %i.e
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %.0.copyload.i1635 = load i32, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1635) #7, !srcloc !19
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.01441 = phi i32 [ %.0.copyload.i1635, %bb.t ], [ %i.h, %bb.m ] ; 3 uses
  %i.ck = select i1 %.not, i32 %i.bl, i32 %1      ; 11 uses
  %.val1545 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val1545, i64 %.pre-phi1749
  %.0.copyload.i1636 = load i32, ptr %i.cl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1636) #7, !srcloc !19
  %.not1499 = icmp ugt i32 %.01441, %.0.copyload.i1636
  br i1 %.not1499, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1544 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val1544, i64 %i.e
  %.0.copyload.i1637 = load i32, ptr %i.cm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1637) #7, !srcloc !19
  %i.cn = shl i32 %.01441, 3                      ; 2 uses
  %i.co = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.ck, i32 noundef %.0.copyload.i1637, i32 noundef %i.cn) #7
  %.val1543 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val1543, i64 %.pre-phi1749
  %.0.copyload.i1638 = load i32, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1638) #7, !srcloc !19
  %i.cq = sub i32 %.0.copyload.i1638, %.01441
  %i.cr = shl i32 %i.cq, 3
  %i.cs = add i32 %i.co, %i.cn
  %.val1542 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1542, i64 %i.e
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %.0.copyload.i1639 = load i32, ptr %i.cu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1639) #7, !srcloc !19
  %.not1500 = icmp eq i32 %.0.copyload.i1639, 0
  br i1 %.not1500, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val1541 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val1541, i64 %i.e
  %.0.copyload.i1640 = load i32, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1640) #7, !srcloc !19
  %i.cw = shl i32 %.0.copyload.i1639, 3
  %i.cx = add i32 %i.cw, -8
  %i.cy = add i32 %i.cx, %.0.copyload.i1640
  %i.cz = zext i32 %i.cy to i64
  %.val1590 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %.val1590, i64 %i.cz
  %.0.copyload.i1641 = load i64, ptr %i.da, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1641) #7, !srcloc !20
  %i.db = ashr i64 %.0.copyload.i1641, 63
  %i.dc = trunc nsw i64 %i.db to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.1 = phi i32 [ %i.dc, %bb.w ], [ 0, %bb.v ]
  %i.dd = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.cs, i32 noundef %.1, i32 noundef %i.cr) #7 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.not1501 = icmp eq i32 %.01437, 0              ; 2 uses
  br i1 %.not1501, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val1540 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val1540, i64 %.pre-phi1749
  %.0.copyload.i1642 = load i32, ptr %i.de, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1642) #7, !srcloc !19
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcNegate0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.ck, i32 noundef %.0.copyload.i1642) #7
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.val1539 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %.val1539, i64 %i.i
  %.0.copyload.i1643 = load i32, ptr %i.df, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1643) #7, !srcloc !19
  %i.dg = select i1 %.not, i32 %3, i32 %i.bl      ; 10 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %.01454 = phi i32 [ %i.o, %bb.aa ], [ %i.dh, %bb.ac ]
  %i.dh = add i32 %.01454, -1                     ; 4 uses
  %i.di = shl i32 %i.dh, 3
  %i.dj = add i32 %i.di, %.0.copyload.i1643
  %i.dk = zext i32 %i.dj to i64
  %.val1589 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %.val1589, i64 %i.dk
  %.0.copyload.i1644 = load i64, ptr %i.dl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1644) #7, !srcloc !20
  %.not1502 = icmp eq i64 %.0.copyload.i1644, 0
  br i1 %.not1502, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.not1503 = icmp eq i32 %i.dh, 0
  br i1 %.not1503, label %.loopexit1693, label %bb.ab

bb.ad:                                            ; preds = %bb.ab
  %i.dm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i1644, i1 true)
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = shl i32 %i.dh, 6
  %i.dp = or disjoint i32 %i.do, %i.dn
  %i.dq = xor i32 %i.dp, 63
  %i.dr = add i32 %i.dq, 1                        ; 2 uses
  %.not1504 = icmp eq i32 %i.dr, 0
  br i1 %.not1504, label %.loopexit1693, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = shl i32 %i.o, 6
  %i.dt = sub i32 %i.ds, %i.dr                    ; 4 uses
  %i.du = and i32 %i.dt, 63                       ; 3 uses
  %.not1505 = icmp eq i32 %i.o, 0                 ; 4 uses
  br i1 %.not1505, label %.loopexit1700, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = icmp ugt i32 %i.o, 3
  br i1 %i.dv, label %bb.ag, label %.loopexit1701

bb.ag:                                            ; preds = %bb.af
  %i.dw = and i32 %i.o, -4                        ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %i.dx = trunc nuw i64 %indvars.iv to i32
  %i.dy = shl i32 %i.dx, 3                        ; 5 uses
  %i.dz = add i32 %i.dy, %.11446
  %i.ea = add i32 %i.dy, %.0.copyload.i1643
  %i.eb = zext i32 %i.ea to i64
  %.val1588 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %.val1588, i64 %i.eb
  %.0.copyload.i1645 = load i64, ptr %i.ec, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1645) #7, !srcloc !20
  %i.ed = zext i32 %i.dz to i64
  %.val1622 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %.val1622, i64 %i.ed
  store i64 %.0.copyload.i1645, ptr %i.ee, align 1
  %i.ef = or disjoint i32 %i.dy, 8                ; 2 uses
  %i.eg = add i32 %i.ef, %.11446
  %i.eh = add i32 %i.ef, %.0.copyload.i1643
  %i.ei = zext i32 %i.eh to i64
  %.val1587 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %.val1587, i64 %i.ei
  %.0.copyload.i1646 = load i64, ptr %i.ej, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1646) #7, !srcloc !20
  %i.ek = zext i32 %i.eg to i64
  %.val1621 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %.val1621, i64 %i.ek
  store i64 %.0.copyload.i1646, ptr %i.el, align 1
  %i.em = or disjoint i32 %i.dy, 16               ; 2 uses
  %i.en = add i32 %i.em, %.11446
  %i.eo = add i32 %i.em, %.0.copyload.i1643
  %i.ep = zext i32 %i.eo to i64
  %.val1586 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %.val1586, i64 %i.ep
  %.0.copyload.i1647 = load i64, ptr %i.eq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1647) #7, !srcloc !20
  %i.er = zext i32 %i.en to i64
  %.val1620 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.es = getelementptr inbounds nuw i8, ptr %.val1620, i64 %i.er
  store i64 %.0.copyload.i1647, ptr %i.es, align 1
  %i.et = or disjoint i32 %i.dy, 24               ; 2 uses
  %i.eu = add i32 %i.et, %.11446
  %i.ev = add i32 %i.et, %.0.copyload.i1643
  %i.ew = zext i32 %i.ev to i64
  %.val1585 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val1585, i64 %i.ew
  %.0.copyload.i1648 = load i64, ptr %i.ex, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1648) #7, !srcloc !20
  %i.ey = zext i32 %i.eu to i64
  %.val1619 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %.val1619, i64 %i.ey
  store i64 %.0.copyload.i1648, ptr %i.ez, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars1727 = trunc i64 %indvars.iv.next to i32
  %.not1506 = icmp eq i32 %i.dw, %indvars1727
  br i1 %.not1506, label %.loopexit1701, label %bb.ah

.loopexit1701:                                    ; preds = %bb.ah, %bb.af
  %.21456 = phi i32 [ 0, %bb.af ], [ %i.dw, %bb.ah ]
  %i.fa = and i32 %i.o, 3                         ; 2 uses
  %.not1507 = icmp eq i32 %i.fa, 0
  br i1 %.not1507, label %.loopexit1700, label %.preheader1699

.preheader1699:                                   ; preds = %.loopexit1701, %.preheader1699
  %.11442.a = phi i32 [ %7, %.preheader1699 ], [ %.21456, %.loopexit1701 ] ; 2 uses
  %.11442 = phi i32 [ %i.fi, %.preheader1699 ], [ 0, %.loopexit1701 ]
  %i.fb = shl i32 %.11442.a, 3                    ; 2 uses
  %i.fc = add i32 %i.fb, %.11446
  %i.fd = add i32 %i.fb, %.0.copyload.i1643
  %i.fe = zext i32 %i.fd to i64
  %.val1584 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ff = getelementptr inbounds nuw i8, ptr %.val1584, i64 %i.fe
  %.0.copyload.i1649 = load i64, ptr %i.ff, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1649) #7, !srcloc !20
  %i.fg = zext i32 %i.fc to i64
  %.val1618 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %.val1618, i64 %i.fg
  store i64 %.0.copyload.i1649, ptr %i.fh, align 1
  %7 = add nsw i32 %.11442.a, 1
  %i.fi = add nuw nsw i32 %.11442, 1              ; 2 uses
  %.not1508 = icmp eq i32 %i.fi, %i.fa
  br i1 %.not1508, label %.loopexit1700, label %.preheader1699

.loopexit1700:                                    ; preds = %.preheader1699, %.loopexit1701, %bb.ae
  %i.fj = zext nneg i32 %i.du to i64              ; 5 uses
  %i.fk = lshr i32 %i.dt, 6                       ; 3 uses
  %.not1509 = icmp eq i32 %i.dt, 0
  br i1 %.not1509, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %.loopexit1700
  %i.fl = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.fk) ; 11 uses
  %.not1510 = icmp eq i32 %i.du, 0
  br i1 %.not1510, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not1511 = icmp ugt i32 %i.o, %i.fk
  br i1 %.not1511, label %bb.ak, label %.loopexit1698

bb.ak:                                            ; preds = %bb.aj
  %i.fm = shl i32 %i.n, 3
  %i.fn = add i32 %.11446, %i.fm                  ; 2 uses
  %i.fo = sub i32 %i.n, %i.fl                     ; 2 uses
  %i.fp = shl i32 %i.fo, 3
  %i.fq = add i32 %i.fp, %.11446
  %i.fr = zext i32 %i.fq to i64
  %.val1583 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fs = getelementptr inbounds nuw i8, ptr %.val1583, i64 %i.fr
  %.0.copyload.i1650 = load i64, ptr %i.fs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1650) #7, !srcloc !20
  %i.ft = shl i64 %.0.copyload.i1650, %i.fj       ; 3 uses
  %i.fu = zext i32 %i.fn to i64                   ; 2 uses
  %.val1617 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fv = getelementptr inbounds nuw i8, ptr %.val1617, i64 %i.fu
  store i64 %i.ft, ptr %i.fv, align 1
  %.not1512 = icmp ult i32 %i.fl, %i.n
  br i1 %.not1512, label %bb.al, label %.loopexit1698

bb.al:                                            ; preds = %bb.ak
  %i.fw = sub nuw nsw i32 64, %i.du
  %i.fx = zext nneg i32 %i.fw to i64              ; 3 uses
  %i.fy = add i32 %i.n, -1                        ; 4 uses
  %i.fz = xor i32 %i.fl, -1                       ; 3 uses
  %i.ga = and i32 %i.fo, 1
  %.not1513 = icmp eq i32 %i.ga, 0
  br i1 %.not1513, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gb = add i32 %i.fz, %i.n
  %i.gc = shl i32 %i.gb, 3
  %i.gd = add i32 %i.gc, %.11446
  %i.ge = zext i32 %i.gd to i64
  %.val1582 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %.val1582, i64 %i.ge
  %.0.copyload.i1651 = load i64, ptr %i.gf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1651) #7, !srcloc !20
  %i.gg = lshr i64 %.0.copyload.i1651, %i.fx
  %i.gh = or i64 %i.gg, %i.ft
  %.val1616 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gi = getelementptr inbounds nuw i8, ptr %.val1616, i64 %i.fu
  store i64 %i.gh, ptr %i.gi, align 1
  %i.gj = shl i32 %i.fy, 3
  %i.gk = add i32 %.11446, %i.gj                  ; 2 uses
  %i.gl = sub i32 %i.fy, %i.fl
  %i.gm = shl i32 %i.gl, 3
  %i.gn = add i32 %i.gm, %.11446
  %i.go = zext i32 %i.gn to i64
  %.val1581 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gp = getelementptr inbounds nuw i8, ptr %.val1581, i64 %i.go
  %.0.copyload.i1652 = load i64, ptr %i.gp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1652) #7, !srcloc !20
  %i.gq = shl i64 %.0.copyload.i1652, %i.fj       ; 2 uses
  %i.gr = zext i32 %i.gk to i64
  %.val1615 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gs = getelementptr inbounds nuw i8, ptr %.val1615, i64 %i.gr
  store i64 %i.gq, ptr %i.gs, align 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.41458 = phi i32 [ %i.fy, %bb.am ], [ %i.n, %bb.al ]
  %.01448 = phi i32 [ %i.gk, %bb.am ], [ %i.fn, %bb.al ]
  %.01430 = phi i64 [ %i.gq, %bb.am ], [ %i.ft, %bb.al ]
  %i.gt = icmp eq i32 %i.fl, %i.fy
  br i1 %i.gt, label %.loopexit1698, label %.preheader1697

.preheader1697:                                   ; preds = %bb.an, %.preheader1697
  %.51459 = phi i32 [ %i.hw, %.preheader1697 ], [ %.41458, %bb.an ] ; 3 uses
  %.11449 = phi i32 [ %i.hy, %.preheader1697 ], [ %.01448, %bb.an ]
  %.11431 = phi i64 [ %i.ie, %.preheader1697 ], [ %.01430, %bb.an ]
  %i.gu = add i32 %.51459, %i.fz
  %i.gv = shl i32 %i.gu, 3
  %i.gw = add i32 %i.gv, %.11446
  %i.gx = zext i32 %i.gw to i64
  %.val1580 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gy = getelementptr inbounds nuw i8, ptr %.val1580, i64 %i.gx
  %.0.copyload.i1653 = load i64, ptr %i.gy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1653) #7, !srcloc !20
  %i.gz = lshr i64 %.0.copyload.i1653, %i.fx
  %i.ha = or i64 %i.gz, %.11431
  %i.hb = zext i32 %.11449 to i64
  %.val1614 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hc = getelementptr inbounds nuw i8, ptr %.val1614, i64 %i.hb
  store i64 %i.ha, ptr %i.hc, align 1
  %i.hd = add i32 %.51459, -1                     ; 3 uses
  %i.he = shl i32 %i.hd, 3
  %i.hf = add i32 %i.he, %.11446
  %i.hg = sub i32 %i.hd, %i.fl
  %i.hh = shl i32 %i.hg, 3
  %i.hi = add i32 %i.hh, %.11446
  %i.hj = zext i32 %i.hi to i64
  %.val1579 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hk = getelementptr inbounds nuw i8, ptr %.val1579, i64 %i.hj
  %.0.copyload.i1654 = load i64, ptr %i.hk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1654) #7, !srcloc !20
  %i.hl = shl i64 %.0.copyload.i1654, %i.fj       ; 2 uses
  %i.hm = zext i32 %i.hf to i64                   ; 2 uses
  %.val1613 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hn = getelementptr inbounds nuw i8, ptr %.val1613, i64 %i.hm
  store i64 %i.hl, ptr %i.hn, align 1
  %i.ho = add i32 %i.hd, %i.fz
  %i.hp = shl i32 %i.ho, 3
  %i.hq = add i32 %i.hp, %.11446
  %i.hr = zext i32 %i.hq to i64
  %.val1578 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hs = getelementptr inbounds nuw i8, ptr %.val1578, i64 %i.hr
  %.0.copyload.i1655 = load i64, ptr %i.hs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1655) #7, !srcloc !20
  %i.ht = lshr i64 %.0.copyload.i1655, %i.fx
  %i.hu = or i64 %i.ht, %i.hl
  %.val1612 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %.val1612, i64 %i.hm
  store i64 %i.hu, ptr %i.hv, align 1
  %i.hw = add i32 %.51459, -2                     ; 4 uses
  %i.hx = shl i32 %i.hw, 3
  %i.hy = add i32 %i.hx, %.11446                  ; 2 uses
  %i.hz = sub i32 %i.hw, %i.fl
  %i.ia = shl i32 %i.hz, 3
  %i.ib = add i32 %i.ia, %.11446
  %i.ic = zext i32 %i.ib to i64
  %.val1577 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %.val1577, i64 %i.ic
  %.0.copyload.i1656 = load i64, ptr %i.id, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1656) #7, !srcloc !20
  %i.ie = shl i64 %.0.copyload.i1656, %i.fj       ; 2 uses
  %i.if = zext i32 %i.hy to i64
  %.val1611 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ig = getelementptr inbounds nuw i8, ptr %.val1611, i64 %i.if
  store i64 %i.ie, ptr %i.ig, align 1
  %i.ih = icmp ugt i32 %i.hw, %i.fl
  br i1 %i.ih, label %.preheader1697, label %.loopexit1698

bb.ao:                                            ; preds = %bb.ai
  %i.ii = shl nuw nsw i32 %i.fl, 3
  %i.ij = add i32 %i.ii, %.11446
  %i.ik = sub i32 %i.o, %i.fl
  %i.il = shl i32 %i.ik, 3
  %i.im = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.ij, i32 noundef %.11446, i32 noundef %i.il) #7 ; 0 uses
  br label %.loopexit1698

.loopexit1698:                                    ; preds = %.preheader1697, %bb.an, %bb.ak, %bb.aj, %bb.ao
  %i.in = shl nuw nsw i32 %i.fl, 3
  %i.io = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.11446, i32 noundef 0, i32 noundef %i.in) #7 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit1698, %.loopexit1700
  br i1 %.not1505, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ip = icmp ugt i32 %i.o, 3
  br i1 %i.ip, label %bb.ar, label %.loopexit1696

bb.ar:                                            ; preds = %bb.aq
  %i.iq = and i32 %i.o, -4                        ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv1732 = phi i64 [ %indvars.iv.next1733, %bb.as ], [ 0, %bb.ar ] ; 2 uses
  %i.ir = trunc nuw i64 %indvars.iv1732 to i32
  %i.is = shl i32 %i.ir, 3                        ; 5 uses
  %i.it = add i32 %i.is, %i.dg
  %i.iu = add i32 %i.is, %i.ck
  %i.iv = zext i32 %i.iu to i64
  %.val1576 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %.val1576, i64 %i.iv
  %.0.copyload.i1657 = load i64, ptr %i.iw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1657) #7, !srcloc !20
  %i.ix = zext i32 %i.it to i64
  %.val1610 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iy = getelementptr inbounds nuw i8, ptr %.val1610, i64 %i.ix
  store i64 %.0.copyload.i1657, ptr %i.iy, align 1
  %i.iz = or disjoint i32 %i.is, 8                ; 2 uses
  %i.ja = add i32 %i.iz, %i.dg
  %i.jb = add i32 %i.iz, %i.ck
  %i.jc = zext i32 %i.jb to i64
  %.val1575 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jd = getelementptr inbounds nuw i8, ptr %.val1575, i64 %i.jc
  %.0.copyload.i1658 = load i64, ptr %i.jd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1658) #7, !srcloc !20
  %i.je = zext i32 %i.ja to i64
  %.val1609 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jf = getelementptr inbounds nuw i8, ptr %.val1609, i64 %i.je
  store i64 %.0.copyload.i1658, ptr %i.jf, align 1
  %i.jg = or disjoint i32 %i.is, 16               ; 2 uses
  %i.jh = add i32 %i.jg, %i.dg
  %i.ji = add i32 %i.jg, %i.ck
  %i.jj = zext i32 %i.ji to i64
  %.val1574 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jk = getelementptr inbounds nuw i8, ptr %.val1574, i64 %i.jj
  %.0.copyload.i1659 = load i64, ptr %i.jk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1659) #7, !srcloc !20
  %i.jl = zext i32 %i.jh to i64
  %.val1608 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jm = getelementptr inbounds nuw i8, ptr %.val1608, i64 %i.jl
  store i64 %.0.copyload.i1659, ptr %i.jm, align 1
  %i.jn = or disjoint i32 %i.is, 24               ; 2 uses
  %i.jo = add i32 %i.jn, %i.dg
  %i.jp = add i32 %i.jn, %i.ck
  %i.jq = zext i32 %i.jp to i64
  %.val1573 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jr = getelementptr inbounds nuw i8, ptr %.val1573, i64 %i.jq
  %.0.copyload.i1660 = load i64, ptr %i.jr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1660) #7, !srcloc !20
  %i.js = zext i32 %i.jo to i64
  %.val1607 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jt = getelementptr inbounds nuw i8, ptr %.val1607, i64 %i.js
  store i64 %.0.copyload.i1660, ptr %i.jt, align 1
  %indvars.iv.next1733 = add nuw nsw i64 %indvars.iv1732, 4 ; 2 uses
  %indvars1735 = trunc i64 %indvars.iv.next1733 to i32
  %.not1514 = icmp eq i32 %i.iq, %indvars1735
  br i1 %.not1514, label %.loopexit1696, label %bb.as

.loopexit1696:                                    ; preds = %bb.as, %bb.aq
  %.7 = phi i32 [ 0, %bb.aq ], [ %i.iq, %bb.as ]
  %i.ju = and i32 %i.o, 3                         ; 2 uses
  %.not1515 = icmp eq i32 %i.ju, 0
  br i1 %.not1515, label %.loopexit1695, label %.preheader1694

.preheader1694:                                   ; preds = %.loopexit1696, %.preheader1694
  %.21450.a = phi i32 [ %8, %.preheader1694 ], [ %.7, %.loopexit1696 ] ; 2 uses
  %.21450 = phi i32 [ %i.kc, %.preheader1694 ], [ 0, %.loopexit1696 ]
  %i.jv = shl i32 %.21450.a, 3                    ; 2 uses
  %i.jw = add i32 %i.jv, %i.dg
  %i.jx = add i32 %i.jv, %i.ck
  %i.jy = zext i32 %i.jx to i64
  %.val1572 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jz = getelementptr inbounds nuw i8, ptr %.val1572, i64 %i.jy
  %.0.copyload.i1661 = load i64, ptr %i.jz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1661) #7, !srcloc !20
  %i.ka = zext i32 %i.jw to i64
  %.val1606 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kb = getelementptr inbounds nuw i8, ptr %.val1606, i64 %i.ka
  store i64 %.0.copyload.i1661, ptr %i.kb, align 1
  %8 = add nsw i32 %.21450.a, 1
  %i.kc = add nuw nsw i32 %.21450, 1              ; 2 uses
  %.not1516 = icmp eq i32 %i.kc, %i.ju
  br i1 %.not1516, label %.loopexit1695, label %.preheader1694

.loopexit1695:                                    ; preds = %.preheader1694, %.loopexit1696
  %i.kd = zext i32 %i.ck to i64
  %.val1605 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ke = getelementptr inbounds nuw i8, ptr %.val1605, i64 %i.kd
  store i64 0, ptr %i.ke, align 1
  %i.kf = icmp eq i64 %i.m, 0
  br i1 %i.kf, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.loopexit1695
  %i.kg = add i32 %i.ck, 8
  %i.kh = add i32 %i.bk, -8
  %i.ki = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.kg, i32 noundef 0, i32 noundef %i.kh) #7 ; 0 uses
  br label %bb.av

bb.au:                                            ; preds = %bb.ap
  %i.kj = zext i32 %i.ck to i64
  %.val1604 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kk = getelementptr inbounds nuw i8, ptr %.val1604, i64 %i.kj
  store i64 0, ptr %i.kk, align 1
  br label %bb.av

bb.av:                                            ; preds = %.loopexit1695, %bb.au, %bb.at
  %i.kl = shl nuw i64 1, %i.fj
  %i.km = and i32 %i.n, -2
  %i.kn = and i32 %i.n, 1
  %i.ko = zext i32 %.11446 to i64                 ; 3 uses
  %.not1523 = icmp eq i32 %i.kn, 0
  %i.kp = zext i32 %i.o to i64
  %i.kq = shl i32 %i.n, 3
  %i.kr = or i32 %i.kq, 8
  %i.ks = add i32 %i.kr, %.11446
  %i.kt = zext i32 %i.ks to i64                   ; 3 uses
  %.not15171790 = icmp eq i32 %i.o, 0
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bg, %bb.av
  %.11440 = phi i32 [ %i.fk, %bb.av ], [ %i.ne, %bb.bg ] ; 2 uses
  %.01438 = phi i32 [ %i.dt, %bb.av ], [ %i.na, %bb.bg ] ; 2 uses
  %.01429 = phi i64 [ %i.kl, %bb.av ], [ %i.nd, %bb.bg ] ; 3 uses
  br i1 %.not15171790, label %.loopexit1692, label %.lr.ph

bb.ax:                                            ; preds = %.lr.ph
  %.not1517 = icmp eq i64 %indvars.iv.next1741, 0
  br i1 %.not1517, label %.loopexit1692, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aw, %bb.ax
  %indvars.iv17401791 = phi i64 [ %indvars.iv.next1741, %bb.ax ], [ %i.kp, %bb.aw ]
  %indvars.iv.next1741 = add nsw i64 %indvars.iv17401791, -1 ; 3 uses
  %indvars = trunc nuw i64 %indvars.iv.next1741 to i32
  %i.ku = shl i32 %indvars, 3                     ; 2 uses
  %i.kv = add i32 %i.ku, %i.dg
  %i.kw = zext i32 %i.kv to i64
  %.val1571 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kx = getelementptr inbounds nuw i8, ptr %.val1571, i64 %i.kw
  %.0.copyload.i1662 = load i64, ptr %i.kx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1662) #7, !srcloc !20
  %i.ky = add i32 %i.ku, %.11446
  %i.kz = zext i32 %i.ky to i64
  %.val1570 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.la = getelementptr inbounds nuw i8, ptr %.val1570, i64 %i.kz
  %.0.copyload.i1663 = load i64, ptr %i.la, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1663) #7, !srcloc !20
  %i.lb = icmp eq i64 %.0.copyload.i1662, %.0.copyload.i1663
  br i1 %i.lb, label %bb.ax, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph
  %.not1518 = icmp ugt i64 %.0.copyload.i1662, %.0.copyload.i1663
  br i1 %.not1518, label %.loopexit1692, label %bb.bc

.loopexit1692:                                    ; preds = %bb.ax, %bb.aw, %bb.ay
  br i1 %.not1505, label %.loopexit1691, label %.preheader1690

.preheader1690:                                   ; preds = %.loopexit1692, %bb.bb
  %indvars.iv1743 = phi i64 [ %indvars.iv.next1744, %bb.bb ], [ 0, %.loopexit1692 ] ; 3 uses
  %.01428 = phi i1 [ %i.lq, %bb.bb ], [ true, %.loopexit1692 ]
  %i.lc = trunc nuw i64 %indvars.iv1743 to i32
  %i.ld = shl i32 %i.lc, 3                        ; 2 uses
  %i.le = add i32 %i.ld, %.11446
  %i.lf = zext i32 %i.le to i64
  %.val1569 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lg = getelementptr inbounds nuw i8, ptr %.val1569, i64 %i.lf
  %.0.copyload.i1664 = load i64, ptr %i.lg, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1664) #7, !srcloc !20
  %i.lh = add i32 %i.ld, %i.dg
  %i.li = zext i32 %i.lh to i64                   ; 2 uses
  %.val1568 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lj = getelementptr inbounds nuw i8, ptr %.val1568, i64 %i.li
  %.0.copyload.i1665 = load i64, ptr %i.lj, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1665) #7, !srcloc !20
  br i1 %.01428, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.preheader1690
  %i.lk = xor i64 %.0.copyload.i1664, -1
  %i.ll = add i64 %.0.copyload.i1665, %i.lk       ; 2 uses
  %i.lm = icmp ule i64 %.0.copyload.i1665, %i.ll
  br label %bb.bb

bb.ba:                                            ; preds = %.preheader1690
  %i.ln = icmp ugt i64 %.0.copyload.i1664, %.0.copyload.i1665
  %i.lo = sub i64 %.0.copyload.i1665, %.0.copyload.i1664
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.31451.in = phi i1 [ %i.lm, %bb.az ], [ %i.ln, %bb.ba ]
  %.21432 = phi i64 [ %i.ll, %bb.az ], [ %i.lo, %bb.ba ]
  %.val1603 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lp = getelementptr inbounds nuw i8, ptr %.val1603, i64 %i.li
  store i64 %.21432, ptr %i.lp, align 1
  %indvars.iv.next1744 = add nuw nsw i64 %indvars.iv1743, 1
  %.not1520 = icmp eq i64 %indvars.iv1743, %i.m
  %i.lq = xor i1 %.31451.in, true
  br i1 %.not1520, label %.loopexit1691, label %.preheader1690

.loopexit1691:                                    ; preds = %bb.bb, %.loopexit1692
  %i.lr = shl i32 %.11440, 3
  %i.ls = add i32 %i.lr, %i.ck
  %i.lt = zext i32 %i.ls to i64                   ; 2 uses
  %.val1567 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lu = getelementptr inbounds nuw i8, ptr %.val1567, i64 %i.lt
  %.0.copyload.i1666 = load i64, ptr %i.lu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1666) #7, !srcloc !20
  %i.lv = or i64 %.0.copyload.i1666, %.01429
  %.val1602 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lw = getelementptr inbounds nuw i8, ptr %.val1602, i64 %i.lt
  store i64 %i.lv, ptr %i.lw, align 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ay, %.loopexit1691
  %.not1521 = icmp eq i32 %.01438, 0
  br i1 %.not1521, label %.loopexit1693, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %.not1505, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.val1566 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lx = getelementptr inbounds nuw i8, ptr %.val1566, i64 %i.ko
  %.0.copyload.i1667 = load i64, ptr %i.lx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1667) #7, !srcloc !20
  %i.ly = lshr i64 %.0.copyload.i1667, 1          ; 3 uses
  %.val1601 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lz = getelementptr inbounds nuw i8, ptr %.val1601, i64 %i.ko
  store i64 %i.ly, ptr %i.lz, align 1
  switch i32 %i.n, label %.preheader [
    i32 0, label %bb.bg
    i32 1, label %.thread
  ]

.preheader:                                       ; preds = %bb.be, %.preheader
  %indvars.iv1745 = phi i64 [ %indvars.iv.next1746, %.preheader ], [ 1, %bb.be ] ; 2 uses
  %.41452 = phi i32 [ %i.mj, %.preheader ], [ %.11446, %bb.be ]
  %.31444 = phi i32 [ %i.ms, %.preheader ], [ 0, %bb.be ]
  %.31433 = phi i64 [ %i.mm, %.preheader ], [ %i.ly, %bb.be ]
  %i.ma = trunc nuw i64 %indvars.iv1745 to i32
  %i.mb = shl i32 %i.ma, 3
  %i.mc = add i32 %i.mb, %.11446                  ; 2 uses
  %i.md = zext i32 %i.mc to i64                   ; 4 uses
  %.val1565 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.me = getelementptr inbounds nuw i8, ptr %.val1565, i64 %i.md
  %.0.copyload.i1668 = load i64, ptr %i.me, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1668) #7, !srcloc !20
  %i.mf = shl i64 %.0.copyload.i1668, 63
  %i.mg = or disjoint i64 %i.mf, %.31433
  %i.mh = zext i32 %.41452 to i64
  %.val1600 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mi = getelementptr inbounds nuw i8, ptr %.val1600, i64 %i.mh
  store i64 %i.mg, ptr %i.mi, align 1
  %i.mj = add i32 %i.mc, 8                        ; 2 uses
  %.val1564 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mk = getelementptr inbounds nuw i8, ptr %.val1564, i64 %i.md
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %.0.copyload.i1669 = load i64, ptr %i.ml, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1669) #7, !srcloc !20
  %i.mm = lshr i64 %.0.copyload.i1669, 1          ; 3 uses
  %i.mn = zext i32 %i.mj to i64                   ; 2 uses
  %.val1599 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mo = getelementptr inbounds nuw i8, ptr %.val1599, i64 %i.mn
  store i64 %i.mm, ptr %i.mo, align 1
  %.val1563 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mp = getelementptr inbounds nuw i8, ptr %.val1563, i64 %i.md
  %.0.copyload.i1670 = load i64, ptr %i.mp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1670) #7, !srcloc !20
  %i.mq = tail call i64 @llvm.fshl.i64(i64 %.0.copyload.i1669, i64 %.0.copyload.i1670, i64 63)
  %.val1598 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mr = getelementptr inbounds nuw i8, ptr %.val1598, i64 %i.md
  store i64 %i.mq, ptr %i.mr, align 1
  %indvars.iv.next1746 = add nuw nsw i64 %indvars.iv1745, 2
  %i.ms = add i32 %.31444, 2                      ; 2 uses
  %.not1522 = icmp eq i32 %i.ms, %i.km
  br i1 %.not1522, label %bb.bf, label %.preheader

bb.bf:                                            ; preds = %.preheader
  br i1 %.not1523, label %bb.bg, label %.thread

.thread:                                          ; preds = %bb.be, %bb.bf
  %.pre-phi = phi i64 [ %i.ko, %bb.be ], [ %i.mn, %bb.bf ]
  %.414341688 = phi i64 [ %i.ly, %bb.be ], [ %i.mm, %bb.bf ]
end_hunk_1
