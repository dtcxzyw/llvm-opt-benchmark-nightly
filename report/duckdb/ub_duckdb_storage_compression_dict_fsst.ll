inline.NumInlined: 1572
inline.NumDeleted: 732
begin_hunk_0_@_ZNK6duckdb10shared_ptrINS_15SelectionVectorELb1EEdeEv:bb.a
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !164    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_15SelectionVectorELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb9dict_fsst25CompressedStringScanState16ScanToFlatVectorERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 15 uses
  %i.c = alloca i64, align 8                      ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.94", align 1 ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !339  ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9dict_fsst25CompressedStringScanState9GetSelVecEmm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %3, i64 noundef %4) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i8, ptr %i.h, align 8, !tbaa !292
  %i.j = icmp eq i8 %i.i, 2
  %i.k = add i64 %3, 1
  %i.l = select i1 %i.j, i64 %i.k, i64 0          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !356
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.preheader59, label %bb.b

.preheader59:                                     ; preds = %bb.a
  %.not67 = icmp eq i64 %4, 0
  br i1 %.not67, label %.loopexit, label %.lr.ph65

.lr.ph65:                                         ; preds = %.preheader59
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = lshr i64 %2, 6
  %i.q = and i64 %2, 63
  %i.r = shl nuw i64 1, %i.q
  %i.s = xor i64 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.x = getelementptr [16 x i8], ptr %i.e, i64 %2
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 100
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.y = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_17VectorChildBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !339
  %.not66 = icmp eq i64 %4, 0
  br i1 %.not66, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ad = getelementptr [16 x i8], ptr %i.e, i64 %2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.061 = phi i64 [ 0, %.lr.ph ], [ %i.ay, %bb.g ] ; 4 uses
  %i.ae = add i64 %.061, %i.l                     ; 2 uses
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = zext i32 %i.ah to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.c, %bb.d
  %i.aj = phi i64 [ %i.ai, %bb.d ], [ %i.ae, %bb.c ] ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.al = add i64 %.061, %2                       ; 2 uses
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !41  ; 2 uses
  %.not.i49 = icmp eq ptr %i.am, null
  br i1 %.not.i49, label %bb.f, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.f:                                             ; preds = %bb.e
  %i.an = load i64, ptr %i.ac, align 8, !tbaa !346
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.an)
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !41
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.e, %bb.f
  %i.ao = phi ptr [ %.pre.i, %bb.f ], [ %i.am, %bb.e ]
  %i.ap = lshr i64 %i.al, 6
  %i.aq = and i64 %i.al, 63
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = xor i64 %i.ar, -1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !46
  %i.av = and i64 %i.au, %i.as
  store i64 %i.av, ptr %i.at, align 8, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.aj
  %i.ax = getelementptr [16 x i8], ptr %i.ad, i64 %.061
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !243
  %i.ay = add nuw i64 %.061, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %4
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !369

bb.h:                                             ; preds = %.lr.ph65, %._crit_edge
  %.04264 = phi i64 [ 0, %.lr.ph65 ], [ %i.eh, %._crit_edge ] ; 3 uses
  %i.az = add i64 %.04264, %i.l                   ; 2 uses
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %.not.i50 = icmp eq ptr %i.ba, null
  br i1 %.not.i50, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit51, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.az
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = zext i32 %i.bc to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit51

_ZNK6duckdb15SelectionVector9get_indexEm.exit51:  ; preds = %bb.h, %bb.i
  %i.be = phi i64 [ %i.bd, %bb.i ], [ %i.az, %bb.h ] ; 8 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit51
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !41  ; 2 uses
  %.not.i52 = icmp eq ptr %i.bg, null
  br i1 %.not.i52, label %bb.k, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit54

bb.k:                                             ; preds = %bb.j
  %i.bh = load i64, ptr %i.o, align 8, !tbaa !346
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.bh)
  %.pre.i53 = load ptr, ptr %i.f, align 8, !tbaa !41
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit54

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit54: ; preds = %bb.j, %bb.k
  %i.bi = phi ptr [ %.pre.i53, %bb.k ], [ %i.bg, %bb.j ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.p ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !46
  %i.bl = and i64 %i.bk, %i.s
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit54, %_ZNK6duckdb15SelectionVector9get_indexEm.exit51
  %i.bm = load i64, ptr %i.t, align 8, !tbaa !370 ; 14 uses
  %i.bn = icmp ugt i64 %i.bm, %i.be
  br i1 %i.bn, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.bo = icmp ult i64 %i.bm, %i.be
  %.pre = load i32, ptr %i.w, align 8             ; 4 uses
  br i1 %i.bo, label %.lr.ph62, label %._crit_edge

.lr.ph62:                                         ; preds = %.preheader
  %i.bp = load ptr, ptr %i.v, align 8, !tbaa !197
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !163 ; 7 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 2                 ; 5 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.bu) ; 5 uses
  %i.bv = xor i64 %i.bm, -1
  %i.bw = add i64 %i.be, %i.bv
  %i.bx = sub i64 %umax, %i.bm
  %umin89 = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.bx)
  %i.by = add i64 %umin89, 1                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.by, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph62
  %i.bz = shl i64 %i.bm, 2
  %scevgep86 = getelementptr i8, ptr %i.bq, i64 %i.bz
  %scevgep87 = getelementptr i8, ptr %i.bq, i64 4
  %i.ca = xor i64 %i.bm, -1
  %i.cb = add i64 %i.be, %i.ca
  %i.cc = sub i64 %umax, %i.bm
  %umin = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.cc)
  %i.cd = add i64 %i.bm, %umin
  %i.ce = shl i64 %i.cd, 2
  %scevgep88 = getelementptr i8, ptr %scevgep87, i64 %i.ce
  %bound0 = icmp ult ptr %i.w, %scevgep88
  %bound1 = icmp ult ptr %scevgep86, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %i.by, 3                    ; 2 uses
  %i.cf = icmp eq i64 %n.mod.vf, 0
  %i.cg = select i1 %i.cf, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.by, %i.cg                   ; 2 uses
  %i.ch = add i64 %i.bm, %n.vec
  %i.ci = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre, i64 0
  %i.cj = add i64 %i.bm, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ci, %vector.ph ], [ %i.cp, %vector.body ]
  %vec.phi90 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.cq, %vector.body ]
  %i.ck = phi i64 [ %i.cj, %vector.ph ], [ %i.cs, %vector.body ] ; 2 uses
  %i.cl = add i64 %i.bm, %index                   ; 2 uses
  %i.cm = add i64 %i.cl, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.cm, ptr %i.b, align 8, !tbaa !46
  store i64 %i.bu, ptr %i.c, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cl ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %wide.load = load <2 x i32>, ptr %i.cn, align 4, !tbaa !3, !alias.scope !371
  %wide.load91 = load <2 x i32>, ptr %i.co, align 4, !tbaa !3, !alias.scope !371
  %i.cp = add <2 x i32> %vec.phi, %wide.load      ; 2 uses
  %i.cq = add <2 x i32> %vec.phi90, %wide.load91  ; 2 uses
  %i.cr = add i64 %i.ck, 3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = add i64 %i.ck, 4
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !374

