Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/wireshark_main_window?download=true
inline.NumInlined: 6267
inline.NumDeleted: 1920
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN19WiresharkMainWindow9dropEventEP10QDropEvent:bb.a
  br i1 %.not, label %.loopexit, label %bb.e, !llvm.loop !360

bb.q:                                             ; preds = %_ZN10QByteArrayD2Ev.exit
  %i.av = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i67, label %_ZN7QStringD2Ev.exit70, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i68

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i68:    ; preds = %bb.q
  %i.aw = atomicrmw sub ptr %i.av, i32 1 acq_rel, align 4
  %.not.i.i69 = icmp eq i32 %i.aw, 1
  br i1 %.not.i.i69, label %bb.r, label %_ZN7QStringD2Ev.exit70

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i68
  %i.ax = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ax, i64 noundef 2, i64 noundef 8) #31
  br label %_ZN7QStringD2Ev.exit70

_ZN7QStringD2Ev.exit70:                           ; preds = %bb.q, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i68, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @_ZN4QUrlD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.loopexit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.o, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %_ZN10QByteArrayD2Ev.exit60, %bb.k
  %.pn44.pn = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %.pn44, %_ZN10QByteArrayD2Ev.exit60 ], [ %.pn44, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i ], [ %.pn44, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @_ZN4QUrlD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #31
  br label %bb.s

bb.s:                                             ; preds = %_ZN7QStringD2Ev.exit, %bb.j
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %_ZN7QStringD2Ev.exit ], [ %i.ag, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN9QtPrivate17QForeachContainerI5QListI4QUrlEED2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable_or_null(44) %5) #31
  br label %bb.u

.loopexit:                                        ; preds = %_ZN7QStringD2Ev.exit66, %_ZN5QListI4QUrlED2Ev.exit, %_ZN7QStringD2Ev.exit70
  %i.ay = load ptr, ptr %5, align 16              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i, label %bb.v, label %_ZN17QArrayDataPointerI4QUrlE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerI4QUrlE5derefEv.exit.i.i.i: ; preds = %.loopexit
  %i.az = atomicrmw sub ptr %i.ay, i32 1 acq_rel, align 4
  %.not.i.i.i71 = icmp eq i32 %i.az, 1
  br i1 %.not.i.i.i71, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_ZN17QArrayDataPointerI4QUrlE5derefEv.exit.i.i.i
  %i.ba = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bb = load i64, ptr %i.k, align 16
  %.idx.i.i.i.i = shl i64 %i.bb, 3                ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ba, i64 %.idx.i.i.i.i
  %.not4.i.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI4QUrlE10destroyAllEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ba, %bb.t ] ; 2 uses
  call void @_ZN4QUrlD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8) %.05.i.i.i.i.i.i.i) #31
  %i.bd = getelementptr i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i72 = icmp eq ptr %i.bd, %i.bc
  br i1 %.not.i.i.i.i.i.i.i72, label %_ZN9QtPrivate16QGenericArrayOpsI4QUrlE10destroyAllEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZN9QtPrivate16QGenericArrayOpsI4QUrlE10destroyAllEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.t
  %i.be = load ptr, ptr %5, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.be, i64 noundef 8, i64 noundef 8) #31
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.d
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn, %bb.s ], [ %i.t, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %_ZN7QStringD2Ev.exit89

bb.v:                                             ; preds = %_ZN9QtPrivate16QGenericArrayOpsI4QUrlE10destroyAllEv.exit.i.i.i, %_ZN17QArrayDataPointerI4QUrlE5derefEv.exit.i.i.i, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.bf = getelementptr i8, ptr %1, i64 48
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %1, i64 44
  store i32 %i.bg, ptr %i.bh, align 4
  %i.bi = getelementptr i8, ptr %1, i64 12        ; 2 uses
  store i8 1, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8            ; 3 uses
  %i.bl = icmp slt i64 %i.bk, 1
  br i1 %i.bl, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.bi, align 4
  br label %_ZN7QStringD2Ev.exit81

bb.x:                                             ; preds = %bb.z
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit89

bb.y:                                             ; preds = %bb.v
  %i.bn = icmp eq i64 %i.bk, 1
  br i1 %i.bn, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !369
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !369
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 %i.bt, ptr %i.br)
          to label %bb.aa unwind label %bb.x

