Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/ColorFilterArray?download=true
inline.NumInlined: 349
inline.NumDeleted: 201
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN8rawspeed16ColorFilterArray9shiftDownEi:bb.a
  br i1 %exitcond32.not, label %._crit_edge26.split, label %.preheader, !llvm.loop !48

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.ay = trunc i64 %indvars.iv to i32
  %i.az = add i32 %i.z, %i.ay
  %i.ba = urem i32 %i.az, %i.z
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %i.ap, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bf = trunc i64 %indvars.iv.next to i32
  %i.bg = add i32 %i.z, %i.bf
  %i.bh = urem i32 %i.bg, %i.z
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr i8, ptr %i.ap, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.next
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !17
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bm = trunc i64 %indvars.iv.next.1 to i32
  %i.bn = add i32 %i.z, %i.bm
  %i.bo = urem i32 %i.bn, %i.z
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %i.ap, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.next.1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !17
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bt = trunc i64 %indvars.iv.next.2 to i32
  %i.bu = add i32 %i.z, %i.bt
  %i.bv = urem i32 %i.bu, %i.z
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr i8, ptr %i.ap, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.next.2
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !17
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !49

bb.g:                                             ; preds = %.preheader.lr.ph.split
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed16ColorFilterArray10getColorAtEii) #12
          to label %.noexc21 unwind label %bb.h

.noexc21:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %._crit_edge26.split
  %i.cb = load ptr, ptr %2, align 8, !tbaa !19    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !20
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #18
  br label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EED2Ev.exit

_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EED2Ev.exit
  ret void

bb.l:                                             ; preds = %._crit_edge26.split
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %2, align 8, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %i.ci = phi ptr [ %i.v, %bb.h ], [ %.pre, %bb.l ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.h ], [ %i.ch, %bb.l ]
  %.not.i.i.i22 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EED2Ev.exit23, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !20
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #18
  br label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EED2Ev.exit23

_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EED2Ev.exit23: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed16ColorFilterArray8asStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !37
  store i8 0, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !29   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge89

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.preheader, label %._crit_edge89

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.l = phi i32 [ %i.o, %._crit_edge ], [ %i.e, %.preheader.lr.ph ]
  %i.m = phi i32 [ %i.p, %._crit_edge ], [ %i.j, %.preheader.lr.ph ] ; 3 uses
  %.01388 = phi i32 [ %i.q, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.t
  %.pre101 = load i32, ptr %i.d, align 4, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.o = phi i32 [ %.pre101, %._crit_edge.loopexit ], [ %i.l, %.preheader ] ; 2 uses
  %i.p = phi i32 [ %i.cy, %._crit_edge.loopexit ], [ %i.m, %.preheader ]
  %i.q = add nuw nsw i32 %.01388, 1               ; 2 uses
  %i.r = icmp slt i32 %i.q, %i.o
  br i1 %i.r, label %.preheader, label %._crit_edge89, !llvm.loop !50

.lr.ph:                                           ; preds = %.preheader, %bb.t
  %i.s = phi i32 [ %i.cy, %bb.t ], [ %i.m, %.preheader ] ; 5 uses
  %.01287 = phi i32 [ %i.cx, %bb.t ], [ 0, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.t = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed16ColorFilterArray10getColorAtEii) #12
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.w = icmp sgt i32 %i.s, 0
  %i.x = load i32, ptr %i.d, align 4              ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0
  call void @llvm.assume(i1 %i.w)
  call void @llvm.assume(i1 %i.y)
  %i.z = urem i32 %.01287, %i.s
  %i.aa = add nuw nsw i32 %i.z, %i.s
  %i.ab = urem i32 %i.aa, %i.s
  %i.ac = urem i32 %.01388, %i.x
  %i.ad = add nuw nsw i32 %i.ac, %i.x
  %i.ae = urem i32 %i.ad, %i.x
  %i.af = zext nneg i32 %i.ab to i64
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = zext nneg i32 %i.s to i64
  %i.ai = mul nuw nsw i64 %i.ag, %i.ah
  %i.aj = getelementptr i8, ptr %i.t, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.af
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17  ; 2 uses
  %switch.tableidx = add i8 %i.al, 1              ; 3 uses
  %i.am = icmp ult i8 %switch.tableidx, 9
  br i1 %i.am, label %switch.lookup, label %_ZN8rawspeed12_GLOBAL__N_116getColorAsStringENS_8CFAColorE.exit.i

_ZN8rawspeed12_GLOBAL__N_116getColorAsStringENS_8CFAColorE.exit.i: ; preds = %bb.c
  %i.an = zext i8 %i.al to i32
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed16ColorFilterArray13colorToStringB5cxx11ENS_8CFAColorE, i32 noundef %i.an) #12
          to label %.noexc17 unwind label %bb.u