middle.block:                                     ; preds = %vector.body
  store i64 %i.cr, ptr %i.t, align 8, !tbaa !370
  %bin.rdx = add <2 x i32> %i.cq, %i.cp
  %i.cu = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.cu, ptr %i.w, align 8, !tbaa !377, !alias.scope !378, !noalias !371
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph62, %middle.block
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph62 ], [ %i.cu, %middle.block ] ; 2 uses
  %.ph92 = phi i64 [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph62 ], [ %i.ch, %middle.block ] ; 6 uses
  %i.cv = sub i64 %i.be, %.ph92
  %i.cw = freeze i64 %i.cv                        ; 2 uses
  %xtraiter = and i64 %i.cw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.ph92, ptr %i.b, align 8, !tbaa !46
  store i64 %i.bu, ptr %i.c, align 8, !tbaa !46
  %exitcond69.not.prol = icmp eq i64 %.ph92, %umax
  br i1 %exitcond69.not.prol, label %.noexc.i, label %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol, !prof !53

_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol:      ; preds = %scalar.ph.prol
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.ph92
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = add i32 %.ph, %i.cy                     ; 3 uses
  store i32 %i.cz, ptr %i.w, align 8, !tbaa !377
  %i.da = add i64 %.ph92, 1                       ; 2 uses
  store i64 %i.da, ptr %i.t, align 8, !tbaa !370
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol, %scalar.ph.preheader
  %.lcssa94.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.cz, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %i.cz, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol ]
  %.unr96 = phi i64 [ %.ph92, %scalar.ph.preheader ], [ %i.da, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol ]
  %i.db = icmp eq i64 %i.cw, 1
  br i1 %i.db, label %._crit_edge, label %scalar.ph

bb.m:                                             ; preds = %bb.l
  %i.dc = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.dc, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.t unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.m
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %common.resume.sink.split

bb.p:                                             ; preds = %bb.o, %bb.n
  %.043 = phi i1 [ false, %bb.o ], [ true, %bb.n ] ; 2 uses
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.df = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.df) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.043, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.043, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.sink = phi ptr [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @__cxa_free_exception(ptr %.sink) #23
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.1
  %i.di = phi i32 [ %i.ea, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.1 ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.dj = phi i64 [ %i.eb, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.1 ], [ %.unr96, %scalar.ph.prol.loopexit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.dj, ptr %i.b, align 8, !tbaa !46
  store i64 %i.bu, ptr %i.c, align 8, !tbaa !46
  %exitcond69.not = icmp eq i64 %i.dj, %umax
  br i1 %exitcond69.not, label %.noexc.i, label %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit, !prof !53

.noexc.i:                                         ; preds = %scalar.ph.prol, %scalar.ph, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit
  %i.dk = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.dl, ptr %5, align 8, !tbaa !380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 55, ptr %i.a, align 8, !tbaa !46
  %i.dm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.dm, ptr %5, align 8, !tbaa !164
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.dm, ptr noundef nonnull align 1 dereferenceable(55) @.str.20, i64 55, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !381
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dn
  store i8 0, ptr %i.dp, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.s unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume.sink.split

bb.r:                                             ; preds = %bb.q, %.noexc
  %.0.i.i.i = phi i1 [ false, %bb.q ], [ true, %.noexc ] ; 2 uses
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ds = load ptr, ptr %5, align 8, !tbaa !164   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.dl
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.ds) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

bb.s:                                             ; preds = %bb.q
  unreachable

_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit:           ; preds = %scalar.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.dj
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = add i32 %i.di, %i.dv                    ; 2 uses
  store i32 %i.dw, ptr %i.w, align 8, !tbaa !377
  %i.dx = add i64 %i.dj, 1                        ; 4 uses
  store i64 %i.dx, ptr %i.t, align 8, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.dx, ptr %i.b, align 8, !tbaa !46
  store i64 %i.bu, ptr %i.c, align 8, !tbaa !46
  %exitcond69.not.1 = icmp eq i64 %i.dx, %umax
  br i1 %exitcond69.not.1, label %.noexc.i, label %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.1, !prof !53

_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.1:         ; preds = %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = add i32 %i.dw, %i.dz                    ; 3 uses
  store i32 %i.ea, ptr %i.w, align 8, !tbaa !377
  %i.eb = add i64 %i.dj, 2                        ; 3 uses
  store i64 %i.eb, ptr %i.t, align 8, !tbaa !370
  %exitcond70.not.1 = icmp eq i64 %i.eb, %i.be
  br i1 %exitcond70.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !382

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.1, %.preheader
  %i.ec = phi i32 [ %.pre, %.preheader ], [ %.lcssa94.unr, %scalar.ph.prol.loopexit ], [ %i.ea, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.1 ]
  %i.ed = tail call { i64, ptr } @_ZN6duckdb9dict_fsst25CompressedStringScanState19FetchStringFromDictERNS_6VectorEjm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.ec, i64 noundef %i.be) ; 2 uses
  %i.ee = extractvalue { i64, ptr } %i.ed, 0
  %i.ef = extractvalue { i64, ptr } %i.ed, 1
  %i.eg = getelementptr [16 x i8], ptr %i.x, i64 %.04264 ; 2 uses
  store i64 %i.ee, ptr %i.eg, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.ef, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !42
  %i.eh = add nuw i64 %.04264, 1                  ; 2 uses
  %exitcond71.not = icmp eq i64 %i.eh, %4
  br i1 %exitcond71.not, label %.loopexit, label %bb.h, !llvm.loop !383

.loopexit:                                        ; preds = %bb.g, %._crit_edge, %bb.b, %.preheader59
  %i.ei = add i64 %4, %2
  tail call void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.ei)
  ret void

