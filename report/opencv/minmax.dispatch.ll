inline.NumInlined: 407
inline.NumDeleted: 187
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZN2cv9minMaxIdxERKNS_11_InputArrayEPdS3_PiS4_S2_:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  invoke void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPPhi(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef -1)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i64 0, ptr %i.c, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i64 0, ptr %i.d, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !88
  %i.bx = trunc i64 %i.bw to i32
  %i.by = mul nsw i32 %i.i, %i.bx                 ; 2 uses
  store i64 0, ptr %20, align 8, !tbaa !13
  store i64 0, ptr %19, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !93
  %.not243 = icmp eq i64 %i.ca, 0
  br i1 %.not243, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.au
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cc = sext i32 %i.by to i64
  br label %bb.aw

._crit_edge:                                      ; preds = %bb.ay, %bb.au
  switch i32 %i.f, label %bb.bb [
    i32 9, label %bb.ba
    i32 4, label %bb.ba
    i32 3, label %bb.ba
    i32 2, label %bb.ba
    i32 1, label %bb.ba
    i32 0, label %bb.ba
  ]

bb.av:                                            ; preds = %bb.at
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.aw:                                            ; preds = %.lr.ph, %bb.ay
  %.094242 = phi i64 [ 0, %.lr.ph ], [ %i.ch, %bb.ay ]
  %.096241 = phi i64 [ 1, %.lr.ph ], [ %i.ci, %bb.ay ] ; 2 uses
  %i.ce = load ptr, ptr %i.b, align 16, !tbaa !94
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !94
  invoke void %i.bf(ptr noundef %i.ce, ptr noundef %i.cf, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.by, i64 noundef %.096241)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.cg = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %18)
          to label %bb.ay unwind label %bb.az     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.ch = add nuw i64 %.094242, 1                 ; 2 uses
  %i.ci = add i64 %.096241, %i.cc
  %i.cj = load i64, ptr %i.bz, align 8, !tbaa !93
  %i.ck = icmp ult i64 %i.ch, %i.cj
  br i1 %i.ck, label %bb.aw, label %._crit_edge, !llvm.loop !95

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body219

bb.ba:                                            ; preds = %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge
  %i.cm = load i32, ptr %19, align 8, !tbaa !13
  %i.cn = sitofp i32 %i.cm to double
  %i.co = load i32, ptr %20, align 8, !tbaa !13
  %i.cp = sitofp i32 %i.co to double
  br label %bb.bo

bb.bb:                                            ; preds = %._crit_edge
  %i.cq = and i32 %i.e, 29
  %or.cond9 = icmp eq i32 %i.cq, 5
  %i.cr = icmp eq i32 %i.f, 8
  %or.cond11 = or i1 %or.cond9, %i.cr
  br i1 %or.cond11, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.cs = load float, ptr %19, align 8, !tbaa !13
  %i.ct = fpext float %i.cs to double
  %i.cu = load float, ptr %20, align 8, !tbaa !13
  %i.cv = fpext float %i.cu to double
  br label %bb.bo

bb.bd:                                            ; preds = %bb.bb
  %i.cw = icmp eq i32 %i.f, 6
  br i1 %i.cw, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.cx = load double, ptr %19, align 8, !tbaa !13
  %i.cy = load double, ptr %20, align 8, !tbaa !13
  br label %bb.bo

bb.bf:                                            ; preds = %bb.bd
  %i.cz = add nsw i32 %i.f, -11
  %or.cond13 = icmp ult i32 %i.cz, 2
  br i1 %or.cond13, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.da = load i64, ptr %19, align 8, !tbaa !13
  %i.db = sitofp i64 %i.da to double
  %i.dc = load i64, ptr %20, align 8, !tbaa !13
  %i.dd = sitofp i64 %i.dc to double
  br label %bb.bo

