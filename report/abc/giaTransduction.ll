Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaTransduction?download=true
inline.NumInlined: 6915
inline.NumDeleted: 1086
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE7Aig2BddEP10Gia_Man_t_RSt6vectorIjSaIjEE:bb.a
  %i.af = load i64, ptr %i.d, align 8, !tbaa !51
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !389 ; 3 uses
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = icmp slt i32 %i.ai, 0
  br i1 %i.ak, label %bb.g, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #23
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not.i.i.i.i102 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i102, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.al = shl nuw nsw i64 %i.aj, 2
  %i.am = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #24 ; 5 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aj ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !122
  %i.ao = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.h
  %i.aq = getelementptr i8, ptr %i.am, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aq, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !122
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.h, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.sroa.12.0 = phi ptr [ %i.an, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.an, %bb.h ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0138.0 = phi ptr [ %i.am, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.am, %bb.h ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 6 uses
  call void @Gia_ManStaticFanoutStart(ptr noundef nonnull %1) #22
  %i.ar = load i32, ptr %i.ah, align 8, !tbaa !389 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.at = getelementptr i8, ptr %1, i64 32
  %.val90 = load ptr, ptr %i.at, align 8, !tbaa !390 ; 2 uses
  %.not = icmp eq ptr %.val90, null
  %i.au = getelementptr i8, ptr %1, i64 248
  br i1 %.not, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.ar to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %.val90, i64 %indvars.iv
  %.val94 = load i64, ptr %i.av, align 4          ; 2 uses
  %i.aw = and i64 %.val94, 2147483648
  %.not.i = icmp ne i64 %i.aw, 0
  %i.ax = and i64 %.val94, 536870911
  %i.ay = icmp eq i64 %i.ax, 536870911
  %narrow.i.not = or i1 %.not.i, %i.ay
  br i1 %narrow.i.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %.val101 = load ptr, ptr %i.au, align 8, !tbaa !415
  %i.az = getelementptr i8, ptr %.val101, i64 8
  %.val101.val = load ptr, ptr %i.az, align 8, !tbaa !391
  %sext.i = shl nuw nsw i64 %indvars.iv, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %.val101.val, i64 %sext.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !122
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0138.0, i64 %indvars.iv
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !122
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !416

.critedge:                                        ; preds = %bb.j, %.lr.ph, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  call void @Gia_ManStaticFanoutStop(ptr noundef nonnull %1) #22
  %i.bd = load i32, ptr %i.ah, align 8, !tbaa !389 ; 3 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.k, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.k:                                             ; preds = %.critedge
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #23
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.critedge
  %i.bf = zext nneg i32 %i.bd to i64              ; 2 uses
  %.not.i.i.i.i103 = icmp ne i32 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i103)
  %i.bg = shl nuw nsw i64 %i.bf, 2                ; 2 uses
  %i.bh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #24 ; 10 uses
  %i.bi = add nsw i64 %i.bf, -1                   ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bk = getelementptr i8, ptr %i.bh, i64 4
  %.idx.i.i.i.i.i.i.i104 = shl nuw nsw i64 %i.bi, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bk, i8 0, i64 %.idx.i.i.i.i.i.i.i104, i1 false), !tbaa !122
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.bl = getelementptr i8, ptr %1, i64 32        ; 4 uses
  %.val81 = load ptr, ptr %i.bl, align 8, !tbaa !390
  store i32 0, ptr %i.bh, align 4, !tbaa !122
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !100 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 4
  %.val81.fr = freeze ptr %.val81
  %.not73 = icmp eq ptr %.val81.fr, null
  %.val80153 = load i32, ptr %i.bo, align 4, !tbaa !119 ; 4 uses
  %i.bp = icmp slt i32 %.val80153, 1
  %or.cond154 = or i1 %i.bp, %.not73
  br i1 %or.cond154, label %.critedge2.preheader, label %.lr.ph156.split.preheader

.lr.ph156.split.preheader:                        ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %i.bq = getelementptr i8, ptr %i.bn, i64 8
  %.val92.val = load ptr, ptr %i.bq, align 8, !tbaa !391 ; 3 uses
  %i.br = zext nneg i32 %.val80153 to i64         ; 2 uses
  %xtraiter = and i64 %i.br, 1
  %i.bs = icmp eq i32 %.val80153, 1
  br i1 %i.bs, label %.lr.ph156.split.epil.preheader, label %.lr.ph156.split.preheader.new

