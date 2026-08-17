inline.NumInlined: 18317
inline.NumDeleted: 9926
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 118
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIfLi2ELi3ELi0ELi2ELi3EEELi2ELi0ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_:bb.a
  %i.n = load float, ptr %i.m, align 4, !tbaa !9  ; 2 uses
  store float %i.n, ptr %i.l, align 16, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = load float, ptr %i.p, align 4, !tbaa !9  ; 2 uses
  store float %i.q, ptr %i.o, align 4, !tbaa !9
  %i.r = load <4 x float>, ptr %i.a, align 16, !tbaa !16
  store <4 x float> %i.r, ptr %0, align 16, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store float %i.n, ptr %i.s, align 16, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.q, ptr %i.t, align 4, !tbaa !9
  tail call void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(120) %0)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.v = load float, ptr %0, align 16, !tbaa !9
  store float %i.v, ptr %i.u, align 16, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !9
  %i.z = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.y, i64 0
  store <2 x float> %i.z, ptr %i.w, align 4, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ab = load float, ptr %i.s, align 16, !tbaa !9
  store float %i.ab, ptr %i.aa, align 4, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 69
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !122, !range !114, !noundef !115
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %0, ptr %3, align 8, !tbaa !131, !alias.scope !134
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !137, !alias.scope !134
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.ah, align 8, !tbaa !139, !alias.scope !134
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2, ptr %i.ai, align 8, !tbaa !141, !alias.scope !134
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.aj, align 8, !tbaa !142, !alias.scope !134
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEENS1_IfLi2ELi1ELi0ELi2ELi1EEELi1EE6evalToINS1_IfLi3ELi3ELi0ELi3ELi3EEENS1_IfLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(36) %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 70
  %i.an = load i8, ptr %i.am, align 2, !tbaa !123, !range !114, !noundef !115
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ap, align 16, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.aq, align 16, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float 1.000000e+00, ptr %i.ar, align 16, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %0, ptr %4, align 8, !tbaa !131, !alias.scope !143
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !137, !alias.scope !143
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.au, align 8, !tbaa !139, !alias.scope !143
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 2, ptr %i.av, align 8, !tbaa !141, !alias.scope !143
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.aw, align 8, !tbaa !142, !alias.scope !143
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEENS1_IfLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftINS1_IfLi3ELi3ELi0ELi3ELi3EEENS1_IfLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(36) %i.ap, ptr noundef nonnull align 4 dereferenceable(12) %i.ax, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 67
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !120, !range !114, !noundef !115
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bc = load i8, ptr %i.bb, align 4, !range !114
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = select i1 %i.ba, i1 true, i1 %i.bd
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.bg = load i32, ptr %i.bf, align 16, !tbaa !146
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr [4 x i8], ptr %1, i64 %i.bh
  store float 1.000000e+00, ptr %i.bi, align 4, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !146
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [4 x i8], ptr %1, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  store float 1.000000e+00, ptr %i.bn, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEENS1_IfLi2ELi1ELi0ELi2ELi1EEELi1EE6evalToINS1_IfLi3ELi3ELi0ELi3ELi3EEENS1_IfLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.1042", align 8 ; 10 uses
  %4 = alloca %"class.Eigen::Block.1053", align 8 ; 9 uses
  %5 = alloca %"class.Eigen::Block.1042", align 8 ; 10 uses
  %6 = alloca %"class.Eigen::Block.1053", align 8 ; 9 uses
  %7 = alloca %"class.Eigen::Block.1042", align 8 ; 10 uses
  %8 = alloca %"class.Eigen::Block.1053", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Block.1042", align 8 ; 10 uses
  %10 = alloca %"class.Eigen::Block.1053", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !141  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !147, !nonnull !115, !align !148
  %i.d = icmp eq ptr %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %1, align 4, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.f, align 4, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x float> zeroinitializer, ptr %i.g, align 4, !tbaa !9
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %.lr.ph108, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader

.lr.ph108:                                        ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.c

.preheader:                                       ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.ah = icmp slt i64 %i.b, 3
  br i1 %i.ah, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, label %.loopexit

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader: ; preds = %bb.b, %.preheader
  %i.ai = sub i64 3, %i.b
  %smax = call i64 @llvm.smax.i64(i64 %i.ai, i64 1)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58

