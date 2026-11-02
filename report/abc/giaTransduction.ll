Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaTransduction?download=true
inline.NumInlined: 6915
inline.NumDeleted: 1086
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE7Aig2BddEP10Gia_Man_t_RSt6vectorIjSaIjEE:bb.a
  %i.af = load i64, ptr %i.d, align 8, !tbaa !94
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !259 ; 3 uses
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
  store i32 0, ptr %i.am, align 4, !tbaa !164
  %i.ao = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.h
  %i.aq = getelementptr i8, ptr %i.am, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aq, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !164
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.h, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.sroa.12.0 = phi ptr [ %i.an, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.an, %bb.h ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0138.0 = phi ptr [ %i.am, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.am, %bb.h ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 6 uses
  call void @Gia_ManStaticFanoutStart(ptr noundef nonnull %1) #22
  %i.ar = load i32, ptr %i.ah, align 8, !tbaa !259 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.at = getelementptr i8, ptr %1, i64 32
  %.val90 = load ptr, ptr %i.at, align 8, !tbaa !260 ; 2 uses
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
  %.val101 = load ptr, ptr %i.au, align 8, !tbaa !263
  %i.az = getelementptr i8, ptr %.val101, i64 8
  %.val101.val = load ptr, ptr %i.az, align 8, !tbaa !261
  %i.ba = shl nuw nsw i64 %indvars.iv, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.val101.val, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !164
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0138.0, i64 %indvars.iv
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !164
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !499

.critedge:                                        ; preds = %bb.j, %.lr.ph, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  call void @Gia_ManStaticFanoutStop(ptr noundef nonnull %1) #22
  %i.be = load i32, ptr %i.ah, align 8, !tbaa !259 ; 3 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.k, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.k:                                             ; preds = %.critedge
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #23
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.critedge
  %i.bg = zext nneg i32 %i.be to i64              ; 2 uses
  %.not.i.i.i.i103 = icmp ne i32 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i.i.i103)
  %i.bh = shl nuw nsw i64 %i.bg, 2                ; 2 uses
  %i.bi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #24 ; 10 uses
  %i.bj = add nsw i64 %i.bg, -1                   ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bl = getelementptr i8, ptr %i.bi, i64 4
  %.idx.i.i.i.i.i.i.i104 = shl nuw nsw i64 %i.bj, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bl, i8 0, i64 %.idx.i.i.i.i.i.i.i104, i1 false), !tbaa !164
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.bm = getelementptr i8, ptr %1, i64 32        ; 4 uses
  %.val81 = load ptr, ptr %i.bm, align 8, !tbaa !260
  store i32 0, ptr %i.bi, align 4, !tbaa !164
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !160 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 4
  %.val81.fr = freeze ptr %.val81
  %.not73 = icmp eq ptr %.val81.fr, null
  %.val80151 = load i32, ptr %i.bp, align 4, !tbaa !161 ; 4 uses
  %i.bq = icmp slt i32 %.val80151, 1
  %or.cond152 = or i1 %i.bq, %.not73
  br i1 %or.cond152, label %.critedge2.preheader, label %.lr.ph154.split.preheader

.lr.ph154.split.preheader:                        ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %i.br = getelementptr i8, ptr %i.bo, i64 8
  %.val92.val = load ptr, ptr %i.br, align 8, !tbaa !261 ; 3 uses
  %i.bs = zext nneg i32 %.val80151 to i64         ; 2 uses
  %xtraiter = and i64 %i.bs, 1
  %i.bt = icmp eq i32 %.val80151, 1
  br i1 %i.bt, label %.lr.ph154.split.epil.preheader, label %.lr.ph154.split.preheader.new

.lr.ph154.split.preheader.new:                    ; preds = %.lr.ph154.split.preheader
  %unroll_iter = and i64 %i.bs, 2147483646
  br label %.lr.ph154.split

.critedge2.preheader.loopexit.unr-lcssa:          ; preds = %.lr.ph154.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2.preheader, label %.lr.ph154.split.epil.preheader