.noexc17:                                         ; preds = %_ZN8rawspeed12_GLOBAL__N_116getColorAsStringENS_8CFAColorE.exit.i
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.ao = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8rawspeed16ColorFilterArray13colorToStringB5cxx11ENS_8CFAColorE, i64 %i.ao
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.ap = zext nneg i8 %switch.tableidx to i64
  %switch.gep149 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8rawspeed16ColorFilterArray13colorToStringB5cxx11ENS_8CFAColorE.2, i64 %i.ap
  %switch.load150 = load i8, ptr %switch.gep149, align 1
  %switch.ext = zext i8 %switch.load150 to i64    ; 7 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !34, !alias.scope !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %switch.load, i64 %switch.ext, i1 false)
  store i64 %switch.ext, ptr %i.i, align 8, !tbaa !37, !alias.scope !58
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 %switch.ext
  store i8 0, ptr %i.aq, align 1, !tbaa !38, !alias.scope !58
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !37  ; 7 uses
  %i.as = sub i64 9223372036854775807, %i.ar
  %i.at = icmp ult i64 %i.as, %switch.ext
  br i1 %i.at, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

.invoke:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %switch.lookup
  %i.au = phi ptr [ @.str.15, %switch.lookup ], [ @.str.16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.au) #20
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %switch.lookup
  %i.av = add i64 %i.ar, %switch.ext              ; 9 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.a
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ay = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.ay)
  %.not.i.i.i.i = icmp samesign ugt i64 %i.av, 15
  br i1 %.not.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.az = load i64, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %.not.i.i.i.i55 = icmp ugt i64 %i.av, %i.az
  br i1 %.not.i.i.i.i55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %switch.ext, i1 false)
  %.pre = load ptr, ptr %0, align 8, !tbaa !39
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.bb = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.thread ] ; 2 uses
  %i.bc = icmp slt i64 %i.av, 0
  br i1 %i.bc, label %.invoke, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bd = icmp ugt i64 %i.av, %i.bb
  br i1 %i.bd, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.be = shl nuw i64 %i.bb, 1                    ; 2 uses
  %i.bf = icmp ult i64 %i.av, %i.be
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.be, i64 9223372036854775807)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0.i = phi i64 [ %spec.store.select.i.i, %bb.g ], [ %i.av, %bb.f ], [ %i.av, %bb.e ] ; 2 uses
  %i.bg = add nuw i64 %.0.i, 1                    ; 2 uses
  %i.bh = icmp slt i64 %i.bg, 0
  br i1 %i.bh, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !31

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc31 unwind label %.loopexit.split-lp

.noexc31:                                         ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.h
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #21
          to label %.noexc32 unwind label %.loopexit ; 5 uses

.noexc32:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %.pre.i.pre = load ptr, ptr %0, align 8, !tbaa !39 ; 4 uses
  switch i64 %i.ar, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %.noexc32
  %i.bj = load i8, ptr %.pre.i.pre, align 1, !tbaa !38
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

bb.k:                                             ; preds = %.noexc32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr align 1 %.pre.i.pre, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i: ; preds = %.noexc32, %bb.k, %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %switch.ext, i1 false)
  %i.bl = icmp eq ptr %.pre.i.pre, %i.a
  br i1 %i.bl, label %.noexc19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !38
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %.pre.i.pre, i64 noundef %i.bn) #18
  br label %.noexc19

.noexc19:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i
  store ptr %i.bi, ptr %0, align 8, !tbaa !39
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %.noexc19, %bb.d
  %i.bo = phi ptr [ %i.bi, %.noexc19 ], [ %.pre, %bb.d ]
  store i64 %i.av, ptr %i.b, align 8, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.av
  store i8 0, ptr %i.bp, align 1, !tbaa !38
  %i.bq = load ptr, ptr %2, align 8, !tbaa !39    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.h
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.h, align 8, !tbaa !38
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.bu = load i32, ptr %i.c, align 8, !tbaa !28
  %i.bv = add nsw i32 %i.bu, -1
  %i.bw = icmp eq i32 %.01287, %i.bv
  %.str.6..str.7 = select i1 %i.bw, ptr @.str.6, ptr @.str.7 ; 2 uses
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !37  ; 9 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775807
  br i1 %i.by, label %.invoke139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

.invoke139:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bz = phi ptr [ @.str.15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ @.str.16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.bz) #20
          to label %.cont140 unwind label %.loopexit.split-lp59