bb.bh:                                            ; preds = %bb.bf
  %i.de = icmp eq i32 %i.f, 10
  br i1 %i.de, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZN2cv9minMaxIdxERKNS_11_InputArrayEPdS3_PiS4_S2_, ptr noundef nonnull @.str.1, i32 noundef 378) #17
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  unreachable

bb.bl:                                            ; preds = %bb.bi
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

bb.bm:                                            ; preds = %bb.bj
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %21, align 8, !tbaa !62   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %bb.bm
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !13
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203, %bb.bl
  %.pn148 = phi { ptr, i32 } [ %i.df, %bb.bl ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203 ], [ %i.dg, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  br label %.body219

bb.bn:                                            ; preds = %bb.bh
  %i.dm = load i64, ptr %19, align 8, !tbaa !13
  %i.dn = uitofp i64 %i.dm to double
  %i.do = load i64, ptr %20, align 8, !tbaa !13
  %i.dp = uitofp i64 %i.do to double
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bc, %bb.bg, %bb.bn, %bb.be, %bb.ba
  %.093 = phi double [ %i.cn, %bb.ba ], [ %i.ct, %bb.bc ], [ %i.cx, %bb.be ], [ %i.db, %bb.bg ], [ %i.dn, %bb.bn ]
  %.0 = phi double [ %i.cp, %bb.ba ], [ %i.cv, %bb.bc ], [ %i.cy, %bb.be ], [ %i.dd, %bb.bg ], [ %i.dp, %bb.bn ]
  %.not150 = icmp eq ptr %1, null
  br i1 %.not150, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store double %.093, ptr %1, align 8, !tbaa !38
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.not151 = icmp eq ptr %2, null
  br i1 %.not151, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store double %.0, ptr %2, align 8, !tbaa !38
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.not152 = icmp eq ptr %3, null
  br i1 %.not152, label %_ZN2cvL7ofs2idxERKNS_3MatEmPi.exit221, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.dq = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.dr = load i32, ptr %i.ak, align 4, !tbaa !75 ; 3 uses
  %.not.i206 = icmp eq i64 %i.dq, 0
  %i.ds = icmp sgt i32 %i.dr, 0                   ; 2 uses
  br i1 %.not.i206, label %.preheader.i216, label %bb.bu

.preheader.i216:                                  ; preds = %bb.bt
  br i1 %i.ds, label %.lr.ph24.preheader.i217, label %_ZN2cvL7ofs2idxERKNS_3MatEmPi.exit221

.lr.ph24.preheader.i217:                          ; preds = %.preheader.i216
  %i.dt = zext nneg i32 %i.dr to i64
  %i.du = shl nuw nsw i64 %i.dt, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %3, i8 -1, i64 %i.du, i1 false), !tbaa !10
  br label %_ZN2cvL7ofs2idxERKNS_3MatEmPi.exit221

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.ds, label %.lr.ph.i207, label %_ZN2cvL7ofs2idxERKNS_3MatEmPi.exit221

.lr.ph.i207:                                      ; preds = %bb.bu
  %i.dv = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 84 ; 3 uses
  %i.dx = zext nneg i32 %i.dr to i64              ; 4 uses
  %i.dy = load i32, ptr %i.dv, align 8, !tbaa !96
  %narrow.i.i211 = call i32 @llvm.smax.i32(i32 %i.dy, i32 1)
  %i.dz = zext nneg i32 %narrow.i.i211 to i64
  %i.ea = add nsw i64 %i.dx, -1                   ; 2 uses
  %.first_iter = icmp samesign ult i64 %i.ea, %i.dz
  br i1 %.first_iter, label %.lr.ph.i207.split.preheader, label %bb.bw

.lr.ph.i207.split.preheader:                      ; preds = %.lr.ph.i207
  %23 = add i64 %i.dq, -1                         ; 3 uses
  %xtraiter = and i64 %i.dx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i207.split.prol.loopexit, label %.lr.ph.i207.split.prol