.lr.ph154.split.epil.preheader:                   ; preds = %.critedge2.preheader.loopexit.unr-lcssa, %.lr.ph154.split.preheader
  %indvars.iv163.epil.init = phi i64 [ 0, %.lr.ph154.split.preheader ], [ %indvars.iv.next164.1, %.critedge2.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod203 = trunc i32 %.val80151 to i1
  call void @llvm.assume(i1 %lcmp.mod203)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.val92.val, i64 %indvars.iv163.epil.init
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !164
  %indvars.iv163.tr.epil = trunc nuw nsw i64 %indvars.iv163.epil.init to i32
  %i.bw = shl nuw i32 %indvars.iv163.tr.epil, 1
  %i.bx = and i32 %i.bw, 131070
  %i.by = add nuw nsw i32 %i.bx, 2
  %i.bz = sext i32 %i.bv to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bz
  store i32 %i.by, ptr %i.ca, align 4, !tbaa !164
  br label %.critedge2.preheader

.critedge2.preheader:                             ; preds = %.lr.ph154.split.epil.preheader, %.critedge2.preheader.loopexit.unr-lcssa, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %i.cb = load i32, ptr %i.ah, align 8, !tbaa !259
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph156, label %.critedge4

.lr.ph156:                                        ; preds = %.critedge2.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 344
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 353
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 360
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 -24    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.cp = getelementptr i8, ptr %i.cn, i64 -24
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.cs = getelementptr i8, ptr %i.cq, i64 -24
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.dh = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.dj = getelementptr i8, ptr %i.dh, i64 -24
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  br label %bb.l

.lr.ph154.split:                                  ; preds = %.lr.ph154.split, %.lr.ph154.split.preheader.new
  %indvars.iv163 = phi i64 [ 0, %.lr.ph154.split.preheader.new ], [ %indvars.iv.next164.1, %.lr.ph154.split ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph154.split.preheader.new ], [ %niter.next.1, %.lr.ph154.split ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.val92.val, i64 %indvars.iv163
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !164
  %indvars.iv163.tr = trunc nuw nsw i64 %indvars.iv163 to i32
  %i.dn = shl nuw i32 %indvars.iv163.tr, 1
  %i.do = and i32 %i.dn, 131068
  %i.dp = or disjoint i32 %i.do, 2
  %i.dq = sext i32 %i.dm to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.dq
  store i32 %i.dp, ptr %i.dr, align 4, !tbaa !164
  %indvars.iv.next164 = or disjoint i64 %indvars.iv163, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.val92.val, i64 %indvars.iv.next164
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !164
  %indvars.iv163.tr.1 = trunc nuw nsw i64 %indvars.iv.next164 to i32
  %i.du = shl nuw i32 %indvars.iv163.tr.1, 1
  %i.dv = and i32 %i.du, 131070
  %i.dw = add nuw nsw i32 %i.dv, 2
  %i.dx = sext i32 %i.dt to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.dx
  store i32 %i.dw, ptr %i.dy, align 4, !tbaa !164
  %indvars.iv.next164.1 = add nuw nsw i64 %indvars.iv163, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.critedge2.preheader.loopexit.unr-lcssa, label %.lr.ph154.split, !llvm.loop !500

bb.l:                                             ; preds = %.lr.ph156, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit122
  %indvars.iv166 = phi i64 [ 0, %.lr.ph156 ], [ %indvars.iv.next167, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit122 ] ; 4 uses
  %.val89 = load ptr, ptr %i.bm, align 8, !tbaa !260 ; 3 uses
  %i.dz = getelementptr inbounds nuw [12 x i8], ptr %.val89, i64 %indvars.iv166 ; 4 uses
  %.not74 = icmp eq ptr %.val89, null
  br i1 %.not74, label %.critedge4, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val93 = load i64, ptr %i.dz, align 4          ; 3 uses
  %i.ea = and i64 %.val93, 2147483648
  %.not.i106 = icmp ne i64 %i.ea, 0
  %i.eb = and i64 %.val93, 536870911              ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 536870911
  %narrow.i107.not = or i1 %.not.i106, %i.ec
  br i1 %narrow.i107.not, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit122, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ed = load i32, ptr %i.a, align 8, !tbaa !130
  %i.ee = icmp sgt i32 %i.ed, 6
  br i1 %i.ee, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cd) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.cd, align 8, !tbaa !71
  store ptr null, ptr %i.ce, align 8, !tbaa !199
  store i8 0, ptr %i.cf, align 8, !tbaa !200
  store i8 0, ptr %i.cg, align 1, !tbaa !201
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i8 0, i64 32, i1 false)
  store ptr %i.ci, ptr %4, align 8, !tbaa !71
  %i.ef = load i64, ptr %i.ck, align 8
  %i.eg = getelementptr inbounds i8, ptr %4, i64 %i.ef
  store ptr %i.cj, ptr %i.eg, align 8, !tbaa !71
  store i64 0, ptr %i.cl, align 8, !tbaa !203
  %i.eh = load ptr, ptr %4, align 8, !tbaa !71
  %i.ei = getelementptr i8, ptr %i.eh, i64 -24
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds i8, ptr %4, i64 %i.ej
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ek, ptr noundef null) #22
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !71
  %i.el = load i64, ptr %i.cp, align 8
  %i.em = getelementptr inbounds i8, ptr %i.cm, i64 %i.el
  store ptr %i.co, ptr %i.em, align 8, !tbaa !71
  %i.en = load ptr, ptr %i.cm, align 8, !tbaa !71
  %i.eo = getelementptr i8, ptr %i.en, i64 -24
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds i8, ptr %i.cm, i64 %i.ep
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.eq, ptr noundef null) #22
  %i.er = load i64, ptr %i.cs, align 8
  %i.es = getelementptr inbounds i8, ptr %4, i64 %i.er
  store ptr %i.cr, ptr %i.es, align 8, !tbaa !71
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %4, align 8, !tbaa !71
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.cd, align 8, !tbaa !71
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.cm, align 8, !tbaa !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.cv) #22
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ct, align 8, !tbaa !71
  store i32 24, ptr %i.cw, align 8, !tbaa !207
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !192
  store i64 0, ptr %i.cz, align 8, !tbaa !194
  store i8 0, ptr %i.cy, align 8, !tbaa !94
  %i.et = load ptr, ptr %4, align 8, !tbaa !71
  %i.eu = getelementptr i8, ptr %i.et, i64 -24
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds i8, ptr %4, i64 %i.ev
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ew, ptr noundef nonnull %i.ct) #22
  %i.ex = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.63, i64 noundef 19) #22 ; 0 uses
  %i.ey = trunc nuw nsw i64 %indvars.iv166 to i32
  %i.ez = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, i32 noundef %i.ey) #22 ; 2 uses
  %i.fa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull @.str.64, i64 noundef 3) #22 ; 0 uses
  %i.fb = load i32, ptr %i.ah, align 8, !tbaa !259
  %i.fc = load ptr, ptr %i.bn, align 8, !tbaa !160
  %i.fd = getelementptr i8, ptr %i.fc, i64 4
  %.val3.i = load i32, ptr %i.fd, align 4, !tbaa !161
  %i.fe = load ptr, ptr %i.da, align 8, !tbaa !262
  %i.ff = getelementptr i8, ptr %i.fe, i64 4
  %.val.i = load i32, ptr %i.ff, align 4, !tbaa !161
  %i.fg = add i32 %.val.i, %.val3.i
  %i.fh = xor i32 %i.fg, -1
  %i.fi = add i32 %i.fb, %i.fh
  %i.fj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, i32 noundef %i.fi) #22
  %i.fk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef nonnull @.str.37, i64 noundef 1) #22 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !507)
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  store ptr %i.db, ptr %5, align 8, !tbaa !192, !alias.scope !509
  store i64 0, ptr %i.dc, align 8, !tbaa !194, !alias.scope !509
  store i8 0, ptr %i.db, align 8, !tbaa !94, !alias.scope !509
  %i.fl = load ptr, ptr %i.dd, align 8, !tbaa !209, !noalias !509 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.fl, null
  %i.fm = load ptr, ptr %i.de, align 8, !noalias !509 ; 2 uses
  %i.fn = icmp ugt ptr %i.fl, %i.fm
  %.08.i.i.i = select i1 %i.fn, ptr %i.fl, ptr %i.fm ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fo = load ptr, ptr %i.df, align 8, !tbaa !210, !noalias !509 ; 2 uses
  %i.fp = ptrtoint ptr %.08.i.i.i to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.fo, i64 noundef %i.fr) #22 ; 0 uses
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.q:                                             ; preds = %bb.o
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.cx) #22
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.p, %bb.q
  %i.ft = load i32, ptr %i.a, align 8, !tbaa !130
  %i.fu = icmp sgt i32 %i.ft, 7
  %i.fv = load i8, ptr %i.dg, align 8, !tbaa !137, !range !212, !noundef !213
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.fx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.32, i64 noundef 5) #22 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.fy = load ptr, ptr %5, align 8, !tbaa !195
  %i.fz = load i64, ptr %i.dc, align 8, !tbaa !194
  %i.ga = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.fy, i64 noundef %i.fz) #22 ; 0 uses
  %i.gb = load i8, ptr %i.dg, align 8, !tbaa !137, !range !212, !noundef !213
  %i.gc = trunc nuw i8 %i.gb to i1
  %or.cond.i = or i1 %i.fu, %i.gc
  br i1 %or.cond.i, label %bb.t, label %_ZNK12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112