bb.aa:                                            ; preds = %bb.z
  %i.bu = load <2 x ptr>, ptr %3, align 16
  store <2 x ptr> %i.bu, ptr %10, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bx = load i64, ptr %i.bw, align 16
  store i64 %i.bx, ptr %i.bv, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %11, i8 0, i64 24, i1 false)
  %i.by = invoke noundef zeroext i1 @_ZN19WiresharkMainWindow15openCaptureFileE7QStringS0_(ptr noundef align 8 dereferenceable_or_null(1136) %0, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 %11)
          to label %bb.ab unwind label %bb.ae     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bz = load ptr, ptr %11, align 8              ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i74, label %_ZN7QStringD2Ev.exit77, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75:    ; preds = %bb.ab
  %i.ca = atomicrmw sub ptr %i.bz, i32 1 acq_rel, align 4
  %.not.i.i76 = icmp eq i32 %i.ca, 1
  br i1 %.not.i.i76, label %bb.ac, label %_ZN7QStringD2Ev.exit77

bb.ac:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75
  %i.cb = load ptr, ptr %11, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cb, i64 noundef 2, i64 noundef 8) #31
  br label %_ZN7QStringD2Ev.exit77

_ZN7QStringD2Ev.exit77:                           ; preds = %bb.ab, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75, %bb.ac
  %i.cc = load ptr, ptr %10, align 16             ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i78, label %_ZN7QStringD2Ev.exit81, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i79

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i79:    ; preds = %_ZN7QStringD2Ev.exit77
  %i.cd = atomicrmw sub ptr %i.cc, i32 1 acq_rel, align 4
  %.not.i.i80 = icmp eq i32 %i.cd, 1
  br i1 %.not.i.i80, label %bb.ad, label %_ZN7QStringD2Ev.exit81

bb.ad:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i79
  %i.ce = load ptr, ptr %10, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ce, i64 noundef 2, i64 noundef 8) #31
  br label %_ZN7QStringD2Ev.exit81

bb.ae:                                            ; preds = %bb.aa
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cg = load ptr, ptr %11, align 8              ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i82, label %_ZN7QStringD2Ev.exit85, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i83

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i83:    ; preds = %bb.ae
  %i.ch = atomicrmw sub ptr %i.cg, i32 1 acq_rel, align 4
  %.not.i.i84 = icmp eq i32 %i.ch, 1
  br i1 %.not.i.i84, label %bb.af, label %_ZN7QStringD2Ev.exit85

bb.af:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i83
  %i.ci = load ptr, ptr %11, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ci, i64 noundef 2, i64 noundef 8) #31
  br label %_ZN7QStringD2Ev.exit85

_ZN7QStringD2Ev.exit85:                           ; preds = %bb.ae, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i83, %bb.af
  %i.cj = load ptr, ptr %10, align 16             ; 2 uses
  %.not.i.i.i86 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i86, label %_ZN7QStringD2Ev.exit89, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i87

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i87:    ; preds = %_ZN7QStringD2Ev.exit85
  %i.ck = atomicrmw sub ptr %i.cj, i32 1 acq_rel, align 4
  %.not.i.i88 = icmp eq i32 %i.ck, 1
  br i1 %.not.i.i88, label %bb.ag, label %_ZN7QStringD2Ev.exit89

bb.ag:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i87
  %i.cl = load ptr, ptr %10, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cl, i64 noundef 2, i64 noundef 8) #31
  br label %_ZN7QStringD2Ev.exit89

bb.ah:                                            ; preds = %bb.ai
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit89