.lr.ph.i207.split.prol:                           ; preds = %.lr.ph.i207.split.preheader
  %indvars.iv.next.i210.prol = add nsw i64 %i.dx, -1 ; 3 uses
  %24 = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next.i210.prol
  %25 = load i32, ptr %24, align 4, !tbaa !10
  %26 = sext i32 %25 to i64                       ; 2 uses
  %27 = urem i64 %23, %26
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i210.prol
  store i32 %28, ptr %29, align 4, !tbaa !10
  %30 = udiv i64 %23, %26
  br label %.lr.ph.i207.split.prol.loopexit

.lr.ph.i207.split.prol.loopexit:                  ; preds = %.lr.ph.i207.split.prol, %.lr.ph.i207.split.preheader
  %indvars.iv.i208.unr = phi i64 [ %i.dx, %.lr.ph.i207.split.preheader ], [ %indvars.iv.next.i210.prol, %.lr.ph.i207.split.prol ]
  %.022.i209.unr = phi i64 [ %23, %.lr.ph.i207.split.preheader ], [ %30, %.lr.ph.i207.split.prol ]
  %31 = icmp eq i64 %i.ea, 0
  br i1 %31, label %_ZN2cvL7ofs2idxERKNS_3MatEmPi.exit221, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i207.split.prol.loopexit, %bb.bv
  %indvars.iv.i208 = phi i64 [ %indvars.iv.next.i210.1, %bb.bv ], [ %indvars.iv.i208.unr, %.lr.ph.i207.split.prol.loopexit ] ; 3 uses
  %.022.i209 = phi i64 [ %45, %bb.bv ], [ %.022.i209.unr, %.lr.ph.i207.split.prol.loopexit ] ; 2 uses
  %indvars.iv.next.i210 = add nsw i64 %indvars.iv.i208, -1 ; 2 uses
  %32 = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next.i210
  %33 = load i32, ptr %32, align 4, !tbaa !10
  %34 = sext i32 %33 to i64                       ; 2 uses
  %35 = urem i64 %.022.i209, %34
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i210
  store i32 %36, ptr %37, align 4, !tbaa !10
  %38 = udiv i64 %.022.i209, %34                  ; 2 uses
  %indvars.iv.next.i210.1 = add nsw i64 %indvars.iv.i208, -2 ; 3 uses
  %39 = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next.i210.1
  %40 = load i32, ptr %39, align 4, !tbaa !10
  %41 = sext i32 %40 to i64                       ; 2 uses
  %42 = urem i64 %38, %41
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i210.1
  store i32 %43, ptr %44, align 4, !tbaa !10
  %45 = udiv i64 %38, %41
  %46 = icmp sgt i64 %indvars.iv.i208, 2
  br i1 %46, label %bb.bv, label %_ZN2cvL7ofs2idxERKNS_3MatEmPi.exit221, !llvm.loop !97

bb.bw:                                            ; preds = %.lr.ph.i207
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc218 unwind label %bb.bz

.noexc218:                                        ; preds = %bb.bw
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.12, i32 noundef 103) #17
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %.noexc218
  unreachable

bb.by:                                            ; preds = %.noexc218
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = load ptr, ptr %8, align 8, !tbaa !62    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i212: ; preds = %bb.by
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !13
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i213: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %.body219

bb.bz:                                            ; preds = %bb.cd, %bb.bw
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body219

_ZN2cvL7ofs2idxERKNS_3MatEmPi.exit221:            ; preds = %.lr.ph.i207.split.prol.loopexit, %bb.bv, %bb.bu, %.lr.ph24.preheader.i217, %.preheader.i216, %bb.bs
  %.not153 = icmp eq ptr %4, null
  br i1 %.not153, label %.critedge, label %bb.ca