.cont140:                                         ; preds = %.invoke139
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ca = add nsw i64 %i.bx, 1                    ; 7 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.a
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.cd = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.cd)
  %.not.i.i.i = icmp eq i64 %i.bx, 15
  br i1 %.not.i.i.i, label %.thread, label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %.not.i.i.i56 = icmp ugt i64 %i.ca, %i.ce
  br i1 %.not.i.i.i56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bx
  %i.cg = load i8, ptr %.str.6..str.7, align 1, !tbaa !38
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !38
  %.pre100 = load ptr, ptr %0, align 8, !tbaa !39
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread
  %i.ch = icmp slt i64 %i.bx, -1
  br i1 %i.ch, label %.invoke139, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34
  %i.ci = icmp ugt i64 %i.ca, %i.ce
  br i1 %i.ci, label %.thread, label %bb.p

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, %bb.n
  %i.cj = phi i64 [ %i.ce, %bb.n ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.ck = shl nuw i64 %i.cj, 1                    ; 2 uses
  %i.cl = icmp ult i64 %i.ca, %i.ck
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread
  %spec.store.select.i.i49 = call i64 @llvm.umin.i64(i64 %i.ck, i64 9223372036854775807)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread, %bb.n
  %.0.i35 = phi i64 [ %spec.store.select.i.i49, %bb.o ], [ %i.ca, %.thread ], [ %i.ca, %bb.n ] ; 2 uses
  %i.cm = add nuw i64 %.0.i35, 1                  ; 2 uses
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i36, !prof !31

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc52 unwind label %.loopexit.split-lp59

.noexc52:                                         ; preds = %bb.q
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i36: ; preds = %bb.p
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #21
          to label %.noexc53 unwind label %.loopexit58 ; 5 uses

.noexc53:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i36
  %.pre.i43.pre = load ptr, ptr %0, align 8, !tbaa !39 ; 4 uses
  switch i64 %i.bx, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i39
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE17_M_default_appendEm:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.w, i1 false), !tbaa !17
  br label %_ZSt27__uninitialized_default_n_aIPN8rawspeed8CFAColorEmS1_ET_S3_T0_RSaIT1_E.exit32

_ZSt27__uninitialized_default_n_aIPN8rawspeed8CFAColorEmS1_ET_S3_T0_RSaIT1_E.exit32: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i30, %_ZNKSt6vectorIN8rawspeed8CFAColorESaIS1_EE12_M_check_lenEmPKc.exit
  %.not36 = icmp eq ptr %i.b, %i.c
  br i1 %.not36, label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN8rawspeed8CFAColorEmS1_ET_S3_T0_RSaIT1_E.exit32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN8rawspeed8CFAColorEmS1_ET_S3_T0_RSaIT1_E.exit32, %bb.f
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE13_M_deallocateEPS1_m.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #18
  br label %_ZNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE13_M_deallocateEPS1_m.exit35

_ZNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE13_M_deallocateEPS1_m.exit35: ; preds = %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.g
  store ptr %i.u, ptr %0, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN8rawspeed8CFAColorEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE13_M_deallocateEPS1_m.exit35, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #22
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !41
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #22
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.27, ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { cold noreturn }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"_ZTSN8rawspeed8iPoint2DE", !8, i64 0, !8, i64 4}
!12 = !{!11, !8, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"_ZTSN8rawspeed8CFAColorE", !7, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!19 = !{!18, !14, i64 0}
!20 = !{!18, !14, i64 16}
!21 = !{!18, !14, i64 8}
!22 = !{!11, !8, i64 4}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE12_Vector_implE", !18, i64 0}
!25 = !{!"_ZTSSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE", !24, i64 0}
!26 = !{!"_ZTSSt6vectorIN8rawspeed8CFAColorESaIS1_EE", !25, i64 0}
!27 = !{!"_ZTSN8rawspeed16ColorFilterArrayE", !26, i64 0, !11, i64 24}
!28 = !{!27, !8, i64 24}
!29 = !{!27, !8, i64 28}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = !{!"p1 omnipotent char", !14, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !32, i64 0}
!34 = !{!33, !32, i64 0}
!35 = !{!"long", !7, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !33, i64 0, !35, i64 8, !7, i64 16}
!37 = !{!36, !35, i64 8}
!38 = !{!7, !7, i64 0}
!39 = !{!36, !32, i64 0}
!40 = !{!"vtable pointer", !6, i64 0}
!41 = !{!40, !40, i64 0}
!42 = distinct !{!42, !23}
!43 = distinct !{!43, !30}
!44 = distinct !{!44, !23}
!45 = distinct !{!45, !23}
!46 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!47 = distinct !{!47, !30}
!48 = distinct !{!48, !23}
!49 = distinct !{!49, !23}
!50 = distinct !{!50, !23, !54}
!53 = distinct !{!53, !23}
!54 = !{!"llvm.loop.unswitch.partial.disable"}
!56 = distinct !{!56, i1 false, !"_ZN8rawspeed16ColorFilterArray13colorToStringB5cxx11ENS_8CFAColorE"}
!57 = distinct !{!57, !56, !"_ZN8rawspeed16ColorFilterArray13colorToStringB5cxx11ENS_8CFAColorE: argument 0"}
!58 = !{!57}
end_hunk_1