bb.c:                                             ; preds = %.lr.ph108, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %.0.in106 = phi i64 [ %i.b, %.lr.ph108 ], [ %.0107, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit ] ; 5 uses
  %.0107 = add nsw i64 %.0.in106, -1              ; 7 uses
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !142 ; 2 uses
  %i.ak = add i64 %i.aj, %.0107                   ; 7 uses
  %i.al = sub i64 3, %i.ak                        ; 4 uses
  %i.am = load i8, ptr %i.j, align 8, !tbaa !139, !range !114, !noundef !115
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ak
  %.idx.i.i.i.i = mul nsw i64 %i.ak, 12
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %.idx.i.i.i.i ; 2 uses
  %i.aq = add nsw i64 %i.aj, %.0.in106            ; 5 uses
  %i.ar = sub nsw i64 3, %i.aq                    ; 2 uses
  %.idx.i.i.i.i.i = mul nsw i64 %.0107, 12        ; 3 uses
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.ap, ptr %3, align 8, !tbaa !149, !alias.scope !153
  store i64 %i.al, ptr %i.w, align 8, !tbaa !156, !alias.scope !153
  store i64 %i.al, ptr %i.x, align 8, !tbaa !156, !alias.scope !153
  store ptr %1, ptr %i.y, align 8, !tbaa !157, !alias.scope !153
  store i64 %i.ak, ptr %i.z, align 8, !tbaa !156, !alias.scope !153
  store i64 %i.ak, ptr %i.aa, align 8, !tbaa !156, !alias.scope !153
  store i64 3, ptr %i.ab, align 8, !tbaa !159, !alias.scope !153
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.as = load ptr, ptr %0, align 8, !tbaa !147, !noalias !168, !nonnull !115, !align !148 ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx.i.i.i.i.i
  store ptr %i.au, ptr %4, align 8, !tbaa !169, !alias.scope !168
  store i64 %i.ar, ptr %i.ac, align 8, !tbaa !156, !alias.scope !168
  store ptr %i.as, ptr %i.ad, align 8, !tbaa !131, !alias.scope !168
  store i64 %i.aq, ptr %i.ae, align 8, !tbaa !156, !alias.scope !168
  store i64 %.0107, ptr %i.af, align 8, !tbaa !156, !alias.scope !168
  store i64 3, ptr %i.ag, align 8, !tbaa !172, !alias.scope !168
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !174, !nonnull !115, !align !148
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.0107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKNS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.aw, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.ap, ptr %5, align 8, !tbaa !149, !alias.scope !175
  store i64 %i.al, ptr %i.k, align 8, !tbaa !156, !alias.scope !175
  store i64 %i.al, ptr %i.l, align 8, !tbaa !156, !alias.scope !175
  store ptr %1, ptr %i.m, align 8, !tbaa !157, !alias.scope !175
  store i64 %i.ak, ptr %i.n, align 8, !tbaa !156, !alias.scope !175
  store i64 %i.ak, ptr %i.o, align 8, !tbaa !156, !alias.scope !175
  store i64 3, ptr %i.p, align 8, !tbaa !159, !alias.scope !175
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.ax = load ptr, ptr %0, align 8, !tbaa !147, !noalias !184, !nonnull !115, !align !148 ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.aq
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i.i.i.i.i
  store ptr %i.az, ptr %6, align 8, !tbaa !169, !alias.scope !184
  store i64 %i.ar, ptr %i.q, align 8, !tbaa !156, !alias.scope !184
  store ptr %i.ax, ptr %i.r, align 8, !tbaa !131, !alias.scope !184
  store i64 %i.aq, ptr %i.s, align 8, !tbaa !156, !alias.scope !184
  store i64 %.0107, ptr %i.t, align 8, !tbaa !156, !alias.scope !184
  store i64 3, ptr %i.u, align 8, !tbaa !172, !alias.scope !184
  %i.ba = load ptr, ptr %i.v, align 8, !tbaa !174, !nonnull !115, !align !148
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.0107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i.i
  %i.bd = sub nsw i64 3, %.0.in106                ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.0.in106 ; 4 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = lshr exact i64 %i.bf, 2
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = and i64 %i.bh, 3
  %i.bj = call i64 @llvm.smin.i64(i64 %i.bi, i64 %i.bd) ; 8 uses
  %i.bk = sub nsw i64 %i.bd, %i.bj                ; 3 uses
  %i.bl = and i64 %i.bk, -4
  %i.bm = add i64 %i.bl, %i.bj                    ; 2 uses
  %i.bn = icmp sgt i64 %i.bj, 0
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = shl nuw nsw i64 %i.bj, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bo, i1 false), !tbaa !9
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = icmp sgt i64 %i.bk, 3
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = shl nuw i64 %i.bj, 2
  %scevgep.i = getelementptr i8, ptr %i.be, i64 %i.bq
  %i.br = add nsw i64 %i.bj, 4
  %smax.i = call i64 @llvm.smax.i64(i64 %i.bm, i64 %i.br)
  %i.bs = xor i64 %i.bj, -1
  %i.bt = add i64 %smax.i, %i.bs
  %i.bu = shl i64 %i.bt, 2
  %i.bv = and i64 %i.bu, -16
  %i.bw = add i64 %i.bv, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.bw, i1 false), !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = icmp slt i64 %i.bm, %i.bd
  br i1 %i.bx, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.by = shl i64 %i.bk, 2                        ; 2 uses
  %i.bz = and i64 %i.by, -16
  %i.ca = shl nuw i64 %i.bj, 2
  %i.cb = getelementptr i8, ptr %i.be, i64 %i.bz
  %scevgep1.i = getelementptr i8, ptr %i.cb, i64 %i.ca
  %i.cc = and i64 %i.by, 12
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.cc, i1 false), !tbaa !9
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %i.cd = icmp samesign ugt i64 %.0.in106, 1
  br i1 %i.cd, label %bb.c, label %.preheader, !llvm.loop !185

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58: ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68
  %.052109 = phi i64 [ %i.dh, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68 ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader ] ; 4 uses
  %.idx.i.i.i.i56 = mul nuw nsw i64 %.052109, 12
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i56
  %i.cf = sub nsw i64 2, %.052109                 ; 3 uses
  %i.cg = getelementptr [4 x i8], ptr %i.ce, i64 %.052109
  %i.ch = getelementptr i8, ptr %i.cg, i64 4      ; 4 uses
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = and i64 %i.ck, 3
  %i.cm = call i64 @llvm.smin.i64(i64 %i.cl, i64 %i.cf) ; 8 uses
  %i.cn = sub i64 %i.cf, %i.cm                    ; 3 uses
  %i.co = sdiv i64 %i.cn, 4                       ; 2 uses
  %i.cp = shl nsw i64 %i.co, 2                    ; 2 uses
  %i.cq = add i64 %i.cp, %i.cm                    ; 2 uses
  %i.cr = icmp sgt i64 %i.cm, 0
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67:     ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58
  %i.cs = shl nuw nsw i64 %i.cm, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ch, i8 0, i64 %i.cs, i1 false), !tbaa !9
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58
  %i.ct = icmp sgt i64 %i.cn, 3
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64:       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60
  %i.cu = shl nuw i64 %i.cm, 2
  %scevgep.i65 = getelementptr i8, ptr %i.ch, i64 %i.cu
  %i.cv = add nsw i64 %i.cm, 4
  %smax.i66 = call i64 @llvm.smax.i64(i64 %i.cq, i64 %i.cv)
  %i.cw = xor i64 %i.cm, -1
  %i.cx = add i64 %smax.i66, %i.cw
  %i.cy = shl i64 %i.cx, 2
  %i.cz = and i64 %i.cy, -16
  %i.da = add i64 %i.cz, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i65, i8 0, i64 %i.da, i1 false), !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60
  %i.db = icmp slt i64 %i.cq, %i.cf
  br i1 %i.db, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61
  %i.dc = shl i64 %i.co, 4
  %i.dd = shl nuw i64 %i.cm, 2
  %i.de = getelementptr i8, ptr %i.ch, i64 %i.dc
  %scevgep1.i63 = getelementptr i8, ptr %i.de, i64 %i.dd
  %i.df = sub i64 %i.cn, %i.cp
  %i.dg = shl nuw i64 %i.df, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i63, i8 0, i64 %i.dg, i1 false), !tbaa !9
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62
  %i.dh = add nuw nsw i64 %.052109, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, %smax
  br i1 %exitcond.not, label %.loopexit, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58, !llvm.loop !186