.lr.ph156.split.preheader.new:                    ; preds = %.lr.ph156.split.preheader
  %unroll_iter = and i64 %i.br, 2147483646
  br label %.lr.ph156.split

.critedge2.preheader.loopexit.unr-lcssa:          ; preds = %.lr.ph156.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2.preheader, label %.lr.ph156.split.epil.preheader

.lr.ph156.split.epil.preheader:                   ; preds = %.critedge2.preheader.loopexit.unr-lcssa, %.lr.ph156.split.preheader
  %indvars.iv165.epil.init = phi i64 [ 0, %.lr.ph156.split.preheader ], [ %indvars.iv.next166.1, %.critedge2.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod205 = trunc i32 %.val80153 to i1
  call void @llvm.assume(i1 %lcmp.mod205)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val92.val, i64 %indvars.iv165.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !122
  %indvars.iv165.tr.epil = trunc nuw nsw i64 %indvars.iv165.epil.init to i32
  %i.bv = shl nuw i32 %indvars.iv165.tr.epil, 1
  %i.bw = and i32 %i.bv, 131070
  %i.bx = add nuw nsw i32 %i.bw, 2
  %i.by = sext i32 %i.bu to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.by
  store i32 %i.bx, ptr %i.bz, align 4, !tbaa !122
  br label %.critedge2.preheader

.critedge2.preheader:                             ; preds = %.lr.ph156.split.epil.preheader, %.critedge2.preheader.loopexit.unr-lcssa, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %i.ca = load i32, ptr %i.ah, align 8, !tbaa !389
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph158, label %.critedge4

.lr.ph158:                                        ; preds = %.critedge2.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 344
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 353
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 360
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ch, i64 -24    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.cr = getelementptr i8, ptr %i.cp, i64 -24
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.dg = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.di = getelementptr i8, ptr %i.dg, i64 -24
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  br label %bb.l

.lr.ph156.split:                                  ; preds = %.lr.ph156.split, %.lr.ph156.split.preheader.new
  %indvars.iv165 = phi i64 [ 0, %.lr.ph156.split.preheader.new ], [ %indvars.iv.next166.1, %.lr.ph156.split ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph156.split.preheader.new ], [ %niter.next.1, %.lr.ph156.split ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.val92.val, i64 %indvars.iv165
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !122
  %indvars.iv165.tr = trunc nuw nsw i64 %indvars.iv165 to i32
  %i.dm = shl nuw nsw i32 %indvars.iv165.tr, 1
  %i.dn = and i32 %i.dm, 131068
  %i.do = or disjoint i32 %i.dn, 2
  %i.dp = sext i32 %i.dl to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.dp
  store i32 %i.do, ptr %i.dq, align 4, !tbaa !122
  %indvars.iv.next166 = or disjoint i64 %indvars.iv165, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.val92.val, i64 %indvars.iv.next166
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !122
  %indvars.iv165.tr.1 = trunc nuw nsw i64 %indvars.iv.next166 to i32
  %i.dt = shl nuw nsw i32 %indvars.iv165.tr.1, 1
  %i.du = and i32 %i.dt, 131070
  %i.dv = add nuw nsw i32 %i.du, 2
  %i.dw = sext i32 %i.ds to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.dw
  store i32 %i.dv, ptr %i.dx, align 4, !tbaa !122
  %indvars.iv.next166.1 = add nuw nsw i64 %indvars.iv165, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.critedge2.preheader.loopexit.unr-lcssa, label %.lr.ph156.split, !llvm.loop !417

bb.l:                                             ; preds = %.lr.ph158, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit122
  %indvars.iv168 = phi i64 [ 0, %.lr.ph158 ], [ %indvars.iv.next169, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit122 ] ; 4 uses
  %.val89 = load ptr, ptr %i.bl, align 8, !tbaa !390 ; 3 uses
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %.val89, i64 %indvars.iv168 ; 4 uses
  %.not74 = icmp eq ptr %.val89, null
  br i1 %.not74, label %.critedge4, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val93 = load i64, ptr %i.dy, align 4          ; 3 uses
  %i.dz = and i64 %.val93, 2147483648
  %.not.i106 = icmp ne i64 %i.dz, 0
  %i.ea = and i64 %.val93, 536870911              ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 536870911
  %narrow.i107.not = or i1 %.not.i106, %i.eb
  br i1 %narrow.i107.not, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit122, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ec = load i32, ptr %i.a, align 8, !tbaa !53
  %i.ed = icmp sgt i32 %i.ec, 6
  br i1 %i.ed, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cc) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.cc, align 8, !tbaa !27
  store ptr null, ptr %i.cd, align 8, !tbaa !169
  store i8 0, ptr %i.ce, align 8, !tbaa !170
  store i8 0, ptr %i.cf, align 1, !tbaa !171
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i8 0, i64 32, i1 false)
  store ptr %i.ch, ptr %4, align 8, !tbaa !27
  %i.ee = load i64, ptr %i.cj, align 8
  %i.ef = getelementptr inbounds i8, ptr %4, i64 %i.ee
  store ptr %i.ci, ptr %i.ef, align 8, !tbaa !27
  store i64 0, ptr %i.ck, align 8, !tbaa !172
  %i.eg = load ptr, ptr %4, align 8, !tbaa !27
  %i.eh = getelementptr i8, ptr %i.eg, i64 -24
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds i8, ptr %4, i64 %i.ei
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ej, ptr noundef null) #22
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !27
  %i.ek = load i64, ptr %i.co, align 8
  %i.el = getelementptr inbounds i8, ptr %i.cl, i64 %i.ek
  store ptr %i.cn, ptr %i.el, align 8, !tbaa !27
  %i.em = load ptr, ptr %i.cl, align 8, !tbaa !27
  %i.en = getelementptr i8, ptr %i.em, i64 -24
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = getelementptr inbounds i8, ptr %i.cl, i64 %i.eo
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ep, ptr noundef null) #22
  %i.eq = load i64, ptr %i.cr, align 8
  %i.er = getelementptr inbounds i8, ptr %4, i64 %i.eq
  store ptr %i.cq, ptr %i.er, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %4, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.cc, align 8, !tbaa !27
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.cl, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.cu) #22
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cs, align 8, !tbaa !27
  store i32 24, ptr %i.cv, align 8, !tbaa !174
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !156
  store i64 0, ptr %i.cy, align 8, !tbaa !158
  store i8 0, ptr %i.cx, align 8, !tbaa !51
  %i.es = load ptr, ptr %4, align 8, !tbaa !27
  %i.et = getelementptr i8, ptr %i.es, i64 -24
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = getelementptr inbounds i8, ptr %4, i64 %i.eu
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ev, ptr noundef nonnull %i.cs) #22
  %i.ew = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.63, i64 noundef 19) #22 ; 0 uses
  %i.ex = trunc nuw nsw i64 %indvars.iv168 to i32
  %i.ey = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i32 noundef %i.ex) #22 ; 2 uses
  %i.ez = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull @.str.64, i64 noundef 3) #22 ; 0 uses
  %i.fa = load i32, ptr %i.ah, align 8, !tbaa !389
  %i.fb = load ptr, ptr %i.bm, align 8, !tbaa !100
  %i.fc = getelementptr i8, ptr %i.fb, i64 4
  %.val3.i = load i32, ptr %i.fc, align 4, !tbaa !119
  %i.fd = load ptr, ptr %i.cz, align 8, !tbaa !402
  %i.fe = getelementptr i8, ptr %i.fd, i64 4
  %.val.i = load i32, ptr %i.fe, align 4, !tbaa !119
  %i.ff = add i32 %.val.i, %.val3.i
  %i.fg = xor i32 %i.ff, -1
  %i.fh = add i32 %i.fa, %i.fg
  %i.fi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, i32 noundef %i.fh) #22
  %i.fj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull @.str.37, i64 noundef 1) #22 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  store ptr %i.da, ptr %5, align 8, !tbaa !156, !alias.scope !424
  store i64 0, ptr %i.db, align 8, !tbaa !158, !alias.scope !424
  store i8 0, ptr %i.da, align 8, !tbaa !51, !alias.scope !424
  %i.fk = load ptr, ptr %i.dc, align 8, !tbaa !187, !noalias !424 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.fk, null
  %i.fl = load ptr, ptr %i.dd, align 8, !noalias !424 ; 2 uses
  %i.fm = icmp ugt ptr %i.fk, %i.fl
  %.08.i.i.i = select i1 %i.fm, ptr %i.fk, ptr %i.fl ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fn = load ptr, ptr %i.de, align 8, !tbaa !188, !noalias !424 ; 2 uses
  %i.fo = ptrtoint ptr %.08.i.i.i to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.fn, i64 noundef %i.fq) #22 ; 0 uses
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.q:                                             ; preds = %bb.o
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.cw) #22
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.p, %bb.q
  %i.fs = load i32, ptr %i.a, align 8, !tbaa !53
  %i.ft = icmp sgt i32 %i.fs, 7
  %i.fu = load i8, ptr %i.df, align 8, !tbaa !95, !range !190, !noundef !191
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.fw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.32, i64 noundef 5) #22 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.fx = load ptr, ptr %5, align 8, !tbaa !160
  %i.fy = load i64, ptr %i.db, align 8, !tbaa !158
  %i.fz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.fx, i64 noundef %i.fy) #22 ; 0 uses
  %i.ga = load i8, ptr %i.df, align 8, !tbaa !95, !range !190, !noundef !191
  %i.gb = trunc nuw i8 %i.ga to i1
  %or.cond.i = or i1 %i.ft, %i.gb
  br i1 %or.cond.i, label %bb.t, label %_ZNK12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112