bb.ai:                                            ; preds = %bb.y
  %i.cn = invoke noalias ptr @g_malloc_n(i64 noundef %i.bk, i64 noundef 8) #37
          to label %bb.aj unwind label %bb.ah     ; 8 uses

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store ptr null, ptr %i.a, align 8
  %i.co = load i64, ptr %i.bj, align 8            ; 9 uses
  %i.cp = icmp sgt i64 %i.co, 0
  br i1 %i.cp, label %.lr.ph119, label %._crit_edge

.lr.ph119:                                        ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8            ; 8 uses
  %min.iters.check = icmp ult i64 %i.co, 50
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph119
  %i.cs = add nsw i64 %i.co, -1                   ; 4 uses
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = icmp ugt i32 %i.ct, 2147483646
  %i.cv = icmp ugt i64 %i.cs, 4294967295
  %i.cw = or i1 %i.cu, %i.cv
  %mul.result = shl i64 %i.cs, 3
  %i.cx = getelementptr i8, ptr %i.cn, i64 %mul.result
  %i.cy = icmp ult ptr %i.cx, %i.cn
  %scevgep = getelementptr i8, ptr %i.cr, i64 8   ; 2 uses
  %mul143 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.cs, i64 24) ; 2 uses
  %mul.result144 = extractvalue { i64, i1 } %mul143, 0
  %mul.overflow145 = extractvalue { i64, i1 } %mul143, 1
  %i.cz = getelementptr i8, ptr %scevgep, i64 %mul.result144
  %i.da = icmp ult ptr %i.cz, %scevgep
  %i.db = or i1 %i.da, %mul.overflow145
  %i.dc = or i1 %i.cy, %i.cw
  %i.dd = or i1 %i.dc, %i.db
  br i1 %i.dd, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.de = shl nuw nsw i64 %i.co, 3
  %i.df = getelementptr i8, ptr %i.cn, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.cr, i64 8
  %i.dh = mul nuw nsw i64 %i.co, 24
  %i.di = getelementptr i8, ptr %i.cr, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 -8
  %bound0 = icmp ult ptr %i.cn, %i.dj
  %bound1 = icmp ult ptr %i.dg, %i.df
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec.a = and i64 %i.co, 8589934588            ; 4 uses
  %i.dk = trunc i64 %n.vec.a to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.dl = getelementptr [24 x i8], ptr %i.cr, i64 %index
  %i.dm = getelementptr [24 x i8], ptr %i.cr, i64 %index
  %i.dn = getelementptr [24 x i8], ptr %i.cr, i64 %index
  %i.do = getelementptr [24 x i8], ptr %i.cr, i64 %index
  %i.dp = getelementptr i8, ptr %i.dl, i64 8
  %i.dq = getelementptr i8, ptr %i.dm, i64 32
  %i.dr = getelementptr i8, ptr %i.dn, i64 56
  %i.ds = getelementptr i8, ptr %i.do, i64 80
  %i.dt = load ptr, ptr %i.dp, align 8, !alias.scope !370
  %i.du = load ptr, ptr %i.dq, align 8, !alias.scope !370
  %i.dv = insertelement <2 x ptr> poison, ptr %i.dt, i64 0
  %i.dw = insertelement <2 x ptr> %i.dv, ptr %i.du, i64 1 ; 2 uses
  %i.dx = load ptr, ptr %i.dr, align 8, !alias.scope !370
  %i.dy = load ptr, ptr %i.ds, align 8, !alias.scope !370
  %i.dz = insertelement <2 x ptr> poison, ptr %i.dx, i64 0
  %i.ea = insertelement <2 x ptr> %i.dz, ptr %i.dy, i64 1 ; 2 uses
  %i.eb = icmp eq <2 x ptr> %i.dw, splat (ptr null)
  %i.ec = icmp eq <2 x ptr> %i.ea, splat (ptr null)
  %i.ed = select <2 x i1> %i.eb, <2 x ptr> <ptr @_ZN10QByteArray6_emptyE, ptr @_ZN10QByteArray6_emptyE>, <2 x ptr> %i.dw
  %i.ee = select <2 x i1> %i.ec, <2 x ptr> <ptr @_ZN10QByteArray6_emptyE, ptr @_ZN10QByteArray6_emptyE>, <2 x ptr> %i.ea
  %i.ef = getelementptr [8 x i8], ptr %i.cn, i64 %index ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  store <2 x ptr> %i.ed, ptr %i.ef, align 8, !alias.scope !371, !noalias !370
  store <2 x ptr> %i.ee, ptr %i.eg, align 8, !alias.scope !371, !noalias !370
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec.a
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec.a
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph119, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph119 ], [ %n.vec.a, %middle.block ]
  %.0118.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph119 ], [ %i.dk, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.aj
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 360), align 8
  %i.ej = invoke i32 @wtap_pcapng_file_type_subtype()
          to label %bb.ak unwind label %bb.ar

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ek = phi i64 [ %i.eq, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.0118 = phi i32 [ %i.ep, %scalar.ph ], [ %.0118.ph, %scalar.ph.preheader ]
  %i.el = getelementptr [24 x i8], ptr %i.cr, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.en, null
  %spec.select.i.i = select i1 %.not.i.i90, ptr @_ZN10QByteArray6_emptyE, ptr %i.en
  %i.eo = getelementptr [8 x i8], ptr %i.cn, i64 %i.ek
  store ptr %spec.select.i.i, ptr %i.eo, align 8
  %i.ep = add i32 %.0118, 1                       ; 2 uses
  %i.eq = sext i32 %i.ep to i64                   ; 2 uses
  %i.er = icmp sgt i64 %i.co, %i.eq
  br i1 %i.er, label %scalar.ph, label %._crit_edge, !llvm.loop !367

bb.ak:                                            ; preds = %._crit_edge
  %i.es = trunc i64 %i.co to i32
  %i.et = invoke i32 @cf_merge_files_to_tempfile(ptr noundef %0, ptr noundef %i.ei, ptr noundef nonnull %i.a, i32 noundef %i.es, ptr noundef %i.cn, i32 noundef %i.ej, i1 noundef zeroext false)
          to label %bb.al unwind label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.am, label %_ZN7QStringD2Ev.exit100

bb.am:                                            ; preds = %bb.al
  %i.ev = load ptr, ptr %i.a, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %.not.i.i91 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i91, label %_ZN7QStringD2Ev.exit.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.am
  %i.ew = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ev) #31
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %.split.i.i, %bb.am
  %.sink5.i.i = phi i64 [ %i.ew, %.split.i.i ], [ 0, %bb.am ]
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 %.sink5.i.i, ptr %i.ev)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %_ZN7QStringD2Ev.exit.i
  %i.ex = load <2 x ptr>, ptr %2, align 16
  store <2 x ptr> %i.ex, ptr %12, align 16
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fa = load i64, ptr %i.ez, align 16
  store i64 %i.fa, ptr %i.ey, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %13, i8 0, i64 24, i1 false)
  %i.fb = invoke noundef zeroext i1 @_ZN19WiresharkMainWindow15openCaptureFileE7QStringS0_jb(ptr noundef align 8 dereferenceable_or_null(1136) %0, ptr noundef nonnull align 8 %12, ptr noundef nonnull align 8 %13, i32 noundef 0, i1 noundef zeroext true)
          to label %bb.ao unwind label %bb.as     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.fc = load ptr, ptr %13, align 8              ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i93, label %_ZN7QStringD2Ev.exit96, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i94

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i94:    ; preds = %bb.ao
  %i.fd = atomicrmw sub ptr %i.fc, i32 1 acq_rel, align 4
  %.not.i.i95 = icmp eq i32 %i.fd, 1
  br i1 %.not.i.i95, label %bb.ap, label %_ZN7QStringD2Ev.exit96

