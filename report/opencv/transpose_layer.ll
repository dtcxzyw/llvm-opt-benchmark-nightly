Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/transpose_layer?download=true
inline.NumInlined: 721
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv3dnn18TransposeLayerImpl5runOpERKNS_3MatERS2_:bb.a
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.i: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197.i, %bb.aw
  %.pn132.i = phi { ptr, i32 } [ %i.lw, %bb.aw ], [ %i.lx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197.i ], [ %i.lx, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.el

bb.ay:                                            ; preds = %bb.as
  %i.md = load i32, ptr %2, align 8, !tbaa !143
  %i.me = and i32 %i.md, 16384
  %.not326.i = icmp eq i32 %i.me, 0
  br i1 %.not326.i, label %bb.az, label %.preheader327.preheader.i

.preheader327.preheader.i:                        ; preds = %bb.ay
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.i, i8 0, i64 48, i1 false), !tbaa !14
  %i.mf = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.mg = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.mh = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.f, align 16, !tbaa !66
  %i.mm = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store <4 x i32> splat (i32 1), ptr %i.h, align 16, !tbaa !66
  %i.mn = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store <4 x i32> splat (i32 1), ptr %i.g, align 16, !tbaa !66
  %i.mo = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i32 4, ptr %i.mo, align 16, !tbaa !66
  %i.mp = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i32 1, ptr %i.mp, align 16, !tbaa !66
  %i.mq = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i32 1, ptr %i.mq, align 16, !tbaa !66
  %i.mr = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  store i32 5, ptr %i.mr, align 4, !tbaa !66
  %i.ms = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  store i32 1, ptr %i.ms, align 4, !tbaa !66
  %i.mt = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  store i32 1, ptr %i.mt, align 4, !tbaa !66
  %i.mu = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store i32 6, ptr %i.mu, align 8, !tbaa !66
  %i.mv = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store i32 1, ptr %i.mv, align 8, !tbaa !66
  %i.mw = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store i32 1, ptr %i.mw, align 8, !tbaa !66
  %i.mx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 1, ptr %i.mx, align 16, !tbaa !14
  %i.my = icmp sgt i32 %i.z, 0
  br i1 %i.my, label %.lr.ph343.i, label %.split154.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @__func__._ZN2cv3dnnL9transposeERKNS_3MatERKSt6vectorIiSaIiEERS1_, ptr noundef nonnull @.str.10, i32 noundef 131) #22
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  unreachable

bb.bc:                                            ; preds = %bb.az
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i