bb.t:                                             ; preds = %bb.o
  unreachable
}

declare void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb9dict_fsst25CompressedStringScanState6SelectERNS_6VectorEmRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 15 uses
  %i.c = alloca i64, align 8                      ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.94", align 1 ; 5 uses
  %i.d = add i64 %2, 1
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !339
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.k = add i64 %2, 1
  br label %bb.b

._crit_edge31:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph30, %._crit_edge
  %.028 = phi i64 [ 0, %.lr.ph30 ], [ %i.cn, %._crit_edge ] ; 4 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !40     ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.028
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = zext i32 %i.n to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.b, %bb.c
  %i.p = phi i64 [ %i.o, %bb.c ], [ %.028, %bb.b ] ; 4 uses
  %i.q = add i64 %i.d, %i.p                       ; 4 uses
  %i.r = load i64, ptr %i.g, align 8, !tbaa !370  ; 14 uses
  %i.s = icmp ugt i64 %i.r, %i.q
  br i1 %i.s, label %bb.d, label %.preheader

.preheader:                                       ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.t = icmp ult i64 %i.r, %i.q
  %.pre = load i32, ptr %i.j, align 8             ; 4 uses
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !197
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !163  ; 7 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2                   ; 5 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.z) ; 5 uses
  %i.aa = add i64 %2, %i.p
  %i.ab = sub i64 %i.aa, %i.r
  %i.ac = sub i64 %umax, %i.r
  %umin45 = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ac)
  %i.ad = add i64 %umin45, 1                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ad, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ae = shl i64 %i.r, 2
  %scevgep42 = getelementptr i8, ptr %i.v, i64 %i.ae
  %scevgep43 = getelementptr i8, ptr %i.v, i64 4
  %i.af = add i64 %2, %i.p
  %i.ag = sub i64 %i.af, %i.r
  %i.ah = sub i64 %umax, %i.r
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ah)
  %i.ai = add i64 %i.r, %umin
  %i.aj = shl i64 %i.ai, 2
  %scevgep44 = getelementptr i8, ptr %scevgep43, i64 %i.aj
  %bound0 = icmp ult ptr %i.j, %scevgep44
  %bound1 = icmp ult ptr %scevgep42, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %i.ad, 3                    ; 2 uses
  %i.ak = icmp eq i64 %n.mod.vf, 0
  %i.al = select i1 %i.ak, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.ad, %i.al                   ; 2 uses
  %i.am = add i64 %i.r, %n.vec
  %i.an = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre, i64 0
  %i.ao = add i64 %i.r, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.an, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi46 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %i.ap = phi i64 [ %i.ao, %vector.ph ], [ %i.ax, %vector.body ] ; 2 uses
  %i.aq = add i64 %i.r, %index                    ; 2 uses
  %i.ar = add i64 %i.aq, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !46
  store i64 %i.z, ptr %i.c, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aq ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %wide.load = load <2 x i32>, ptr %i.as, align 4, !tbaa !3, !alias.scope !384
  %wide.load47 = load <2 x i32>, ptr %i.at, align 4, !tbaa !3, !alias.scope !384
  %i.au = add <2 x i32> %vec.phi, %wide.load      ; 2 uses
  %i.av = add <2 x i32> %vec.phi46, %wide.load47  ; 2 uses
  %i.aw = add i64 %i.ap, 3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = add i64 %i.ap, 4
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !387

middle.block:                                     ; preds = %vector.body
  store i64 %i.aw, ptr %i.g, align 8, !tbaa !370
  %bin.rdx = add <2 x i32> %i.av, %i.au
  %i.az = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.az, ptr %i.j, align 8, !tbaa !377, !alias.scope !388, !noalias !384
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph ], [ %i.az, %middle.block ] ; 2 uses
  %.ph48 = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph ], [ %i.am, %middle.block ] ; 6 uses
  %i.ba = add i64 %i.k, %i.p
  %i.bb = sub i64 %i.ba, %.ph48
  %i.bc = freeze i64 %i.bb                        ; 2 uses
  %xtraiter = and i64 %i.bc, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.ph48, ptr %i.b, align 8, !tbaa !46
  store i64 %i.z, ptr %i.c, align 8, !tbaa !46
  %exitcond.not.prol = icmp eq i64 %.ph48, %umax
  br i1 %exitcond.not.prol, label %.noexc.i, label %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol, !prof !53