bb.ap:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i94
  %i.fe = load ptr, ptr %13, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fe, i64 noundef 2, i64 noundef 8) #31
  br label %_ZN7QStringD2Ev.exit96

_ZN7QStringD2Ev.exit96:                           ; preds = %bb.ao, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i94, %bb.ap
  %i.ff = load ptr, ptr %12, align 16             ; 2 uses
  %.not.i.i.i97 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i97, label %_ZN7QStringD2Ev.exit100, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i98

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i98:    ; preds = %_ZN7QStringD2Ev.exit96
  %i.fg = atomicrmw sub ptr %i.ff, i32 1 acq_rel, align 4
  %.not.i.i99 = icmp eq i32 %i.fg, 1
  br i1 %.not.i.i99, label %bb.aq, label %_ZN7QStringD2Ev.exit100

bb.aq:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i98
  %i.fh = load ptr, ptr %12, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fh, i64 noundef 2, i64 noundef 8) #31
  br label %_ZN7QStringD2Ev.exit100

bb.ar:                                            ; preds = %_ZN7QStringD2Ev.exit.i, %bb.av, %_ZN7QStringD2Ev.exit100, %bb.ak, %._crit_edge
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit108

bb.as:                                            ; preds = %bb.an
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fk = load ptr, ptr %13, align 8              ; 2 uses
  %.not.i.i.i101 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i101, label %_ZN7QStringD2Ev.exit104, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i102

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i102:   ; preds = %bb.as
  %i.fl = atomicrmw sub ptr %i.fk, i32 1 acq_rel, align 4
  %.not.i.i103 = icmp eq i32 %i.fl, 1
  br i1 %.not.i.i103, label %bb.at, label %_ZN7QStringD2Ev.exit104