bb.bd:                                            ; preds = %bb.ba
  %i.na = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nb = load ptr, ptr %25, align 8, !tbaa !39   ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.nd = icmp eq ptr %i.nb, %i.nc
  br i1 %i.nd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i: ; preds = %bb.bd
  %i.ne = load i64, ptr %i.nc, align 8, !tbaa !38
  %i.nf = add i64 %i.ne, 1
  call void @_ZdlPvm(ptr noundef %i.nb, i64 noundef %i.nf) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i, %bb.bc
  %.pn134.i = phi { ptr, i32 } [ %i.mz, %bb.bc ], [ %i.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i ], [ %i.na, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  br label %bb.el

.lr.ph343.i:                                      ; preds = %.preheader327.preheader.i
  %i.ng = load ptr, ptr %i.w, align 8, !tbaa !42  ; 8 uses
  %i.nh = load ptr, ptr %i.aw, align 8, !tbaa !42
  %i.ni = icmp eq ptr %i.ng, %i.nh                ; 7 uses
  %i.nj = load i32, ptr %13, align 4              ; 7 uses
  %narrow.i206.i = call i32 @llvm.smax.i32(i32 %i.nj, i32 1) ; 7 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 8 uses
  %i.nl = load i32, ptr %14, align 4              ; 6 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.nn = sext i32 %i.ll to i64                   ; 9 uses
  br i1 %i.ni, label %bb.be, label %bb.bf

.preheader.loopexit.i:                            ; preds = %_ZN2cv8MatShapeixEm.exit232.i.6, %_ZN2cv8MatShapeixEm.exit232.i.5, %_ZN2cv8MatShapeixEm.exit232.i.4, %_ZN2cv8MatShapeixEm.exit232.i.3, %_ZN2cv8MatShapeixEm.exit232.i.2, %_ZN2cv8MatShapeixEm.exit232.i.1, %_ZN2cv8MatShapeixEm.exit232.i
  %.pre374.i = load i32, ptr %i.mw, align 8, !tbaa !66
  %.pre375.i = load i32, ptr %i.mt, align 4, !tbaa !66
  %.pre376.i = load i32, ptr %i.mq, align 16, !tbaa !66
  %.pre377.i = load i32, ptr %i.mn, align 4, !tbaa !66
  %.pre378.i = load i32, ptr %i.mk, align 8, !tbaa !66
  %.pre379.i = load i32, ptr %i.mh, align 4, !tbaa !66
  %.pre380.i = load i32, ptr %i.h, align 16, !tbaa !66
  %.pre381.i = load i32, ptr %i.mg, align 4, !tbaa !66
  %.pre382.i = load i32, ptr %i.mj, align 8, !tbaa !66
  %.pre383.i = load i32, ptr %i.mm, align 4, !tbaa !66
  %.pre384.i = load i32, ptr %i.mp, align 16, !tbaa !66
  %.pre385.i = load i32, ptr %i.ms, align 4, !tbaa !66
  %.pre386.i = load i32, ptr %i.mv, align 8, !tbaa !66
  %.pre387.i = load i32, ptr %i.f, align 16, !tbaa !66
  %.pre388.i = load i32, ptr %i.mf, align 4, !tbaa !66
  %.pre389.i = load i32, ptr %i.mi, align 8, !tbaa !66
  %.pre390.i = load i32, ptr %i.ml, align 4, !tbaa !66
  %.pre391.i = load i32, ptr %i.mo, align 16, !tbaa !66
  %.pre392.i = load i32, ptr %i.mr, align 4, !tbaa !66
  %.pre393.i = load i32, ptr %i.mu, align 8, !tbaa !66
  %i.no = sext i32 %.pre374.i to i64              ; 2 uses
  %i.np = sext i32 %.pre375.i to i64
  %i.nq = mul nsw i64 %i.np, %i.no                ; 2 uses
  %i.nr = sext i32 %.pre376.i to i64
  %i.ns = mul i64 %i.nq, %i.nr                    ; 2 uses
  %i.nt = sext i32 %.pre377.i to i64
  %i.nu = mul i64 %i.ns, %i.nt                    ; 2 uses
  %i.nv = sext i32 %.pre378.i to i64
  %i.nw = mul i64 %i.nu, %i.nv                    ; 2 uses
  %i.nx = sext i32 %.pre379.i to i64
  %i.ny = mul i64 %i.nw, %i.nx
  %i.nz = sext i32 %.pre387.i to i64
  %i.oa = sext i32 %.pre388.i to i64
  %i.ob = sext i32 %.pre389.i to i64
  %i.oc = sext i32 %.pre390.i to i64
  %i.od = sext i32 %.pre391.i to i64
  %i.oe = sext i32 %.pre392.i to i64
  %i.of = sext i32 %.pre393.i to i64
  %i.og = zext i32 %.pre380.i to i64
  br label %.split154.i

bb.be:                                            ; preds = %.lr.ph343.i
  %i.oh = add nsw i32 %i.z, -1
  br label %bb.bg

bb.bf:                                            ; preds = %.lr.ph343.i
  %i.oi = load i32, ptr %i.ng, align 4, !tbaa !66
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.oj = phi i32 [ %i.oh, %bb.be ], [ %i.oi, %bb.bf ] ; 2 uses
  %i.ok = icmp slt i32 %i.oj, 0
  %i.ol = select i1 %i.ok, i32 %i.z, i32 0
  %.095.i = add nsw i32 %i.ol, %i.oj              ; 4 uses
  %or.cond.i = icmp ult i32 %.095.i, %i.z
  br i1 %or.cond.i, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %bb.di, %bb.dc, %bb.cw, %bb.cq, %bb.ck, %bb.ce, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @__func__._ZN2cv3dnnL9transposeERKNS_3MatERKSt6vectorIiSaIiEERS1_, ptr noundef nonnull @.str.10, i32 noundef 144) #22
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  unreachable

bb.bk:                                            ; preds = %bb.bh
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i

bb.bl:                                            ; preds = %bb.bi
  %i.on = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oo = load ptr, ptr %27, align 8, !tbaa !39   ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i: ; preds = %bb.bl
  %i.or = load i64, ptr %i.op, align 8, !tbaa !38
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.os) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i, %bb.bk
  %.pn138.i = phi { ptr, i32 } [ %i.om, %bb.bk ], [ %i.on, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i ], [ %i.on, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  br label %bb.el

bb.bm:                                            ; preds = %bb.bg
  %i.ot = add nuw nsw i32 %.095.i, %i.ll
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.nn
  store i32 %i.ot, ptr %i.ou, align 4, !tbaa !66
  %i.ov = icmp ult i32 %.095.i, %narrow.i206.i
  br i1 %i.ov, label %_ZN2cv8MatShapeixEm.exit217.i, label %bb.bn

bb.bn:                                            ; preds = %bb.dj, %bb.dd, %bb.cx, %bb.cr, %bb.cl, %bb.cf, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.17, i32 noundef 97) #22
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.ow = landingpad { ptr, i32 }
          cleanup
  %i.ox = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.oz = icmp eq ptr %i.ox, %i.oy
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i209.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i208.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i208.i: ; preds = %bb.bp
  %i.pa = load i64, ptr %i.oy, align 8, !tbaa !38
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i209.i

