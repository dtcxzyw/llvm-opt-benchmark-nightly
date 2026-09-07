Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/syn-f27044607922c45d.syn.c23b03cfc97b9eca-cgu.07?download=true
inline.NumInlined: 93
inline.NumDeleted: 10
begin_hunk_0_@_RNvMNtNtCsgFSQ9XOTBNe_3syn4stmt7parsingNtB4_5Block12parse_within:bb.a

.backedge.backedge:                               ; preds = %bb.af, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtE4pushBJ_.exit
  br label %.backedge

bb.ag:                                            ; preds = %bb.af
  invoke void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5errorReEB8_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 8 %1, ptr nonnull @5, i64 30)
          to label %bb.ah unwind label %.body11.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.ak

bb.ai:                                            ; preds = %bb.u, %bb.v, %bb.ab
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtEBF_(ptr nonnull align 8 %i.g) #27
          to label %.body unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ak:                                            ; preds = %.invoke, %bb.ah
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtEEB1c_(ptr nonnull align 8 %i.l)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.n
  ret void

bb.am:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc11encode_utf8CsgFSQ9XOTBNe_3syn(i32 %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 2048                    ; 2 uses
  %i.c = icmp ult i32 %0, 65536                   ; 2 uses
  %..i = select i1 %i.c, i64 3, i64 4
  %.sroa.0.0.i = select i1 %i.b, i64 2, i64 %..i  ; 2 uses
  %i.d = icmp ult i64 %2, %.sroa.0.0.i
  br i1 %i.d, label %bb.h, label %bb.c

.thread.i:                                        ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.h, label %.thread7.i

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i32 %0 to i8
  %i.g = and i8 %i.f, 63
  %i.h = or disjoint i8 %i.g, -128                ; 3 uses
  %i.i = lshr i32 %0, 6
  %i.j = trunc i32 %i.i to i8                     ; 2 uses
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 2 uses
  %i.m = lshr i32 %0, 12
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128
  %i.q = lshr i32 %0, 18
  %i.r = trunc i32 %i.q to i8
  %i.s = or i8 %i.r, -16
  br i1 %i.b, label %bb.d, label %bb.e

.thread7.i:                                       ; preds = %.thread.i
  %i.t = trunc nuw nsw i32 %0 to i8
  store i8 %i.t, ptr %1, align 1
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_rawCsgFSQ9XOTBNe_3syn.exit

bb.d:                                             ; preds = %bb.c
  %i.u = or disjoint i8 %i.j, -64
  store i8 %i.u, ptr %1, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.h, ptr %i.v, align 1
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_rawCsgFSQ9XOTBNe_3syn.exit

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.n, -32
  store i8 %i.w, ptr %1, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.l, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.h, ptr %i.y, align 1
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_rawCsgFSQ9XOTBNe_3syn.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.s, ptr %1, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.p, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.l, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.h, ptr %i.ab, align 1
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_rawCsgFSQ9XOTBNe_3syn.exit

bb.h:                                             ; preds = %.thread.i, %bb.b
  %.sroa.0.06.i = phi i64 [ 1, %.thread.i ], [ %.sroa.0.0.i, %bb.b ]
  tail call fastcc void @_RNvNvNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw8do_panic7runtimeCsgFSQ9XOTBNe_3syn(i32 %0, i64 %.sroa.0.06.i, i64 %2) #31
  unreachable

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_rawCsgFSQ9XOTBNe_3syn.exit: ; preds = %.thread7.i, %bb.d, %bb.f, %bb.g
  %.sroa.0.059.i = phi i64 [ 1, %.thread7.i ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ac = insertvalue { ptr, i64 } poison, ptr %1, 0
  %i.ad = insertvalue { ptr, i64 } %i.ac, i64 %.sroa.0.059.i, 1
  ret { ptr, i64 } %i.ad
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc13is_whitespaceCsgFSQ9XOTBNe_3syn(i32 %0) unnamed_addr #1 {
bb.a:
  %switch.tableidx = add i32 %0, -9               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388639, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 133
  br i1 %i.b, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookupCsgFSQ9XOTBNe_3syn(i32 %0) #26
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i64 1, 5) i64 @_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc8len_utf8CsgFSQ9XOTBNe_3syn(i32 %0) unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %_RNvNtNtCshzWfHUSfYae_4core4char7methods8len_utf8CsgFSQ9XOTBNe_3syn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 2048
  br i1 %i.b, label %_RNvNtNtCshzWfHUSfYae_4core4char7methods8len_utf8CsgFSQ9XOTBNe_3syn.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i32 %0, 65536
  %..i = select i1 %i.c, i64 3, i64 4
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods8len_utf8CsgFSQ9XOTBNe_3syn.exit

_RNvNtNtCshzWfHUSfYae_4core4char7methods8len_utf8CsgFSQ9XOTBNe_3syn.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i32, i32 } @_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc8to_digitCsgFSQ9XOTBNe_3syn(i32 %0, i32 %1) unnamed_addr #1 {
bb.a:
  %i.a = add i32 %1, -2
  %or.cond = icmp ult i32 %i.a, 35
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr nonnull @9, ptr nonnull inttoptr (i64 143 to ptr), ptr nonnull align 8 @11) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %0, 57
  %i.c = icmp samesign ugt i32 %1, 10
  %or.cond1 = and i1 %i.b, %i.c
  %i.d = add i32 %0, -65
  %i.e = and i32 %i.d, -33
  %i.f = add nuw nsw i32 %i.e, 10
  %i.g = add i32 %0, -48
  %.sroa.02.0 = select i1 %or.cond1, i32 %i.f, i32 %i.g ; 2 uses
  %i.h = icmp ult i32 %.sroa.02.0, %1
  %.sroa.0.0 = zext i1 %i.h to i32
  %i.i = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.j = insertvalue { i32, i32 } %i.i, i32 %.sroa.02.0, 1
  ret { i32, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE17extend_from_sliceCsgFSQ9XOTBNe_3syn(ptr align 8 %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs1K5DUQUZc67_11proc_macro2(ptr align 8 %0, ptr %1, i64 %2) #26
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE6resizeCsgFSQ9XOTBNe_3syn(ptr align 8 %0, i64 %1, i8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE8truncateCsgFSQ9XOTBNe_3syn.exit

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE8truncateCsgFSQ9XOTBNe_3syn.exit: ; preds = %bb.a
  store i64 %1, ptr %i.b, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.c                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCseVpsqJvcPM7_9addr2line(ptr nonnull align 8 %0, i64 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load i64, ptr %i.b, align 8              ; 3 uses
  %i.i = getelementptr i8, ptr %i.g, i64 %i.h     ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = icmp ugt i64 %i.e, 1
  br i1 %i.k, label %.lr.ph.i.preheader, label %._crit_edge.thread.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.l = add i64 %i.e, -1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 %2, i64 %i.l, i1 false)
  %i.m = add i64 %i.h, %1
  %i.n = xor i64 %i.c, -1
  %i.o = add i64 %i.m, %i.n                       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.o
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.lr.ph.i.preheader, %bb.b
  %.sroa.0.0.lcssa12.i = phi ptr [ %i.i, %bb.b ], [ %scevgep, %.lr.ph.i.preheader ]
  %i.p = phi i64 [ %i.h, %bb.b ], [ %i.o, %.lr.ph.i.preheader ]
  store i8 %2, ptr %.sroa.0.0.lcssa12.i, align 1
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.j, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsbSS6DM8SDEO_5alloc3vec15set_len_on_drop12SetLenOnDropECsgFSQ9XOTBNe_3syn(ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE8truncateCsgFSQ9XOTBNe_3syn.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE11extend_withCsgFSQ9XOTBNe_3syn(ptr align 8 %0, i64 %1, i8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCseVpsqJvcPM7_9addr2line(ptr align 8 %0, i64 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 4 uses
  store ptr %i.d, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.g, align 8
  %i.h = icmp ugt i64 %1, 1
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = add i64 %1, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %1, 5
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.j = getelementptr i8, ptr %i.f, i64 %n.vec   ; 2 uses
  %i.k = or disjoint i64 %n.vec, 1
  %i.l = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.e, i64 0
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %2, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.l, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi15 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.f, i64 %index ; 2 uses
  %i.m = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %broadcast.splat, ptr %next.gep, align 1
  store <2 x i8> %broadcast.splat, ptr %i.m, align 1
  %i.n = add <2 x i64> %vec.phi, splat (i64 1)    ; 2 uses
  %i.o = add <2 x i64> %vec.phi15, splat (i64 1)  ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.o, %i.n
  %i.q = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi i64 [ %i.e, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  %.sroa.0.09.ph = phi ptr [ %i.f, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  %.sroa.03.08.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph, %middle.block, %._crit_edge
  %.sroa.0.0.lcssa12 = phi ptr [ %i.f, %._crit_edge ], [ %i.j, %middle.block ], [ %i.v, %.lr.ph ]
  %i.r = phi i64 [ %i.e, %._crit_edge ], [ %i.q, %middle.block ], [ %i.w, %.lr.ph ]
  store i8 %2, ptr %.sroa.0.0.lcssa12, align 1
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %._crit_edge.thread
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsbSS6DM8SDEO_5alloc3vec15set_len_on_drop12SetLenOnDropECsgFSQ9XOTBNe_3syn(ptr nonnull align 8 %i.a)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader17, %.lr.ph
  %i.t = phi i64 [ %i.w, %.lr.ph ], [ %.ph, %.lr.ph.preheader17 ]
  %.sroa.0.09 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.0.09.ph, %.lr.ph.preheader17 ] ; 2 uses
  %.sroa.03.08 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.03.08.ph, %.lr.ph.preheader17 ]
  %i.u = add nuw i64 %.sroa.03.08, 1              ; 2 uses
  store i8 %2, ptr %.sroa.0.09, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.09, i64 1 ; 2 uses
  %i.w = add i64 %i.t, 1                          ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !6
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeE4pushBJ_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeE8push_mutBJ_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeE8grow_oneBQ_(ptr nonnull align 8 %0)
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeE8push_mutBJ_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEBF_(ptr align 8 %1) #27
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeE8push_mutBJ_.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [256 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.i, ptr noundef nonnull align 8 dereferenceable(256) %1, i64 256, i1 false)
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeE8push_mutBJ_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeE8grow_oneBQ_(ptr nonnull align 8 %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [256 x i8], ptr %i.f, i64 %i.b ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.g, ptr noundef nonnull align 8 dereferenceable(256) %1, i64 256, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret ptr %i.g

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEBF_(ptr align 8 %1) #27
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn4data5FieldE4pushBJ_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn4data5FieldE8push_mutBJ_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsgFSQ9XOTBNe_3syn4data5FieldE8grow_oneBQ_(ptr nonnull align 8 %0)
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn4data5FieldE8push_mutBJ_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4data5FieldEBF_(ptr align 8 %1) #27
          to label %bb.e unwind label %bb.d

end_hunk_0