bb.f:                                             ; preds = %bb.a
  %i.di = icmp sgt i64 %i.b, 48
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %1, align 4, !tbaa !9
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dj, align 4, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float 1.000000e+00, ptr %i.dk, align 4, !tbaa !9
  br i1 %i.di, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEENS1_IfLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftINS1_IfLi3ELi3ELi0ELi3ELi3EEENS1_IfLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, i1 noundef zeroext true)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.dl = icmp sgt i64 %i.b, 0
  br i1 %i.dl, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.051.in103 = phi i64 [ %i.b, %.lr.ph ], [ %.051104, %bb.l ] ; 3 uses
  %.051104 = add nsw i64 %.051.in103, -1          ; 7 uses
  %i.el = load i64, ptr %i.dm, align 8, !tbaa !142 ; 2 uses
  %i.em = add i64 %i.el, %.051104                 ; 7 uses
  %i.en = sub i64 3, %i.em                        ; 4 uses
  %i.eo = load i8, ptr %i.dn, align 8, !tbaa !139, !range !114, !noundef !115
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.em
  %.idx.i.i.i.i69 = mul nsw i64 %i.em, 12
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %.idx.i.i.i.i69 ; 2 uses
  %i.es = add nsw i64 %i.el, %.051.in103          ; 5 uses
  %i.et = sub nsw i64 3, %i.es                    ; 2 uses
  %.idx.i.i.i.i.i70 = mul nsw i64 %.051104, 12    ; 2 uses
  br i1 %i.ep, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %i.er, ptr %7, align 8, !tbaa !149, !alias.scope !187
  store i64 %i.en, ptr %i.ea, align 8, !tbaa !156, !alias.scope !187
  store i64 %i.en, ptr %i.eb, align 8, !tbaa !156, !alias.scope !187
  store ptr %1, ptr %i.ec, align 8, !tbaa !157, !alias.scope !187
  store i64 %i.em, ptr %i.ed, align 8, !tbaa !156, !alias.scope !187
  store i64 %i.em, ptr %i.ee, align 8, !tbaa !156, !alias.scope !187
  store i64 3, ptr %i.ef, align 8, !tbaa !159, !alias.scope !187
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.eu = load ptr, ptr %0, align 8, !tbaa !147, !noalias !196, !nonnull !115, !align !148 ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.es
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.idx.i.i.i.i.i70
  store ptr %i.ew, ptr %8, align 8, !tbaa !169, !alias.scope !196
  store i64 %i.et, ptr %i.eg, align 8, !tbaa !156, !alias.scope !196
  store ptr %i.eu, ptr %i.eh, align 8, !tbaa !131, !alias.scope !196
  store i64 %i.es, ptr %i.ei, align 8, !tbaa !156, !alias.scope !196
  store i64 %.051104, ptr %i.ej, align 8, !tbaa !156, !alias.scope !196
  store i64 3, ptr %i.ek, align 8, !tbaa !172, !alias.scope !196
  %i.ex = load ptr, ptr %i.dz, align 8, !tbaa !174, !nonnull !115, !align !148
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.051104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKNS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.ey, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %i.er, ptr %9, align 8, !tbaa !149, !alias.scope !197
  store i64 %i.en, ptr %i.do, align 8, !tbaa !156, !alias.scope !197
  store i64 %i.en, ptr %i.dp, align 8, !tbaa !156, !alias.scope !197
  store ptr %1, ptr %i.dq, align 8, !tbaa !157, !alias.scope !197
  store i64 %i.em, ptr %i.dr, align 8, !tbaa !156, !alias.scope !197
  store i64 %i.em, ptr %i.ds, align 8, !tbaa !156, !alias.scope !197
  store i64 3, ptr %i.dt, align 8, !tbaa !159, !alias.scope !197
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.ez = load ptr, ptr %0, align 8, !tbaa !147, !noalias !206, !nonnull !115, !align !148 ; 2 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.es
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.i.i.i.i.i70
  store ptr %i.fb, ptr %10, align 8, !tbaa !169, !alias.scope !206
  store i64 %i.et, ptr %i.du, align 8, !tbaa !156, !alias.scope !206
  store ptr %i.ez, ptr %i.dv, align 8, !tbaa !131, !alias.scope !206
  store i64 %i.es, ptr %i.dw, align 8, !tbaa !156, !alias.scope !206
  store i64 %.051104, ptr %i.dx, align 8, !tbaa !156, !alias.scope !206
  store i64 3, ptr %i.dy, align 8, !tbaa !172, !alias.scope !206
  %i.fc = load ptr, ptr %i.dz, align 8, !tbaa !174, !nonnull !115, !align !148
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.051104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.fd, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fe = icmp samesign ugt i64 %.051.in103, 1
  br i1 %i.fe, label %bb.i, label %.loopexit, !llvm.loop !207

