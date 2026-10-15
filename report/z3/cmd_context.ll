Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/cmd_context?download=true
inline.NumInlined: 4635
inline.NumDeleted: 2326
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_Z18for_each_expr_coreI31contains_underspecified_op_proc8obj_markI4expr10bit_vector14default_t2uintIS2_EELb0ELb0EEvRT_RT0_PS2_:bb.a
  %lcmp.mod380 = trunc i32 %i.bx to i1
  call void @llvm.assume(i1 %lcmp.mod380)
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %indvars.iv.i.i67.epil.init
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i64, i64 %indvars.iv.i.i67.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false)
  br label %._crit_edge.i.i70

._crit_edge.i.i70:                                ; preds = %.epil.preheader377, %._crit_edge.i.i70.loopexit.unr-lcssa, %.noexc78
  %.not.i.i.i71 = icmp eq ptr %.pre.i.i64, %i.v
  %i.cb = icmp eq ptr %.pre.i.i64, null
  %or.cond.i.i.i72 = or i1 %.not.i.i.i71, %i.cb
  br i1 %or.cond.i.i.i72, label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i74, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i70
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i64)
          to label %.noexc79 unwind label %bb.q

.noexc79:                                         ; preds = %bb.o
  %.pre2.pre.i73 = load i32, ptr %i.w, align 8, !tbaa !1308
  br label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i74

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i65.new
  %indvars.iv.i.i67 = phi i64 [ 0, %.lr.ph.i.i65.new ], [ %indvars.iv.next.i.i68.1, %bb.p ] ; 4 uses
  %niter382 = phi i64 [ 0, %.lr.ph.i.i65.new ], [ %niter382.next.1, %bb.p ]
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %indvars.iv.i.i67
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i64, i64 %indvars.iv.i.i67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false)
  %indvars.iv.next.i.i68 = or disjoint i64 %indvars.iv.i.i67, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %indvars.iv.next.i.i68
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i64, i64 %indvars.iv.next.i.i68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 16, i1 false)
  %indvars.iv.next.i.i68.1 = add nuw nsw i64 %indvars.iv.i.i67, 2 ; 2 uses
  %niter382.next.1 = add i64 %niter382, 2         ; 2 uses
  %niter382.ncmp.1 = icmp eq i64 %niter382.next.1, %unroll_iter381
  br i1 %niter382.ncmp.1, label %._crit_edge.i.i70.loopexit.unr-lcssa, label %bb.p, !llvm.loop !1305

_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i74: ; preds = %.noexc79, %._crit_edge.i.i70
  %.pre2.i75 = phi i32 [ %i.bx, %._crit_edge.i.i70 ], [ %.pre2.pre.i73, %.noexc79 ]
  store ptr %i.bw, ptr %3, align 8, !tbaa !912
  store i32 %i.bt, ptr %i.x, align 4, !tbaa !1307
  br label %bb.ar

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.r:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !866
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN31contains_underspecified_op_procclEP3app(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull %i.at)
          to label %bb.aa unwind label %bb.j

bb.t:                                             ; preds = %bb.r
  %i.ck = load i32, ptr %i.w, align 8, !tbaa !1308 ; 2 uses
  %i.cl = load i32, ptr %i.x, align 4, !tbaa !1307 ; 2 uses
  %.not.i81 = icmp ult i32 %i.ck, %i.cl
  br i1 %.not.i81, label %._crit_edge.i95, label %bb.u

._crit_edge.i95:                                  ; preds = %bb.t
  %.pre.i96 = load ptr, ptr %3, align 8, !tbaa !912
  br label %bb.ar

bb.u:                                             ; preds = %bb.t
  %i.cm = shl i32 %i.cl, 1                        ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 4
  %i.cp = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.co)
          to label %.noexc97 unwind label %bb.x   ; 5 uses

.noexc97:                                         ; preds = %bb.u
  %i.cq = load i32, ptr %i.w, align 8, !tbaa !1308 ; 5 uses
  %.not.i.i82 = icmp eq i32 %i.cq, 0
  %.pre.i.i83 = load ptr, ptr %3, align 8, !tbaa !912 ; 6 uses
  br i1 %.not.i.i82, label %._crit_edge.i.i89, label %.lr.ph.i.i84

