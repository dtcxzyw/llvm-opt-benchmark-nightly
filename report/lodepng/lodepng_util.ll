Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7lodepng9getChunksEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEPS0_IS0_IhSaIhEESaISB_EERKSB_:.preheader
  %i.bu = icmp samesign ugt i64 %i.bq, 1
  br i1 %i.bu, label %bb.m, label %bb.o, !prof !40

bb.m:                                             ; preds = %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr align 1 %.02891, i64 %i.bq, i1 false)
  br label %bb.r

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr null, i64 %i.bq ; 2 uses
  store ptr %i.bv, ptr %i.k, align 8, !tbaa !39
  br label %bb.r

bb.o:                                             ; preds = %.noexc4.i
  %i.bw = load i8, ptr %.02891, align 1, !tbaa !20
  store i8 %i.bw, ptr %i.bs, align 1, !tbaa !20
  br label %bb.r

.thread:                                          ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !37    ; 3 uses
  %.not.i.i5.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i5.i, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %.pre to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ca) #29
  br label %.body

bb.r:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cb = phi ptr [ %i.bs, %bb.m ], [ null, %bb.n ], [ %i.bs, %bb.o ]
  %i.cc = phi ptr [ %i.bt, %bb.m ], [ %i.bv, %bb.n ], [ %i.bt, %bb.o ] ; 3 uses
  store ptr %i.cc, ptr %i.l, align 8, !tbaa !41
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.aw ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !42 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !45
  %.not.i.i = icmp eq ptr %i.cf, %i.ch
  br i1 %.not.i.i, label %bb.s, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIS_IhSaIhEESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.r
  store ptr %i.cb, ptr %i.cf, align 8, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.cc, ptr %i.ci, align 8, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %i.cc, ptr %i.cj, align 8, !tbaa !39
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !42
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE9push_backEOS1_.exit unwind label %bb.u

_ZNSt6vectorIS_IhSaIhEESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.s
  %.pr = load ptr, ptr %4, align 8, !tbaa !37     ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE9push_backEOS1_.exit
  %i.cl = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %.pr to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.co) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE9push_backEOS1_.exit.thread, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE9push_backEOS1_.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt0

bb.u:                                             ; preds = %bb.s
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %4, align 8, !tbaa !37    ; 3 uses
  %.not.i.i.i51 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i51, label %.body, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #29
  br label %.body

.body:                                            ; preds = %.thread, %bb.v, %bb.u, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %bb.p ], [ %i.cp, %bb.v ], [ %lpad.loopexit.split-lp, %bb.q ], [ %i.cp, %bb.u ], [ %lpad.loopexit, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt0: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread59
  %.227.jt0 = phi i32 [ %.02592, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58 ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread59 ]
  %i.cv = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.i
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.jt0

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt1: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread61
  %i.cx = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.i
  br i1 %i.cy, label %.loopexit64.sink.split, label %.loopexit64.sink.split.sink.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt3: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread60
  %i.cz = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.i
  br i1 %i.da, label %.loopexit64.sink.split, label %.loopexit64.sink.split.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.jt0: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt0
  %i.db = load i64, ptr %i.i, align 8, !tbaa !20
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.dc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.dd = icmp ult ptr %i.ac, %i.e
  %i.de = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.df = sub i64 %i.h, %i.de
  %i.dg = icmp sgt i64 %i.df, 7
  %i.dh = and i1 %i.dd, %i.dg
  br i1 %i.dh, label %.lr.ph, label %.loopexit64

bb.w:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.aj, %bb.f ]
  %i.di = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.i
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.w
  %i.dk = load i64, ptr %i.i, align 8, !tbaa !20
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  resume { ptr, i32 } %.pn.pn

.loopexit64.sink.split.sink.split:                ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt1
  %.sink = phi ptr [ %i.cx, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt1 ], [ %i.cz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt3 ]
  %.232.ph.ph = phi i32 [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt1 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt3 ]
  %i.dm = load i64, ptr %i.i, align 8, !tbaa !20
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dn) #29
  br label %.loopexit64.sink.split