bb.t:                                             ; preds = %bb.s
  %i.gc = load ptr, ptr @_ZSt4cout, align 8, !tbaa !27
  %i.gd = getelementptr i8, ptr %i.gc, i64 -24
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 240
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !29 ; 6 uses
  %.not.i.i.i.i108 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i108, label %bb.u, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i109

bb.u:                                             ; preds = %bb.t
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i109: ; preds = %bb.t
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  %i.gj = load i8, ptr %i.gi, align 8, !tbaa !45
  %.not.i1.i.i.i110 = icmp eq i8 %i.gj, 0
  br i1 %.not.i1.i.i.i110, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i109
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 67
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !51
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i109
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gh) #22
  %i.gm = load ptr, ptr %i.gh, align 8, !tbaa !27
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = call noundef signext i8 %i.go(ptr noundef nonnull align 8 dereferenceable(570) %i.gh, i8 noundef signext 10) #22, !inline_history !400
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i111 = phi i8 [ %i.gl, %bb.v ], [ %i.gp, %bb.w ]
  %i.gq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i111) #22
  br label %_ZNK12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112

_ZNK12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112: ; preds = %bb.s, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i
  %_ZSt4cout.sink.i = phi ptr [ %i.gq, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i ], [ @_ZSt4cout, %bb.s ]
  %i.gr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink.i) #22 ; 0 uses
  %i.gs = load ptr, ptr %5, align 8, !tbaa !160   ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.da
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %_ZNK12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112
  %i.gu = load i64, ptr %i.da, align 8, !tbaa !51
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZNK12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  store ptr %i.dg, ptr %4, align 8, !tbaa !27
  %i.gw = load i64, ptr %i.di, align 8
  %i.gx = getelementptr inbounds i8, ptr %4, i64 %i.gw
  store ptr %i.dh, ptr %i.gx, align 8, !tbaa !27
  store ptr %i.dj, ptr %i.cl, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cs, align 8, !tbaa !27
  %i.gy = load ptr, ptr %i.cw, align 8, !tbaa !160 ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.cx
  br i1 %i.gz, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE7Aig2BddEP10Gia_Man_t_RSt6vectorIjSaIjEE:bb.a
  br i1 %i.ak, label %bb.g, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #23
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not.i.i.i.i102 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i102, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.al = shl nuw nsw i64 %i.aj, 2
  %i.am = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #24 ; 5 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aj ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !122
  %i.ao = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.h
  %i.aq = getelementptr i8, ptr %i.am, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aq, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !122
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.h, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.sroa.12.0 = phi ptr [ %i.an, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.an, %bb.h ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0138.0 = phi ptr [ %i.am, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.am, %bb.h ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 6 uses
  call void @Gia_ManStaticFanoutStart(ptr noundef nonnull %1) #22
  %i.ar = load i32, ptr %i.ah, align 8, !tbaa !389 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.at = getelementptr i8, ptr %1, i64 32
  %.val90 = load ptr, ptr %i.at, align 8, !tbaa !390 ; 2 uses
  %.not = icmp eq ptr %.val90, null
  %i.au = getelementptr i8, ptr %1, i64 248
  br i1 %.not, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.ar to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %.val90, i64 %indvars.iv
  %.val94 = load i64, ptr %i.av, align 4          ; 2 uses
  %i.aw = and i64 %.val94, 2147483648
  %.not.i = icmp ne i64 %i.aw, 0
  %i.ax = and i64 %.val94, 536870911
  %i.ay = icmp eq i64 %i.ax, 536870911
  %narrow.i.not = or i1 %.not.i, %i.ay
  br i1 %narrow.i.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %.val101 = load ptr, ptr %i.au, align 8, !tbaa !415
  %i.az = getelementptr i8, ptr %.val101, i64 8
  %.val101.val = load ptr, ptr %i.az, align 8, !tbaa !391
  %sext.i = shl nuw nsw i64 %indvars.iv, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %.val101.val, i64 %sext.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !122
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0138.0, i64 %indvars.iv
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !122
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !885

.critedge:                                        ; preds = %bb.j, %.lr.ph, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  call void @Gia_ManStaticFanoutStop(ptr noundef nonnull %1) #22
  %i.bd = load i32, ptr %i.ah, align 8, !tbaa !389 ; 3 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.k, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.k:                                             ; preds = %.critedge
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #23
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.critedge
  %i.bf = zext nneg i32 %i.bd to i64              ; 2 uses
  %.not.i.i.i.i103 = icmp ne i32 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i103)
  %i.bg = shl nuw nsw i64 %i.bf, 2                ; 2 uses
  %i.bh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #24 ; 12 uses
  %i.bi = add nsw i64 %i.bf, -1                   ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bk = getelementptr i8, ptr %i.bh, i64 4
  %.idx.i.i.i.i.i.i.i104 = shl nuw nsw i64 %i.bi, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bk, i8 0, i64 %.idx.i.i.i.i.i.i.i104, i1 false), !tbaa !122
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.bl = getelementptr i8, ptr %1, i64 32        ; 4 uses
  %.val81 = load ptr, ptr %i.bl, align 8, !tbaa !390
  store i32 0, ptr %i.bh, align 4, !tbaa !122
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !100 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 4
  %.val81.fr = freeze ptr %.val81
  %.not73 = icmp eq ptr %.val81.fr, null
  %.val80153 = load i32, ptr %i.bo, align 4, !tbaa !119 ; 3 uses
  %i.bp = icmp slt i32 %.val80153, 1
  %or.cond154 = or i1 %i.bp, %.not73
  br i1 %or.cond154, label %.critedge2.preheader, label %.lr.ph156.split.preheader