bb.t:                                             ; preds = %bb.s
  %i.gd = load ptr, ptr @_ZSt4cout, align 8, !tbaa !71
  %i.ge = getelementptr i8, ptr %i.gd, i64 -24
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 240
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !87 ; 6 uses
  %.not.i.i.i.i108 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i108, label %bb.u, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i109

bb.u:                                             ; preds = %bb.t
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i109: ; preds = %bb.t
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  %i.gk = load i8, ptr %i.gj, align 8, !tbaa !93
  %.not.i1.i.i.i110 = icmp eq i8 %i.gk, 0
  br i1 %.not.i1.i.i.i110, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i109
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 67
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !94
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i109
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gi) #22
  %i.gn = load ptr, ptr %i.gi, align 8, !tbaa !71
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = call noundef signext i8 %i.gp(ptr noundef nonnull align 8 dereferenceable(570) %i.gi, i8 noundef signext 10) #22, !inline_history !18
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i111 = phi i8 [ %i.gm, %bb.v ], [ %i.gq, %bb.w ]
  %i.gr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i111) #22
  br label %_ZNK12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112

_ZNK12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112: ; preds = %bb.s, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i
  %_ZSt4cout.sink.i = phi ptr [ %i.gr, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i ], [ @_ZSt4cout, %bb.s ]
  %i.gs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink.i) #22 ; 0 uses
  %i.gt = load ptr, ptr %5, align 8, !tbaa !195   ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.db
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %_ZNK12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112
  %i.gv = load i64, ptr %i.db, align 8, !tbaa !94
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZNK12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  store ptr %i.dh, ptr %4, align 8, !tbaa !71
  %i.gx = load i64, ptr %i.dj, align 8
  %i.gy = getelementptr inbounds i8, ptr %4, i64 %i.gx
  store ptr %i.di, ptr %i.gy, align 8, !tbaa !71
  store ptr %i.dk, ptr %i.cm, align 8, !tbaa !71
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ct, align 8, !tbaa !71
  %i.gz = load ptr, ptr %i.cx, align 8, !tbaa !195 ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.cy
  br i1 %i.ha, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

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
  store i32 0, ptr %i.am, align 4, !tbaa !164
  %i.ao = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.h
  %i.aq = getelementptr i8, ptr %i.am, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aq, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !164
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.h, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.sroa.12.0 = phi ptr [ %i.an, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.an, %bb.h ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0138.0 = phi ptr [ %i.am, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.am, %bb.h ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 6 uses
  call void @Gia_ManStaticFanoutStart(ptr noundef nonnull %1) #22
  %i.ar = load i32, ptr %i.ah, align 8, !tbaa !259 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.at = getelementptr i8, ptr %1, i64 32
  %.val90 = load ptr, ptr %i.at, align 8, !tbaa !260 ; 2 uses
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
  %.val101 = load ptr, ptr %i.au, align 8, !tbaa !263
  %i.az = getelementptr i8, ptr %.val101, i64 8
  %.val101.val = load ptr, ptr %i.az, align 8, !tbaa !261
  %i.ba = shl nuw nsw i64 %indvars.iv, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.val101.val, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !164
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0138.0, i64 %indvars.iv
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !164
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !893

.critedge:                                        ; preds = %bb.j, %.lr.ph, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  call void @Gia_ManStaticFanoutStop(ptr noundef nonnull %1) #22
  %i.be = load i32, ptr %i.ah, align 8, !tbaa !259 ; 3 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.k, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.k:                                             ; preds = %.critedge
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #23
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.critedge
  %i.bg = zext nneg i32 %i.be to i64              ; 2 uses
  %.not.i.i.i.i103 = icmp ne i32 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i.i.i103)
  %i.bh = shl nuw nsw i64 %i.bg, 2                ; 2 uses
  %i.bi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #24 ; 12 uses
  %i.bj = add nsw i64 %i.bg, -1                   ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bl = getelementptr i8, ptr %i.bi, i64 4
  %.idx.i.i.i.i.i.i.i104 = shl nuw nsw i64 %i.bj, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bl, i8 0, i64 %.idx.i.i.i.i.i.i.i104, i1 false), !tbaa !164
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.bm = getelementptr i8, ptr %1, i64 32        ; 4 uses
  %.val81 = load ptr, ptr %i.bm, align 8, !tbaa !260
  store i32 0, ptr %i.bi, align 4, !tbaa !164
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !160 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 4
  %.val81.fr = freeze ptr %.val81
  %.not73 = icmp eq ptr %.val81.fr, null
  %.val80151 = load i32, ptr %i.bp, align 4, !tbaa !161 ; 3 uses
  %i.bq = icmp slt i32 %.val80151, 1
  %or.cond152 = or i1 %i.bq, %.not73
  br i1 %or.cond152, label %.critedge2.preheader, label %.lr.ph154.split.preheader