.loopexit:                                        ; preds = %bb.l, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68, %bb.h, %.preheader, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEENS1_IfLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftINS1_IfLi3ELi3ELi0ELi3ELi3EEENS1_IfLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Block.561", align 8  ; 10 uses
  %5 = alloca %"class.Eigen::Block.1042", align 8 ; 10 uses
  %6 = alloca %"class.Eigen::VectorBlock.1551", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::Block.1042", align 8 ; 14 uses
  %8 = alloca %"class.Eigen::Block.1053", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !range !114
  %.fr66 = freeze i8 %i.b
  %i.c = trunc i8 %.fr66 to i1
  %or.cond67 = xor i1 %i.c, true
  %.0.shrunk = and i1 %3, %or.cond67              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !141  ; 7 uses
  %i.f = icmp sgt i64 %i.e, 47
  br i1 %i.f, label %.lr.ph65, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i64 %i.e, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.0.shrunk, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.u = phi i64 [ %i.an, %.lr.ph.split.us ], [ %i.e, %.lr.ph ]
  %.04863.us = phi i64 [ %i.am, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.v = load i8, ptr %i.a, align 8, !tbaa !139, !range !114, !noundef !115
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = xor i64 %.04863.us, -1
  %i.y = add i64 %i.u, %i.x
  %i.z = select i1 %i.w, i64 %.04863.us, i64 %i.y ; 4 uses
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !142
  %i.ab = add i64 %i.z, %i.aa                     ; 7 uses
  %i.ac = sub i64 3, %i.ab                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ab
  %.idx.i.i.i.i.us = mul nsw i64 %i.ab, 12
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i.i.i.i.us
  store ptr %i.ae, ptr %7, align 8, !tbaa !149, !alias.scope !208
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !156, !alias.scope !208
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !156, !alias.scope !208
  store ptr %1, ptr %i.k, align 8, !tbaa !157, !alias.scope !208
  store i64 %i.ab, ptr %i.l, align 8, !tbaa !156, !alias.scope !208
  store i64 %i.ab, ptr %i.m, align 8, !tbaa !156, !alias.scope !208
  store i64 3, ptr %i.n, align 8, !tbaa !159, !alias.scope !208
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.af = add i64 %i.ab, 1                        ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !147, !noalias !217, !nonnull !115, !align !148 ; 2 uses
  %i.ah = sub i64 2, %i.ab
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.af
  %.idx.i.i.i.i.i.us = mul nsw i64 %i.z, 12
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %.idx.i.i.i.i.i.us
  store ptr %i.aj, ptr %8, align 8, !tbaa !169, !alias.scope !217
  store i64 %i.ah, ptr %i.o, align 8, !tbaa !156, !alias.scope !217
  store ptr %i.ag, ptr %i.p, align 8, !tbaa !131, !alias.scope !217
  store i64 %i.af, ptr %i.q, align 8, !tbaa !156, !alias.scope !217
  store i64 %i.z, ptr %i.r, align 8, !tbaa !156, !alias.scope !217
  store i64 3, ptr %i.s, align 8, !tbaa !172, !alias.scope !217
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !174, !nonnull !115, !align !148
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.z
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.am = add nuw nsw i64 %.04863.us, 1           ; 2 uses
  %i.an = load i64, ptr %i.d, align 8, !tbaa !141 ; 2 uses
  %i.ao = icmp slt i64 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !218

.lr.ph65:                                         ; preds = %bb.a
  %i.ap = icmp samesign ult i64 %i.e, 96
  %.lhs.trunc = add nuw i64 %i.e, 1
  %i.aq = lshr i64 %.lhs.trunc, 1
  %.zext = and i64 %i.aq, 127
  %i.ar = select i1 %i.ap, i64 %.zext, i64 48     ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph65, %bb.d
  %i.bk = phi i64 [ %i.e, %.lr.ph65 ], [ %i.cf, %bb.d ] ; 2 uses
  %.04764 = phi i64 [ 0, %.lr.ph65 ], [ %.pre-phi, %bb.d ] ; 4 uses
  %i.bl = load i8, ptr %i.a, align 8, !tbaa !139, !range !114, !noundef !115
  %i.bm = trunc nuw i8 %i.bl to i1                ; 2 uses
  br i1 %i.bm, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.bn = add nuw nsw i64 %.04764, %i.ar          ; 2 uses
  %.sroa.speculated58 = call i64 @llvm.smin.i64(i64 %i.bn, i64 %i.bk)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = sub nsw i64 %i.bk, %.04764              ; 2 uses
  %i.bp = sub nsw i64 %i.bo, %i.ar
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.bp, i64 0)
  %.pre = add nuw nsw i64 %.04764, %i.ar
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.pre-phi = phi i64 [ %i.bn, %.thread ], [ %.pre, %bb.c ] ; 2 uses
  %i.bq = phi i64 [ %.sroa.speculated58, %.thread ], [ %i.bo, %bb.c ]
  %i.br = phi i64 [ %.04764, %.thread ], [ %.sroa.speculated, %bb.c ] ; 6 uses
  %i.bs = sub nsw i64 %i.bq, %i.br                ; 2 uses
  %i.bt = load i64, ptr %i.as, align 8, !tbaa !142
  %i.bu = add i64 %i.bt, %i.br                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.bv = load ptr, ptr %0, align 8, !tbaa !147, !nonnull !115, !align !148 ; 2 uses
  %i.bw = sub i64 3, %i.bu                        ; 3 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bu
  %.idx.i.i.i = mul nsw i64 %i.br, 12
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.idx.i.i.i
  store ptr %i.by, ptr %4, align 8, !tbaa !219
  store i64 %i.bw, ptr %i.at, align 8, !tbaa !156
  store i64 %i.bs, ptr %i.au, align 8, !tbaa !156
  store ptr %i.bv, ptr %i.av, align 8, !tbaa !131
  store i64 %i.bu, ptr %i.aw, align 8, !tbaa !156
  store i64 %i.br, ptr %i.ax, align 8, !tbaa !156
  store i64 3, ptr %i.ay, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.bz = select i1 %.0.shrunk, i64 %i.bu, i64 0  ; 2 uses
  %spec.select = select i1 %.0.shrunk, i64 %i.bw, i64 3
  %i.ca = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bu
  %.idx.i.i.i54 = mul nsw i64 %i.bz, 12
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %.idx.i.i.i54
  store ptr %i.cb, ptr %5, align 8, !tbaa !149
  store i64 %i.bw, ptr %i.az, align 8, !tbaa !156
  store i64 %spec.select, ptr %i.ba, align 8, !tbaa !156
  store ptr %1, ptr %i.bb, align 8, !tbaa !157
  store i64 %i.bu, ptr %i.bc, align 8, !tbaa !156
  store i64 %i.bz, ptr %i.bd, align 8, !tbaa !156
  store i64 3, ptr %i.be, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !174, !nonnull !115, !align !148 ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.br
  store ptr %i.cd, ptr %6, align 8, !tbaa !224, !alias.scope !226
  store i64 %i.bs, ptr %i.bg, align 8, !tbaa !156, !alias.scope !226
  store ptr %i.cc, ptr %i.bh, align 8, !tbaa !137, !alias.scope !226
  store i64 %i.br, ptr %i.bi, align 8, !tbaa !156, !alias.scope !226
  store i64 2, ptr %i.bj, align 8, !tbaa !229, !alias.scope !226
  %i.ce = xor i1 %i.bm, true
  call void @_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS3_IfLi2ELi1ELi0ELi2ELi1EEELin1EEEEEvRT_RKT0_RKT1_b(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %6, i1 noundef zeroext %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !141 ; 2 uses
  %i.cg = icmp slt i64 %.pre-phi, %i.cf
  br i1 %i.cg, label %bb.b, label %.loopexit, !llvm.loop !232

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.ch = phi i64 [ %i.cz, %.lr.ph.split ], [ %i.e, %.lr.ph ]
  %.04863 = phi i64 [ %i.cy, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.ci = load i8, ptr %i.a, align 8, !tbaa !139, !range !114, !noundef !115
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = xor i64 %.04863, -1
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2ELi0ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_:bb.a
  store <2 x double> %i.r, ptr %0, align 16, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load <2 x double>, ptr %i.f, align 16, !tbaa !16
  store <2 x double> %i.t, ptr %i.s, align 16, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load <2 x double>, ptr %i.l, align 16, !tbaa !16
  store <2 x double> %i.v, ptr %i.u, align 16, !tbaa !16
  tail call void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(184) %0)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.x = load double, ptr %0, align 16, !tbaa !22
  store double %i.x, ptr %i.w, align 16, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load double, ptr %i.z, align 8, !tbaa !22
  store double %i.aa, ptr %i.y, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 208
  store double 0.000000e+00, ptr %i.ab, align 16, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ad = load double, ptr %i.u, align 16, !tbaa !22
  store double %i.ad, ptr %i.ac, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 137
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !917, !range !114, !noundef !115
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %0, ptr %3, align 8, !tbaa !926, !alias.scope !928
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !931, !alias.scope !928
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.aj, align 8, !tbaa !933, !alias.scope !928
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2, ptr %i.ak, align 8, !tbaa !935, !alias.scope !928
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.al, align 8, !tbaa !936, !alias.scope !928
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE6evalToINS1_IdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 138
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !918, !range !114, !noundef !115
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store double 1.000000e+00, ptr %i.ar, align 16, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.at, align 16, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.av, align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %0, ptr %4, align 8, !tbaa !926, !alias.scope !937
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !931, !alias.scope !937
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.ay, align 8, !tbaa !933, !alias.scope !937
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 2, ptr %i.az, align 8, !tbaa !935, !alias.scope !937
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.ba, align 8, !tbaa !936, !alias.scope !937
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftINS1_IdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 135
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !915, !range !114, !noundef !115
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bg = load i8, ptr %i.bf, align 8, !range !114
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = select i1 %i.be, i1 true, i1 %i.bh
  br i1 %i.bi, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.bk = load i32, ptr %i.bj, align 16, !tbaa !146
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [8 x i8], ptr %1, i64 %i.bl
  store double 1.000000e+00, ptr %i.bm, align 8, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !146
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr [8 x i8], ptr %1, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  store double 1.000000e+00, ptr %i.br, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE6evalToINS1_IdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.3335", align 8 ; 10 uses
  %4 = alloca %"class.Eigen::Block.3346", align 8 ; 9 uses
  %5 = alloca %"class.Eigen::Block.3335", align 8 ; 10 uses
  %6 = alloca %"class.Eigen::Block.3346", align 8 ; 9 uses
  %7 = alloca %"class.Eigen::Block.3335", align 8 ; 10 uses
  %8 = alloca %"class.Eigen::Block.3346", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Block.3335", align 8 ; 10 uses
  %10 = alloca %"class.Eigen::Block.3346", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !935  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !940, !nonnull !115, !align !941
  %i.d = icmp eq ptr %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store double 1.000000e+00, ptr %1, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %.lr.ph108, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader

.lr.ph108:                                        ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.c

.preheader:                                       ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.ah = icmp slt i64 %i.b, 3
  br i1 %i.ah, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, label %.loopexit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader: ; preds = %bb.b, %.preheader
  %i.ai = sub i64 3, %i.b
  %smax = call i64 @llvm.smax.i64(i64 %i.ai, i64 1)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58

bb.c:                                             ; preds = %.lr.ph108, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %.0.in106 = phi i64 [ %i.b, %.lr.ph108 ], [ %.0107, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit ] ; 5 uses
  %.0107 = add nsw i64 %.0.in106, -1              ; 7 uses
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !936 ; 2 uses
  %i.ak = add i64 %i.aj, %.0107                   ; 7 uses
  %i.al = sub i64 3, %i.ak                        ; 4 uses
  %i.am = load i8, ptr %i.j, align 8, !tbaa !933, !range !114, !noundef !115
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %.idx.i.i.i.i = mul nsw i64 %i.ak, 24
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %.idx.i.i.i.i ; 2 uses
  %i.aq = add nsw i64 %i.aj, %.0.in106            ; 5 uses
  %i.ar = sub nsw i64 3, %i.aq                    ; 2 uses
  %.idx.i.i.i.i.i = mul nsw i64 %.0107, 24        ; 3 uses
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.ap, ptr %3, align 8, !tbaa !942, !alias.scope !945
  store i64 %i.al, ptr %i.w, align 8, !tbaa !156, !alias.scope !945
  store i64 %i.al, ptr %i.x, align 8, !tbaa !156, !alias.scope !945
  store ptr %1, ptr %i.y, align 8, !tbaa !948, !alias.scope !945
  store i64 %i.ak, ptr %i.z, align 8, !tbaa !156, !alias.scope !945
  store i64 %i.ak, ptr %i.aa, align 8, !tbaa !156, !alias.scope !945
  store i64 3, ptr %i.ab, align 8, !tbaa !950, !alias.scope !945
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.as = load ptr, ptr %0, align 8, !tbaa !940, !noalias !959, !nonnull !115, !align !941 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx.i.i.i.i.i
  store ptr %i.au, ptr %4, align 8, !tbaa !960, !alias.scope !959
  store i64 %i.ar, ptr %i.ac, align 8, !tbaa !156, !alias.scope !959
  store ptr %i.as, ptr %i.ad, align 8, !tbaa !926, !alias.scope !959
  store i64 %i.aq, ptr %i.ae, align 8, !tbaa !156, !alias.scope !959
  store i64 %.0107, ptr %i.af, align 8, !tbaa !156, !alias.scope !959
  store i64 3, ptr %i.ag, align 8, !tbaa !962, !alias.scope !959
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !964, !nonnull !115, !align !941
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.0107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.ap, ptr %5, align 8, !tbaa !942, !alias.scope !965
  store i64 %i.al, ptr %i.k, align 8, !tbaa !156, !alias.scope !965
  store i64 %i.al, ptr %i.l, align 8, !tbaa !156, !alias.scope !965
  store ptr %1, ptr %i.m, align 8, !tbaa !948, !alias.scope !965
  store i64 %i.ak, ptr %i.n, align 8, !tbaa !156, !alias.scope !965
  store i64 %i.ak, ptr %i.o, align 8, !tbaa !156, !alias.scope !965
  store i64 3, ptr %i.p, align 8, !tbaa !950, !alias.scope !965
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  %i.ax = load ptr, ptr %0, align 8, !tbaa !940, !noalias !974, !nonnull !115, !align !941 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.aq
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i.i.i.i.i
  store ptr %i.az, ptr %6, align 8, !tbaa !960, !alias.scope !974
  store i64 %i.ar, ptr %i.q, align 8, !tbaa !156, !alias.scope !974
  store ptr %i.ax, ptr %i.r, align 8, !tbaa !926, !alias.scope !974
  store i64 %i.aq, ptr %i.s, align 8, !tbaa !156, !alias.scope !974
  store i64 %.0107, ptr %i.t, align 8, !tbaa !156, !alias.scope !974
  store i64 3, ptr %i.u, align 8, !tbaa !962, !alias.scope !974
  %i.ba = load ptr, ptr %i.v, align 8, !tbaa !964, !nonnull !115, !align !941
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.0107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i.i
  %i.bd = sub nsw i64 3, %.0.in106                ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.0.in106 ; 4 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = lshr exact i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1
  %i.bi = call i64 @llvm.smin.i64(i64 %i.bh, i64 %i.bd) ; 7 uses
  %i.bj = sub nsw i64 %i.bd, %i.bi                ; 3 uses
  %i.bk = and i64 %i.bj, -2
  %i.bl = add i64 %i.bk, %i.bi                    ; 2 uses
  %i.bm = icmp sgt i64 %i.bi, 0
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.be, align 8
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = icmp sgt i64 %i.bj, 1
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = shl nuw i64 %i.bi, 3
  %scevgep.i = getelementptr i8, ptr %i.be, i64 %i.bo
  %i.bp = add nsw i64 %i.bi, 2
  %smax.i = call i64 @llvm.smax.i64(i64 %i.bl, i64 %i.bp)
  %i.bq = xor i64 %i.bi, -1
  %i.br = add i64 %smax.i, %i.bq
  %i.bs = shl i64 %i.br, 3
  %i.bt = and i64 %i.bs, -16
  %i.bu = add i64 %i.bt, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.bu, i1 false), !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = icmp slt i64 %i.bl, %i.bd
  br i1 %i.bv, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bw = shl i64 %i.bj, 3                        ; 2 uses
  %i.bx = and i64 %i.bw, -16
  %i.by = shl nuw i64 %i.bi, 3
  %i.bz = getelementptr i8, ptr %i.be, i64 %i.bx
  %scevgep1.i = getelementptr i8, ptr %i.bz, i64 %i.by
  %i.ca = and i64 %i.bw, 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.ca, i1 false), !tbaa !22
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %i.cb = icmp samesign ugt i64 %.0.in106, 1
  br i1 %i.cb, label %bb.c, label %.preheader, !llvm.loop !975

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68
  %.052109 = phi i64 [ %i.dd, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68 ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader ] ; 4 uses
  %.idx.i.i.i.i56 = mul nuw nsw i64 %.052109, 24
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i56
  %i.cd = sub nsw i64 2, %.052109                 ; 3 uses
  %i.ce = getelementptr [8 x i8], ptr %i.cc, i64 %.052109
  %i.cf = getelementptr i8, ptr %i.ce, i64 8      ; 4 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = lshr exact i64 %i.cg, 3
  %i.ci = and i64 %i.ch, 1
  %i.cj = call i64 @llvm.smin.i64(i64 %i.ci, i64 %i.cd) ; 7 uses
  %i.ck = sub i64 %i.cd, %i.cj                    ; 3 uses
  %i.cl = sdiv i64 %i.ck, 2                       ; 2 uses
  %i.cm = shl nsw i64 %i.cl, 1                    ; 2 uses
  %i.cn = add i64 %i.cm, %i.cj                    ; 2 uses
  %i.co = icmp sgt i64 %i.cj, 0
  br i1 %i.co, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67:     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58
  store i64 0, ptr %i.cf, align 8
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58
  %i.cp = icmp sgt i64 %i.ck, 1
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64:       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60
  %i.cq = shl nuw i64 %i.cj, 3
  %scevgep.i65 = getelementptr i8, ptr %i.cf, i64 %i.cq
  %i.cr = add nsw i64 %i.cj, 2
  %smax.i66 = call i64 @llvm.smax.i64(i64 %i.cn, i64 %i.cr)
  %i.cs = xor i64 %i.cj, -1
  %i.ct = add i64 %smax.i66, %i.cs
  %i.cu = shl i64 %i.ct, 3
  %i.cv = and i64 %i.cu, -16
  %i.cw = add i64 %i.cv, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i65, i8 0, i64 %i.cw, i1 false), !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60
  %i.cx = icmp slt i64 %i.cn, %i.cd
  br i1 %i.cx, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61
  %i.cy = shl i64 %i.cl, 4
  %i.cz = shl nuw i64 %i.cj, 3
  %i.da = getelementptr i8, ptr %i.cf, i64 %i.cy
  %scevgep1.i63 = getelementptr i8, ptr %i.da, i64 %i.cz
  %i.db = sub i64 %i.ck, %i.cm
  %i.dc = shl nuw i64 %i.db, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i63, i8 0, i64 %i.dc, i1 false), !tbaa !22
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62
  %i.dd = add nuw nsw i64 %.052109, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.dd, %smax
  br i1 %exitcond.not, label %.loopexit, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58, !llvm.loop !976