.lr.ph156.split.preheader:                        ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %i.bq = getelementptr i8, ptr %i.bn, i64 8
  %.val92.val = load ptr, ptr %i.bq, align 8, !tbaa !391 ; 5 uses
  %i.br = zext nneg i32 %.val80153 to i64         ; 2 uses
  %xtraiter = and i64 %i.br, 3                    ; 3 uses
  %i.bs = add nsw i32 %.val80153, -1
  %i.bt = icmp ult i32 %i.bs, 3
  br i1 %i.bt, label %.lr.ph156.split.epil.preheader, label %.lr.ph156.split.preheader.new

.lr.ph156.split.preheader.new:                    ; preds = %.lr.ph156.split.preheader
  %unroll_iter = and i64 %i.br, 2147483644
  br label %.lr.ph156.split

.critedge2.preheader.loopexit.unr-lcssa:          ; preds = %.lr.ph156.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2.preheader, label %.lr.ph156.split.epil.preheader

.lr.ph156.split.epil.preheader:                   ; preds = %.critedge2.preheader.loopexit.unr-lcssa, %.lr.ph156.split.preheader
  %indvars.iv165.epil.init = phi i64 [ 0, %.lr.ph156.split.preheader ], [ %indvars.iv.next166.3, %.critedge2.preheader.loopexit.unr-lcssa ]
  %lcmp.mod204 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod204)
  br label %.lr.ph156.split.epil