common.resume.i:                                  ; preds = %bb.em, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i224.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i209.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ow, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i209.i ], [ %i.pc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215.i ], [ %i.pu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i224.i ], [ %.pn148.pn.pn.pn.i, %bb.em ]
  resume { ptr, i32 } %common.resume.op.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i209.i: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i208.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %common.resume.i

bb.bq:                                            ; preds = %_ZN2cv8MatShapeixEm.exit211.i.6, %_ZN2cv8MatShapeixEm.exit211.i.5, %_ZN2cv8MatShapeixEm.exit211.i.4, %_ZN2cv8MatShapeixEm.exit211.i.3, %_ZN2cv8MatShapeixEm.exit211.i.2, %_ZN2cv8MatShapeixEm.exit211.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.17, i32 noundef 97) #22
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.pc = landingpad { ptr, i32 }
          cleanup
  %i.pd = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.pf = icmp eq ptr %i.pd, %i.pe
  br i1 %i.pf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i214.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i214.i: ; preds = %bb.bs
  %i.pg = load i64, ptr %i.pe, align 8, !tbaa !38
  %i.ph = add i64 %i.pg, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.ph) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i215.i: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i214.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %common.resume.i

_ZN2cv8MatShapeixEm.exit217.i:                    ; preds = %bb.bm
  %i.pi = zext nneg i32 %.095.i to i64
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.pi
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !66 ; 2 uses
  %i.pl = load i32, ptr %i.nm, align 4, !tbaa !66
  %i.pm = icmp eq i32 %i.pk, %i.pl
  br i1 %i.pm, label %_ZN2cv8MatShapeixEm.exit232.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN2cv8MatShapeixEm.exit217.i.6, %_ZN2cv8MatShapeixEm.exit217.i.5, %_ZN2cv8MatShapeixEm.exit217.i.4, %_ZN2cv8MatShapeixEm.exit217.i.3, %_ZN2cv8MatShapeixEm.exit217.i.2, %_ZN2cv8MatShapeixEm.exit217.i.1, %_ZN2cv8MatShapeixEm.exit217.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @__func__._ZN2cv3dnnL9transposeERKNS_3MatERKSt6vectorIiSaIiEERS1_, ptr noundef nonnull @.str.10, i32 noundef 148) #22
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  unreachable

bb.bw:                                            ; preds = %bb.bt
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220.i

bb.bx:                                            ; preds = %bb.bu
  %i.po = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pp = load ptr, ptr %29, align 8, !tbaa !39   ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.pr = icmp eq ptr %i.pp, %i.pq
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218.i: ; preds = %bb.bx
  %i.ps = load i64, ptr %i.pq, align 8, !tbaa !38
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.pt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220.i: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218.i, %bb.bw
  %.pn140.i = phi { ptr, i32 } [ %i.pn, %bb.bw ], [ %i.po, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218.i ], [ %i.po, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  br label %bb.el

bb.by:                                            ; preds = %bb.dk, %bb.de, %bb.cy, %bb.cs, %bb.cm, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.17, i32 noundef 97) #22
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.pu = landingpad { ptr, i32 }
          cleanup
  %i.pv = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.px = icmp eq ptr %i.pv, %i.pw
  br i1 %i.px, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i224.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i223.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i223.i: ; preds = %bb.ca
  %i.py = load i64, ptr %i.pw, align 8, !tbaa !38
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.pz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i224.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i224.i: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i223.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume.i

_ZN2cv8MatShapeixEm.exit232.i:                    ; preds = %_ZN2cv8MatShapeixEm.exit217.i
  %i.qa = load i32, ptr %i.nk, align 4, !tbaa !66
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.nn
  store i32 %i.qa, ptr %i.qb, align 4, !tbaa !66
  %i.qc = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.nn
  store i32 %i.pk, ptr %i.qc, align 4, !tbaa !66
  %exitcond367.not.i = icmp eq i32 %i.z, 1
  br i1 %exitcond367.not.i, label %.preheader.loopexit.i, label %bb.cb

bb.cb:                                            ; preds = %_ZN2cv8MatShapeixEm.exit232.i
  br i1 %i.ni, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !66
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.qf = add nsw i32 %i.z, -2
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.qg = phi i32 [ %i.qf, %bb.cd ], [ %i.qe, %bb.cc ] ; 2 uses
  %i.qh = icmp slt i32 %i.qg, 0
  %i.qi = select i1 %i.qh, i32 %i.z, i32 0
  %.095.i.1 = add nsw i32 %i.qi, %i.qg            ; 4 uses
  %or.cond.i.1 = icmp ult i32 %.095.i.1, %i.z
  br i1 %or.cond.i.1, label %bb.cf, label %bb.bh