bb.f:                                             ; preds = %bb.a
  %i.de = icmp sgt i64 %i.b, 48
  store double 1.000000e+00, ptr %1, align 8, !tbaa !22
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.dg, align 8, !tbaa !22
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.di, align 8, !tbaa !22
  br i1 %i.de, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftINS1_IdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.dj = icmp sgt i64 %i.b, 0
  br i1 %i.dj, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.051.in103 = phi i64 [ %i.b, %.lr.ph ], [ %.051104, %bb.l ] ; 3 uses
  %.051104 = add nsw i64 %.051.in103, -1          ; 7 uses
  %i.ej = load i64, ptr %i.dk, align 8, !tbaa !936 ; 2 uses
  %i.ek = add i64 %i.ej, %.051104                 ; 7 uses
  %i.el = sub i64 3, %i.ek                        ; 4 uses
  %i.em = load i8, ptr %i.dl, align 8, !tbaa !933, !range !114, !noundef !115
  %i.en = trunc nuw i8 %i.em to i1
  %i.eo = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ek
  %.idx.i.i.i.i69 = mul nsw i64 %i.ek, 24
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 %.idx.i.i.i.i69 ; 2 uses
  %i.eq = add nsw i64 %i.ej, %.051.in103          ; 5 uses
  %i.er = sub nsw i64 3, %i.eq                    ; 2 uses
  %.idx.i.i.i.i.i70 = mul nsw i64 %.051104, 24    ; 2 uses
  br i1 %i.en, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %i.ep, ptr %7, align 8, !tbaa !942, !alias.scope !977
  store i64 %i.el, ptr %i.dy, align 8, !tbaa !156, !alias.scope !977
  store i64 %i.el, ptr %i.dz, align 8, !tbaa !156, !alias.scope !977
  store ptr %1, ptr %i.ea, align 8, !tbaa !948, !alias.scope !977
  store i64 %i.ek, ptr %i.eb, align 8, !tbaa !156, !alias.scope !977
  store i64 %i.ek, ptr %i.ec, align 8, !tbaa !156, !alias.scope !977
  store i64 3, ptr %i.ed, align 8, !tbaa !950, !alias.scope !977
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !980)
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %i.es = load ptr, ptr %0, align 8, !tbaa !940, !noalias !986, !nonnull !115, !align !941 ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.eq
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx.i.i.i.i.i70
  store ptr %i.eu, ptr %8, align 8, !tbaa !960, !alias.scope !986
  store i64 %i.er, ptr %i.ee, align 8, !tbaa !156, !alias.scope !986
  store ptr %i.es, ptr %i.ef, align 8, !tbaa !926, !alias.scope !986
  store i64 %i.eq, ptr %i.eg, align 8, !tbaa !156, !alias.scope !986
  store i64 %.051104, ptr %i.eh, align 8, !tbaa !156, !alias.scope !986
  store i64 3, ptr %i.ei, align 8, !tbaa !962, !alias.scope !986
  %i.ev = load ptr, ptr %i.dx, align 8, !tbaa !964, !nonnull !115, !align !941
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %.051104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %i.ep, ptr %9, align 8, !tbaa !942, !alias.scope !987
  store i64 %i.el, ptr %i.dm, align 8, !tbaa !156, !alias.scope !987
  store i64 %i.el, ptr %i.dn, align 8, !tbaa !156, !alias.scope !987
  store ptr %1, ptr %i.do, align 8, !tbaa !948, !alias.scope !987
  store i64 %i.ek, ptr %i.dp, align 8, !tbaa !156, !alias.scope !987
  store i64 %i.ek, ptr %i.dq, align 8, !tbaa !156, !alias.scope !987
  store i64 3, ptr %i.dr, align 8, !tbaa !950, !alias.scope !987
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !990)
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  %i.ex = load ptr, ptr %0, align 8, !tbaa !940, !noalias !996, !nonnull !115, !align !941 ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.eq
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx.i.i.i.i.i70
  store ptr %i.ez, ptr %10, align 8, !tbaa !960, !alias.scope !996
  store i64 %i.er, ptr %i.ds, align 8, !tbaa !156, !alias.scope !996
  store ptr %i.ex, ptr %i.dt, align 8, !tbaa !926, !alias.scope !996
  store i64 %i.eq, ptr %i.du, align 8, !tbaa !156, !alias.scope !996
  store i64 %.051104, ptr %i.dv, align 8, !tbaa !156, !alias.scope !996
  store i64 3, ptr %i.dw, align 8, !tbaa !962, !alias.scope !996
  %i.fa = load ptr, ptr %i.dx, align 8, !tbaa !964, !nonnull !115, !align !941
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.051104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.fb, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fc = icmp samesign ugt i64 %.051.in103, 1
  br i1 %i.fc, label %bb.i, label %.loopexit, !llvm.loop !997