_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol:      ; preds = %scalar.ph.prol
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.ph48
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = add i32 %.ph, %i.be                     ; 3 uses
  store i32 %i.bf, ptr %i.j, align 8, !tbaa !377
  %i.bg = add i64 %.ph48, 1                       ; 2 uses
  store i64 %i.bg, ptr %i.g, align 8, !tbaa !370
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol, %scalar.ph.preheader
  %.lcssa50.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.bf, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %i.bf, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol ]
  %.unr51 = phi i64 [ %.ph48, %scalar.ph.preheader ], [ %i.bg, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol ]
  %i.bh = icmp eq i64 %i.bc, 1
  br i1 %i.bh, label %._crit_edge, label %scalar.ph

bb.d:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.bi = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.k unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %common.resume.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.018 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bl = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.bl) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.018, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.018, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.sink = phi ptr [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @__cxa_free_exception(ptr %.sink) #23
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.1
  %i.bo = phi i32 [ %i.cg, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.1 ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.bp = phi i64 [ %i.ch, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.1 ], [ %.unr51, %scalar.ph.prol.loopexit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !46
  store i64 %i.z, ptr %i.c, align 8, !tbaa !46
  %exitcond.not = icmp eq i64 %i.bp, %umax
  br i1 %exitcond.not, label %.noexc.i, label %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit, !prof !53

.noexc.i:                                         ; preds = %scalar.ph.prol, %scalar.ph, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit
  %i.bq = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.br, ptr %5, align 8, !tbaa !380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 55, ptr %i.a, align 8, !tbaa !46
  %i.bs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bs, ptr %5, align 8, !tbaa !164
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bs, ptr noundef nonnull align 1 dereferenceable(55) @.str.20, i64 55, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !381
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  store i8 0, ptr %i.bv, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.bq, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.j unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume.sink.split

bb.i:                                             ; preds = %bb.h, %.noexc
  %.0.i.i.i = phi i1 [ false, %bb.h ], [ true, %.noexc ] ; 2 uses
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.by = load ptr, ptr %5, align 8, !tbaa !164   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.br
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.by) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

bb.j:                                             ; preds = %bb.h
  unreachable

_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit:           ; preds = %scalar.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bp
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = add i32 %i.bo, %i.cb                    ; 2 uses
  store i32 %i.cc, ptr %i.j, align 8, !tbaa !377
  %i.cd = add i64 %i.bp, 1                        ; 4 uses
  store i64 %i.cd, ptr %i.g, align 8, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.cd, ptr %i.b, align 8, !tbaa !46
  store i64 %i.z, ptr %i.c, align 8, !tbaa !46
  %exitcond.not.1 = icmp eq i64 %i.cd, %umax
  br i1 %exitcond.not.1, label %.noexc.i, label %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.1, !prof !53

_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.1:         ; preds = %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = add i32 %i.cc, %i.cf                    ; 3 uses
  store i32 %i.cg, ptr %i.j, align 8, !tbaa !377
  %i.ch = add i64 %i.bp, 2                        ; 3 uses
  store i64 %i.ch, ptr %i.g, align 8, !tbaa !370
  %exitcond32.not.1 = icmp eq i64 %i.ch, %i.q
  br i1 %exitcond32.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !390

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.1, %.preheader
  %i.ci = phi i32 [ %.pre, %.preheader ], [ %.lcssa50.unr, %scalar.ph.prol.loopexit ], [ %i.cg, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.1 ]
  %i.cj = tail call { i64, ptr } @_ZN6duckdb9dict_fsst25CompressedStringScanState19FetchStringFromDictERNS_6VectorEjm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.ci, i64 noundef %i.q) ; 2 uses
  %i.ck = extractvalue { i64, ptr } %i.cj, 0
  %i.cl = extractvalue { i64, ptr } %i.cj, 1
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.028 ; 2 uses
  store i64 %i.ck, ptr %i.cm, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cl, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !42
  %i.cn = add nuw i64 %.028, 1                    ; 2 uses
  %exitcond33.not = icmp eq i64 %i.cn, %4
  br i1 %exitcond33.not, label %._crit_edge31, label %bb.b, !llvm.loop !391

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN6duckdb9dict_fsst25CompressedStringScanState19AllowDictionaryScanEm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !292
  %i.c = icmp ne i8 %i.b, 2
  %.not = icmp eq i64 %1, 2048
  %or.cond = and i1 %.not, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !356
  %i.f = icmp ne ptr %i.e, null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb9dict_fsst25CompressedStringScanState22ScanToDictionaryVectorERNS_13ColumnSegmentERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::shared_ptr.140", align 16 ; 4 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9dict_fsst25CompressedStringScanState9GetSelVecEmm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %4, i64 noundef %5)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !337
  store <2 x ptr> %i.f, ptr %6, align 16, !tbaa !337
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEC2ERKS2_.exit

_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN6duckdb6Vector10DictionaryENS_10shared_ptrINS_17VectorChildBufferELb1EEERKNS_15SelectionVectorE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEC2ERKS2_.exit
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !48   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !51
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #23, !inline_history !288
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #23, !inline_history !288
  br label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i9 = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i9, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit, !prof !53

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #23
  br label %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  %i.ab = add i64 %5, %3
  call void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ab)
  ret void

bb.l:                                             ; preds = %_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEC2ERKS2_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #23
  resume { ptr, i32 } %i.ac
}