bb.cf:                                            ; preds = %bb.ce
  %i.qj = add nuw nsw i32 %.095.i.1, %i.ll
  %i.qk = add nuw nsw i64 %i.nn, 1                ; 3 uses
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.qk
  store i32 %i.qj, ptr %i.ql, align 4, !tbaa !66
  %i.qm = icmp ult i32 %.095.i.1, %narrow.i206.i
  br i1 %i.qm, label %_ZN2cv8MatShapeixEm.exit211.i.1, label %bb.bn

_ZN2cv8MatShapeixEm.exit211.i.1:                  ; preds = %bb.cf
  %exitcond363.not.i.1 = icmp slt i32 %i.nl, 2
  br i1 %exitcond363.not.i.1, label %bb.bq, label %_ZN2cv8MatShapeixEm.exit217.i.1

_ZN2cv8MatShapeixEm.exit217.i.1:                  ; preds = %_ZN2cv8MatShapeixEm.exit211.i.1
  %i.qn = zext nneg i32 %.095.i.1 to i64
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !66 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !66
  %i.qs = icmp eq i32 %i.qp, %i.qr
  br i1 %i.qs, label %bb.cg, label %bb.bt

bb.cg:                                            ; preds = %_ZN2cv8MatShapeixEm.exit217.i.1
  %exitcond365.not.i.1 = icmp slt i32 %i.nj, 2
  br i1 %exitcond365.not.i.1, label %bb.by, label %_ZN2cv8MatShapeixEm.exit232.i.1

_ZN2cv8MatShapeixEm.exit232.i.1:                  ; preds = %bb.cg
  %i.qt = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !66
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.qk
  store i32 %i.qu, ptr %i.qv, align 4, !tbaa !66
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.qk
  store i32 %i.qp, ptr %i.qw, align 4, !tbaa !66
  %exitcond367.not.i.1 = icmp eq i32 %i.z, 2
  br i1 %exitcond367.not.i.1, label %.preheader.loopexit.i, label %bb.ch

bb.ch:                                            ; preds = %_ZN2cv8MatShapeixEm.exit232.i.1
  br i1 %i.ni, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !66
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.qz = add nsw i32 %i.z, -3
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ra = phi i32 [ %i.qz, %bb.cj ], [ %i.qy, %bb.ci ] ; 2 uses
  %i.rb = icmp slt i32 %i.ra, 0
  %i.rc = select i1 %i.rb, i32 %i.z, i32 0
  %.095.i.2 = add nsw i32 %i.rc, %i.ra            ; 4 uses
  %or.cond.i.2 = icmp ult i32 %.095.i.2, %i.z
  br i1 %or.cond.i.2, label %bb.cl, label %bb.bh

bb.cl:                                            ; preds = %bb.ck
  %i.rd = add nuw nsw i32 %.095.i.2, %i.ll
  %i.re = add nuw nsw i64 %i.nn, 2                ; 3 uses
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.re
  store i32 %i.rd, ptr %i.rf, align 4, !tbaa !66
  %i.rg = icmp ult i32 %.095.i.2, %narrow.i206.i
  br i1 %i.rg, label %_ZN2cv8MatShapeixEm.exit211.i.2, label %bb.bn

_ZN2cv8MatShapeixEm.exit211.i.2:                  ; preds = %bb.cl
  %exitcond363.not.i.2 = icmp eq i32 %i.nl, 2
  br i1 %exitcond363.not.i.2, label %bb.bq, label %_ZN2cv8MatShapeixEm.exit217.i.2

_ZN2cv8MatShapeixEm.exit217.i.2:                  ; preds = %_ZN2cv8MatShapeixEm.exit211.i.2
  %i.rh = zext nneg i32 %.095.i.2 to i64
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.rh
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !66 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !66
  %i.rm = icmp eq i32 %i.rj, %i.rl
  br i1 %i.rm, label %bb.cm, label %bb.bt

bb.cm:                                            ; preds = %_ZN2cv8MatShapeixEm.exit217.i.2
  %exitcond365.not.i.2 = icmp eq i32 %i.nj, 2
  br i1 %exitcond365.not.i.2, label %bb.by, label %_ZN2cv8MatShapeixEm.exit232.i.2

_ZN2cv8MatShapeixEm.exit232.i.2:                  ; preds = %bb.cm
  %i.rn = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !66
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.re
  store i32 %i.ro, ptr %i.rp, align 4, !tbaa !66
  %i.rq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.re
  store i32 %i.rj, ptr %i.rq, align 4, !tbaa !66
  %exitcond367.not.i.2 = icmp eq i32 %i.z, 3
  br i1 %exitcond367.not.i.2, label %.preheader.loopexit.i, label %bb.cn