.loopexit:                                        ; preds = %bb.l, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68, %bb.h, %.preheader, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftINS1_IdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Block.2841", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Block.3335", align 8 ; 10 uses
  %6 = alloca %"class.Eigen::VectorBlock.3842", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::Block.3335", align 8 ; 14 uses
  %8 = alloca %"class.Eigen::Block.3346", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !range !114
  %.fr66 = freeze i8 %i.b
  %i.c = trunc i8 %.fr66 to i1
  %or.cond67 = xor i1 %i.c, true
  %.0.shrunk = and i1 %3, %or.cond67              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !935  ; 7 uses
  %i.f = icmp sgt i64 %i.e, 47
  br i1 %i.f, label %.lr.ph65, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i64 %i.e, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.0.shrunk, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.u = phi i64 [ %i.an, %.lr.ph.split.us ], [ %i.e, %.lr.ph ]
  %.04863.us = phi i64 [ %i.am, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.v = load i8, ptr %i.a, align 8, !tbaa !933, !range !114, !noundef !115
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = xor i64 %.04863.us, -1
  %i.y = add i64 %i.u, %i.x
  %i.z = select i1 %i.w, i64 %.04863.us, i64 %i.y ; 4 uses
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !936
  %i.ab = add i64 %i.z, %i.aa                     ; 7 uses
  %i.ac = sub i64 3, %i.ab                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ab
  %.idx.i.i.i.i.us = mul nsw i64 %i.ab, 24
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i.i.i.i.us
  store ptr %i.ae, ptr %7, align 8, !tbaa !942, !alias.scope !998
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !156, !alias.scope !998
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !156, !alias.scope !998
  store ptr %1, ptr %i.k, align 8, !tbaa !948, !alias.scope !998
  store i64 %i.ab, ptr %i.l, align 8, !tbaa !156, !alias.scope !998
  store i64 %i.ab, ptr %i.m, align 8, !tbaa !156, !alias.scope !998
  store i64 3, ptr %i.n, align 8, !tbaa !950, !alias.scope !998
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  %i.af = add i64 %i.ab, 1                        ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !940, !noalias !1007, !nonnull !115, !align !941 ; 2 uses
  %i.ah = sub i64 2, %i.ab
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.af
  %.idx.i.i.i.i.i.us = mul nsw i64 %i.z, 24
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %.idx.i.i.i.i.i.us
  store ptr %i.aj, ptr %8, align 8, !tbaa !960, !alias.scope !1007
  store i64 %i.ah, ptr %i.o, align 8, !tbaa !156, !alias.scope !1007
  store ptr %i.ag, ptr %i.p, align 8, !tbaa !926, !alias.scope !1007
  store i64 %i.af, ptr %i.q, align 8, !tbaa !156, !alias.scope !1007
  store i64 %i.z, ptr %i.r, align 8, !tbaa !156, !alias.scope !1007
  store i64 3, ptr %i.s, align 8, !tbaa !962, !alias.scope !1007
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !964, !nonnull !115, !align !941
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.z
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.am = add nuw nsw i64 %.04863.us, 1           ; 2 uses
  %i.an = load i64, ptr %i.d, align 8, !tbaa !935 ; 2 uses
  %i.ao = icmp slt i64 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !1008

.lr.ph65:                                         ; preds = %bb.a
  %i.ap = icmp samesign ult i64 %i.e, 96
  %.lhs.trunc = add nuw i64 %i.e, 1
  %i.aq = lshr i64 %.lhs.trunc, 1
  %.zext = and i64 %i.aq, 127
  %i.ar = select i1 %i.ap, i64 %.zext, i64 48     ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph65, %bb.d
  %i.bk = phi i64 [ %i.e, %.lr.ph65 ], [ %i.cf, %bb.d ] ; 2 uses
  %.04764 = phi i64 [ 0, %.lr.ph65 ], [ %.pre-phi, %bb.d ] ; 4 uses
  %i.bl = load i8, ptr %i.a, align 8, !tbaa !933, !range !114, !noundef !115
  %i.bm = trunc nuw i8 %i.bl to i1                ; 2 uses
  br i1 %i.bm, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.bn = add nuw nsw i64 %.04764, %i.ar          ; 2 uses
  %.sroa.speculated58 = call i64 @llvm.smin.i64(i64 %i.bn, i64 %i.bk)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = sub nsw i64 %i.bk, %.04764              ; 2 uses
  %i.bp = sub nsw i64 %i.bo, %i.ar
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.bp, i64 0)
  %.pre = add nuw nsw i64 %.04764, %i.ar
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.pre-phi = phi i64 [ %i.bn, %.thread ], [ %.pre, %bb.c ] ; 2 uses
  %i.bq = phi i64 [ %.sroa.speculated58, %.thread ], [ %i.bo, %bb.c ]
  %i.br = phi i64 [ %.04764, %.thread ], [ %.sroa.speculated, %bb.c ] ; 6 uses
  %i.bs = sub nsw i64 %i.bq, %i.br                ; 2 uses
  %i.bt = load i64, ptr %i.as, align 8, !tbaa !936
  %i.bu = add i64 %i.bt, %i.br                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.bv = load ptr, ptr %0, align 8, !tbaa !940, !nonnull !115, !align !941 ; 2 uses
  %i.bw = sub i64 3, %i.bu                        ; 3 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bu
  %.idx.i.i.i = mul nsw i64 %i.br, 24
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.idx.i.i.i
  store ptr %i.by, ptr %4, align 8, !tbaa !1009
  store i64 %i.bw, ptr %i.at, align 8, !tbaa !156
  store i64 %i.bs, ptr %i.au, align 8, !tbaa !156
  store ptr %i.bv, ptr %i.av, align 8, !tbaa !926
  store i64 %i.bu, ptr %i.aw, align 8, !tbaa !156
  store i64 %i.br, ptr %i.ax, align 8, !tbaa !156
  store i64 3, ptr %i.ay, align 8, !tbaa !1011
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.bz = select i1 %.0.shrunk, i64 %i.bu, i64 0  ; 2 uses
  %spec.select = select i1 %.0.shrunk, i64 %i.bw, i64 3
  %i.ca = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bu
  %.idx.i.i.i54 = mul nsw i64 %i.bz, 24
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %.idx.i.i.i54
  store ptr %i.cb, ptr %5, align 8, !tbaa !942
  store i64 %i.bw, ptr %i.az, align 8, !tbaa !156
  store i64 %spec.select, ptr %i.ba, align 8, !tbaa !156
  store ptr %1, ptr %i.bb, align 8, !tbaa !948
  store i64 %i.bu, ptr %i.bc, align 8, !tbaa !156
  store i64 %i.bz, ptr %i.bd, align 8, !tbaa !156
  store i64 3, ptr %i.be, align 8, !tbaa !950
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !964, !nonnull !115, !align !941 ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.br
  store ptr %i.cd, ptr %6, align 8, !tbaa !1014, !alias.scope !1016
  store i64 %i.bs, ptr %i.bg, align 8, !tbaa !156, !alias.scope !1016
  store ptr %i.cc, ptr %i.bh, align 8, !tbaa !931, !alias.scope !1016
  store i64 %i.br, ptr %i.bi, align 8, !tbaa !156, !alias.scope !1016
  store i64 2, ptr %i.bj, align 8, !tbaa !1019, !alias.scope !1016
  %i.ce = xor i1 %i.bm, true
  call void @_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS3_IdLi2ELi1ELi0ELi2ELi1EEELin1EEEEEvRT_RKT0_RKT1_b(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %6, i1 noundef zeroext %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !935 ; 2 uses
  %i.cg = icmp slt i64 %.pre-phi, %i.cf
  br i1 %i.cg, label %bb.b, label %.loopexit, !llvm.loop !1021

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.ch = phi i64 [ %i.cz, %.lr.ph.split ], [ %i.e, %.lr.ph ]
  %.04863 = phi i64 [ %i.cy, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.ci = load i8, ptr %i.a, align 8, !tbaa !933, !range !114, !noundef !115
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = xor i64 %.04863, -1
end_hunk_1