.lr.ph156.split.epil:                             ; preds = %.lr.ph156.split.epil, %.lr.ph156.split.epil.preheader
  %indvars.iv165.epil = phi i64 [ %indvars.iv165.epil.init, %.lr.ph156.split.epil.preheader ], [ %indvars.iv.next166.epil, %.lr.ph156.split.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph156.split.epil.preheader ], [ %epil.iter.next, %.lr.ph156.split.epil ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.val92.val, i64 %indvars.iv165.epil
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !122
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bw
  %indvars.iv165.tr.epil = trunc nuw nsw i64 %indvars.iv165.epil to i32
  %i.by = shl nuw i32 %indvars.iv165.tr.epil, 1
  %i.bz = add nuw i32 %i.by, 2
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !122
  %indvars.iv.next166.epil = add nuw nsw i64 %indvars.iv165.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge2.preheader, label %.lr.ph156.split.epil, !llvm.loop !886

.critedge2.preheader:                             ; preds = %.critedge2.preheader.loopexit.unr-lcssa, %.lr.ph156.split.epil, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %i.ca = load i32, ptr %i.ah, align 8, !tbaa !389
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph158, label %.critedge4

.lr.ph158:                                        ; preds = %.critedge2.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 344
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 353
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 360
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ch, i64 -24    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.cr = getelementptr i8, ptr %i.cp, i64 -24
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.dg = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.di = getelementptr i8, ptr %i.dg, i64 -24
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  br label %bb.l

.lr.ph156.split:                                  ; preds = %.lr.ph156.split, %.lr.ph156.split.preheader.new
  %indvars.iv165 = phi i64 [ 0, %.lr.ph156.split.preheader.new ], [ %indvars.iv.next166.3, %.lr.ph156.split ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph156.split.preheader.new ], [ %niter.next.3, %.lr.ph156.split ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.val92.val, i64 %indvars.iv165
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !122
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.dm
  %indvars.iv165.tr = trunc nuw nsw i64 %indvars.iv165 to i32
  %i.do = shl nuw nsw i32 %indvars.iv165.tr, 1
  %i.dp = or disjoint i32 %i.do, 2
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !122
  %indvars.iv.next166 = or disjoint i64 %indvars.iv165, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.val92.val, i64 %indvars.iv.next166
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !122
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ds
  %indvars.iv165.tr.1 = trunc nuw nsw i64 %indvars.iv.next166 to i32
  %i.du = shl nuw nsw i32 %indvars.iv165.tr.1, 1
  %i.dv = add nuw nsw i32 %i.du, 2
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !122
  %indvars.iv.next166.1 = or disjoint i64 %indvars.iv165, 2 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.val92.val, i64 %indvars.iv.next166.1
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !122
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.dy
  %indvars.iv165.tr.2 = trunc nuw nsw i64 %indvars.iv.next166.1 to i32
  %i.ea = shl nuw nsw i32 %indvars.iv165.tr.2, 1
  %i.eb = or disjoint i32 %i.ea, 2
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !122
  %indvars.iv.next166.2 = or disjoint i64 %indvars.iv165, 3 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.val92.val, i64 %indvars.iv.next166.2
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !122
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ee
  %indvars.iv165.tr.3 = trunc nuw nsw i64 %indvars.iv.next166.2 to i32
  %i.eg = shl nuw nsw i32 %indvars.iv165.tr.3, 1
  %i.eh = add nuw nsw i32 %i.eg, 2
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !122
  %indvars.iv.next166.3 = add nuw nsw i64 %indvars.iv165, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.critedge2.preheader.loopexit.unr-lcssa, label %.lr.ph156.split, !llvm.loop !888

bb.l:                                             ; preds = %.lr.ph158, %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit122
  %indvars.iv168 = phi i64 [ 0, %.lr.ph158 ], [ %indvars.iv.next169, %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit122 ] ; 4 uses
  %.val89 = load ptr, ptr %i.bl, align 8, !tbaa !390 ; 3 uses
  %i.ei = getelementptr inbounds nuw [12 x i8], ptr %.val89, i64 %indvars.iv168 ; 4 uses
  %.not74 = icmp eq ptr %.val89, null
  br i1 %.not74, label %.critedge4, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val93 = load i64, ptr %i.ei, align 4          ; 3 uses
  %i.ej = and i64 %.val93, 2147483648
  %.not.i106 = icmp ne i64 %i.ej, 0
  %i.ek = and i64 %.val93, 536870911              ; 2 uses
  %i.el = icmp eq i64 %i.ek, 536870911
  %narrow.i107.not = or i1 %.not.i106, %i.el
  br i1 %narrow.i107.not, label %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit122, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.em = load i32, ptr %i.a, align 8, !tbaa !274
  %i.en = icmp sgt i32 %i.em, 6
  br i1 %i.en, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cc) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.cc, align 8, !tbaa !27
  store ptr null, ptr %i.cd, align 8, !tbaa !169
  store i8 0, ptr %i.ce, align 8, !tbaa !170
  store i8 0, ptr %i.cf, align 1, !tbaa !171
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i8 0, i64 32, i1 false)
  store ptr %i.ch, ptr %4, align 8, !tbaa !27
  %i.eo = load i64, ptr %i.cj, align 8
  %i.ep = getelementptr inbounds i8, ptr %4, i64 %i.eo
  store ptr %i.ci, ptr %i.ep, align 8, !tbaa !27
  store i64 0, ptr %i.ck, align 8, !tbaa !172
  %i.eq = load ptr, ptr %4, align 8, !tbaa !27
  %i.er = getelementptr i8, ptr %i.eq, i64 -24
  %i.es = load i64, ptr %i.er, align 8
  %i.et = getelementptr inbounds i8, ptr %4, i64 %i.es
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.et, ptr noundef null) #22
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !27
  %i.eu = load i64, ptr %i.co, align 8
  %i.ev = getelementptr inbounds i8, ptr %i.cl, i64 %i.eu
  store ptr %i.cn, ptr %i.ev, align 8, !tbaa !27
  %i.ew = load ptr, ptr %i.cl, align 8, !tbaa !27
  %i.ex = getelementptr i8, ptr %i.ew, i64 -24
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds i8, ptr %i.cl, i64 %i.ey
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ez, ptr noundef null) #22
  %i.fa = load i64, ptr %i.cr, align 8
  %i.fb = getelementptr inbounds i8, ptr %4, i64 %i.fa
  store ptr %i.cq, ptr %i.fb, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %4, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.cc, align 8, !tbaa !27
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.cl, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.cu) #22
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cs, align 8, !tbaa !27
  store i32 24, ptr %i.cv, align 8, !tbaa !174
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !156
  store i64 0, ptr %i.cy, align 8, !tbaa !158
  store i8 0, ptr %i.cx, align 8, !tbaa !51
  %i.fc = load ptr, ptr %4, align 8, !tbaa !27
  %i.fd = getelementptr i8, ptr %i.fc, i64 -24
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds i8, ptr %4, i64 %i.fe
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ff, ptr noundef nonnull %i.cs) #22
  %i.fg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.63, i64 noundef 19) #22 ; 0 uses
  %i.fh = trunc nuw nsw i64 %indvars.iv168 to i32
  %i.fi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i32 noundef %i.fh) #22 ; 2 uses
  %i.fj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull @.str.64, i64 noundef 3) #22 ; 0 uses
  %i.fk = load i32, ptr %i.ah, align 8, !tbaa !389
  %i.fl = load ptr, ptr %i.bm, align 8, !tbaa !100
  %i.fm = getelementptr i8, ptr %i.fl, i64 4
  %.val3.i = load i32, ptr %i.fm, align 4, !tbaa !119
  %i.fn = load ptr, ptr %i.cz, align 8, !tbaa !402
  %i.fo = getelementptr i8, ptr %i.fn, i64 4
  %.val.i = load i32, ptr %i.fo, align 4, !tbaa !119
  %i.fp = add i32 %.val.i, %.val3.i
  %i.fq = xor i32 %i.fp, -1
  %i.fr = add i32 %i.fk, %i.fq
  %i.fs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, i32 noundef %i.fr) #22
  %i.ft = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef nonnull @.str.37, i64 noundef 1) #22 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !889)
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  store ptr %i.da, ptr %5, align 8, !tbaa !156, !alias.scope !895
  store i64 0, ptr %i.db, align 8, !tbaa !158, !alias.scope !895
  store i8 0, ptr %i.da, align 8, !tbaa !51, !alias.scope !895
  %i.fu = load ptr, ptr %i.dc, align 8, !tbaa !187, !noalias !895 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.fu, null
  %i.fv = load ptr, ptr %i.dd, align 8, !noalias !895 ; 2 uses
  %i.fw = icmp ugt ptr %i.fu, %i.fv
  %.08.i.i.i = select i1 %i.fw, ptr %i.fu, ptr %i.fv ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fx = load ptr, ptr %i.de, align 8, !tbaa !188, !noalias !895 ; 2 uses
  %i.fy = ptrtoint ptr %.08.i.i.i to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.fx, i64 noundef %i.ga) #22 ; 0 uses
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.q:                                             ; preds = %bb.o
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.cw) #22
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.p, %bb.q
  %i.gc = load i32, ptr %i.a, align 8, !tbaa !274
  %i.gd = icmp sgt i32 %i.gc, 7
  %i.ge = load i8, ptr %i.df, align 8, !tbaa !280, !range !190, !noundef !191
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.32, i64 noundef 5) #22 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gh = load ptr, ptr %5, align 8, !tbaa !160
  %i.gi = load i64, ptr %i.db, align 8, !tbaa !158
  %i.gj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.gh, i64 noundef %i.gi) #22 ; 0 uses
  %i.gk = load i8, ptr %i.df, align 8, !tbaa !280, !range !190, !noundef !191
  %i.gl = trunc nuw i8 %i.gk to i1
  %or.cond.i = or i1 %i.gd, %i.gl
  br i1 %or.cond.i, label %bb.t, label %_ZNK12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112