.lr.ph.i.i84:                                     ; preds = %.noexc97
  %wide.trip.count.i.i85 = zext i32 %i.cq to i64  ; 2 uses
  %xtraiter372 = and i64 %wide.trip.count.i.i85, 1
  %i.cr = icmp eq i32 %i.cq, 1
  br i1 %i.cr, label %.epil.preheader371, label %.lr.ph.i.i84.new

.lr.ph.i.i84.new:                                 ; preds = %.lr.ph.i.i84
  %unroll_iter375 = and i64 %wide.trip.count.i.i85, 4294967294
  br label %bb.w

._crit_edge.i.i89.loopexit.unr-lcssa:             ; preds = %bb.w
  %lcmp.mod373.not = icmp eq i64 %xtraiter372, 0
  br i1 %lcmp.mod373.not, label %._crit_edge.i.i89, label %.epil.preheader371

.epil.preheader371:                               ; preds = %._crit_edge.i.i89.loopexit.unr-lcssa, %.lr.ph.i.i84
  %indvars.iv.i.i86.epil.init = phi i64 [ 0, %.lr.ph.i.i84 ], [ %indvars.iv.next.i.i87.1, %._crit_edge.i.i89.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod374 = trunc i32 %i.cq to i1
  call void @llvm.assume(i1 %lcmp.mod374)
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %indvars.iv.i.i86.epil.init
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i83, i64 %indvars.iv.i.i86.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false)
  br label %._crit_edge.i.i89

._crit_edge.i.i89:                                ; preds = %.epil.preheader371, %._crit_edge.i.i89.loopexit.unr-lcssa, %.noexc97
  %.not.i.i.i90 = icmp eq ptr %.pre.i.i83, %i.v
  %i.cu = icmp eq ptr %.pre.i.i83, null
  %or.cond.i.i.i91 = or i1 %.not.i.i.i90, %i.cu
  br i1 %or.cond.i.i.i91, label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i93, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i89
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i83)
          to label %.noexc98 unwind label %bb.x

.noexc98:                                         ; preds = %bb.v
  %.pre2.pre.i92 = load i32, ptr %i.w, align 8, !tbaa !1308
  br label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i93

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i84.new
  %indvars.iv.i.i86 = phi i64 [ 0, %.lr.ph.i.i84.new ], [ %indvars.iv.next.i.i87.1, %bb.w ] ; 4 uses
  %niter376 = phi i64 [ 0, %.lr.ph.i.i84.new ], [ %niter376.next.1, %bb.w ]
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %indvars.iv.i.i86
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i83, i64 %indvars.iv.i.i86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false)
  %indvars.iv.next.i.i87 = or disjoint i64 %indvars.iv.i.i86, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %indvars.iv.next.i.i87
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i83, i64 %indvars.iv.next.i.i87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false)
  %indvars.iv.next.i.i87.1 = add nuw nsw i64 %indvars.iv.i.i86, 2 ; 2 uses
  %niter376.next.1 = add i64 %niter376, 2         ; 2 uses
  %niter376.ncmp.1 = icmp eq i64 %niter376.next.1, %unroll_iter375
  br i1 %niter376.ncmp.1, label %._crit_edge.i.i89.loopexit.unr-lcssa, label %bb.w, !llvm.loop !1305

_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i93: ; preds = %.noexc98, %._crit_edge.i.i89
  %.pre2.i94 = phi i32 [ %i.cq, %._crit_edge.i.i89 ], [ %.pre2.pre.i92, %.noexc98 ]
  store ptr %i.cp, ptr %3, align 8, !tbaa !912
  store i32 %i.cm, ptr %i.x, align 4, !tbaa !1307
  br label %bb.ar

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.y:                                             ; preds = %bb.l
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.115, i32 noundef 73, ptr noundef nonnull @.str.99)
          to label %bb.z unwind label %bb.j

bb.z:                                             ; preds = %bb.y
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %bb.aa unwind label %bb.j