.loopexit64.sink.split:                           ; preds = %.loopexit64.sink.split.sink.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt1
  %.232.ph = phi i32 [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt1 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.jt3 ], [ %.232.ph.ph, %.loopexit64.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.loopexit64

.loopexit64:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0, %.preheader, %.loopexit64.sink.split
  %.232 = phi i32 [ %.232.ph, %.loopexit64.sink.split ], [ 0, %.preheader ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt0 ]
  ret i32 %.232
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN7lodepng12insertChunksERSt6vectorIhSaIhEEPKS0_IS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [5 x i8], align 1                 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::vector", align 8       ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = icmp ult ptr %i.f, %i.d
  %i.i = ptrtoint ptr %i.f to i64                 ; 5 uses
  %i.j = sub i64 %i.g, %i.i
  %i.k = icmp sgt i64 %i.j, 7
  %i.l = and i1 %i.h, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %invariant.op = sub i64 8, %i.i
  %invariant.op238.a = sub i64 8, %i.i
  %invariant.op239 = sub i64 8, %i.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.o = phi i64 [ %i.i, %.lr.ph ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 3 uses
  %.081173 = phi ptr [ %i.f, %.lr.ph ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 2 uses
  %.083172 = phi i64 [ 0, %.lr.ph ], [ %.285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 5 uses
  %.086171 = phi i64 [ 0, %.lr.ph ], [ %.187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 4 uses
  %.090170 = phi i64 [ 0, %.lr.ph ], [ %.191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @_Z18lodepng_chunk_typePcPKh(ptr noundef nonnull %i.b, ptr noundef %.081173)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %i.m, ptr %2, align 8, !tbaa !21
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.p, ptr %i.a, align 8, !tbaa !15
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.r, ptr %2, align 8, !tbaa !23
  %i.s = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.s, ptr %i.m, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.b
  %i.t = phi ptr [ %i.r, %.noexc ], [ %i.m, %bb.b ] ; 2 uses
  switch i64 %i.p, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.u = load i8, ptr %i.b, align 1, !tbaa !20
  store i8 %i.u, ptr %i.t, align 1, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.b, i64 %i.p, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  store i64 %i.v, ptr %i.n, align 8, !tbaa !25
  %i.w = load ptr, ptr %2, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 0, ptr %i.x, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.y = load i64, ptr %i.n, align 8, !tbaa !25
  %.not = icmp eq i64 %i.y, 4
  %i.z = load ptr, ptr %2, align 8, !tbaa !23     ; 5 uses
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge

bb.f:                                             ; preds = %.noexc.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.ab = load i32, ptr %i.z, align 1
  %i.ac = icmp ne i32 %i.ab, 1163152464
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.af = icmp eq i64 %.083172, 0
  %.reass.reass = add i64 %i.o, %invariant.op239
  %spec.select185.a = select i1 %i.af, i64 %.reass.reass, i64 %.083172
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.m
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !20
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.al = load i32, ptr %i.z, align 1
  %i.am = icmp ne i32 %i.al, 1413563465
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108
  %i.ap = icmp eq i64 %.083172, 0
  %.reass.reass.reass = add i64 %i.o, %invariant.op238.a ; 2 uses
  %.184 = select i1 %i.ap, i64 %.reass.reass.reass, i64 %.083172
  %i.aq = icmp eq i64 %.086171, 0
  %spec.select = select i1 %i.aq, i64 %.reass.reass.reass, i64 %.086171
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108
  %i.ar = load i32, ptr %i.z, align 1
  %i.as = icmp ne i32 %i.ar, 1145980233
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  %i.av = icmp eq i64 %.090170, 0
  %or.cond = select i1 %i.au, i1 %i.av, i1 false
  %.reass218.reass = add i64 %i.o, %invariant.op
  %spec.select186 = select i1 %or.cond, i64 %.reass218.reass, i64 %.090170
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110, %bb.g, %bb.i
  %.191 = phi i64 [ %.090170, %bb.i ], [ %.090170, %bb.g ], [ %spec.select186, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110 ] ; 2 uses
  %.187 = phi i64 [ %spec.select, %bb.i ], [ %.086171, %bb.g ], [ %.086171, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110 ] ; 2 uses
  %.285 = phi i64 [ %.184, %bb.i ], [ %spec.select185.a, %bb.g ], [ %.083172, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110 ] ; 2 uses
  %i.aw = invoke noundef ptr @_Z24lodepng_chunk_next_constPKhS0_(ptr noundef %.081173, ptr noundef nonnull %i.d)
          to label %bb.j unwind label %bb.h       ; 3 uses

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread
  %i.ax = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.m
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.j
  %i.az = load i64, ptr %i.m, align 8, !tbaa !20
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.bb = icmp ult ptr %i.aw, %i.d
  %i.bc = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.bd = sub i64 %i.g, %i.bc
  %i.be = icmp sgt i64 %i.bd, 7
  %i.bf = and i1 %i.bb, %i.be
  br i1 %i.bf, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn104 = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ag, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.ab

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %.pre = load ptr, ptr %0, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.bg = phi ptr [ %i.e, %bb.a ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.090.lcssa = phi i64 [ 0, %bb.a ], [ %.191, %._crit_edge.loopexit ] ; 2 uses
  %.086.lcssa = phi i64 [ 0, %bb.a ], [ %.187, %._crit_edge.loopexit ] ; 2 uses
  %.083.lcssa = phi i64 [ 0, %bb.a ], [ %.285, %._crit_edge.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 %.083.lcssa
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr null, ptr %i.bg, ptr %i.bi)
          to label %.preheader154 unwind label %bb.k

.preheader154:                                    ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !42
  %i.bl = load ptr, ptr %1, align 8, !tbaa !47    ; 2 uses
  %.not189.a = icmp eq ptr %i.bk, %i.bl
  br i1 %.not189.a, label %._crit_edge178, label %.lr.ph177

._crit_edge178:                                   ; preds = %bb.l, %.preheader154
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.bn = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %.083.lcssa
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %.086.lcssa
  %i.bq = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.br = ptrtoint ptr %i.bm to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.bt
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.bu, ptr %i.bo, ptr %i.bp)
          to label %.preheader153 unwind label %bb.n

.preheader153:                                    ; preds = %._crit_edge178
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !42
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !47 ; 2 uses
  %.not190.a = icmp eq ptr %i.bx, %i.by
  br i1 %.not190.a, label %._crit_edge181, label %.lr.ph180

bb.k:                                             ; preds = %._crit_edge
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph177:                                        ; preds = %.preheader154, %bb.l
  %i.ca = phi ptr [ %i.cn, %bb.l ], [ %i.bl, %.preheader154 ]
  %.0100176 = phi i64 [ %i.cl, %bb.l ], [ 0, %.preheader154 ] ; 2 uses
  %i.cb = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.0100176 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.ch = ptrtoint ptr %i.cb to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = getelementptr inbounds i8, ptr %i.cg, i64 %i.cj
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEvNS4_IPhS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ck, ptr %i.cd, ptr %i.cf)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.lr.ph177
  %i.cl = add nuw i64 %.0100176, 1                ; 2 uses
  %i.cm = load ptr, ptr %i.bj, align 8, !tbaa !42
  %i.cn = load ptr, ptr %1, align 8, !tbaa !47    ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = sdiv exact i64 %i.cq, 24
  %i.cs = icmp ult i64 %i.cl, %i.cr
  br i1 %i.cs, label %.lr.ph177, label %._crit_edge178, !llvm.loop !48

bb.m:                                             ; preds = %.lr.ph177
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

._crit_edge181:                                   ; preds = %bb.o, %.preheader153
  %i.cu = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.cv = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %.086.lcssa
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 %.090.lcssa
  %i.cy = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.cz = ptrtoint ptr %i.cu to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %i.db
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.dc, ptr %i.cw, ptr %i.cx)
          to label %.preheader unwind label %bb.q

.preheader:                                       ; preds = %._crit_edge181
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !42
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !47 ; 2 uses
  %.not191 = icmp eq ptr %i.df, %i.dg
  br i1 %.not191, label %._crit_edge184, label %.lr.ph183

bb.n:                                             ; preds = %._crit_edge178
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph180:                                        ; preds = %.preheader153, %bb.o
  %i.di = phi ptr [ %i.dv, %bb.o ], [ %i.by, %.preheader153 ]
  %.0101179 = phi i64 [ %i.dt, %bb.o ], [ 0, %.preheader153 ] ; 2 uses
  %i.dj = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %.0101179 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !8
  %i.do = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.dp = ptrtoint ptr %i.dj to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = getelementptr inbounds i8, ptr %i.do, i64 %i.dr
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEvNS4_IPhS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ds, ptr %i.dl, ptr %i.dn)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.lr.ph180
  %i.dt = add nuw i64 %.0101179, 1                ; 2 uses
  %i.du = load ptr, ptr %i.bw, align 8, !tbaa !42
  %i.dv = load ptr, ptr %i.bv, align 8, !tbaa !47 ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = sdiv exact i64 %i.dy, 24
  %i.ea = icmp ult i64 %i.dt, %i.dz
  br i1 %i.ea, label %.lr.ph180, label %._crit_edge181, !llvm.loop !49

bb.p:                                             ; preds = %.lr.ph180
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

._crit_edge184:                                   ; preds = %bb.r, %.preheader
  %i.ec = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.ed = load ptr, ptr %0, align 8, !tbaa !8
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %.090.lcssa
  %i.ef = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.eg = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.eh = ptrtoint ptr %i.ec to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 %i.ej
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ek, ptr %i.ee, ptr %i.ef)
          to label %bb.t unwind label %bb.w

bb.q:                                             ; preds = %._crit_edge181
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph183:                                        ; preds = %.preheader, %bb.r
  %i.em = phi ptr [ %i.ez, %bb.r ], [ %i.dg, %.preheader ]
  %.089182 = phi i64 [ %i.ex, %bb.r ], [ 0, %.preheader ] ; 2 uses
  %i.en = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %.089182 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !8
  %i.es = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.et = ptrtoint ptr %i.en to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = getelementptr inbounds i8, ptr %i.es, i64 %i.ev
end_hunk_0