bb.t:                                             ; preds = %bb.s
  %i.gm = load ptr, ptr @_ZSt4cout, align 8, !tbaa !27
  %i.gn = getelementptr i8, ptr %i.gm, i64 -24
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 240
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !29 ; 6 uses
  %.not.i.i.i.i108 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i108, label %bb.u, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i109

bb.u:                                             ; preds = %bb.t
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i109: ; preds = %bb.t
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 56
  %i.gt = load i8, ptr %i.gs, align 8, !tbaa !45
  %.not.i1.i.i.i110 = icmp eq i8 %i.gt, 0
  br i1 %.not.i1.i.i.i110, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i109
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 67
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !51
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i109
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gr) #22
  %i.gw = load ptr, ptr %i.gr, align 8, !tbaa !27
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = call noundef signext i8 %i.gy(ptr noundef nonnull align 8 dereferenceable(570) %i.gr, i8 noundef signext 10) #22, !inline_history !870
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i111 = phi i8 [ %i.gv, %bb.v ], [ %i.gz, %bb.w ]
  %i.ha = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i111) #22
  br label %_ZNK12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112

_ZNK12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112: ; preds = %bb.s, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i
  %_ZSt4cout.sink.i = phi ptr [ %i.ha, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i ], [ @_ZSt4cout, %bb.s ]
  %i.hb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink.i) #22 ; 0 uses
  %i.hc = load ptr, ptr %5, align 8, !tbaa !160   ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.da
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %_ZNK12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112
  %i.he = load i64, ptr %i.da, align 8, !tbaa !51
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZNK12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  store ptr %i.dg, ptr %4, align 8, !tbaa !27
  %i.hg = load i64, ptr %i.di, align 8
  %i.hh = getelementptr inbounds i8, ptr %4, i64 %i.hg
  store ptr %i.dh, ptr %i.hh, align 8, !tbaa !27
  store ptr %i.dj, ptr %i.cl, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cs, align 8, !tbaa !27
  %i.hi = load ptr, ptr %i.cw, align 8, !tbaa !160 ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.cx
  br i1 %i.hj, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.hk = load i64, ptr %i.cx, align 8, !tbaa !51
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #25
end_hunk_1