bb.aa:                                            ; preds = %bb.l, %bb.s, %bb.z, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit58
  %i.da = load i32, ptr %i.am, align 8, !tbaa !1311 ; 2 uses
  %i.db = icmp ult i32 %i.da, %i.al
  br i1 %i.db, label %bb.h, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.aa
  %.pre234 = load i32, ptr %i.w, align 8, !tbaa !1308
  %.pre250 = add i32 %.pre234, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %._crit_edge.loopexit
  %.pre-phi251 = phi i32 [ %.pre250, %._crit_edge.loopexit ], [ %i.ad, %bb.g ]
  store i32 %.pre-phi251, ptr %i.w, align 8, !tbaa !1308
  invoke void @_ZN31contains_underspecified_op_procclEP3app(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull %i.ag)
          to label %thread-pre-splitthread-pre-split unwind label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ac:                                            ; preds = %.preheader
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !1314 ; 3 uses
  %i.df = add i32 %i.de, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ag, i64 76
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !1315
  %i.di = add i32 %i.df, %i.dh                    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.pre230 = load i32, ptr %i.dj, align 8, !tbaa !1311 ; 2 uses
  %i.dn = xor i32 %i.de, -1
  %i.do = icmp ult i32 %.pre230, %i.di
  br i1 %i.do, label %.lr.ph350, label %.thread161

bb.ad:                                            ; preds = %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit101
  %i.dp = icmp ult i32 %i.ea, %i.di
  br i1 %i.dp, label %.lr.ph350, label %.thread161, !llvm.loop !1306

.lr.ph350:                                        ; preds = %bb.ac, %bb.ad
  %i.dq = phi i32 [ %i.ea, %bb.ad ], [ %.pre230, %bb.ac ] ; 5 uses
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph350
  %.not.i100 = icmp ugt i32 %i.dq, %i.de
  %i.ds = load i32, ptr %i.dl, align 4, !tbaa !1316
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dt
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dt ; 2 uses
  br i1 %.not.i100, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = add i32 %i.dq, -1
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.dv
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dx = add i32 %i.dq, %i.dn
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.dy
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph350, %bb.ag, %bb.af
  %.0.in.i = phi ptr [ %i.dz, %bb.ag ], [ %i.dw, %bb.af ], [ %i.dm, %.lr.ph350 ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !215 ; 4 uses
  %i.ea = add nuw i32 %i.dq, 1                    ; 3 uses
  store i32 %i.ea, ptr %i.dj, align 8, !tbaa !1311
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !109
  %i.ed = icmp ugt i32 %i.ec, 1
  br i1 %i.ed, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.ee = load i32, ptr %.0.i, align 4, !tbaa !860 ; 6 uses
  %i.ef = load i32, ptr %i.y, align 8, !tbaa !861
  %i.eg = icmp ult i32 %i.ee, %i.ef
  br i1 %i.eg, label %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit101, label %bb.ak

_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit101: ; preds = %bb.ai
  %i.eh = load ptr, ptr %i.z, align 8, !tbaa !789 ; 2 uses
  %i.ei = lshr i32 %i.ee, 5
  %i.ej = zext nneg i32 %i.ei to i64              ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !195
  %i.em = and i32 %i.ee, 31
  %i.en = shl nuw i32 1, %i.em                    ; 2 uses
  %i.eo = and i32 %i.el, %i.en
  %.not167 = icmp eq i32 %i.eo, 0
  br i1 %.not167, label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit104, label %bb.ad, !llvm.loop !1306

bb.aj:                                            ; preds = %bb.ak
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ak:                                            ; preds = %bb.ai
  %i.eq = add i32 %i.ee, 1
  invoke void @_ZN10bit_vector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i32 noundef %i.eq, i1 noundef zeroext false)
          to label %._ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit104_crit_edge unwind label %bb.aj

._ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit104_crit_edge: ; preds = %bb.ak
  %.pre231 = load ptr, ptr %i.z, align 8, !tbaa !789
  %.pre252 = lshr i32 %i.ee, 5
  %.pre254 = zext nneg i32 %.pre252 to i64
  %.pre256 = and i32 %i.ee, 31
  %.pre258 = shl nuw i32 1, %.pre256
  br label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit104