declare void @_ZN6duckdb6Vector10DictionaryENS_10shared_ptrINS_17VectorChildBufferELb1EEERKNS_15SelectionVectorE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb12AnalyzeStateD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb9dict_fsst20DictFSSTAnalyzeStateD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6duckdb13SelectionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !51
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !392
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !392
  br label %_ZNSt12__shared_ptrIN6duckdb13SelectionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6duckdb13SelectionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !53
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i32
!171 = !{!112, !16, i64 32}
!172 = !{!112, !16, i64 40}
!173 = !{!112, !113, i64 0}
!174 = !{!175}
!175 = distinct !{!175, !176, !"_ZN6duckdb9Allocator8AllocateEm: argument 0"}
!176 = distinct !{!176, !"_ZN6duckdb9Allocator8AllocateEm"}
!177 = !{!114, !22, i64 8}
!178 = !{!114, !16, i64 16}
!179 = !{!112, !119, i64 144}
!180 = !{!112, !17, i64 152}
!181 = !{!182, !4, i64 16}
!182 = !{!"_ZTSN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21PrimitiveCastOperatorEE28primitive_dictionary_entry_tE", !183, i64 0, !4, i64 16}
!183 = !{!"_ZTSN6duckdb8string_tE", !5, i64 0}
!184 = distinct !{!184, !45}
!185 = distinct !{!185, !186}
!186 = !{!"llvm.loop.unroll.disable"}
!187 = !{!92, !58, i64 16}
!188 = !{!92, !60, i64 24}
!189 = !{!63, !63, i64 0}
!190 = !{!92, !159, i64 480}
!191 = !{!92, !5, i64 108}
!192 = !{!92, !5, i64 109}
!193 = !{!92, !5, i64 144}
!194 = !{!92, !16, i64 72}
!195 = !{!92, !16, i64 112}
!196 = !{!92, !16, i64 432}
!197 = !{!111, !33, i64 8}
!198 = !{!111, !33, i64 16}
!199 = !{!92, !4, i64 104}
!200 = !{!92, !16, i64 64}
!201 = !{!92, !9, i64 464}
!202 = !{!105, !106, i64 0}
!203 = !{!204, !22, i64 16}
!204 = !{!"_ZTSN6duckdb10FileBufferE", !205, i64 8, !22, i64 16, !16, i64 24, !206, i64 32, !22, i64 40, !16, i64 48}
!205 = !{!"p1 _ZTSN6duckdb14BlockAllocatorE", !9, i64 0}
!206 = !{!"_ZTSN6duckdb14FileBufferTypeE", !5, i64 0}
!207 = !{!159, !159, i64 0}
!208 = !{!209, !210, i64 8}
!209 = !{!"_ZTSN6duckdb9dict_fsst30dict_fsst_compression_header_tE", !4, i64 0, !4, i64 4, !210, i64 8, !5, i64 9, !5, i64 10, !4, i64 12}
!210 = !{!"_ZTSN6duckdb9dict_fsst12DictFSSTModeE", !5, i64 0}
!211 = !{!209, !4, i64 12}
!212 = !{!209, !4, i64 0}
!213 = !{!209, !4, i64 4}
!214 = !{!209, !5, i64 10}
!215 = !{!209, !5, i64 9}
!216 = distinct !{!216, !45}
!217 = !{!92, !16, i64 336}
!218 = !{!125, !125, i64 0}
!219 = !{!124, !125, i64 8}
!220 = !{!221, !25, i64 0}
!221 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!222 = !{!221, !25, i64 16}
!223 = !{!221, !25, i64 8}
!224 = distinct !{!224, !45}
!225 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!226 = distinct !{!226, !186}
!227 = !{!92, !16, i64 456}
!228 = distinct !{!228, !45}
!229 = !{!17, !17, i64 0}
!230 = !{i8 0, i8 2}
!231 = !{!232, !16, i64 0}
!232 = !{!"_ZTSN6duckdb9dict_fsst12EncodedInputE", !16, i64 0, !120, i64 8}
!233 = !{!234, !235, i64 8}
!234 = !{!"_ZTSNSt12_Vector_baseIPhSaIS0_EE17_Vector_impl_dataE", !235, i64 0, !235, i64 8, !235, i64 16}
!235 = !{!"p2 omnipotent char", !75, i64 0}
!236 = !{!234, !235, i64 0}
!237 = !{!234, !235, i64 16}
!238 = distinct !{!238, !45}
!239 = !{!92, !16, i64 424}
!240 = !{!124, !125, i64 16}
!241 = !{i64 0, i64 12, !42}
!242 = distinct !{!242, !45}
!243 = !{i64 0, i64 16, !42}
!244 = distinct !{!244, !45}
!245 = distinct !{!245, !45}
!246 = distinct !{!246, !186}
!247 = distinct !{!247, !45}
!248 = distinct !{!248, !45}
!249 = !{!250, !17, i64 25}
!250 = !{!"_ZTSN6duckdb14BaseStatisticsE", !251, i64 0, !17, i64 24, !17, i64 25, !16, i64 32, !5, i64 40, !257, i64 120}
!251 = !{!"_ZTSN6duckdb11LogicalTypeE", !252, i64 0, !38, i64 1, !253, i64 8}
!252 = !{!"_ZTSN6duckdb13LogicalTypeIdE", !5, i64 0}
!253 = !{!"_ZTSN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEE", !254, i64 0}
!254 = !{!"_ZTSSt10shared_ptrIN6duckdb13ExtraTypeInfoEE", !255, i64 0}
!255 = !{!"_ZTSSt12__shared_ptrIN6duckdb13ExtraTypeInfoELN9__gnu_cxx12_Lock_policyE2EE", !256, i64 0, !30, i64 8}
!256 = !{!"p1 _ZTSN6duckdb13ExtraTypeInfoE", !9, i64 0}
!257 = !{!"_ZTSN6duckdb10unique_ptrIA_NS_14BaseStatisticsESt14default_deleteIS2_ELb0EEE", !258, i64 0}
!258 = !{!"_ZTSSt10unique_ptrIA_N6duckdb14BaseStatisticsESt14default_deleteIS2_EE", !259, i64 0}
!259 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb14BaseStatisticsESt14default_deleteIA_S1_ELb1ELb1EE", !260, i64 0}
!260 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb14BaseStatisticsESt14default_deleteIA_S1_EE", !261, i64 0}
!261 = !{!"_ZTSSt5tupleIJPN6duckdb14BaseStatisticsESt14default_deleteIA_S1_EEE", !262, i64 0}
!262 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb14BaseStatisticsESt14default_deleteIA_S1_EEE", !263, i64 0}
!263 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb14BaseStatisticsELb0EE", !264, i64 0}
!264 = !{!"p1 _ZTSN6duckdb14BaseStatisticsE", !9, i64 0}
!265 = !{!250, !17, i64 24}
!266 = distinct !{!266, !45}
!267 = !{!268, !9, i64 184}
!268 = !{!"_ZTSN6duckdb9dict_fsst25CompressedStringScanStateE", !269, i64 0, !63, i64 8, !100, i64 16, !270, i64 40, !210, i64 48, !16, i64 56, !4, i64 64, !5, i64 68, !5, i64 69, !272, i64 72, !16, i64 88, !4, i64 96, !16, i64 104, !107, i64 112, !22, i64 136, !22, i64 144, !22, i64 152, !22, i64 160, !275, i64 168, !9, i64 184, !17, i64 192, !279, i64 200}
!269 = !{!"_ZTSN6duckdb16SegmentScanStateE"}
!270 = !{!"_ZTSN6duckdb12optional_ptrINS_12BufferHandleELb1EEE", !271, i64 0}
!271 = !{!"p1 _ZTSN6duckdb12BufferHandleE", !9, i64 0}
!272 = !{!"_ZTSN6duckdb10shared_ptrINS_15SelectionVectorELb1EEE", !273, i64 0}
!273 = !{!"_ZTSSt10shared_ptrIN6duckdb15SelectionVectorEE", !274, i64 0}
!274 = !{!"_ZTSSt12__shared_ptrIN6duckdb15SelectionVectorELN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0, !30, i64 8}
!275 = !{!"_ZTSN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEE", !276, i64 0}
!276 = !{!"_ZTSSt10shared_ptrIN6duckdb17VectorChildBufferEE", !277, i64 0}
!277 = !{!"_ZTSSt12__shared_ptrIN6duckdb17VectorChildBufferELN9__gnu_cxx12_Lock_policyE2EE", !278, i64 0, !30, i64 8}
!278 = !{!"p1 _ZTSN6duckdb17VectorChildBufferE", !9, i64 0}
!279 = !{!"_ZTSN6duckdb10unique_ptrIA_bSt14default_deleteIS1_ELb0EEE", !280, i64 0}
!280 = !{!"_ZTSSt10unique_ptrIA_bSt14default_deleteIS0_EE", !281, i64 0}
!281 = !{!"_ZTSSt15__uniq_ptr_dataIbSt14default_deleteIA_bELb1ELb1EE", !282, i64 0}
!282 = !{!"_ZTSSt15__uniq_ptr_implIbSt14default_deleteIA_bEE", !283, i64 0}
!283 = !{!"_ZTSSt5tupleIJPbSt14default_deleteIA_bEEE", !284, i64 0}
!284 = !{!"_ZTSSt11_Tuple_implILm0EJPbSt14default_deleteIA_bEEE", !285, i64 0}
!285 = !{!"_ZTSSt10_Head_baseILm0EPbLb0EE", !286, i64 0}
!286 = !{!"p1 bool", !9, i64 0}
!287 = !{!286, !286, i64 0}
!288 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev, null, null, null}
!289 = distinct !{null, null, null, null}
!290 = distinct !{null, null, null}
!291 = !{!268, !22, i64 144}
!292 = !{!268, !210, i64 48}
!293 = !{!268, !17, i64 192}
!294 = !{!135, !135, i64 0}
!295 = !{!296, !16, i64 24}
!296 = !{!"_ZTSN6duckdb10ArenaChunkE", !114, i64 0, !16, i64 24, !16, i64 32, !128, i64 40, !135, i64 48}
!297 = !{!296, !16, i64 32}
!298 = !{!270, !271, i64 0}
!299 = !{!268, !63, i64 8}
!300 = !{!301, !16, i64 216}
!301 = !{!"_ZTSN6duckdb13ColumnSegmentE", !302, i64 0, !305, i64 8, !251, i64 16, !16, i64 40, !306, i64 48, !307, i64 56, !101, i64 184, !308, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !309, i64 232}
!302 = !{!"_ZTSN6duckdb11SegmentBaseINS_13ColumnSegmentEEE", !303, i64 0}
!303 = !{!"_ZTSSt6atomicImE", !304, i64 0}
!304 = !{!"_ZTSSt13__atomic_baseImE", !16, i64 0}
!305 = !{!"p1 _ZTSN6duckdb16DatabaseInstanceE", !9, i64 0}
!306 = !{!"_ZTSN6duckdb17ColumnSegmentTypeE", !5, i64 0}
!307 = !{!"_ZTSN6duckdb17SegmentStatisticsE", !250, i64 0}
!308 = !{!"_ZTSSt17reference_wrapperIKN6duckdb19CompressionFunctionEE", !60, i64 0}
!309 = !{!"_ZTSN6duckdb10unique_ptrINS_22CompressedSegmentStateESt14default_deleteIS1_ELb1EEE", !310, i64 0}
!310 = !{!"_ZTSSt10unique_ptrIN6duckdb22CompressedSegmentStateESt14default_deleteIS1_EE", !311, i64 0}
!311 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb22CompressedSegmentStateESt14default_deleteIS1_ELb1ELb1EE", !312, i64 0}
!312 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb22CompressedSegmentStateESt14default_deleteIS1_EE", !313, i64 0}
!313 = !{!"_ZTSSt5tupleIJPN6duckdb22CompressedSegmentStateESt14default_deleteIS1_EEE", !314, i64 0}
!314 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb22CompressedSegmentStateESt14default_deleteIS1_EEE", !315, i64 0}
!315 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb22CompressedSegmentStateELb0EE", !316, i64 0}
!316 = !{!"p1 _ZTSN6duckdb22CompressedSegmentStateE", !9, i64 0}
!317 = !{!268, !22, i64 136}
!318 = !{!268, !4, i64 64}
!319 = !{!268, !16, i64 56}
!320 = !{!268, !5, i64 68}
!321 = !{!268, !5, i64 69}
!322 = !{!323, !16, i64 24}
!323 = !{!"_ZTSN6duckdb11BlockHandleE", !324, i64 0, !8, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !329, i64 48, !332, i64 64}
!324 = !{!"_ZTSN6duckdb23enable_shared_from_thisINS_11BlockHandleEEE", !325, i64 0}
!325 = !{!"_ZTSN6duckdb8weak_ptrINS_11BlockHandleELb1EEE", !326, i64 0}
!326 = !{!"_ZTSSt8weak_ptrIN6duckdb11BlockHandleEE", !327, i64 0}
!327 = !{!"_ZTSSt10__weak_ptrIN6duckdb11BlockHandleELN9__gnu_cxx12_Lock_policyE2EE", !104, i64 0, !328, i64 8}
!328 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !31, i64 0}
!329 = !{!"_ZTSN6duckdb10shared_ptrINS_11BlockMemoryELb1EEE", !330, i64 0}
!330 = !{!"_ZTSSt10shared_ptrIN6duckdb11BlockMemoryEE", !331, i64 0}
!331 = !{!"_ZTSSt12__shared_ptrIN6duckdb11BlockMemoryELN9__gnu_cxx12_Lock_policyE2EE", !332, i64 0, !30, i64 8}
!332 = !{!"p1 _ZTSN6duckdb11BlockMemoryE", !9, i64 0}
!333 = !{!323, !16, i64 32}
!334 = !{!268, !22, i64 152}
!335 = !{!268, !22, i64 160}
!336 = distinct !{!336, !45}
!337 = !{!9, !9, i64 0}
!338 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev, null, null, null}
!339 = !{!340, !22, i64 32}
!340 = !{!"_ZTSN6duckdb6VectorE", !341, i64 0, !251, i64 8, !22, i64 32, !23, i64 40, !342, i64 72, !342, i64 88}
!341 = !{!"_ZTSN6duckdb10VectorTypeE", !5, i64 0}
!342 = !{!"_ZTSN6duckdb10shared_ptrINS_12VectorBufferELb1EEE", !343, i64 0}
!343 = !{!"_ZTSSt10shared_ptrIN6duckdb12VectorBufferEE", !344, i64 0}
!344 = !{!"_ZTSSt12__shared_ptrIN6duckdb12VectorBufferELN9__gnu_cxx12_Lock_policyE2EE", !345, i64 0, !30, i64 8}
!345 = !{!"p1 _ZTSN6duckdb12VectorBufferE", !9, i64 0}
!346 = !{!24, !16, i64 24}
!347 = distinct !{!347, !45}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_ZN6duckdb9Exception16ConstructMessageIJhhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!350 = distinct !{!350, !"_ZN6duckdb9Exception16ConstructMessageIJhhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!351 = !{!352, !353, i64 0}
!352 = !{!"_ZTSNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE17_Vector_impl_dataE", !353, i64 0, !353, i64 8, !353, i64 16}
!353 = !{!"p1 _ZTSN6duckdb20ExceptionFormatValueE", !9, i64 0}
!354 = !{!352, !353, i64 8}
!355 = distinct !{!355, !45}
!356 = !{!277, !278, i64 0}
!357 = !{!274, !21, i64 0}
!358 = !{!268, !16, i64 88}
!359 = !{!360, !362}
!360 = distinct !{!360, !361, !"_ZSt11make_sharedIN6duckdb15SelectionVectorEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!361 = distinct !{!361, !"_ZSt11make_sharedIN6duckdb15SelectionVectorEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!362 = distinct !{!362, !363, !"_ZN6duckdb15make_shared_ptrINS_15SelectionVectorEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_: argument 0"}
!363 = distinct !{!363, !"_ZN6duckdb15make_shared_ptrINS_15SelectionVectorEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_"}
!364 = !{!362}
!365 = distinct !{null, null, null, null}
!366 = !{!21, !21, i64 0}
!367 = distinct !{null, null, null, null, null}
!368 = distinct !{!368, !45}
!369 = distinct !{!369, !45}
!370 = !{!268, !16, i64 104}
!371 = !{!372}
!372 = distinct !{!372, !373}
!373 = distinct !{!373, !"LVerDomain"}
!374 = distinct !{!374, !45, !375, !376}
!375 = !{!"llvm.loop.isvectorized", i32 1}
!376 = !{!"llvm.loop.unroll.runtime.disable"}
!377 = !{!268, !4, i64 96}
!378 = !{!379}
!379 = distinct !{!379, !373}
!380 = !{!166, !22, i64 0}
!381 = !{!165, !16, i64 8}
!382 = distinct !{!382, !45, !375}
!383 = distinct !{!383, !45}
!384 = !{!385}
!385 = distinct !{!385, !386}
!386 = distinct !{!386, !"LVerDomain"}
!387 = distinct !{!387, !45, !375, !376}
!388 = !{!389}
!389 = distinct !{!389, !386}
!390 = distinct !{!390, !45, !375}
!391 = distinct !{!391, !45}
!392 = distinct !{null, null, null}
!393 = distinct !{null}
!394 = !{!88, !16, i64 0}
!395 = distinct !{!395, !45}
!396 = distinct !{!396, !45, !375, !376}
!397 = !{!"branch_weights", i32 4, i32 28}
!398 = distinct !{!398, !45, !375, !376}
!399 = distinct !{!399, !186}
!400 = distinct !{!400, !45, !375}
!401 = distinct !{!401, !45}
!402 = !{!403, !5, i64 8}
!403 = !{!"_ZTS21duckdb_fsst_decoder_t", !404, i64 0, !5, i64 8, !5, i64 9, !5, i64 264}
!404 = !{!"long long", !5, i64 0}
!405 = !{!406}
!406 = distinct !{!406, !407, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!407 = distinct !{!407, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!408 = !{!352, !353, i64 16}
!409 = !{!410}
!410 = distinct !{!410, !411, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!411 = distinct !{!411, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_"}
!412 = !{!413}
!413 = distinct !{!413, !411, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!414 = !{!410, !413}
!415 = distinct !{!415, !45}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!418 = distinct !{!418, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_"}
!419 = !{!420}
!420 = distinct !{!420, !418, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!421 = !{!417, !420}
!422 = !{!103, !104, i64 0}
!423 = !{!340, !341, i64 0}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZN6duckdb9Exception16ConstructMessageIJimmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!426 = distinct !{!426, !"_ZN6duckdb9Exception16ConstructMessageIJimmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!427 = !{!428}
!428 = distinct !{!428, !429, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIiEES0_RKT_: argument 0"}
!429 = distinct !{!429, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIiEES0_RKT_"}
!430 = !{!20, !38, i64 72}
!431 = !{!38, !38, i64 0}
!432 = !{!433}
!433 = distinct !{!433, !434, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_: argument 0"}
!434 = distinct !{!434, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_"}
!435 = !{!436}
!436 = distinct !{!436, !437, !"_ZN6duckdb9Exception16ConstructMessageIJmjjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!437 = distinct !{!437, !"_ZN6duckdb9Exception16ConstructMessageIJmjjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!438 = !{!439}
!439 = distinct !{!439, !440, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIjEES0_RKT_: argument 0"}
!440 = distinct !{!440, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIjEES0_RKT_"}
!441 = !{!442}
!442 = distinct !{!442, !443, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIjEES0_RKT_: argument 0"}
!443 = distinct !{!443, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIjEES0_RKT_"}
!444 = !{!445}
!445 = distinct !{!445, !446, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!446 = distinct !{!446, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!447 = !{!448}
!448 = distinct !{!448, !449, !"_ZN6duckdb9Exception16ConstructMessageIJijjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!449 = distinct !{!449, !"_ZN6duckdb9Exception16ConstructMessageIJijjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!450 = !{!451}
!451 = distinct !{!451, !452, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIiEES0_RKT_: argument 0"}
!452 = distinct !{!452, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIiEES0_RKT_"}
!453 = !{!454}
!454 = distinct !{!454, !455, !"_ZN6duckdb9Exception16ConstructMessageIJmmmbmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!455 = distinct !{!455, !"_ZN6duckdb9Exception16ConstructMessageIJmmmbmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!456 = !{!457}
!457 = distinct !{!457, !458, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIbEES0_RKT_: argument 0"}
!458 = distinct !{!458, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIbEES0_RKT_"}
!459 = !{!460}
!460 = distinct !{!460, !461, !"_ZN6duckdb9Exception16ConstructMessageIJmmmmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!461 = distinct !{!461, !"_ZN6duckdb9Exception16ConstructMessageIJmmmmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!462 = !{!463}
!463 = distinct !{!463, !464, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIhEES0_RKT_: argument 0"}
!464 = distinct !{!464, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIhEES0_RKT_"}
!465 = !{!466}
!466 = distinct !{!466, !467, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIhEES0_RKT_: argument 0"}
!467 = distinct !{!467, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIhEES0_RKT_"}
!468 = !{!251, !38, i64 1}
!469 = !{!470}
!470 = distinct !{!470, !471, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_: argument 0"}
!471 = distinct !{!471, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_"}
!472 = distinct !{null, null, null, null, null}
!473 = distinct !{null, null, null, null}
!474 = !{!25, !25, i64 0}
!475 = !{!476}
!476 = distinct !{!476, !477, !"_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_: argument 0"}
!477 = distinct !{!477, !"_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_"}
!478 = !{!479, !476}
!479 = distinct !{!479, !480, !"_ZSt11make_sharedIN6duckdb21TemplatedValidityDataImEEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_: argument 0"}
!480 = distinct !{!480, !"_ZSt11make_sharedIN6duckdb21TemplatedValidityDataImEEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_"}
!481 = !{!482, !25, i64 0}
!482 = !{!"_ZTSSt10_Head_baseILm0EPmLb0EE", !25, i64 0}
!483 = !{!28, !29, i64 0}
!484 = distinct !{null, null, null, null}
!485 = !{!486, !22, i64 8}
!486 = !{!"_ZTSSt9type_info", !22, i64 8}
!487 = distinct !{null, null, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!488 = !{!489, !491}
!489 = distinct !{!489, !490, !"_ZSt11make_sharedIN6duckdb13SelectionDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!490 = distinct !{!490, !"_ZSt11make_sharedIN6duckdb13SelectionDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!491 = distinct !{!491, !492, !"_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_: argument 0"}
!492 = distinct !{!492, !"_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_"}
!493 = !{!491}
!494 = distinct !{null, null, null, null}
!495 = !{!37, !37, i64 0}
!496 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!497 = !{!36, !37, i64 0}
end_hunk_1