bb.at:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i102
  %i.fm = load ptr, ptr %13, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fm, i64 noundef 2, i64 noundef 8) #31
  br label %_ZN7QStringD2Ev.exit104

_ZN7QStringD2Ev.exit104:                          ; preds = %bb.as, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i102, %bb.at
  %i.fn = load ptr, ptr %12, align 16             ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i105, label %_ZN7QStringD2Ev.exit108, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i106

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i106:   ; preds = %_ZN7QStringD2Ev.exit104
  %i.fo = atomicrmw sub ptr %i.fn, i32 1 acq_rel, align 4
  %.not.i.i107 = icmp eq i32 %i.fo, 1
  br i1 %.not.i.i107, label %bb.au, label %_ZN7QStringD2Ev.exit108

bb.au:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i106
  %i.fp = load ptr, ptr %12, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fp, i64 noundef 2, i64 noundef 8) #31
  br label %_ZN7QStringD2Ev.exit108

_ZN7QStringD2Ev.exit100:                          ; preds = %bb.aq, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i98, %_ZN7QStringD2Ev.exit96, %bb.al
  %i.fq = load ptr, ptr %i.a, align 8
  invoke void @g_free(ptr noundef %i.fq)
          to label %bb.av unwind label %bb.ar

bb.av:                                            ; preds = %_ZN7QStringD2Ev.exit100
  invoke void @g_free(ptr noundef %i.cn)
          to label %bb.aw unwind label %bb.ar

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZN7QStringD2Ev.exit81

_ZN7QStringD2Ev.exit81:                           ; preds = %bb.ad, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i79, %_ZN7QStringD2Ev.exit77, %bb.aw, %bb.w
  %i.fr = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i109 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i109, label %_ZN5QListI10QByteArrayED2Ev.exit, label %_ZN17QArrayDataPointerI10QByteArrayE5derefEv.exit.i.i

_ZN17QArrayDataPointerI10QByteArrayE5derefEv.exit.i.i: ; preds = %_ZN7QStringD2Ev.exit81
  %i.fs = atomicrmw sub ptr %i.fr, i32 1 acq_rel, align 4
  %.not.i.i110 = icmp eq i32 %i.fs, 1
  br i1 %.not.i.i110, label %bb.ax, label %_ZN5QListI10QByteArrayED2Ev.exit