bb.cn:                                            ; preds = %_ZN2cv8MatShapeixEm.exit232.i.2
  br i1 %i.ni, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ng, i64 12
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !66
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.rt = add nsw i32 %i.z, -4
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.ru = phi i32 [ %i.rt, %bb.cp ], [ %i.rs, %bb.co ] ; 2 uses
  %i.rv = icmp slt i32 %i.ru, 0
  %i.rw = select i1 %i.rv, i32 %i.z, i32 0
  %.095.i.3 = add nsw i32 %i.rw, %i.ru            ; 4 uses
  %or.cond.i.3 = icmp ult i32 %.095.i.3, %i.z
  br i1 %or.cond.i.3, label %bb.cr, label %bb.bh

bb.cr:                                            ; preds = %bb.cq
  %i.rx = add nuw nsw i32 %.095.i.3, %i.ll
  %i.ry = add nuw nsw i64 %i.nn, 3                ; 3 uses
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ry
  store i32 %i.rx, ptr %i.rz, align 4, !tbaa !66
  %i.sa = icmp ult i32 %.095.i.3, %narrow.i206.i
  br i1 %i.sa, label %_ZN2cv8MatShapeixEm.exit211.i.3, label %bb.bn

_ZN2cv8MatShapeixEm.exit211.i.3:                  ; preds = %bb.cr
  %exitcond363.not.i.3 = icmp eq i32 %i.nl, 3
  br i1 %exitcond363.not.i.3, label %bb.bq, label %_ZN2cv8MatShapeixEm.exit217.i.3

_ZN2cv8MatShapeixEm.exit217.i.3:                  ; preds = %_ZN2cv8MatShapeixEm.exit211.i.3
  %i.sb = zext nneg i32 %.095.i.3 to i64
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.sb
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !66 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !66
  %i.sg = icmp eq i32 %i.sd, %i.sf
  br i1 %i.sg, label %bb.cs, label %bb.bt

bb.cs:                                            ; preds = %_ZN2cv8MatShapeixEm.exit217.i.3
  %exitcond365.not.i.3 = icmp eq i32 %i.nj, 3
  br i1 %exitcond365.not.i.3, label %bb.by, label %_ZN2cv8MatShapeixEm.exit232.i.3

_ZN2cv8MatShapeixEm.exit232.i.3:                  ; preds = %bb.cs
  %i.sh = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !66
  %i.sj = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ry
  store i32 %i.si, ptr %i.sj, align 4, !tbaa !66
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ry
  store i32 %i.sd, ptr %i.sk, align 4, !tbaa !66
  %exitcond367.not.i.3 = icmp eq i32 %i.z, 4
  br i1 %exitcond367.not.i.3, label %.preheader.loopexit.i, label %bb.ct

bb.ct:                                            ; preds = %_ZN2cv8MatShapeixEm.exit232.i.3
  br i1 %i.ni, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !66
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.sn = add nsw i32 %i.z, -5
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.so = phi i32 [ %i.sn, %bb.cv ], [ %i.sm, %bb.cu ] ; 2 uses
  %i.sp = icmp slt i32 %i.so, 0
  %i.sq = select i1 %i.sp, i32 %i.z, i32 0
  %.095.i.4 = add nsw i32 %i.sq, %i.so            ; 4 uses
  %or.cond.i.4 = icmp ult i32 %.095.i.4, %i.z
  br i1 %or.cond.i.4, label %bb.cx, label %bb.bh

bb.cx:                                            ; preds = %bb.cw
  %i.sr = add nuw nsw i32 %.095.i.4, %i.ll
  %i.ss = add nuw nsw i64 %i.nn, 4                ; 3 uses
  %i.st = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ss
  store i32 %i.sr, ptr %i.st, align 4, !tbaa !66
  %i.su = icmp ult i32 %.095.i.4, %narrow.i206.i
  br i1 %i.su, label %_ZN2cv8MatShapeixEm.exit211.i.4, label %bb.bn

_ZN2cv8MatShapeixEm.exit211.i.4:                  ; preds = %bb.cx
  %exitcond363.not.i.4 = icmp eq i32 %i.nl, 4
  br i1 %exitcond363.not.i.4, label %bb.bq, label %_ZN2cv8MatShapeixEm.exit217.i.4

_ZN2cv8MatShapeixEm.exit217.i.4:                  ; preds = %_ZN2cv8MatShapeixEm.exit211.i.4
  %i.sv = zext nneg i32 %.095.i.4 to i64
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.sv
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !66 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %14, i64 28
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !66
  %i.ta = icmp eq i32 %i.sx, %i.sz
  br i1 %i.ta, label %bb.cy, label %bb.bt

bb.cy:                                            ; preds = %_ZN2cv8MatShapeixEm.exit217.i.4
  %exitcond365.not.i.4 = icmp eq i32 %i.nj, 4
  br i1 %exitcond365.not.i.4, label %bb.by, label %_ZN2cv8MatShapeixEm.exit232.i.4

