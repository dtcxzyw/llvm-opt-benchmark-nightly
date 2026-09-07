Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/network?download=true
inline.NumInlined: 1222
inline.NumDeleted: 483
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZNK9Stockfish4Eval4NNUE18FeatureTransformerILj1024EE16write_parametersERSo:bb.a
  store i64 %i.cx, ptr %i.cu, align 16
  %i.da = or disjoint i64 %.01416.i10.i, 448      ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.da ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 48 ; 2 uses
  %i.df = load i64, ptr %i.de, align 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = tail call <5 x i64> @llvm.masked.load.v5i64.p0(ptr nonnull align 8 %i.dc, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x i64> poison)
  %i.dj = shufflevector <5 x i64> %i.di, <5 x i64> poison, <4 x i32> <i32 3, i32 0, i32 4, i32 1>
  store <4 x i64> %i.dj, ptr %i.dc, align 8
  store i64 %i.df, ptr %i.dd, align 8
  store i64 %i.dh, ptr %i.de, align 16
  %i.dk = add nuw nsw i64 %.01416.i10.i, 512
  %i.dl = icmp samesign ult i64 %i.da, 81772480
  br i1 %i.dl, label %bb.d, label %_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE18FeatureTransformerILj1024EEESt14default_deleteIS4_EED2Ev.exit, !llvm.loop !7

_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE18FeatureTransformerILj1024EEESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.d
  tail call void @_ZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 2 dereferenceable(2048) %i.a)
  %i.dm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ao, i64 noundef 81772544) #19 ; 0 uses
  tail call void @_ZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 2 dereferenceable(46137344) %i.u)
  %i.dn = tail call noalias noundef nonnull dereferenceable(3276288) ptr @_Znwm(i64 noundef 3276288) #20, !noalias !359 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 128632832
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2555392) %i.dn, ptr noundef nonnull align 64 dereferenceable(2555392) %i.do, i64 2555392, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 127911936
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 2555392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(720896) %i.dq, ptr noundef nonnull align 64 dereferenceable(720896) %i.dp, i64 720896, i1 false)
  tail call void @_ZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(3276288) %i.dn)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef 3276288) #21
  %i.dr = load ptr, ptr %1, align 8, !tbaa !93
  %i.ds = getelementptr i8, ptr %i.dr, i64 -24
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = getelementptr inbounds i8, ptr %1, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !149
  %i.dx = and i32 %i.dw, 5
  %.not = icmp eq i32 %i.dx, 0
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.a, i64 noundef 131188224, i64 noundef 64) #21
  ret i1 %.not
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2048) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 7 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN9Stockfish4Eval4NNUEL17Leb128MagicStringE, i64 noundef 17) #19 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !129
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %.backedge