.lr.ph154.split.preheader:                        ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %i.br = getelementptr i8, ptr %i.bo, i64 8
  %.val92.val = load ptr, ptr %i.br, align 8, !tbaa !261 ; 5 uses
  %i.bs = zext nneg i32 %.val80151 to i64         ; 2 uses
  %xtraiter = and i64 %i.bs, 3                    ; 3 uses
  %i.bt = add nsw i32 %.val80151, -1
  %i.bu = icmp ult i32 %i.bt, 3
  br i1 %i.bu, label %.lr.ph154.split.epil.preheader, label %.lr.ph154.split.preheader.new

.lr.ph154.split.preheader.new:                    ; preds = %.lr.ph154.split.preheader
  %unroll_iter = and i64 %i.bs, 2147483644
  br label %.lr.ph154.split

.critedge2.preheader.loopexit.unr-lcssa:          ; preds = %.lr.ph154.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2.preheader, label %.lr.ph154.split.epil.preheader

.lr.ph154.split.epil.preheader:                   ; preds = %.critedge2.preheader.loopexit.unr-lcssa, %.lr.ph154.split.preheader
  %indvars.iv163.epil.init = phi i64 [ 0, %.lr.ph154.split.preheader ], [ %indvars.iv.next164.3, %.critedge2.preheader.loopexit.unr-lcssa ]
  %lcmp.mod202 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod202)
  br label %.lr.ph154.split.epil