bb.ca:                                            ; preds = %_ZN2cvL7ofs2idxERKNS_3MatEmPi.exit221
  %i.ei = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.ej = load i32, ptr %i.ak, align 4, !tbaa !75 ; 3 uses
  %.not.i222 = icmp eq i64 %i.ei, 0
  %i.ek = icmp sgt i32 %i.ej, 0                   ; 2 uses
  br i1 %.not.i222, label %.preheader.i232, label %bb.cb

.preheader.i232:                                  ; preds = %bb.ca
  br i1 %i.ek, label %.lr.ph24.preheader.i233, label %.critedge

.lr.ph24.preheader.i233:                          ; preds = %.preheader.i232
  %i.el = zext nneg i32 %i.ej to i64
  %i.em = shl nuw nsw i64 %i.el, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %4, i8 -1, i64 %i.em, i1 false), !tbaa !10
  br label %.critedge

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.ek, label %.lr.ph.i223, label %.critedge

.lr.ph.i223:                                      ; preds = %bb.cb
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 84 ; 3 uses
  %i.ep = zext nneg i32 %i.ej to i64              ; 4 uses
  %i.eq = load i32, ptr %i.en, align 8, !tbaa !96
  %narrow.i.i227 = call i32 @llvm.smax.i32(i32 %i.eq, i32 1)
  %i.er = zext nneg i32 %narrow.i.i227 to i64
  %i.es = add nsw i64 %i.ep, -1                   ; 2 uses
  %.first_iter244 = icmp samesign ult i64 %i.es, %i.er
  br i1 %.first_iter244, label %.lr.ph.i223.split.preheader, label %bb.cd

.lr.ph.i223.split.preheader:                      ; preds = %.lr.ph.i223
  %47 = add i64 %i.ei, -1                         ; 3 uses
  %xtraiter266 = and i64 %i.ep, 1
  %lcmp.mod267.not = icmp eq i64 %xtraiter266, 0
  br i1 %lcmp.mod267.not, label %.lr.ph.i223.split.prol.loopexit, label %.lr.ph.i223.split.prol

.lr.ph.i223.split.prol:                           ; preds = %.lr.ph.i223.split.preheader
  %indvars.iv.next.i226.prol = add nsw i64 %i.ep, -1 ; 3 uses
  %48 = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.next.i226.prol
  %49 = load i32, ptr %48, align 4, !tbaa !10
  %50 = sext i32 %49 to i64                       ; 2 uses
  %51 = urem i64 %47, %50
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i226.prol
  store i32 %52, ptr %53, align 4, !tbaa !10
  %54 = udiv i64 %47, %50
  br label %.lr.ph.i223.split.prol.loopexit

.lr.ph.i223.split.prol.loopexit:                  ; preds = %.lr.ph.i223.split.prol, %.lr.ph.i223.split.preheader
  %indvars.iv.i224.unr = phi i64 [ %i.ep, %.lr.ph.i223.split.preheader ], [ %indvars.iv.next.i226.prol, %.lr.ph.i223.split.prol ]
  %.022.i225.unr = phi i64 [ %47, %.lr.ph.i223.split.preheader ], [ %54, %.lr.ph.i223.split.prol ]
  %55 = icmp eq i64 %i.es, 0
  br i1 %55, label %.critedge, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i223.split.prol.loopexit, %bb.cc
  %indvars.iv.i224 = phi i64 [ %indvars.iv.next.i226.1, %bb.cc ], [ %indvars.iv.i224.unr, %.lr.ph.i223.split.prol.loopexit ] ; 3 uses
  %.022.i225 = phi i64 [ %69, %bb.cc ], [ %.022.i225.unr, %.lr.ph.i223.split.prol.loopexit ] ; 2 uses
  %indvars.iv.next.i226 = add nsw i64 %indvars.iv.i224, -1 ; 2 uses
  %56 = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.next.i226
  %57 = load i32, ptr %56, align 4, !tbaa !10
  %58 = sext i32 %57 to i64                       ; 2 uses
  %59 = urem i64 %.022.i225, %58
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i226
  store i32 %60, ptr %61, align 4, !tbaa !10
  %62 = udiv i64 %.022.i225, %58                  ; 2 uses
  %indvars.iv.next.i226.1 = add nsw i64 %indvars.iv.i224, -2 ; 3 uses
  %63 = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.next.i226.1
  %64 = load i32, ptr %63, align 4, !tbaa !10
  %65 = sext i32 %64 to i64                       ; 2 uses
  %66 = urem i64 %62, %65
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i226.1
  store i32 %67, ptr %68, align 4, !tbaa !10
  %69 = udiv i64 %62, %65
  %70 = icmp sgt i64 %indvars.iv.i224, 2
  br i1 %70, label %bb.cc, label %.critedge, !llvm.loop !97