_ZN2cv8MatShapeixEm.exit232.i.4:                  ; preds = %bb.cy
  %i.tb = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !66
  %i.td = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ss
  store i32 %i.tc, ptr %i.td, align 4, !tbaa !66
  %i.te = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ss
  store i32 %i.sx, ptr %i.te, align 4, !tbaa !66
  %exitcond367.not.i.4 = icmp eq i32 %i.z, 5
  br i1 %exitcond367.not.i.4, label %.preheader.loopexit.i, label %bb.cz

bb.cz:                                            ; preds = %_ZN2cv8MatShapeixEm.exit232.i.4
  br i1 %i.ni, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ng, i64 20
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !66
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.th = add nsw i32 %i.z, -6
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.ti = phi i32 [ %i.th, %bb.db ], [ %i.tg, %bb.da ] ; 2 uses
  %i.tj = icmp slt i32 %i.ti, 0
  %i.tk = select i1 %i.tj, i32 %i.z, i32 0
  %.095.i.5 = add nsw i32 %i.tk, %i.ti            ; 4 uses
  %or.cond.i.5 = icmp ult i32 %.095.i.5, %i.z
  br i1 %or.cond.i.5, label %bb.dd, label %bb.bh

bb.dd:                                            ; preds = %bb.dc
  %i.tl = add nuw nsw i32 %.095.i.5, %i.ll
  %i.tm = add nuw nsw i64 %i.nn, 5                ; 3 uses
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.tm
  store i32 %i.tl, ptr %i.tn, align 4, !tbaa !66
  %i.to = icmp ult i32 %.095.i.5, %narrow.i206.i
  br i1 %i.to, label %_ZN2cv8MatShapeixEm.exit211.i.5, label %bb.bn

_ZN2cv8MatShapeixEm.exit211.i.5:                  ; preds = %bb.dd
  %exitcond363.not.i.5 = icmp eq i32 %i.nl, 5
  br i1 %exitcond363.not.i.5, label %bb.bq, label %_ZN2cv8MatShapeixEm.exit217.i.5

_ZN2cv8MatShapeixEm.exit217.i.5:                  ; preds = %_ZN2cv8MatShapeixEm.exit211.i.5
  %i.tp = zext nneg i32 %.095.i.5 to i64
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.tp
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !66 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !66
  %i.tu = icmp eq i32 %i.tr, %i.tt
  br i1 %i.tu, label %bb.de, label %bb.bt

bb.de:                                            ; preds = %_ZN2cv8MatShapeixEm.exit217.i.5
  %exitcond365.not.i.5 = icmp eq i32 %i.nj, 5
  br i1 %exitcond365.not.i.5, label %bb.by, label %_ZN2cv8MatShapeixEm.exit232.i.5

_ZN2cv8MatShapeixEm.exit232.i.5:                  ; preds = %bb.de
  %i.tv = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !66
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.tm
  store i32 %i.tw, ptr %i.tx, align 4, !tbaa !66
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.tm
  store i32 %i.tr, ptr %i.ty, align 4, !tbaa !66
  %exitcond367.not.i.5 = icmp eq i32 %i.z, 6
  br i1 %exitcond367.not.i.5, label %.preheader.loopexit.i, label %bb.df

bb.df:                                            ; preds = %_ZN2cv8MatShapeixEm.exit232.i.5
  br i1 %i.ni, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !66
  br label %bb.di

bb.dh:                                            ; preds = %bb.df
  %i.ub = add nsw i32 %i.z, -7
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.uc = phi i32 [ %i.ub, %bb.dh ], [ %i.ua, %bb.dg ] ; 2 uses
  %i.ud = icmp slt i32 %i.uc, 0
  %i.ue = select i1 %i.ud, i32 %i.z, i32 0
  %.095.i.6 = add nsw i32 %i.ue, %i.uc            ; 4 uses
  %or.cond.i.6 = icmp ult i32 %.095.i.6, %i.z
  br i1 %or.cond.i.6, label %bb.dj, label %bb.bh

bb.dj:                                            ; preds = %bb.di
  %i.uf = add nuw nsw i32 %.095.i.6, %i.ll
  %i.ug = add nuw nsw i64 %i.nn, 6                ; 3 uses
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ug
  store i32 %i.uf, ptr %i.uh, align 4, !tbaa !66
  %i.ui = icmp ult i32 %.095.i.6, %narrow.i206.i
  br i1 %i.ui, label %_ZN2cv8MatShapeixEm.exit211.i.6, label %bb.bn

_ZN2cv8MatShapeixEm.exit211.i.6:                  ; preds = %bb.dj
  %exitcond363.not.i.6 = icmp eq i32 %i.nl, 6
  br i1 %exitcond363.not.i.6, label %bb.bq, label %_ZN2cv8MatShapeixEm.exit217.i.6