_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit104: ; preds = %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit101, %._ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit104_crit_edge
  %.pre-phi259 = phi i32 [ %.pre258, %._ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit104_crit_edge ], [ %i.en, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit101 ]
  %.pre-phi255 = phi i64 [ %.pre254, %._ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit104_crit_edge ], [ %i.ej, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit101 ]
  %i.er = phi ptr [ %.pre231, %._ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit104_crit_edge ], [ %i.eh, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit101 ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.pre-phi255 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !195
  %i.eu = or i32 %i.et, %.pre-phi259
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !195
  %.pre232 = load i32, ptr %i.w, align 8, !tbaa !1308
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ah, %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit104
  %i.ev = phi i32 [ %.pre232, %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit104 ], [ %i.ab, %bb.ah ] ; 2 uses
  %i.ew = load i32, ptr %i.x, align 4, !tbaa !1307 ; 2 uses
  %.not.i105 = icmp ult i32 %i.ev, %i.ew
  br i1 %.not.i105, label %._crit_edge.i119, label %bb.al

._crit_edge.i119:                                 ; preds = %.loopexit
  %.pre.i120 = load ptr, ptr %3, align 8, !tbaa !912
  br label %bb.ar

bb.al:                                            ; preds = %.loopexit
  %i.ex = shl i32 %i.ew, 1                        ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %i.ez = shl nuw nsw i64 %i.ey, 4
  %i.fa = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ez)
          to label %.noexc121 unwind label %bb.ao ; 5 uses

.noexc121:                                        ; preds = %bb.al
  %i.fb = load i32, ptr %i.w, align 8, !tbaa !1308 ; 5 uses
  %.not.i.i106 = icmp eq i32 %i.fb, 0
  %.pre.i.i107 = load ptr, ptr %3, align 8, !tbaa !912 ; 6 uses
  br i1 %.not.i.i106, label %._crit_edge.i.i113, label %.lr.ph.i.i108

.lr.ph.i.i108:                                    ; preds = %.noexc121
  %wide.trip.count.i.i109 = zext i32 %i.fb to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i109, 1
  %i.fc = icmp eq i32 %i.fb, 1
  br i1 %i.fc, label %.epil.preheader, label %.lr.ph.i.i108.new

.lr.ph.i.i108.new:                                ; preds = %.lr.ph.i.i108
  %unroll_iter = and i64 %wide.trip.count.i.i109, 4294967294
  br label %bb.an

._crit_edge.i.i113.loopexit.unr-lcssa:            ; preds = %bb.an
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i113, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i113.loopexit.unr-lcssa, %.lr.ph.i.i108
  %indvars.iv.i.i110.epil.init = phi i64 [ 0, %.lr.ph.i.i108 ], [ %indvars.iv.next.i.i111.1, %._crit_edge.i.i113.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod370 = trunc i32 %i.fb to i1
  call void @llvm.assume(i1 %lcmp.mod370)
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %indvars.iv.i.i110.epil.init
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i107, i64 %indvars.iv.i.i110.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i64 16, i1 false)
  br label %._crit_edge.i.i113

._crit_edge.i.i113:                               ; preds = %.epil.preheader, %._crit_edge.i.i113.loopexit.unr-lcssa, %.noexc121
  %.not.i.i.i114 = icmp eq ptr %.pre.i.i107, %i.v
  %i.ff = icmp eq ptr %.pre.i.i107, null
  %or.cond.i.i.i115 = or i1 %.not.i.i.i114, %i.ff
  br i1 %or.cond.i.i.i115, label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i117, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i.i113
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i107)
          to label %.noexc122 unwind label %bb.ao

.noexc122:                                        ; preds = %bb.am
  %.pre2.pre.i116 = load i32, ptr %i.w, align 8, !tbaa !1308
  br label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i117