bb.cd:                                            ; preds = %.lr.ph.i223
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc234 unwind label %bb.bz

.noexc234:                                        ; preds = %bb.cd
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.12, i32 noundef 103) #17
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %.noexc234
  unreachable

bb.cf:                                            ; preds = %.noexc234
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = load ptr, ptr %6, align 8, !tbaa !62    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i228: ; preds = %bb.cf
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !13
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i229: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.body219

.critedge:                                        ; preds = %.lr.ph.i223.split.prol.loopexit, %bb.cc, %_ZN2cvL7ofs2idxERKNS_3MatEmPi.exit221, %.preheader.i232, %.lr.ph24.preheader.i233, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !83
  %.not.i238 = icmp eq i32 %i.fa, 0
  br i1 %.not.i238, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %.critedge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %11)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #19
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.critedge, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  ret void

.body219:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i229, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %bb.az
  %.pn156 = phi { ptr, i32 } [ %i.cl, %bb.az ], [ %.pn148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i213 ], [ %i.eh, %bb.bz ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i229 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.ci

bb.ci:                                            ; preds = %.body219, %bb.av
  %.pn156.pn = phi { ptr, i32 } [ %.pn156, %.body219 ], [ %i.cd, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.body

.body:                                            ; preds = %bb.ai, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %bb.ci, %bb.ac
  %.pn156.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.ai ], [ %.pn146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %i.bl, %bb.an ], [ %i.av, %bb.ac ], [ %.pn156.pn, %bb.ci ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #16
  br label %bb.cj

bb.cj:                                            ; preds = %.body, %bb.ab
  %.pn156.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn156.pn.pn.pn, %.body ], [ %i.au, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #16
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.aa
  %.pn156.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn156.pn.pn.pn.pn, %bb.cj ], [ %i.at, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.cl

bb.cl:                                            ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ck, %bb.m
  %.pn156.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.t, %bb.m ], [ %.pn156.pn.pn.pn.pn.pn, %bb.ck ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %bb.n ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  resume { ptr, i32 } %.pn156.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !98
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.d, ptr %i.a, align 8, !tbaa !11
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !62
  %i.g = load i64, ptr %i.a, align 8, !tbaa !11
  store i64 %i.g, ptr %i.b, align 8, !tbaa !13
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !13
  store i8 %i.i, ptr %i.h, align 1, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !99
  %i.l = load ptr, ptr %0, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPPhi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !83
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv9minMaxLocERKNS_11_InputArrayEPdS3_PNS_6Point_IiEES6_S2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv9minMaxLocERKNS_11_InputArrayEPdS3_PNS_6Point_IiEES6_S2_E25__cv_trace_location_fn396)
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4dimsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.b unwind label %bb.c       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %i.a, 3
  br i1 %i.b, label %bb.f, label %bb.d

bb.c:                                             ; preds = %bb.f, %bb.d, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.a, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv9minMaxLocERKNS_11_InputArrayEPdS3_PNS_6Point_IiEES6_S2_E15__cv_check__399) #17
          to label %bb.e unwind label %bb.c
end_hunk_0