.lr.ph154.split.epil:                             ; preds = %.lr.ph154.split.epil, %.lr.ph154.split.epil.preheader
  %indvars.iv163.epil = phi i64 [ %indvars.iv163.epil.init, %.lr.ph154.split.epil.preheader ], [ %indvars.iv.next164.epil, %.lr.ph154.split.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph154.split.epil.preheader ], [ %epil.iter.next, %.lr.ph154.split.epil ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.val92.val, i64 %indvars.iv163.epil
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !164
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bx
  %indvars.iv163.tr.epil = trunc nuw nsw i64 %indvars.iv163.epil to i32
  %i.bz = shl nuw i32 %indvars.iv163.tr.epil, 1
  %i.ca = add nuw i32 %i.bz, 2
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !164
  %indvars.iv.next164.epil = add nuw nsw i64 %indvars.iv163.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge2.preheader, label %.lr.ph154.split.epil, !llvm.loop !894

.critedge2.preheader:                             ; preds = %.critedge2.preheader.loopexit.unr-lcssa, %.lr.ph154.split.epil, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %i.cb = load i32, ptr %i.ah, align 8, !tbaa !259
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph156, label %.critedge4

.lr.ph156:                                        ; preds = %.critedge2.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 344
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 353
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 360
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 -24    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.cp = getelementptr i8, ptr %i.cn, i64 -24
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.cs = getelementptr i8, ptr %i.cq, i64 -24
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.dh = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.dj = getelementptr i8, ptr %i.dh, i64 -24
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  br label %bb.l

.lr.ph154.split:                                  ; preds = %.lr.ph154.split, %.lr.ph154.split.preheader.new
  %indvars.iv163 = phi i64 [ 0, %.lr.ph154.split.preheader.new ], [ %indvars.iv.next164.3, %.lr.ph154.split ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph154.split.preheader.new ], [ %niter.next.3, %.lr.ph154.split ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.val92.val, i64 %indvars.iv163
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !164
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.dn
  %indvars.iv163.tr = trunc nuw nsw i64 %indvars.iv163 to i32
  %i.dp = shl nuw i32 %indvars.iv163.tr, 1
  %i.dq = or disjoint i32 %i.dp, 2
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !164
  %indvars.iv.next164 = or disjoint i64 %indvars.iv163, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.val92.val, i64 %indvars.iv.next164
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !164
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.dt
  %indvars.iv163.tr.1 = trunc nuw nsw i64 %indvars.iv.next164 to i32
  %i.dv = shl nuw i32 %indvars.iv163.tr.1, 1
  %i.dw = add nuw nsw i32 %i.dv, 2
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !164
  %indvars.iv.next164.1 = or disjoint i64 %indvars.iv163, 2 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.val92.val, i64 %indvars.iv.next164.1
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !164
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.dz
  %indvars.iv163.tr.2 = trunc nuw nsw i64 %indvars.iv.next164.1 to i32
  %i.eb = shl nuw i32 %indvars.iv163.tr.2, 1
  %i.ec = or disjoint i32 %i.eb, 2
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !164
  %indvars.iv.next164.2 = or disjoint i64 %indvars.iv163, 3 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.val92.val, i64 %indvars.iv.next164.2
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !164
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ef
  %indvars.iv163.tr.3 = trunc nuw nsw i64 %indvars.iv.next164.2 to i32
  %i.eh = shl nuw i32 %indvars.iv163.tr.3, 1
  %i.ei = add nuw i32 %i.eh, 2
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !164
  %indvars.iv.next164.3 = add nuw nsw i64 %indvars.iv163, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.critedge2.preheader.loopexit.unr-lcssa, label %.lr.ph154.split, !llvm.loop !895

bb.l:                                             ; preds = %.lr.ph156, %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit122
  %indvars.iv166 = phi i64 [ 0, %.lr.ph156 ], [ %indvars.iv.next167, %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit122 ] ; 4 uses
  %.val89 = load ptr, ptr %i.bm, align 8, !tbaa !260 ; 3 uses
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %.val89, i64 %indvars.iv166 ; 4 uses
  %.not74 = icmp eq ptr %.val89, null
  br i1 %.not74, label %.critedge4, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val93 = load i64, ptr %i.ej, align 4          ; 3 uses
  %i.ek = and i64 %.val93, 2147483648
  %.not.i106 = icmp ne i64 %i.ek, 0
  %i.el = and i64 %.val93, 536870911              ; 2 uses
  %i.em = icmp eq i64 %i.el, 536870911
  %narrow.i107.not = or i1 %.not.i106, %i.em
  br i1 %narrow.i107.not, label %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit122, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.en = load i32, ptr %i.a, align 8, !tbaa !231
  %i.eo = icmp sgt i32 %i.en, 6
  br i1 %i.eo, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cd) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.cd, align 8, !tbaa !71
  store ptr null, ptr %i.ce, align 8, !tbaa !199
  store i8 0, ptr %i.cf, align 8, !tbaa !200
  store i8 0, ptr %i.cg, align 1, !tbaa !201
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i8 0, i64 32, i1 false)
  store ptr %i.ci, ptr %4, align 8, !tbaa !71
  %i.ep = load i64, ptr %i.ck, align 8
  %i.eq = getelementptr inbounds i8, ptr %4, i64 %i.ep
  store ptr %i.cj, ptr %i.eq, align 8, !tbaa !71
  store i64 0, ptr %i.cl, align 8, !tbaa !203
  %i.er = load ptr, ptr %4, align 8, !tbaa !71
  %i.es = getelementptr i8, ptr %i.er, i64 -24
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = getelementptr inbounds i8, ptr %4, i64 %i.et
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.eu, ptr noundef null) #22
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !71
  %i.ev = load i64, ptr %i.cp, align 8
  %i.ew = getelementptr inbounds i8, ptr %i.cm, i64 %i.ev
  store ptr %i.co, ptr %i.ew, align 8, !tbaa !71
  %i.ex = load ptr, ptr %i.cm, align 8, !tbaa !71
  %i.ey = getelementptr i8, ptr %i.ex, i64 -24
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds i8, ptr %i.cm, i64 %i.ez
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.fa, ptr noundef null) #22
  %i.fb = load i64, ptr %i.cs, align 8
  %i.fc = getelementptr inbounds i8, ptr %4, i64 %i.fb
  store ptr %i.cr, ptr %i.fc, align 8, !tbaa !71
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %4, align 8, !tbaa !71
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.cd, align 8, !tbaa !71
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.cm, align 8, !tbaa !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.cv) #22
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ct, align 8, !tbaa !71
  store i32 24, ptr %i.cw, align 8, !tbaa !207
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !192
  store i64 0, ptr %i.cz, align 8, !tbaa !194
  store i8 0, ptr %i.cy, align 8, !tbaa !94
  %i.fd = load ptr, ptr %4, align 8, !tbaa !71
  %i.fe = getelementptr i8, ptr %i.fd, i64 -24
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds i8, ptr %4, i64 %i.ff
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.fg, ptr noundef nonnull %i.ct) #22
  %i.fh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.63, i64 noundef 19) #22 ; 0 uses
  %i.fi = trunc nuw nsw i64 %indvars.iv166 to i32
  %i.fj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, i32 noundef %i.fi) #22 ; 2 uses
  %i.fk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef nonnull @.str.64, i64 noundef 3) #22 ; 0 uses
  %i.fl = load i32, ptr %i.ah, align 8, !tbaa !259
  %i.fm = load ptr, ptr %i.bn, align 8, !tbaa !160
  %i.fn = getelementptr i8, ptr %i.fm, i64 4
  %.val3.i = load i32, ptr %i.fn, align 4, !tbaa !161
  %i.fo = load ptr, ptr %i.da, align 8, !tbaa !262
  %i.fp = getelementptr i8, ptr %i.fo, i64 4
  %.val.i = load i32, ptr %i.fp, align 4, !tbaa !161
  %i.fq = add i32 %.val.i, %.val3.i
  %i.fr = xor i32 %i.fq, -1
  %i.fs = add i32 %i.fl, %i.fr
  %i.ft = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, i32 noundef %i.fs) #22
  %i.fu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr noundef nonnull @.str.37, i64 noundef 1) #22 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.experimental.noalias.scope.decl(metadata !904)
  store ptr %i.db, ptr %5, align 8, !tbaa !192, !alias.scope !905
  store i64 0, ptr %i.dc, align 8, !tbaa !194, !alias.scope !905
  store i8 0, ptr %i.db, align 8, !tbaa !94, !alias.scope !905
  %i.fv = load ptr, ptr %i.dd, align 8, !tbaa !209, !noalias !905 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.fv, null
  %i.fw = load ptr, ptr %i.de, align 8, !noalias !905 ; 2 uses
  %i.fx = icmp ugt ptr %i.fv, %i.fw
  %.08.i.i.i = select i1 %i.fx, ptr %i.fv, ptr %i.fw ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fy = load ptr, ptr %i.df, align 8, !tbaa !210, !noalias !905 ; 2 uses
  %i.fz = ptrtoint ptr %.08.i.i.i to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.fy, i64 noundef %i.gb) #22 ; 0 uses
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.q:                                             ; preds = %bb.o
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.cx) #22
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.p, %bb.q
  %i.gd = load i32, ptr %i.a, align 8, !tbaa !231
  %i.ge = icmp sgt i32 %i.gd, 7
  %i.gf = load i8, ptr %i.dg, align 8, !tbaa !234, !range !212, !noundef !213
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.32, i64 noundef 5) #22 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gi = load ptr, ptr %5, align 8, !tbaa !195
  %i.gj = load i64, ptr %i.dc, align 8, !tbaa !194
  %i.gk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.gi, i64 noundef %i.gj) #22 ; 0 uses
  %i.gl = load i8, ptr %i.dg, align 8, !tbaa !234, !range !212, !noundef !213
  %i.gm = trunc nuw i8 %i.gl to i1
  %or.cond.i = or i1 %i.ge, %i.gm
  br i1 %or.cond.i, label %bb.t, label %_ZNK12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112