bb.an:                                            ; preds = %bb.an, %.lr.ph.i.i108.new
  %indvars.iv.i.i110 = phi i64 [ 0, %.lr.ph.i.i108.new ], [ %indvars.iv.next.i.i111.1, %bb.an ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i108.new ], [ %niter.next.1, %bb.an ]
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %indvars.iv.i.i110
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i107, i64 %indvars.iv.i.i110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, ptr noundef nonnull align 8 dereferenceable(16) %i.fh, i64 16, i1 false)
  %indvars.iv.next.i.i111 = or disjoint i64 %indvars.iv.i.i110, 1 ; 2 uses
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %indvars.iv.next.i.i111
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i107, i64 %indvars.iv.next.i.i111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i64 16, i1 false)
  %indvars.iv.next.i.i111.1 = add nuw nsw i64 %indvars.iv.i.i110, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i113.loopexit.unr-lcssa, label %bb.an, !llvm.loop !1305

_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i117: ; preds = %.noexc122, %._crit_edge.i.i113
  %.pre2.i118 = phi i32 [ %i.fb, %._crit_edge.i.i113 ], [ %.pre2.pre.i116, %.noexc122 ]
  store ptr %i.fa, ptr %3, align 8, !tbaa !912
  store i32 %i.ex, ptr %i.x, align 4, !tbaa !1307
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am, %bb.al
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.thread161:                                       ; preds = %bb.ad, %bb.ac
  store i32 %i.ad, ptr %i.w, align 8, !tbaa !1308
  br label %thread-pre-split

bb.ap:                                            ; preds = %.preheader
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.115, i32 noundef 100, ptr noundef nonnull @.str.99)
          to label %bb.aq unwind label %bb.f

bb.aq:                                            ; preds = %bb.ap
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %thread-pre-splitthread-pre-split unwind label %bb.f

bb.ar:                                            ; preds = %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i117, %._crit_edge.i119, %._crit_edge.i95, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i93, %._crit_edge.i76, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i74
  %.sink = phi i32 [ %.pre2.i94, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i93 ], [ %.pre2.i75, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i74 ], [ %i.br, %._crit_edge.i76 ], [ %i.ck, %._crit_edge.i95 ], [ %i.ev, %._crit_edge.i119 ], [ %.pre2.i118, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i117 ]
  %.sink314 = phi ptr [ %i.cp, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i93 ], [ %i.bw, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i74 ], [ %.pre.i77, %._crit_edge.i76 ], [ %.pre.i96, %._crit_edge.i95 ], [ %.pre.i120, %._crit_edge.i119 ], [ %i.fa, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i117 ]
  %.0.i282.sink = phi ptr [ %i.at, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i93 ], [ %i.at, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i74 ], [ %i.at, %._crit_edge.i76 ], [ %i.at, %._crit_edge.i95 ], [ %.0.i, %._crit_edge.i119 ], [ %.0.i, %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i117 ]
  %i.fl = zext i32 %.sink to i64
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %.sink314, i64 %i.fl ; 2 uses
  store ptr %.0.i282.sink, ptr %i.fm, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.fn = load i32, ptr %i.w, align 8, !tbaa !1308
  %i.fo = add i32 %i.fn, 1                        ; 2 uses
  store i32 %i.fo, ptr %i.w, align 8, !tbaa !1308
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.ar, %thread-pre-split
  %.be = phi i32 [ %i.fo, %bb.ar ], [ %.pr, %thread-pre-split ]
  br label %.preheader

bb.as:                                            ; preds = %thread-pre-split
  %i.fp = load ptr, ptr %3, align 8, !tbaa !912   ; 3 uses
  %.not.i.i.i124 = icmp eq ptr %i.fp, %i.v
  %i.fq = icmp eq ptr %i.fp, null
  %or.cond.i.i.i125 = or i1 %.not.i.i.i124, %i.fq
  br i1 %or.cond.i.i.i125, label %_ZN6bufferISt4pairIP4exprjELb0ELj16EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fp)
          to label %_ZN6bufferISt4pairIP4exprjELb0ELj16EED2Ev.exit unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #26
  unreachable

_ZN6bufferISt4pairIP4exprjELb0ELj16EED2Ev.exit:   ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.av

bb.av:                                            ; preds = %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit, %_ZN6bufferISt4pairIP4exprjELb0ELj16EED2Ev.exit
  ret void

end_hunk_0