_ZN2cv8MatShapeixEm.exit217.i.6:                  ; preds = %_ZN2cv8MatShapeixEm.exit211.i.6
  %i.uj = zext nneg i32 %.095.i.6 to i64
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.uj
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !66 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %14, i64 36
  %i.un = load i32, ptr %i.um, align 4, !tbaa !66
  %i.uo = icmp eq i32 %i.ul, %i.un
  br i1 %i.uo, label %bb.dk, label %bb.bt

bb.dk:                                            ; preds = %_ZN2cv8MatShapeixEm.exit217.i.6
  %exitcond365.not.i.6 = icmp eq i32 %i.nj, 6
  br i1 %exitcond365.not.i.6, label %bb.by, label %_ZN2cv8MatShapeixEm.exit232.i.6

_ZN2cv8MatShapeixEm.exit232.i.6:                  ; preds = %bb.dk
  %i.up = getelementptr inbounds nuw i8, ptr %13, i64 36
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !66
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ug
  store i32 %i.uq, ptr %i.ur, align 4, !tbaa !66
  %i.us = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ug
  store i32 %i.ul, ptr %i.us, align 4, !tbaa !66
  br label %.preheader.loopexit.i

.split154.i:                                      ; preds = %.preheader.loopexit.i, %.preheader327.preheader.i
  %i.ut = phi i64 [ %i.of, %.preheader.loopexit.i ], [ 6, %.preheader327.preheader.i ]
  %i.uu = phi i64 [ %i.oe, %.preheader.loopexit.i ], [ 5, %.preheader327.preheader.i ]
  %i.uv = phi i64 [ %i.od, %.preheader.loopexit.i ], [ 4, %.preheader327.preheader.i ]
  %i.uw = phi i64 [ %i.oc, %.preheader.loopexit.i ], [ 3, %.preheader327.preheader.i ]
  %i.ux = phi i64 [ %i.ob, %.preheader.loopexit.i ], [ 2, %.preheader327.preheader.i ]
  %i.uy = phi i64 [ %i.oa, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.uz = phi i64 [ %i.nz, %.preheader.loopexit.i ], [ 0, %.preheader327.preheader.i ]
  %i.va = phi i32 [ %.pre386.i, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.vb = phi i32 [ %.pre385.i, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.vc = phi i32 [ %.pre384.i, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ] ; 2 uses
  %i.vd = phi i32 [ %.pre383.i, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ] ; 2 uses
  %i.ve = phi i32 [ %.pre382.i, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ] ; 2 uses
  %i.vf = phi i32 [ %.pre381.i, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ] ; 2 uses
  %i.vg = phi i64 [ %i.og, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.vh = phi i64 [ %i.ny, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.vi = phi i64 [ %i.nw, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.vj = phi i64 [ %i.nu, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.vk = phi i64 [ %i.ns, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.vl = phi i64 [ %i.nq, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.vm = phi i64 [ %i.no, %.preheader.loopexit.i ], [ 1, %.preheader327.preheader.i ]
  %i.vn = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.vm, ptr %i.vn, align 8, !tbaa !14
  %i.vo = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.vl, ptr %i.vo, align 16, !tbaa !14
  %i.vp = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %i.vk, ptr %i.vp, align 8, !tbaa !14
  %i.vq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.vj, ptr %i.vq, align 16, !tbaa !14
  %i.vr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.vi, ptr %i.vr, align 8, !tbaa !14
  store i64 %i.vh, ptr %i.i, align 16, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  store i32 %i.vf, ptr %i.j, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  store i32 %i.ve, ptr %i.k, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  store i32 %i.vd, ptr %i.l, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  store i32 %i.vc, ptr %i.m, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  store i32 %i.vb, ptr %i.n, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #18
  store i32 %i.va, ptr %i.o, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #18
  %i.vs = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.uz
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !14
  store i64 %i.vt, ptr %i.p, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #18
  %i.vu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.uy
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !14
  store i64 %i.vv, ptr %i.q, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #18
  %i.vw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ux
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !14
  store i64 %i.vx, ptr %i.r, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #18
  %i.vy = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.uw
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !14
  store i64 %i.vz, ptr %i.s, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #18
  %i.wa = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.uv
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !14
  store i64 %i.wb, ptr %i.t, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #18
  %i.wc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.uu
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !14
  store i64 %i.wd, ptr %i.u, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #18
  %i.we = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ut
  %i.wf = load i64, ptr %i.we, align 8, !tbaa !14
  store i64 %i.wf, ptr %i.v, align 8, !tbaa !14
  %i.wg = zext i32 %i.vf to i64
  %i.wh = zext i32 %i.ve to i64
  %i.wi = zext i32 %i.vd to i64
  %i.wj = zext i32 %i.vc to i64
  %i.wk = mul nuw i64 %i.wi, %i.wj
  %i.wl = mul i64 %i.wk, %i.wh
  %i.wm = mul i64 %i.wl, %i.wg
  %i.wn = mul i64 %i.wm, %i.vg                    ; 4 uses
  %i.wo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.al, i1 true)
  switch i64 %i.wo, label %bb.ej [
    i64 2, label %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS8_E3$_1vEEOT_.exit.i"
    i64 1, label %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS8_E3$_2vEEOT_.exit.i"
    i64 0, label %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS8_E3$_3vEEOT_.exit.i"
    i64 3, label %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS8_E3$_4vEEOT_.exit.i"
  ]

"_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS8_E3$_1vEEOT_.exit.i": ; preds = %.split154.i
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  %i.wp = trunc i64 %i.wn to i32
  store i32 0, ptr %31, align 4, !tbaa !16
  %i.wq = getelementptr inbounds nuw i8, ptr %31, i64 4
  store i32 %i.wp, ptr %i.wq, align 4, !tbaa !17
  %i.wr = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 0, ptr %i.ws, align 8
  %i.wt = call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #19 ; 16 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %32, i64 24
  store ptr %1, ptr %i.wt, align 16, !tbaa !87
  %.sroa.5288.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  store ptr %2, ptr %.sroa.5288.0..sroa_idx.i, align 8, !tbaa !87
  %.sroa.6289.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  store ptr %i.m, ptr %.sroa.6289.0..sroa_idx.i, align 16, !tbaa !42
  %.sroa.7290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 24
  store ptr %i.l, ptr %.sroa.7290.0..sroa_idx.i, align 8, !tbaa !42
  %.sroa.8291.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 32
  store ptr %i.k, ptr %.sroa.8291.0..sroa_idx.i, align 16, !tbaa !42
  %.sroa.9292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 40
  store ptr %i.j, ptr %.sroa.9292.0..sroa_idx.i, align 8, !tbaa !42
  %.sroa.10293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 48
  store ptr %i.p, ptr %.sroa.10293.0..sroa_idx.i, align 16, !tbaa !19
  %.sroa.11294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 56
  store ptr %i.q, ptr %.sroa.11294.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.12295.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 64
  store ptr %i.r, ptr %.sroa.12295.0..sroa_idx.i, align 16, !tbaa !19
  %.sroa.13296.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 72
  store ptr %i.s, ptr %.sroa.13296.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.14297.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 80
  store ptr %i.t, ptr %.sroa.14297.0..sroa_idx.i, align 16, !tbaa !19
  %.sroa.15298.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 88
  store ptr %i.n, ptr %.sroa.15298.0..sroa_idx.i, align 8, !tbaa !42
  %.sroa.16299.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 96
  store ptr %i.o, ptr %.sroa.16299.0..sroa_idx.i, align 16, !tbaa !42
  %.sroa.17300.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 104
  store ptr %i.u, ptr %.sroa.17300.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.18301.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 112
  store ptr %i.v, ptr %.sroa.18301.0..sroa_idx.i, align 16, !tbaa !19
  store ptr %i.wt, ptr %32, align 8, !tbaa !23
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS6_E3$_1E9_M_invokeERKSt9_Any_dataS3_", ptr %i.wu, align 8, !tbaa !26
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS6_E3$_1E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation", ptr %i.wr, align 8, !tbaa !27
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %31, ptr noundef align 8 %32, double noundef -1.000000e+00)
          to label %bb.dl unwind label %bb.do

bb.dl:                                            ; preds = %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS8_E3$_1vEEOT_.exit.i"
  %i.wv = load ptr, ptr %i.wr, align 8, !tbaa !27 ; 2 uses
  %.not.i235.i = icmp eq ptr %i.wv, null
  br i1 %.not.i235.i, label %_ZNSt14_Function_baseD2Ev.exit236.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ww = invoke noundef zeroext i1 %i.wv(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %32, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit236.i unwind label %bb.dn ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  %i.wx = landingpad { ptr, i32 }
          catch ptr null
  %i.wy = extractvalue { ptr, i32 } %i.wx, 0
  call void @__clang_call_terminate(ptr %i.wy) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit236.i:              ; preds = %bb.dm, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  br label %bb.ej

bb.do:                                            ; preds = %"_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_3dnnL9transposeERKNS0_3MatERKSt6vectorIiSaIiEERS8_E3$_1vEEOT_.exit.i"
  %i.wz = landingpad { ptr, i32 }
          cleanup
  %i.xa = load ptr, ptr %i.wr, align 8, !tbaa !27 ; 2 uses
  %.not.i237.i = icmp eq ptr %i.xa, null
  br i1 %.not.i237.i, label %_ZNSt14_Function_baseD2Ev.exit238.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.xb = invoke noundef zeroext i1 %i.xa(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %32, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit238.i unwind label %bb.dq ; 0 uses

bb.dq:                                            ; preds = %bb.dp
  %i.xc = landingpad { ptr, i32 }
          catch ptr null
  %i.xd = extractvalue { ptr, i32 } %i.xc, 0
end_hunk_0