bb.c:                                             ; preds = %bb.s, %bb.a
  %.02859 = phi i64 [ 0, %bb.a ], [ %i.bh, %bb.s ] ; 9 uses
  %.02958 = phi i32 [ 0, %bb.a ], [ %i.bf, %bb.s ]
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.f = load i16, ptr %i.e, align 2, !tbaa !161
  %i.g = sext i16 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %.02958, %bb.c ], [ %i.i, %bb.d ]
  %.027 = phi i32 [ %i.g, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.h = ashr i32 %.027, 7                        ; 2 uses
  %i.i = add i32 %.1, 1                           ; 2 uses
  %i.j = shl i32 %.027, 25
  %sext = ashr i32 %i.j, 31
  %.not = icmp eq i32 %i.h, %sext
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !360

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !161
  %i.n = sext i16 %i.m to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %i.i, %bb.e ], [ %i.p, %bb.f ]
  %.027.1 = phi i32 [ %i.n, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %i.o = ashr i32 %.027.1, 7                      ; 2 uses
  %i.p = add i32 %.1.1, 1                         ; 2 uses
  %i.q = shl i32 %.027.1, 25
  %sext.1 = ashr i32 %i.q, 31
  %.not.1 = icmp eq i32 %i.o, %sext.1
  br i1 %.not.1, label %bb.g, label %bb.f, !llvm.loop !360

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i16, ptr %i.s, align 2, !tbaa !161
  %i.u = sext i16 %i.t to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.1.2 = phi i32 [ %i.p, %bb.g ], [ %i.w, %bb.h ]
  %.027.2 = phi i32 [ %i.u, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %i.v = ashr i32 %.027.2, 7                      ; 2 uses
  %i.w = add i32 %.1.2, 1                         ; 2 uses
  %i.x = shl i32 %.027.2, 25
  %sext.2 = ashr i32 %i.x, 31
  %.not.2 = icmp eq i32 %i.v, %sext.2
  br i1 %.not.2, label %bb.i, label %bb.h, !llvm.loop !360

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !161
  %i.ab = sext i16 %i.aa to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.1.3 = phi i32 [ %i.w, %bb.i ], [ %i.ad, %bb.j ]
  %.027.3 = phi i32 [ %i.ab, %bb.i ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ac = ashr i32 %.027.3, 7                     ; 2 uses
  %i.ad = add i32 %.1.3, 1                        ; 2 uses
  %i.ae = shl i32 %.027.3, 25
  %sext.3 = ashr i32 %i.ae, 31
  %.not.3 = icmp eq i32 %i.ac, %sext.3
  br i1 %.not.3, label %bb.k, label %bb.j, !llvm.loop !360

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !161
  %i.ai = sext i16 %i.ah to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.1.4 = phi i32 [ %i.ad, %bb.k ], [ %i.ak, %bb.l ]
  %.027.4 = phi i32 [ %i.ai, %bb.k ], [ %i.aj, %bb.l ] ; 2 uses
  %i.aj = ashr i32 %.027.4, 7                     ; 2 uses
  %i.ak = add i32 %.1.4, 1                        ; 2 uses
  %i.al = shl i32 %.027.4, 25
  %sext.4 = ashr i32 %i.al, 31
  %.not.4 = icmp eq i32 %i.aj, %sext.4
  br i1 %.not.4, label %bb.m, label %bb.l, !llvm.loop !360

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !161
  %i.ap = sext i16 %i.ao to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.1.5 = phi i32 [ %i.ak, %bb.m ], [ %i.ar, %bb.n ]
  %.027.5 = phi i32 [ %i.ap, %bb.m ], [ %i.aq, %bb.n ] ; 2 uses
  %i.aq = ashr i32 %.027.5, 7                     ; 2 uses
  %i.ar = add i32 %.1.5, 1                        ; 2 uses
  %i.as = shl i32 %.027.5, 25
  %sext.5 = ashr i32 %i.as, 31
  %.not.5 = icmp eq i32 %i.aq, %sext.5
  br i1 %.not.5, label %bb.o, label %bb.n, !llvm.loop !360

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.av = load i16, ptr %i.au, align 2, !tbaa !161
  %i.aw = sext i16 %i.av to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.1.6 = phi i32 [ %i.ar, %bb.o ], [ %i.ay, %bb.p ]
  %.027.6 = phi i32 [ %i.aw, %bb.o ], [ %i.ax, %bb.p ] ; 2 uses
  %i.ax = ashr i32 %.027.6, 7                     ; 2 uses
  %i.ay = add i32 %.1.6, 1                        ; 2 uses
  %i.az = shl i32 %.027.6, 25
  %sext.6 = ashr i32 %i.az, 31
  %.not.6 = icmp eq i32 %i.ax, %sext.6
  br i1 %.not.6, label %bb.q, label %bb.p, !llvm.loop !360

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 14
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !161
  %i.bd = sext i16 %i.bc to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.1.7 = phi i32 [ %i.ay, %bb.q ], [ %i.bf, %bb.r ]
  %.027.7 = phi i32 [ %i.bd, %bb.q ], [ %i.be, %bb.r ] ; 2 uses
  %i.be = ashr i32 %.027.7, 7                     ; 2 uses
  %i.bf = add i32 %.1.7, 1                        ; 3 uses
  %i.bg = shl i32 %.027.7, 25
  %sext.7 = ashr i32 %i.bg, 31
  %.not.7 = icmp eq i32 %i.be, %sext.7
  br i1 %.not.7, label %bb.s, label %bb.r, !llvm.loop !360

bb.s:                                             ; preds = %bb.r
  %i.bh = add nuw nsw i64 %.02859, 8              ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.bh, 1024
  br i1 %exitcond.not.7, label %bb.b, label %bb.c, !llvm.loop !361

bb.t:                                             ; preds = %bb.z
  %i.bi = zext i32 %i.bu to i64
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef %i.bi) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit: ; preds = %.thread, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.02662 = phi i64 [ 0, %bb.b ], [ %.02662.be, %.backedge.backedge ] ; 3 uses
  %.05261 = phi i32 [ 0, %bb.b ], [ %.05261.be, %.backedge.backedge ]
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02662
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !161
  %i.bm = sext i16 %i.bl to i32
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit: ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge, %.backedge
  %.153 = phi i32 [ %.05261, %.backedge ], [ %.153.be, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 4 uses
  %.0 = phi i32 [ %i.bm, %.backedge ], [ %i.bo, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 3 uses
  %i.bn = trunc i32 %.0 to i8                     ; 2 uses
  %i.bo = ashr i32 %.0, 7                         ; 3 uses
  %i.bp = and i32 %.0, 64
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.br = icmp eq i32 %i.bo, 0
  br i1 %i.br, label %bb.w, label %bb.x

bb.v:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.bs = icmp eq i32 %i.bo, -1
  br i1 %i.bs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bt = and i8 %i.bn, 127
  %i.bu = add nuw i32 %.153, 1                    ; 3 uses
  %i.bv = zext i32 %.153 to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bv
  store i8 %i.bt, ptr %i.bw, align 1, !tbaa !62
  %i.bx = icmp eq i32 %i.bu, 4096
  br i1 %i.bx, label %.thread, label %bb.z

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.by = or i8 %i.bn, -128
  %i.bz = add nuw i32 %.153, 1                    ; 2 uses
  %i.ca = zext i32 %.153 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ca
  store i8 %i.by, ptr %i.cb, align 1, !tbaa !62
  %i.cc = icmp eq i32 %i.bz, 4096
  br i1 %i.cc, label %bb.y, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

bb.y:                                             ; preds = %bb.x
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge: ; preds = %bb.y, %bb.x
  %.153.be = phi i32 [ %i.bz, %bb.x ], [ 0, %bb.y ]
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

bb.z:                                             ; preds = %bb.w
  %i.ce = add nuw nsw i64 %.02662, 1              ; 2 uses
  %exitcond64.not = icmp eq i64 %i.ce, 1024
  br i1 %exitcond64.not, label %bb.t, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.z, %.thread
  %.02662.be = phi i64 [ %i.ce, %bb.z ], [ %i.cg, %.thread ]
  %.05261.be = phi i32 [ %i.bu, %bb.z ], [ 0, %.thread ]
  br label %.backedge, !llvm.loop !362

.thread:                                          ; preds = %bb.w
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  %i.cg = add nuw nsw i64 %.02662, 1              ; 2 uses
  %exitcond64.not70 = icmp eq i64 %i.cg, 1024
  br i1 %exitcond64.not70, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %.backedge.backedge
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(46137344) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 7 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN9Stockfish4Eval4NNUEL17Leb128MagicStringE, i64 noundef 17) #19 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !129
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %.backedge

bb.c:                                             ; preds = %bb.y, %bb.a
  %.02859 = phi i64 [ 0, %bb.a ], [ %i.cc, %bb.y ] ; 12 uses
  %.02958 = phi i32 [ 0, %bb.a ], [ %i.ca, %bb.y ]
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.f = load i16, ptr %i.e, align 2, !tbaa !161
  %i.g = sext i16 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %.02958, %bb.c ], [ %i.i, %bb.d ]
  %.027 = phi i32 [ %i.g, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.h = ashr i32 %.027, 7                        ; 2 uses
  %i.i = add i32 %.1, 1                           ; 2 uses
  %i.j = shl i32 %.027, 25
  %sext = ashr i32 %i.j, 31
  %.not = icmp eq i32 %i.h, %sext
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !363

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !161
  %i.n = sext i16 %i.m to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %i.i, %bb.e ], [ %i.p, %bb.f ]
  %.027.1 = phi i32 [ %i.n, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %i.o = ashr i32 %.027.1, 7                      ; 2 uses
  %i.p = add i32 %.1.1, 1                         ; 2 uses
  %i.q = shl i32 %.027.1, 25
  %sext.1 = ashr i32 %i.q, 31
  %.not.1 = icmp eq i32 %i.o, %sext.1
  br i1 %.not.1, label %bb.g, label %bb.f, !llvm.loop !363

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i16, ptr %i.s, align 2, !tbaa !161
  %i.u = sext i16 %i.t to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.1.2 = phi i32 [ %i.p, %bb.g ], [ %i.w, %bb.h ]
  %.027.2 = phi i32 [ %i.u, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %i.v = ashr i32 %.027.2, 7                      ; 2 uses
  %i.w = add i32 %.1.2, 1                         ; 2 uses
  %i.x = shl i32 %.027.2, 25
  %sext.2 = ashr i32 %i.x, 31
  %.not.2 = icmp eq i32 %i.v, %sext.2
  br i1 %.not.2, label %bb.i, label %bb.h, !llvm.loop !363

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !161
  %i.ab = sext i16 %i.aa to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.1.3 = phi i32 [ %i.w, %bb.i ], [ %i.ad, %bb.j ]
  %.027.3 = phi i32 [ %i.ab, %bb.i ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ac = ashr i32 %.027.3, 7                     ; 2 uses
  %i.ad = add i32 %.1.3, 1                        ; 2 uses
  %i.ae = shl i32 %.027.3, 25
  %sext.3 = ashr i32 %i.ae, 31
  %.not.3 = icmp eq i32 %i.ac, %sext.3
  br i1 %.not.3, label %bb.k, label %bb.j, !llvm.loop !363

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !161
  %i.ai = sext i16 %i.ah to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.1.4 = phi i32 [ %i.ad, %bb.k ], [ %i.ak, %bb.l ]
  %.027.4 = phi i32 [ %i.ai, %bb.k ], [ %i.aj, %bb.l ] ; 2 uses
  %i.aj = ashr i32 %.027.4, 7                     ; 2 uses
  %i.ak = add i32 %.1.4, 1                        ; 2 uses
  %i.al = shl i32 %.027.4, 25
  %sext.4 = ashr i32 %i.al, 31
  %.not.4 = icmp eq i32 %i.aj, %sext.4
  br i1 %.not.4, label %bb.m, label %bb.l, !llvm.loop !363

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !161
  %i.ap = sext i16 %i.ao to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.1.5 = phi i32 [ %i.ak, %bb.m ], [ %i.ar, %bb.n ]
  %.027.5 = phi i32 [ %i.ap, %bb.m ], [ %i.aq, %bb.n ] ; 2 uses
  %i.aq = ashr i32 %.027.5, 7                     ; 2 uses
  %i.ar = add i32 %.1.5, 1                        ; 2 uses
  %i.as = shl i32 %.027.5, 25
  %sext.5 = ashr i32 %i.as, 31
  %.not.5 = icmp eq i32 %i.aq, %sext.5
  br i1 %.not.5, label %bb.o, label %bb.n, !llvm.loop !363

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.av = load i16, ptr %i.au, align 2, !tbaa !161
  %i.aw = sext i16 %i.av to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.1.6 = phi i32 [ %i.ar, %bb.o ], [ %i.ay, %bb.p ]
  %.027.6 = phi i32 [ %i.aw, %bb.o ], [ %i.ax, %bb.p ] ; 2 uses
  %i.ax = ashr i32 %.027.6, 7                     ; 2 uses
  %i.ay = add i32 %.1.6, 1                        ; 2 uses
  %i.az = shl i32 %.027.6, 25
  %sext.6 = ashr i32 %i.az, 31
  %.not.6 = icmp eq i32 %i.ax, %sext.6
  br i1 %.not.6, label %bb.q, label %bb.p, !llvm.loop !363

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 14
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !161
  %i.bd = sext i16 %i.bc to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.1.7 = phi i32 [ %i.ay, %bb.q ], [ %i.bf, %bb.r ]
  %.027.7 = phi i32 [ %i.bd, %bb.q ], [ %i.be, %bb.r ] ; 2 uses
  %i.be = ashr i32 %.027.7, 7                     ; 2 uses
  %i.bf = add i32 %.1.7, 1                        ; 2 uses
  %i.bg = shl i32 %.027.7, 25
  %sext.7 = ashr i32 %i.bg, 31
  %.not.7 = icmp eq i32 %i.be, %sext.7
  br i1 %.not.7, label %bb.s, label %bb.r, !llvm.loop !363

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !161
  %i.bk = sext i16 %i.bj to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.1.8 = phi i32 [ %i.bf, %bb.s ], [ %i.bm, %bb.t ]
  %.027.8 = phi i32 [ %i.bk, %bb.s ], [ %i.bl, %bb.t ] ; 2 uses
  %i.bl = ashr i32 %.027.8, 7                     ; 2 uses
  %i.bm = add i32 %.1.8, 1                        ; 2 uses
  %i.bn = shl i32 %.027.8, 25
  %sext.8 = ashr i32 %i.bn, 31
  %.not.8 = icmp eq i32 %i.bl, %sext.8
  br i1 %.not.8, label %bb.u, label %bb.t, !llvm.loop !363

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 18
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !161
  %i.br = sext i16 %i.bq to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.1.9 = phi i32 [ %i.bm, %bb.u ], [ %i.bt, %bb.v ]
  %.027.9 = phi i32 [ %i.br, %bb.u ], [ %i.bs, %bb.v ] ; 2 uses
  %i.bs = ashr i32 %.027.9, 7                     ; 2 uses
  %i.bt = add i32 %.1.9, 1                        ; 2 uses
  %i.bu = shl i32 %.027.9, 25
  %sext.9 = ashr i32 %i.bu, 31
  %.not.9 = icmp eq i32 %i.bs, %sext.9
  br i1 %.not.9, label %bb.w, label %bb.v, !llvm.loop !363

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !161
  %i.by = sext i16 %i.bx to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.1.10 = phi i32 [ %i.bt, %bb.w ], [ %i.ca, %bb.x ]
  %.027.10 = phi i32 [ %i.by, %bb.w ], [ %i.bz, %bb.x ] ; 2 uses
  %i.bz = ashr i32 %.027.10, 7                    ; 2 uses
  %i.ca = add i32 %.1.10, 1                       ; 3 uses
  %i.cb = shl i32 %.027.10, 25
  %sext.10 = ashr i32 %i.cb, 31
  %.not.10 = icmp eq i32 %i.bz, %sext.10
  br i1 %.not.10, label %bb.y, label %bb.x, !llvm.loop !363

bb.y:                                             ; preds = %bb.x
  %i.cc = add nuw nsw i64 %.02859, 11             ; 2 uses
  %exitcond.not.10 = icmp eq i64 %i.cc, 23068672
  br i1 %exitcond.not.10, label %bb.b, label %bb.c, !llvm.loop !364

bb.z:                                             ; preds = %bb.af
  %i.cd = zext i32 %i.cp to i64
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef %i.cd) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit: ; preds = %.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.02662 = phi i64 [ 0, %bb.b ], [ %.02662.be, %.backedge.backedge ] ; 3 uses
  %.05261 = phi i32 [ 0, %bb.b ], [ %.05261.be, %.backedge.backedge ]
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02662
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !161
  %i.ch = sext i16 %i.cg to i32
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit: ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge, %.backedge
  %.153 = phi i32 [ %.05261, %.backedge ], [ %.153.be, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 4 uses
  %.0 = phi i32 [ %i.ch, %.backedge ], [ %i.cj, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 3 uses
  %i.ci = trunc i32 %.0 to i8                     ; 2 uses
  %i.cj = ashr i32 %.0, 7                         ; 3 uses
  %i.ck = and i32 %.0, 64
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.cm = icmp eq i32 %i.cj, 0
  br i1 %i.cm, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.cn = icmp eq i32 %i.cj, -1
  br i1 %i.cn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.co = and i8 %i.ci, 127
  %i.cp = add nuw i32 %.153, 1                    ; 3 uses
  %i.cq = zext i32 %.153 to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cq
  store i8 %i.co, ptr %i.cr, align 1, !tbaa !62
  %i.cs = icmp eq i32 %i.cp, 4096
  br i1 %i.cs, label %.thread, label %bb.af

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.ct = or i8 %i.ci, -128
  %i.cu = add nuw i32 %.153, 1                    ; 2 uses
  %i.cv = zext i32 %.153 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cv
  store i8 %i.ct, ptr %i.cw, align 1, !tbaa !62
  %i.cx = icmp eq i32 %i.cu, 4096
  br i1 %i.cx, label %bb.ae, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

bb.ae:                                            ; preds = %bb.ad
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge: ; preds = %bb.ae, %bb.ad
  %.153.be = phi i32 [ %i.cu, %bb.ad ], [ 0, %bb.ae ]
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

bb.af:                                            ; preds = %bb.ac
  %i.cz = add nuw nsw i64 %.02662, 1              ; 2 uses
  %exitcond64.not = icmp eq i64 %i.cz, 23068672
  br i1 %exitcond64.not, label %bb.z, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.af, %.thread
  %.02662.be = phi i64 [ %i.cz, %bb.af ], [ %i.db, %.thread ]
  %.05261.be = phi i32 [ %i.cp, %bb.af ], [ 0, %.thread ]
  br label %.backedge, !llvm.loop !365

.thread:                                          ; preds = %bb.ac
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  %i.db = add nuw nsw i64 %.02662, 1              ; 2 uses
  %exitcond64.not70 = icmp eq i64 %i.db, 23068672
  br i1 %exitcond64.not70, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %.backedge.backedge
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(3276288) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 7 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN9Stockfish4Eval4NNUEL17Leb128MagicStringE, i64 noundef 17) #19 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bd, ptr %i.a, align 4, !tbaa !129
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %.backedge

bb.c:                                             ; preds = %bb.u, %bb.a
  %.02859 = phi i64 [ 0, %bb.a ], [ %i.bf, %bb.u ] ; 10 uses
  %.02958 = phi i32 [ 0, %bb.a ], [ %i.bd, %bb.u ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.f = load i32, ptr %i.e, align 4, !tbaa !129
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %.02958, %bb.c ], [ %i.h, %bb.d ]
  %.027 = phi i32 [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.g = ashr i32 %.027, 7                        ; 2 uses
  %i.h = add i32 %.1, 1                           ; 2 uses
  %i.i = shl i32 %.027, 25
  %sext = ashr i32 %i.i, 31
  %.not = icmp eq i32 %i.g, %sext
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !366

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !129
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %i.h, %bb.e ], [ %i.n, %bb.f ]
  %.027.1 = phi i32 [ %i.l, %bb.e ], [ %i.m, %bb.f ] ; 2 uses
  %i.m = ashr i32 %.027.1, 7                      ; 2 uses
  %i.n = add i32 %.1.1, 1                         ; 2 uses
  %i.o = shl i32 %.027.1, 25
  %sext.1 = ashr i32 %i.o, 31
  %.not.1 = icmp eq i32 %i.m, %sext.1
  br i1 %.not.1, label %bb.g, label %bb.f, !llvm.loop !366

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !129
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.1.2 = phi i32 [ %i.n, %bb.g ], [ %i.t, %bb.h ]
  %.027.2 = phi i32 [ %i.r, %bb.g ], [ %i.s, %bb.h ] ; 2 uses
  %i.s = ashr i32 %.027.2, 7                      ; 2 uses
  %i.t = add i32 %.1.2, 1                         ; 2 uses
  %i.u = shl i32 %.027.2, 25
  %sext.2 = ashr i32 %i.u, 31
  %.not.2 = icmp eq i32 %i.s, %sext.2
  br i1 %.not.2, label %bb.i, label %bb.h, !llvm.loop !366

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !129
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.1.3 = phi i32 [ %i.t, %bb.i ], [ %i.z, %bb.j ]
  %.027.3 = phi i32 [ %i.x, %bb.i ], [ %i.y, %bb.j ] ; 2 uses
  %i.y = ashr i32 %.027.3, 7                      ; 2 uses
  %i.z = add i32 %.1.3, 1                         ; 2 uses
  %i.aa = shl i32 %.027.3, 25
  %sext.3 = ashr i32 %i.aa, 31
  %.not.3 = icmp eq i32 %i.y, %sext.3
  br i1 %.not.3, label %bb.k, label %bb.j, !llvm.loop !366

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !129
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.1.4 = phi i32 [ %i.z, %bb.k ], [ %i.af, %bb.l ]
  %.027.4 = phi i32 [ %i.ad, %bb.k ], [ %i.ae, %bb.l ] ; 2 uses
  %i.ae = ashr i32 %.027.4, 7                     ; 2 uses
  %i.af = add i32 %.1.4, 1                        ; 2 uses
  %i.ag = shl i32 %.027.4, 25
  %sext.4 = ashr i32 %i.ag, 31
  %.not.4 = icmp eq i32 %i.ae, %sext.4
  br i1 %.not.4, label %bb.m, label %bb.l, !llvm.loop !366

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !129
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.1.5 = phi i32 [ %i.af, %bb.m ], [ %i.al, %bb.n ]
  %.027.5 = phi i32 [ %i.aj, %bb.m ], [ %i.ak, %bb.n ] ; 2 uses
  %i.ak = ashr i32 %.027.5, 7                     ; 2 uses
  %i.al = add i32 %.1.5, 1                        ; 2 uses
  %i.am = shl i32 %.027.5, 25
  %sext.5 = ashr i32 %i.am, 31
  %.not.5 = icmp eq i32 %i.ak, %sext.5
  br i1 %.not.5, label %bb.o, label %bb.n, !llvm.loop !366

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !129
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.1.6 = phi i32 [ %i.al, %bb.o ], [ %i.ar, %bb.p ]
  %.027.6 = phi i32 [ %i.ap, %bb.o ], [ %i.aq, %bb.p ] ; 2 uses
  %i.aq = ashr i32 %.027.6, 7                     ; 2 uses
  %i.ar = add i32 %.1.6, 1                        ; 2 uses
  %i.as = shl i32 %.027.6, 25
  %sext.6 = ashr i32 %i.as, 31
  %.not.6 = icmp eq i32 %i.aq, %sext.6
  br i1 %.not.6, label %bb.q, label %bb.p, !llvm.loop !366

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !129
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.1.7 = phi i32 [ %i.ar, %bb.q ], [ %i.ax, %bb.r ]
  %.027.7 = phi i32 [ %i.av, %bb.q ], [ %i.aw, %bb.r ] ; 2 uses
  %i.aw = ashr i32 %.027.7, 7                     ; 2 uses
  %i.ax = add i32 %.1.7, 1                        ; 2 uses
  %i.ay = shl i32 %.027.7, 25
  %sext.7 = ashr i32 %i.ay, 31
  %.not.7 = icmp eq i32 %i.aw, %sext.7
  br i1 %.not.7, label %bb.s, label %bb.r, !llvm.loop !366

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !129
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.1.8 = phi i32 [ %i.ax, %bb.s ], [ %i.bd, %bb.t ]
  %.027.8 = phi i32 [ %i.bb, %bb.s ], [ %i.bc, %bb.t ] ; 2 uses
  %i.bc = ashr i32 %.027.8, 7                     ; 2 uses
  %i.bd = add i32 %.1.8, 1                        ; 3 uses
  %i.be = shl i32 %.027.8, 25
  %sext.8 = ashr i32 %i.be, 31
  %.not.8 = icmp eq i32 %i.bc, %sext.8
  br i1 %.not.8, label %bb.u, label %bb.t, !llvm.loop !366

bb.u:                                             ; preds = %bb.t
  %i.bf = add nuw nsw i64 %.02859, 9              ; 2 uses
  %exitcond.not.8 = icmp eq i64 %i.bf, 819072
  br i1 %exitcond.not.8, label %bb.b, label %bb.c, !llvm.loop !367

bb.v:                                             ; preds = %bb.ab
  %i.bg = zext i32 %i.br to i64
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef %i.bg) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit: ; preds = %.thread, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.02662 = phi i64 [ 0, %bb.b ], [ %.02662.be, %.backedge.backedge ] ; 3 uses
  %.05261 = phi i32 [ 0, %bb.b ], [ %.05261.be, %.backedge.backedge ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02662
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !129
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit: ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge, %.backedge
  %.153 = phi i32 [ %.05261, %.backedge ], [ %.153.be, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 4 uses
  %.0 = phi i32 [ %i.bj, %.backedge ], [ %i.bl, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 3 uses
  %i.bk = trunc i32 %.0 to i8                     ; 2 uses
  %i.bl = ashr i32 %.0, 7                         ; 3 uses
  %i.bm = and i32 %.0, 64
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.bo = icmp eq i32 %i.bl, 0
  br i1 %i.bo, label %bb.y, label %bb.z

bb.x:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.bp = icmp eq i32 %i.bl, -1
  br i1 %i.bp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bq = and i8 %i.bk, 127
  %i.br = add nuw i32 %.153, 1                    ; 3 uses
  %i.bs = zext i32 %.153 to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bs
  store i8 %i.bq, ptr %i.bt, align 1, !tbaa !62
  %i.bu = icmp eq i32 %i.br, 4096
  br i1 %i.bu, label %.thread, label %bb.ab

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.bv = or i8 %i.bk, -128
  %i.bw = add nuw i32 %.153, 1                    ; 2 uses
  %i.bx = zext i32 %.153 to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bx
  store i8 %i.bv, ptr %i.by, align 1, !tbaa !62
  %i.bz = icmp eq i32 %i.bw, 4096
  br i1 %i.bz, label %bb.aa, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

bb.aa:                                            ; preds = %bb.z
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge: ; preds = %bb.aa, %bb.z
  %.153.be = phi i32 [ %i.bw, %bb.z ], [ 0, %bb.aa ]
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

bb.ab:                                            ; preds = %bb.y
  %i.cb = add nuw nsw i64 %.02662, 1              ; 2 uses
  %exitcond64.not = icmp eq i64 %i.cb, 819072
  br i1 %exitcond64.not, label %bb.v, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ab, %.thread
  %.02662.be = phi i64 [ %i.cb, %bb.ab ], [ %i.cd, %.thread ]
  %.05261.be = phi i32 [ %i.br, %bb.ab ], [ 0, %.thread ]
  br label %.backedge, !llvm.loop !368

.thread:                                          ; preds = %bb.y
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  %i.cd = add nuw nsw i64 %.02662, 1              ; 2 uses
  %exitcond64.not70 = icmp eq i64 %i.cd, 819072
  br i1 %exitcond64.not70, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %.backedge.backedge
}

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj1024ELi15ELi32EE16write_parametersERSo(ptr noundef nonnull align 64 dereferenceable(17856) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 64 dereferenceable(16448) %0, i64 noundef 64) #19 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06.i = phi i32 [ 0, %bb.a ], [ %i.p, %bb.b ]  ; 4 uses
  %i.e = shl nuw nsw i32 %.06.i, 4
  %i.f = and i32 %i.e, 16320
  %i.g = lshr i32 %.06.i, 8
  %i.h = and i32 %i.g, 60
  %i.i = and i32 %.06.i, 3
  %i.j = or disjoint i32 %i.h, %i.i
  %i.k = or disjoint i32 %i.j, %i.f
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.n, ptr %i.b, align 1, !tbaa !62
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = add nuw nsw i32 %.06.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.p, 16384
  br i1 %exitcond.not.i, label %_ZNK9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj1024ELj16EE16write_parametersERSo.exit, label %bb.b, !llvm.loop !369

_ZNK9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj1024ELj16EE16write_parametersERSo.exit: ; preds = %bb.b
  %i.q = load ptr, ptr %1, align 8, !tbaa !93
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !149
  %i.w = and i32 %i.v, 5
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj1024ELj16EE16write_parametersERSo.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16512
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 64 dereferenceable(1152) %i.x, i64 noundef 128) #19 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16640
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.06.i6 = phi i32 [ 0, %bb.c ], [ %i.al, %bb.d ] ; 4 uses
  %i.aa = shl nuw nsw i32 %.06.i6, 5
  %i.ab = and i32 %i.aa, 896
  %i.ac = lshr i32 %.06.i6, 3
  %i.ad = and i32 %i.ac, 124
  %i.ae = and i32 %.06.i6, 3
  %i.af = or disjoint i32 %i.ad, %i.ae
  %i.ag = or disjoint i32 %i.af, %i.ab
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.aj, ptr %i.a, align 1, !tbaa !62
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = add nuw nsw i32 %.06.i6, 1              ; 2 uses
  %exitcond.not.i7 = icmp eq i32 %i.al, 1024
  br i1 %exitcond.not.i7, label %_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE16write_parametersERSo.exit, label %bb.d, !llvm.loop !10

_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE16write_parametersERSo.exit: ; preds = %bb.d
  %i.am = load ptr, ptr %1, align 8, !tbaa !93
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %1, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !149
  %i.as = and i32 %i.ar, 5
  %.not.i8 = icmp eq i32 %i.as, 0
  br i1 %.not.i8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE16write_parametersERSo.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 17728
  %i.au = call noundef zeroext i1 @_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj32ELj1EE16write_parametersERSo(ptr noundef nonnull align 64 dereferenceable(96) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE16write_parametersERSo.exit, %_ZNK9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj1024ELj16EE16write_parametersERSo.exit
  %i.av = phi i1 [ false, %_ZNK9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj1024ELj16EE16write_parametersERSo.exit ], [ false, %_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE16write_parametersERSo.exit ], [ %i.au, %bb.e ]
  ret i1 %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj32ELj1EE16write_parametersERSo(ptr noundef nonnull align 64 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 128 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0, i64 noundef 4) #19 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i8, ptr %i.c, align 64, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.d, ptr %i.a, align 1, !tbaa !62
  %i.e = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.g = load i8, ptr %i.f, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1, !tbaa !62
  %i.h = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.j = load i8, ptr %i.i, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.j, ptr %i.a, align 1, !tbaa !62
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.m = load i8, ptr %i.l, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.m, ptr %i.a, align 1, !tbaa !62
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.p = load i8, ptr %i.o, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.p, ptr %i.a, align 1, !tbaa !62
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.s = load i8, ptr %i.r, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.s, ptr %i.a, align 1, !tbaa !62
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 70
  %i.v = load i8, ptr %i.u, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.v, ptr %i.a, align 1, !tbaa !62
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 71
  %i.y = load i8, ptr %i.x, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.y, ptr %i.a, align 1, !tbaa !62
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.ab, ptr %i.a, align 1, !tbaa !62
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.ae, ptr %i.a, align 1, !tbaa !62
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.ah, ptr %i.a, align 1, !tbaa !62
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 75
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.ak, ptr %i.a, align 1, !tbaa !62
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.an = load i8, ptr %i.am, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.an, ptr %i.a, align 1, !tbaa !62
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.aq, ptr %i.a, align 1, !tbaa !62
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.at = load i8, ptr %i.as, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.at, ptr %i.a, align 1, !tbaa !62
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
end_hunk_0
begin_hunk_1_@_ZNK9Stockfish4Eval4NNUE18FeatureTransformerILj128EE16write_parametersERSo:bb.a
  %i.az = sdiv <32 x i16> %wide.load12.1, splat (i16 2)
  %i.ba = sdiv <32 x i16> %wide.load13.1, splat (i16 2)
  store <32 x i16> %i.ax, ptr %next.gep.1, align 64, !tbaa !161
  store <32 x i16> %i.ay, ptr %i.au, align 64, !tbaa !161
  store <32 x i16> %i.az, ptr %i.av, align 64, !tbaa !161
  store <32 x i16> %i.ba, ptr %i.aw, align 64, !tbaa !161
  %index.next.1 = add nuw nsw i64 %index, 256     ; 2 uses
  %i.bb = icmp eq i64 %index.next.1, 2883584
  br i1 %i.bb, label %vector.body15, label %vector.body, !llvm.loop !376

vector.body15:                                    ; preds = %vector.body
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %wide.load16 = load <32 x i16>, ptr %i.a, align 64, !tbaa !161
  %wide.load17 = load <32 x i16>, ptr %i.bc, align 64, !tbaa !161
  %wide.load18 = load <32 x i16>, ptr %i.bd, align 64, !tbaa !161
  %wide.load19 = load <32 x i16>, ptr %i.be, align 64, !tbaa !161
  %i.bf = sdiv <32 x i16> %wide.load16, splat (i16 2)
  %i.bg = sdiv <32 x i16> %wide.load17, splat (i16 2)
  %i.bh = sdiv <32 x i16> %wide.load18, splat (i16 2)
  %i.bi = sdiv <32 x i16> %wide.load19, splat (i16 2)
  store <32 x i16> %i.bf, ptr %i.a, align 64, !tbaa !161
  store <32 x i16> %i.bg, ptr %i.bc, align 64, !tbaa !161
  store <32 x i16> %i.bh, ptr %i.bd, align 64, !tbaa !161
  store <32 x i16> %i.bi, ptr %i.be, align 64, !tbaa !161
  tail call void @_ZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 2 dereferenceable(256) %i.a)
  tail call void @_ZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 2 dereferenceable(5767168) %i.r)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 5767488
  tail call void @_ZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(720896) %i.bj)
  %i.bk = load ptr, ptr %1, align 8, !tbaa !93
  %i.bl = getelementptr i8, ptr %i.bk, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %1, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !149
  %i.bq = and i32 %i.bp, 5
  %.not = icmp eq i32 %i.bq, 0
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.a, i64 noundef 6488448, i64 noundef 64) #21
  ret i1 %.not
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(256) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 7 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN9Stockfish4Eval4NNUEL17Leb128MagicStringE, i64 noundef 17) #19 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !129
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %.backedge

bb.c:                                             ; preds = %bb.s, %bb.a
  %.02859 = phi i64 [ 0, %bb.a ], [ %i.bh, %bb.s ] ; 9 uses
  %.02958 = phi i32 [ 0, %bb.a ], [ %i.bf, %bb.s ]
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.f = load i16, ptr %i.e, align 2, !tbaa !161
  %i.g = sext i16 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %.02958, %bb.c ], [ %i.i, %bb.d ]
  %.027 = phi i32 [ %i.g, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.h = ashr i32 %.027, 7                        ; 2 uses
  %i.i = add i32 %.1, 1                           ; 2 uses
  %i.j = shl i32 %.027, 25
  %sext = ashr i32 %i.j, 31
  %.not = icmp eq i32 %i.h, %sext
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !379

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !161
  %i.n = sext i16 %i.m to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %i.i, %bb.e ], [ %i.p, %bb.f ]
  %.027.1 = phi i32 [ %i.n, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %i.o = ashr i32 %.027.1, 7                      ; 2 uses
  %i.p = add i32 %.1.1, 1                         ; 2 uses
  %i.q = shl i32 %.027.1, 25
  %sext.1 = ashr i32 %i.q, 31
  %.not.1 = icmp eq i32 %i.o, %sext.1
  br i1 %.not.1, label %bb.g, label %bb.f, !llvm.loop !379

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i16, ptr %i.s, align 2, !tbaa !161
  %i.u = sext i16 %i.t to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.1.2 = phi i32 [ %i.p, %bb.g ], [ %i.w, %bb.h ]
  %.027.2 = phi i32 [ %i.u, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %i.v = ashr i32 %.027.2, 7                      ; 2 uses
  %i.w = add i32 %.1.2, 1                         ; 2 uses
  %i.x = shl i32 %.027.2, 25
  %sext.2 = ashr i32 %i.x, 31
  %.not.2 = icmp eq i32 %i.v, %sext.2
  br i1 %.not.2, label %bb.i, label %bb.h, !llvm.loop !379

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !161
  %i.ab = sext i16 %i.aa to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.1.3 = phi i32 [ %i.w, %bb.i ], [ %i.ad, %bb.j ]
  %.027.3 = phi i32 [ %i.ab, %bb.i ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ac = ashr i32 %.027.3, 7                     ; 2 uses
  %i.ad = add i32 %.1.3, 1                        ; 2 uses
  %i.ae = shl i32 %.027.3, 25
  %sext.3 = ashr i32 %i.ae, 31
  %.not.3 = icmp eq i32 %i.ac, %sext.3
  br i1 %.not.3, label %bb.k, label %bb.j, !llvm.loop !379

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !161
  %i.ai = sext i16 %i.ah to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.1.4 = phi i32 [ %i.ad, %bb.k ], [ %i.ak, %bb.l ]
  %.027.4 = phi i32 [ %i.ai, %bb.k ], [ %i.aj, %bb.l ] ; 2 uses
  %i.aj = ashr i32 %.027.4, 7                     ; 2 uses
  %i.ak = add i32 %.1.4, 1                        ; 2 uses
  %i.al = shl i32 %.027.4, 25
  %sext.4 = ashr i32 %i.al, 31
  %.not.4 = icmp eq i32 %i.aj, %sext.4
  br i1 %.not.4, label %bb.m, label %bb.l, !llvm.loop !379

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !161
  %i.ap = sext i16 %i.ao to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.1.5 = phi i32 [ %i.ak, %bb.m ], [ %i.ar, %bb.n ]
  %.027.5 = phi i32 [ %i.ap, %bb.m ], [ %i.aq, %bb.n ] ; 2 uses
  %i.aq = ashr i32 %.027.5, 7                     ; 2 uses
  %i.ar = add i32 %.1.5, 1                        ; 2 uses
  %i.as = shl i32 %.027.5, 25
  %sext.5 = ashr i32 %i.as, 31
  %.not.5 = icmp eq i32 %i.aq, %sext.5
  br i1 %.not.5, label %bb.o, label %bb.n, !llvm.loop !379

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.av = load i16, ptr %i.au, align 2, !tbaa !161
  %i.aw = sext i16 %i.av to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.1.6 = phi i32 [ %i.ar, %bb.o ], [ %i.ay, %bb.p ]
  %.027.6 = phi i32 [ %i.aw, %bb.o ], [ %i.ax, %bb.p ] ; 2 uses
  %i.ax = ashr i32 %.027.6, 7                     ; 2 uses
  %i.ay = add i32 %.1.6, 1                        ; 2 uses
  %i.az = shl i32 %.027.6, 25
  %sext.6 = ashr i32 %i.az, 31
  %.not.6 = icmp eq i32 %i.ax, %sext.6
  br i1 %.not.6, label %bb.q, label %bb.p, !llvm.loop !379

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 14
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !161
  %i.bd = sext i16 %i.bc to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.1.7 = phi i32 [ %i.ay, %bb.q ], [ %i.bf, %bb.r ]
  %.027.7 = phi i32 [ %i.bd, %bb.q ], [ %i.be, %bb.r ] ; 2 uses
  %i.be = ashr i32 %.027.7, 7                     ; 2 uses
  %i.bf = add i32 %.1.7, 1                        ; 3 uses
  %i.bg = shl i32 %.027.7, 25
  %sext.7 = ashr i32 %i.bg, 31
  %.not.7 = icmp eq i32 %i.be, %sext.7
  br i1 %.not.7, label %bb.s, label %bb.r, !llvm.loop !379

bb.s:                                             ; preds = %bb.r
  %i.bh = add nuw nsw i64 %.02859, 8              ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.bh, 128
  br i1 %exitcond.not.7, label %bb.b, label %bb.c, !llvm.loop !380

bb.t:                                             ; preds = %bb.z
  %i.bi = zext i32 %i.bu to i64
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef %i.bi) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit: ; preds = %.thread, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.02662 = phi i64 [ 0, %bb.b ], [ %.02662.be, %.backedge.backedge ] ; 3 uses
  %.05261 = phi i32 [ 0, %bb.b ], [ %.05261.be, %.backedge.backedge ]
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02662
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !161
  %i.bm = sext i16 %i.bl to i32
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit: ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge, %.backedge
  %.153 = phi i32 [ %.05261, %.backedge ], [ %.153.be, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 4 uses
  %.0 = phi i32 [ %i.bm, %.backedge ], [ %i.bo, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 3 uses
  %i.bn = trunc i32 %.0 to i8                     ; 2 uses
  %i.bo = ashr i32 %.0, 7                         ; 3 uses
  %i.bp = and i32 %.0, 64
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.br = icmp eq i32 %i.bo, 0
  br i1 %i.br, label %bb.w, label %bb.x

bb.v:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.bs = icmp eq i32 %i.bo, -1
  br i1 %i.bs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bt = and i8 %i.bn, 127
  %i.bu = add nuw i32 %.153, 1                    ; 3 uses
  %i.bv = zext i32 %.153 to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bv
  store i8 %i.bt, ptr %i.bw, align 1, !tbaa !62
  %i.bx = icmp eq i32 %i.bu, 4096
  br i1 %i.bx, label %.thread, label %bb.z

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.by = or i8 %i.bn, -128
  %i.bz = add nuw i32 %.153, 1                    ; 2 uses
  %i.ca = zext i32 %.153 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ca
  store i8 %i.by, ptr %i.cb, align 1, !tbaa !62
  %i.cc = icmp eq i32 %i.bz, 4096
  br i1 %i.cc, label %bb.y, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

bb.y:                                             ; preds = %bb.x
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge: ; preds = %bb.y, %bb.x
  %.153.be = phi i32 [ %i.bz, %bb.x ], [ 0, %bb.y ]
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

bb.z:                                             ; preds = %bb.w
  %i.ce = add nuw nsw i64 %.02662, 1              ; 2 uses
  %exitcond64.not = icmp eq i64 %i.ce, 128
  br i1 %exitcond64.not, label %bb.t, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.z, %.thread
  %.02662.be = phi i64 [ %i.ce, %bb.z ], [ %i.cg, %.thread ]
  %.05261.be = phi i32 [ %i.bu, %bb.z ], [ 0, %.thread ]
  br label %.backedge, !llvm.loop !381

.thread:                                          ; preds = %bb.w
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  %i.cg = add nuw nsw i64 %.02662, 1              ; 2 uses
  %exitcond64.not70 = icmp eq i64 %i.cg, 128
  br i1 %exitcond64.not70, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %.backedge.backedge
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(5767168) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 7 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN9Stockfish4Eval4NNUEL17Leb128MagicStringE, i64 noundef 17) #19 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !129
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %.backedge

bb.c:                                             ; preds = %bb.y, %bb.a
  %.02859 = phi i64 [ 0, %bb.a ], [ %i.cc, %bb.y ] ; 12 uses
  %.02958 = phi i32 [ 0, %bb.a ], [ %i.ca, %bb.y ]
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.f = load i16, ptr %i.e, align 2, !tbaa !161
  %i.g = sext i16 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %.02958, %bb.c ], [ %i.i, %bb.d ]
  %.027 = phi i32 [ %i.g, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.h = ashr i32 %.027, 7                        ; 2 uses
  %i.i = add i32 %.1, 1                           ; 2 uses
  %i.j = shl i32 %.027, 25
  %sext = ashr i32 %i.j, 31
  %.not = icmp eq i32 %i.h, %sext
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !382

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !161
  %i.n = sext i16 %i.m to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %i.i, %bb.e ], [ %i.p, %bb.f ]
  %.027.1 = phi i32 [ %i.n, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %i.o = ashr i32 %.027.1, 7                      ; 2 uses
  %i.p = add i32 %.1.1, 1                         ; 2 uses
  %i.q = shl i32 %.027.1, 25
  %sext.1 = ashr i32 %i.q, 31
  %.not.1 = icmp eq i32 %i.o, %sext.1
  br i1 %.not.1, label %bb.g, label %bb.f, !llvm.loop !382

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i16, ptr %i.s, align 2, !tbaa !161
  %i.u = sext i16 %i.t to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.1.2 = phi i32 [ %i.p, %bb.g ], [ %i.w, %bb.h ]
  %.027.2 = phi i32 [ %i.u, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %i.v = ashr i32 %.027.2, 7                      ; 2 uses
  %i.w = add i32 %.1.2, 1                         ; 2 uses
  %i.x = shl i32 %.027.2, 25
  %sext.2 = ashr i32 %i.x, 31
  %.not.2 = icmp eq i32 %i.v, %sext.2
  br i1 %.not.2, label %bb.i, label %bb.h, !llvm.loop !382

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !161
  %i.ab = sext i16 %i.aa to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.1.3 = phi i32 [ %i.w, %bb.i ], [ %i.ad, %bb.j ]
  %.027.3 = phi i32 [ %i.ab, %bb.i ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ac = ashr i32 %.027.3, 7                     ; 2 uses
  %i.ad = add i32 %.1.3, 1                        ; 2 uses
  %i.ae = shl i32 %.027.3, 25
  %sext.3 = ashr i32 %i.ae, 31
  %.not.3 = icmp eq i32 %i.ac, %sext.3
  br i1 %.not.3, label %bb.k, label %bb.j, !llvm.loop !382

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !161
  %i.ai = sext i16 %i.ah to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.1.4 = phi i32 [ %i.ad, %bb.k ], [ %i.ak, %bb.l ]
  %.027.4 = phi i32 [ %i.ai, %bb.k ], [ %i.aj, %bb.l ] ; 2 uses
  %i.aj = ashr i32 %.027.4, 7                     ; 2 uses
  %i.ak = add i32 %.1.4, 1                        ; 2 uses
  %i.al = shl i32 %.027.4, 25
  %sext.4 = ashr i32 %i.al, 31
  %.not.4 = icmp eq i32 %i.aj, %sext.4
  br i1 %.not.4, label %bb.m, label %bb.l, !llvm.loop !382

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !161
  %i.ap = sext i16 %i.ao to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.1.5 = phi i32 [ %i.ak, %bb.m ], [ %i.ar, %bb.n ]
  %.027.5 = phi i32 [ %i.ap, %bb.m ], [ %i.aq, %bb.n ] ; 2 uses
  %i.aq = ashr i32 %.027.5, 7                     ; 2 uses
  %i.ar = add i32 %.1.5, 1                        ; 2 uses
  %i.as = shl i32 %.027.5, 25
  %sext.5 = ashr i32 %i.as, 31
  %.not.5 = icmp eq i32 %i.aq, %sext.5
  br i1 %.not.5, label %bb.o, label %bb.n, !llvm.loop !382

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.av = load i16, ptr %i.au, align 2, !tbaa !161
  %i.aw = sext i16 %i.av to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.1.6 = phi i32 [ %i.ar, %bb.o ], [ %i.ay, %bb.p ]
  %.027.6 = phi i32 [ %i.aw, %bb.o ], [ %i.ax, %bb.p ] ; 2 uses
  %i.ax = ashr i32 %.027.6, 7                     ; 2 uses
  %i.ay = add i32 %.1.6, 1                        ; 2 uses
  %i.az = shl i32 %.027.6, 25
  %sext.6 = ashr i32 %i.az, 31
  %.not.6 = icmp eq i32 %i.ax, %sext.6
  br i1 %.not.6, label %bb.q, label %bb.p, !llvm.loop !382

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 14
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !161
  %i.bd = sext i16 %i.bc to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.1.7 = phi i32 [ %i.ay, %bb.q ], [ %i.bf, %bb.r ]
  %.027.7 = phi i32 [ %i.bd, %bb.q ], [ %i.be, %bb.r ] ; 2 uses
  %i.be = ashr i32 %.027.7, 7                     ; 2 uses
  %i.bf = add i32 %.1.7, 1                        ; 2 uses
  %i.bg = shl i32 %.027.7, 25
  %sext.7 = ashr i32 %i.bg, 31
  %.not.7 = icmp eq i32 %i.be, %sext.7
  br i1 %.not.7, label %bb.s, label %bb.r, !llvm.loop !382

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !161
  %i.bk = sext i16 %i.bj to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.1.8 = phi i32 [ %i.bf, %bb.s ], [ %i.bm, %bb.t ]
  %.027.8 = phi i32 [ %i.bk, %bb.s ], [ %i.bl, %bb.t ] ; 2 uses
  %i.bl = ashr i32 %.027.8, 7                     ; 2 uses
  %i.bm = add i32 %.1.8, 1                        ; 2 uses
  %i.bn = shl i32 %.027.8, 25
  %sext.8 = ashr i32 %i.bn, 31
  %.not.8 = icmp eq i32 %i.bl, %sext.8
  br i1 %.not.8, label %bb.u, label %bb.t, !llvm.loop !382

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 18
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !161
  %i.br = sext i16 %i.bq to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.1.9 = phi i32 [ %i.bm, %bb.u ], [ %i.bt, %bb.v ]
  %.027.9 = phi i32 [ %i.br, %bb.u ], [ %i.bs, %bb.v ] ; 2 uses
  %i.bs = ashr i32 %.027.9, 7                     ; 2 uses
  %i.bt = add i32 %.1.9, 1                        ; 2 uses
  %i.bu = shl i32 %.027.9, 25
  %sext.9 = ashr i32 %i.bu, 31
  %.not.9 = icmp eq i32 %i.bs, %sext.9
  br i1 %.not.9, label %bb.w, label %bb.v, !llvm.loop !382

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02859
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !161
  %i.by = sext i16 %i.bx to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.1.10 = phi i32 [ %i.bt, %bb.w ], [ %i.ca, %bb.x ]
  %.027.10 = phi i32 [ %i.by, %bb.w ], [ %i.bz, %bb.x ] ; 2 uses
  %i.bz = ashr i32 %.027.10, 7                    ; 2 uses
  %i.ca = add i32 %.1.10, 1                       ; 3 uses
  %i.cb = shl i32 %.027.10, 25
  %sext.10 = ashr i32 %i.cb, 31
  %.not.10 = icmp eq i32 %i.bz, %sext.10
  br i1 %.not.10, label %bb.y, label %bb.x, !llvm.loop !382

bb.y:                                             ; preds = %bb.x
  %i.cc = add nuw nsw i64 %.02859, 11             ; 2 uses
  %exitcond.not.10 = icmp eq i64 %i.cc, 2883584
  br i1 %exitcond.not.10, label %bb.b, label %bb.c, !llvm.loop !383

bb.z:                                             ; preds = %bb.af
  %i.cd = zext i32 %i.cp to i64
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef %i.cd) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit: ; preds = %.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.02662 = phi i64 [ 0, %bb.b ], [ %.02662.be, %.backedge.backedge ] ; 3 uses
  %.05261 = phi i32 [ 0, %bb.b ], [ %.05261.be, %.backedge.backedge ]
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02662
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !161
  %i.ch = sext i16 %i.cg to i32
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit: ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge, %.backedge
  %.153 = phi i32 [ %.05261, %.backedge ], [ %.153.be, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 4 uses
  %.0 = phi i32 [ %i.ch, %.backedge ], [ %i.cj, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 3 uses
  %i.ci = trunc i32 %.0 to i8                     ; 2 uses
  %i.cj = ashr i32 %.0, 7                         ; 3 uses
  %i.ck = and i32 %.0, 64
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.cm = icmp eq i32 %i.cj, 0
  br i1 %i.cm, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.cn = icmp eq i32 %i.cj, -1
  br i1 %i.cn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.co = and i8 %i.ci, 127
  %i.cp = add nuw i32 %.153, 1                    ; 3 uses
  %i.cq = zext i32 %.153 to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cq
  store i8 %i.co, ptr %i.cr, align 1, !tbaa !62
  %i.cs = icmp eq i32 %i.cp, 4096
  br i1 %i.cs, label %.thread, label %bb.af

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.ct = or i8 %i.ci, -128
  %i.cu = add nuw i32 %.153, 1                    ; 2 uses
  %i.cv = zext i32 %.153 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cv
  store i8 %i.ct, ptr %i.cw, align 1, !tbaa !62
  %i.cx = icmp eq i32 %i.cu, 4096
  br i1 %i.cx, label %bb.ae, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

bb.ae:                                            ; preds = %bb.ad
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge: ; preds = %bb.ae, %bb.ad
  %.153.be = phi i32 [ %i.cu, %bb.ad ], [ 0, %bb.ae ]
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

bb.af:                                            ; preds = %bb.ac
  %i.cz = add nuw nsw i64 %.02662, 1              ; 2 uses
  %exitcond64.not = icmp eq i64 %i.cz, 2883584
  br i1 %exitcond64.not, label %bb.z, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.af, %.thread
  %.02662.be = phi i64 [ %i.cz, %bb.af ], [ %i.db, %.thread ]
  %.05261.be = phi i32 [ %i.cp, %bb.af ], [ 0, %.thread ]
  br label %.backedge, !llvm.loop !384

.thread:                                          ; preds = %bb.ac
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  %i.db = add nuw nsw i64 %.02662, 1              ; 2 uses
  %exitcond64.not70 = icmp eq i64 %i.db, 2883584
  br i1 %exitcond64.not70, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %.backedge.backedge
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(720896) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 7 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN9Stockfish4Eval4NNUEL17Leb128MagicStringE, i64 noundef 17) #19 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bp, ptr %i.a, align 4, !tbaa !129
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %.backedge

bb.c:                                             ; preds = %bb.y, %bb.a
  %.02859 = phi i64 [ 0, %bb.a ], [ %i.br, %bb.y ] ; 12 uses
  %.02958 = phi i32 [ 0, %bb.a ], [ %i.bp, %bb.y ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.f = load i32, ptr %i.e, align 4, !tbaa !129
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %.02958, %bb.c ], [ %i.h, %bb.d ]
  %.027 = phi i32 [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.g = ashr i32 %.027, 7                        ; 2 uses
  %i.h = add i32 %.1, 1                           ; 2 uses
  %i.i = shl i32 %.027, 25
  %sext = ashr i32 %i.i, 31
  %.not = icmp eq i32 %i.g, %sext
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !385

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !129
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %i.h, %bb.e ], [ %i.n, %bb.f ]
  %.027.1 = phi i32 [ %i.l, %bb.e ], [ %i.m, %bb.f ] ; 2 uses
  %i.m = ashr i32 %.027.1, 7                      ; 2 uses
  %i.n = add i32 %.1.1, 1                         ; 2 uses
  %i.o = shl i32 %.027.1, 25
  %sext.1 = ashr i32 %i.o, 31
  %.not.1 = icmp eq i32 %i.m, %sext.1
  br i1 %.not.1, label %bb.g, label %bb.f, !llvm.loop !385

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !129
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.1.2 = phi i32 [ %i.n, %bb.g ], [ %i.t, %bb.h ]
  %.027.2 = phi i32 [ %i.r, %bb.g ], [ %i.s, %bb.h ] ; 2 uses
  %i.s = ashr i32 %.027.2, 7                      ; 2 uses
  %i.t = add i32 %.1.2, 1                         ; 2 uses
  %i.u = shl i32 %.027.2, 25
  %sext.2 = ashr i32 %i.u, 31
  %.not.2 = icmp eq i32 %i.s, %sext.2
  br i1 %.not.2, label %bb.i, label %bb.h, !llvm.loop !385

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !129
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.1.3 = phi i32 [ %i.t, %bb.i ], [ %i.z, %bb.j ]
  %.027.3 = phi i32 [ %i.x, %bb.i ], [ %i.y, %bb.j ] ; 2 uses
  %i.y = ashr i32 %.027.3, 7                      ; 2 uses
  %i.z = add i32 %.1.3, 1                         ; 2 uses
  %i.aa = shl i32 %.027.3, 25
  %sext.3 = ashr i32 %i.aa, 31
  %.not.3 = icmp eq i32 %i.y, %sext.3
  br i1 %.not.3, label %bb.k, label %bb.j, !llvm.loop !385

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !129
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.1.4 = phi i32 [ %i.z, %bb.k ], [ %i.af, %bb.l ]
  %.027.4 = phi i32 [ %i.ad, %bb.k ], [ %i.ae, %bb.l ] ; 2 uses
  %i.ae = ashr i32 %.027.4, 7                     ; 2 uses
  %i.af = add i32 %.1.4, 1                        ; 2 uses
  %i.ag = shl i32 %.027.4, 25
  %sext.4 = ashr i32 %i.ag, 31
  %.not.4 = icmp eq i32 %i.ae, %sext.4
  br i1 %.not.4, label %bb.m, label %bb.l, !llvm.loop !385

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !129
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.1.5 = phi i32 [ %i.af, %bb.m ], [ %i.al, %bb.n ]
  %.027.5 = phi i32 [ %i.aj, %bb.m ], [ %i.ak, %bb.n ] ; 2 uses
  %i.ak = ashr i32 %.027.5, 7                     ; 2 uses
  %i.al = add i32 %.1.5, 1                        ; 2 uses
  %i.am = shl i32 %.027.5, 25
  %sext.5 = ashr i32 %i.am, 31
  %.not.5 = icmp eq i32 %i.ak, %sext.5
  br i1 %.not.5, label %bb.o, label %bb.n, !llvm.loop !385

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !129
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.1.6 = phi i32 [ %i.al, %bb.o ], [ %i.ar, %bb.p ]
  %.027.6 = phi i32 [ %i.ap, %bb.o ], [ %i.aq, %bb.p ] ; 2 uses
  %i.aq = ashr i32 %.027.6, 7                     ; 2 uses
  %i.ar = add i32 %.1.6, 1                        ; 2 uses
  %i.as = shl i32 %.027.6, 25
  %sext.6 = ashr i32 %i.as, 31
  %.not.6 = icmp eq i32 %i.aq, %sext.6
  br i1 %.not.6, label %bb.q, label %bb.p, !llvm.loop !385

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !129
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.1.7 = phi i32 [ %i.ar, %bb.q ], [ %i.ax, %bb.r ]
  %.027.7 = phi i32 [ %i.av, %bb.q ], [ %i.aw, %bb.r ] ; 2 uses
  %i.aw = ashr i32 %.027.7, 7                     ; 2 uses
  %i.ax = add i32 %.1.7, 1                        ; 2 uses
  %i.ay = shl i32 %.027.7, 25
  %sext.7 = ashr i32 %i.ay, 31
  %.not.7 = icmp eq i32 %i.aw, %sext.7
  br i1 %.not.7, label %bb.s, label %bb.r, !llvm.loop !385

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !129
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.1.8 = phi i32 [ %i.ax, %bb.s ], [ %i.bd, %bb.t ]
  %.027.8 = phi i32 [ %i.bb, %bb.s ], [ %i.bc, %bb.t ] ; 2 uses
  %i.bc = ashr i32 %.027.8, 7                     ; 2 uses
  %i.bd = add i32 %.1.8, 1                        ; 2 uses
  %i.be = shl i32 %.027.8, 25
  %sext.8 = ashr i32 %i.be, 31
  %.not.8 = icmp eq i32 %i.bc, %sext.8
  br i1 %.not.8, label %bb.u, label %bb.t, !llvm.loop !385

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 36
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !129
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.1.9 = phi i32 [ %i.bd, %bb.u ], [ %i.bj, %bb.v ]
  %.027.9 = phi i32 [ %i.bh, %bb.u ], [ %i.bi, %bb.v ] ; 2 uses
  %i.bi = ashr i32 %.027.9, 7                     ; 2 uses
  %i.bj = add i32 %.1.9, 1                        ; 2 uses
  %i.bk = shl i32 %.027.9, 25
  %sext.9 = ashr i32 %i.bk, 31
  %.not.9 = icmp eq i32 %i.bi, %sext.9
  br i1 %.not.9, label %bb.w, label %bb.v, !llvm.loop !385

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !129
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.1.10 = phi i32 [ %i.bj, %bb.w ], [ %i.bp, %bb.x ]
  %.027.10 = phi i32 [ %i.bn, %bb.w ], [ %i.bo, %bb.x ] ; 2 uses
  %i.bo = ashr i32 %.027.10, 7                    ; 2 uses
  %i.bp = add i32 %.1.10, 1                       ; 3 uses
  %i.bq = shl i32 %.027.10, 25
  %sext.10 = ashr i32 %i.bq, 31
  %.not.10 = icmp eq i32 %i.bo, %sext.10
  br i1 %.not.10, label %bb.y, label %bb.x, !llvm.loop !385

bb.y:                                             ; preds = %bb.x
  %i.br = add nuw nsw i64 %.02859, 11             ; 2 uses
  %exitcond.not.10 = icmp eq i64 %i.br, 180224
  br i1 %exitcond.not.10, label %bb.b, label %bb.c, !llvm.loop !386

bb.z:                                             ; preds = %bb.af
  %i.bs = zext i32 %i.cd to i64
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef %i.bs) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit: ; preds = %.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.02662 = phi i64 [ 0, %bb.b ], [ %.02662.be, %.backedge.backedge ] ; 3 uses
  %.05261 = phi i32 [ 0, %bb.b ], [ %.05261.be, %.backedge.backedge ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02662
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !129
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit: ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge, %.backedge
  %.153 = phi i32 [ %.05261, %.backedge ], [ %.153.be, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 4 uses
  %.0 = phi i32 [ %i.bv, %.backedge ], [ %i.bx, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 3 uses
  %i.bw = trunc i32 %.0 to i8                     ; 2 uses
  %i.bx = ashr i32 %.0, 7                         ; 3 uses
  %i.by = and i32 %.0, 64
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.ca = icmp eq i32 %i.bx, 0
  br i1 %i.ca, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.cb = icmp eq i32 %i.bx, -1
  br i1 %i.cb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cc = and i8 %i.bw, 127
  %i.cd = add nuw i32 %.153, 1                    ; 3 uses
  %i.ce = zext i32 %.153 to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ce
  store i8 %i.cc, ptr %i.cf, align 1, !tbaa !62
  %i.cg = icmp eq i32 %i.cd, 4096
  br i1 %i.cg, label %.thread, label %bb.af

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.ch = or i8 %i.bw, -128
  %i.ci = add nuw i32 %.153, 1                    ; 2 uses
  %i.cj = zext i32 %.153 to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cj
  store i8 %i.ch, ptr %i.ck, align 1, !tbaa !62
  %i.cl = icmp eq i32 %i.ci, 4096
  br i1 %i.cl, label %bb.ae, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

bb.ae:                                            ; preds = %bb.ad
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge: ; preds = %bb.ae, %bb.ad
  %.153.be = phi i32 [ %i.ci, %bb.ad ], [ 0, %bb.ae ]
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

bb.af:                                            ; preds = %bb.ac
  %i.cn = add nuw nsw i64 %.02662, 1              ; 2 uses
  %exitcond64.not = icmp eq i64 %i.cn, 180224
  br i1 %exitcond64.not, label %bb.z, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.af, %.thread
  %.02662.be = phi i64 [ %i.cn, %bb.af ], [ %i.cp, %.thread ]
  %.05261.be = phi i32 [ %i.cd, %bb.af ], [ 0, %.thread ]
  br label %.backedge, !llvm.loop !387

.thread:                                          ; preds = %bb.ac
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  %i.cp = add nuw nsw i64 %.02662, 1              ; 2 uses
  %exitcond64.not70 = icmp eq i64 %i.cp, 180224
  br i1 %exitcond64.not70, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %.backedge.backedge
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE16write_parametersERSo(ptr noundef nonnull align 64 dereferenceable(3520) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 64 dereferenceable(2112) %0, i64 noundef 64) #19 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06.i = phi i32 [ 0, %bb.a ], [ %i.p, %bb.b ]  ; 4 uses
  %i.e = shl nuw nsw i32 %.06.i, 4
  %i.f = and i32 %i.e, 1984
  %i.g = lshr i32 %.06.i, 5
  %i.h = and i32 %i.g, 60
  %i.i = and i32 %.06.i, 3
  %i.j = or disjoint i32 %i.h, %i.i
  %i.k = or disjoint i32 %i.j, %i.f
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.n, ptr %i.b, align 1, !tbaa !62
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = add nuw nsw i32 %.06.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.p, 2048
  br i1 %exitcond.not.i, label %_ZNK9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj128ELj16EE16write_parametersERSo.exit, label %bb.b, !llvm.loop !388

_ZNK9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj128ELj16EE16write_parametersERSo.exit: ; preds = %bb.b
  %i.q = load ptr, ptr %1, align 8, !tbaa !93
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !149
  %i.w = and i32 %i.v, 5
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj128ELj16EE16write_parametersERSo.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 64 dereferenceable(1152) %i.x, i64 noundef 128) #19 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2304
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.06.i6 = phi i32 [ 0, %bb.c ], [ %i.al, %bb.d ] ; 4 uses
  %i.aa = shl nuw nsw i32 %.06.i6, 5
  %i.ab = and i32 %i.aa, 896
  %i.ac = lshr i32 %.06.i6, 3
  %i.ad = and i32 %i.ac, 124
  %i.ae = and i32 %.06.i6, 3
  %i.af = or disjoint i32 %i.ad, %i.ae
  %i.ag = or disjoint i32 %i.af, %i.ab
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.aj, ptr %i.a, align 1, !tbaa !62
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = add nuw nsw i32 %.06.i6, 1              ; 2 uses
  %exitcond.not.i7 = icmp eq i32 %i.al, 1024
  br i1 %exitcond.not.i7, label %_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE16write_parametersERSo.exit, label %bb.d, !llvm.loop !10

_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE16write_parametersERSo.exit: ; preds = %bb.d
  %i.am = load ptr, ptr %1, align 8, !tbaa !93
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %1, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !149
  %i.as = and i32 %i.ar, 5
  %.not.i8 = icmp eq i32 %i.as, 0
  br i1 %.not.i8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE16write_parametersERSo.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3392
  %i.au = call noundef zeroext i1 @_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj32ELj1EE16write_parametersERSo(ptr noundef nonnull align 64 dereferenceable(96) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE16write_parametersERSo.exit, %_ZNK9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj128ELj16EE16write_parametersERSo.exit
  %i.av = phi i1 [ false, %_ZNK9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj128ELj16EE16write_parametersERSo.exit ], [ false, %_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE16write_parametersERSo.exit ], [ %i.au, %bb.e ]
  ret i1 %i.av
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i16> @llvm.umin.v32i16(<32 x i16>, <32 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v9i32.p0(<9 x i32>, ptr captures(none), <9 x i1>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <6 x i64> @llvm.masked.load.v6i64.p0(ptr captures(none), <6 x i1>, <6 x i64>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x i64> @llvm.masked.load.v5i64.p0(ptr captures(none), <5 x i1>, <5 x i64>) #18

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { cold noreturn nounwind }

!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}
!llvm.errno.tbaa = !{!22}

!0 = distinct !{null, null, null, null}
!1 = distinct !{!1, !127}
!2 = distinct !{null}
!3 = distinct !{!3, !127}
!4 = distinct !{!4, !127}
!5 = distinct !{!5, !127}
!6 = distinct !{!6, !127}
!7 = distinct !{!7, !127}
!8 = distinct !{!8, !127}
!9 = distinct !{!9, !127}
!10 = distinct !{!10, !127}
!11 = distinct !{!11, !127}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 1, !"ThinLTO", i32 0}
!16 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!17 = !{!"Ubuntu clang version 23.0.0 (++20260706082120+bf74249b5ecd-1~exp1~20260706082130.1707)"}
!18 = !{!"Simple C++ TBAA"}
!19 = !{!"omnipotent char", !18, i64 0}
!20 = !{!"int", !19, i64 0}
!21 = !{!"__libc_errno", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{i64 16, !"_ZTSSt15basic_streambufIcSt11char_traitsIcEE"}
!24 = !{i64 32, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFvRKSt6localeE.virtual"}
!25 = !{i64 40, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFPS2_PclE.virtual"}
!26 = !{i64 48, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFSt4fposI11__mbstate_tElSt12_Ios_SeekdirSt13_Ios_OpenmodeE.virtual"}
!27 = !{i64 56, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFSt4fposI11__mbstate_tES5_St13_Ios_OpenmodeE.virtual"}
!28 = !{i64 64, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFivE.virtual"}
!29 = !{i64 72, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFlvE.virtual"}
!30 = !{i64 80, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFlPclE.virtual"}
!31 = !{i64 88, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFivE.virtual"}
!32 = !{i64 96, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFivE.virtual"}
!33 = !{i64 104, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFiiE.virtual"}
!34 = !{i64 112, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFlPKclE.virtual"}
!35 = !{i64 120, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFiiE.virtual"}
!36 = !{i64 16, !"_ZTSZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBuffer"}
!37 = !{i64 32, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBufferFvRKSt6localeE.virtual"}
!38 = !{i64 40, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBufferFPSt15basic_streambufIcSt11char_traitsIcEEPclE.virtual"}
!39 = !{i64 48, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBufferFSt4fposI11__mbstate_tElSt12_Ios_SeekdirSt13_Ios_OpenmodeE.virtual"}
!40 = !{i64 56, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBufferFSt4fposI11__mbstate_tESB_St13_Ios_OpenmodeE.virtual"}
end_hunk_1