bb.t:                                             ; preds = %bb.s
  %i.gn = load ptr, ptr @_ZSt4cout, align 8, !tbaa !71
  %i.go = getelementptr i8, ptr %i.gn, i64 -24
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 240
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !87 ; 6 uses
  %.not.i.i.i.i108 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i.i108, label %bb.u, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i109

bb.u:                                             ; preds = %bb.t
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i109: ; preds = %bb.t
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 56
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !93
  %.not.i1.i.i.i110 = icmp eq i8 %i.gu, 0
  br i1 %.not.i1.i.i.i110, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i109
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 67
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !94
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i109
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gs) #22
  %i.gx = load ptr, ptr %i.gs, align 8, !tbaa !71
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = call noundef signext i8 %i.gz(ptr noundef nonnull align 8 dereferenceable(570) %i.gs, i8 noundef signext 10) #22, !inline_history !38
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i111 = phi i8 [ %i.gw, %bb.v ], [ %i.ha, %bb.w ]
  %i.hb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i.i111) #22
  br label %_ZNK12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112

_ZNK12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112: ; preds = %bb.s, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i
  %_ZSt4cout.sink.i = phi ptr [ %i.hb, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i ], [ @_ZSt4cout, %bb.s ]
  %i.hc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink.i) #22 ; 0 uses
  %i.hd = load ptr, ptr %5, align 8, !tbaa !195   ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.db
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %_ZNK12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112
  %i.hf = load i64, ptr %i.db, align 8, !tbaa !94
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZNK12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE5PrintENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  store ptr %i.dh, ptr %4, align 8, !tbaa !71
  %i.hh = load i64, ptr %i.dj, align 8
  %i.hi = getelementptr inbounds i8, ptr %4, i64 %i.hh
  store ptr %i.di, ptr %i.hi, align 8, !tbaa !71
  store ptr %i.dk, ptr %i.cm, align 8, !tbaa !71
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ct, align 8, !tbaa !71
  %i.hj = load ptr, ptr %i.cx, align 8, !tbaa !195 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.cy
  br i1 %i.hk, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.hl = load i64, ptr %i.cy, align 8, !tbaa !94
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #25
end_hunk_1