bb.ax:                                            ; preds = %_ZN17QArrayDataPointerI10QByteArrayE5derefEv.exit.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8            ; 2 uses
  %i.fv = load i64, ptr %i.bj, align 8
  %.idx.i.i.i111 = mul i64 %i.fv, 24              ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fu, i64 %.idx.i.i.i111
  %.not4.i.i.i.i.i.i112 = icmp eq i64 %.idx.i.i.i111, 0
  br i1 %.not4.i.i.i.i.i.i112, label %_ZN9QtPrivate16QGenericArrayOpsI10QByteArrayE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i113

.lr.ph.i.i.i.i.i.i113:                            ; preds = %bb.ax, %_ZSt8_DestroyI10QByteArrayEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i114 = phi ptr [ %i.ga, %_ZSt8_DestroyI10QByteArrayEvPT_.exit.i.i.i.i.i.i ], [ %i.fu, %bb.ax ] ; 3 uses
  %i.fx = load ptr, ptr %.05.i.i.i.i.i.i114, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI10QByteArrayEvPT_.exit.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i113
  %i.fy = atomicrmw sub ptr %i.fx, i32 1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fy, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ay, label %_ZSt8_DestroyI10QByteArrayEvPT_.exit.i.i.i.i.i.i

bb.ay:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i.i.i.i.i.i.i.i
  %i.fz = load ptr, ptr %.05.i.i.i.i.i.i114, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fz, i64 noundef 1, i64 noundef 8) #31
  br label %_ZSt8_DestroyI10QByteArrayEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyI10QByteArrayEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.ay, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i113
  %i.ga = getelementptr i8, ptr %.05.i.i.i.i.i.i114, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i115 = icmp eq ptr %i.ga, %i.fw
  br i1 %.not.i.i.i.i.i.i115, label %_ZN9QtPrivate16QGenericArrayOpsI10QByteArrayE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i113, !llvm.loop !5

_ZN9QtPrivate16QGenericArrayOpsI10QByteArrayE10destroyAllEv.exit.i.i: ; preds = %_ZSt8_DestroyI10QByteArrayEvPT_.exit.i.i.i.i.i.i, %bb.ax
  %i.gb = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gb, i64 noundef 24, i64 noundef 8) #31
  br label %_ZN5QListI10QByteArrayED2Ev.exit

_ZN5QListI10QByteArrayED2Ev.exit:                 ; preds = %_ZN7QStringD2Ev.exit81, %_ZN17QArrayDataPointerI10QByteArrayE5derefEv.exit.i.i, %_ZN9QtPrivate16QGenericArrayOpsI10QByteArrayE10destroyAllEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.az

bb.az:                                            ; preds = %_ZN5QListI10QByteArrayED2Ev.exit, %bb.b
  ret void

_ZN7QStringD2Ev.exit108:                          ; preds = %bb.au, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i106, %_ZN7QStringD2Ev.exit104, %bb.ar
  %.pn49 = phi { ptr, i32 } [ %i.fi, %bb.ar ], [ %i.fj, %_ZN7QStringD2Ev.exit104 ], [ %i.fj, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i106 ], [ %i.fj, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZN7QStringD2Ev.exit89

_ZN7QStringD2Ev.exit89:                           ; preds = %bb.ag, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i87, %_ZN7QStringD2Ev.exit85, %bb.ah, %_ZN7QStringD2Ev.exit108, %bb.x, %bb.u
  %.pn52 = phi { ptr, i32 } [ %i.cm, %bb.ah ], [ %i.bm, %bb.x ], [ %.pn44.pn.pn.pn, %bb.u ], [ %.pn49, %_ZN7QStringD2Ev.exit108 ], [ %i.cf, %_ZN7QStringD2Ev.exit85 ], [ %i.cf, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i87 ], [ %i.cf, %bb.ag ]
  call void @_ZN5QListI10QByteArrayED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn52
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
end_hunk_0
