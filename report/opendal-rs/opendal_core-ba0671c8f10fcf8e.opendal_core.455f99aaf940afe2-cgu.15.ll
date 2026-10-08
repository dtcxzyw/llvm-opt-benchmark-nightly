Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.15?download=true
inline.NumInlined: 678
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNCNvXs6_NtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utilsINtB7_8FourWaysINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtB9_3oio4list3api7ListDynEL_ENtNtNtBb_6layers8simulate18ServicerFlatListerINtNtB1L_11prefix_list12PrefixListerB18_EIB31_B2h_EENtB1J_4List4next0Bb_:bb.a
  unreachable

.body42:                                          ; preds = %bb.bq, %bb.bp
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr = load i8, ptr %i.dm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.879)
  %cond.i27 = icmp eq i8 %.pr, 3
  br i1 %cond.i27, label %bb.bl, label %.body

bb.cp:                                            ; preds = %bb.cb
  %.sroa.077.0.copyload78.pre = load i64, ptr %i.c, align 8, !noalias !804 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.879, ptr noundef nonnull align 8 dereferenceable(80) %i.dy, i64 80, i1 false), !noalias !804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !802
  store i8 1, ptr %i.dr, align 8, !noalias !802
  %i.fd = icmp eq i64 %.sroa.077.0.copyload78.pre, -2
  br i1 %i.fd, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.thread89, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.879)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.cr:                                            ; preds = %.thread118, %bb.cp
  %.sroa.077.0.copyload78120 = phi i64 [ %i.dx, %.thread118 ], [ %.sroa.077.0.copyload78.pre, %bb.cp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.584, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.879, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.879)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs6_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeNtB7_14CompleteListerNtNtNtNtNtBb_3raw3oio4list3api4List4next0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.789.i.sroa.5 = alloca [25 x i8], align 8 ; 6 uses
  %.sroa.789.i.sroa.7 = alloca [6 x i8], align 2  ; 6 uses
  %i.c = alloca [256 x i8], align 8               ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.583.i.sroa.5 = alloca [25 x i8], align 8 ; 6 uses
  %.sroa.583.i.sroa.7 = alloca [6 x i8], align 2  ; 6 uses
  %i.k = alloca [88 x i8], align 8                ; 15 uses
  %i.l = alloca [40 x i8], align 8                ; 17 uses
  %i.m = alloca [240 x i8], align 8               ; 15 uses
  %i.n = alloca [240 x i8], align 8               ; 16 uses
  %i.o = alloca [16 x i8], align 8                ; 10 uses
  %.sroa.1375.sroa.0 = alloca [25 x i8], align 8  ; 3 uses
  %.sroa.1375.sroa.4 = alloca [6 x i8], align 2   ; 3 uses
  %i.p = alloca [88 x i8], align 8                ; 14 uses
  %.sroa.964.sroa.0.sroa.6 = alloca [25 x i8], align 8 ; 7 uses
  %.sroa.964.sroa.7 = alloca [6 x i8], align 2    ; 7 uses
  %.sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.sroa.9 = alloca [25 x i8], align 8 ; 9 uses
  %.sroa.16 = alloca [6 x i8], align 2            ; 9 uses
  %.sroa.7.sroa.0 = alloca [25 x i8], align 8     ; 2 uses
  %.sroa.7.sroa.3 = alloca [6 x i8], align 2      ; 2 uses
  %i.q = alloca [88 x i8], align 8                ; 15 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !range !16, !noundef !5
  switch i8 %i.s, label %default.unreachable173 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.cl
    i8 4, label %bb.e
  ]

default.unreachable173:                           ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  store ptr %i.v, ptr %1, align 8
  br label %bb.ck

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #19
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #19
  unreachable

.body:                                            ; preds = %bb.by, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit65.i
  %i.w = phi ptr [ %i.gc, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit65.i ], [ %i.x, %bb.by ]
  %.pn16 = phi { ptr, i32 } [ %.pn24.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit65.i ], [ %i.go, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.964.sroa.0.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.964.sroa.7)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMs5_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeNtBJ_14CompleteLister27complete_unknown_entry_mode0EBN_(ptr noundef nonnull align 8 %i.w) #24
          to label %bb.cb unwind label %bb.db

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 250
  %.pre156 = load i8, ptr %.phi.trans.insert, align 2, !range !13, !noalias !925
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.964.sroa.0.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.964.sroa.7)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.789.i.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.789.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.583.i.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.583.i.sroa.7)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 250 ; 2 uses
  switch i8 %.pre156, label %default.unreachable173 [
    i8 0, label %bb.f
    i8 1, label %bb.af
    i8 2, label %bb.ag
    i8 3, label %bb.g
  ]

bb.f:                                             ; preds = %.thread, %bb.e
  %i.z = phi ptr [ %i.id, %.thread ], [ %i.y, %bb.e ] ; 6 uses
  %i.aa = phi ptr [ %i.ic, %.thread ], [ %i.x, %bb.e ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 249 ; 3 uses
  store i8 0, ptr %i.ac, align 1, !noalias !925
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !925, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  store i8 1, ptr %i.ab, align 8, !noalias !925
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i64 40, i1 false), !noalias !925
  %i.ag = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af)
          to label %bb.i unwind label %bb.h, !noalias !926 ; 2 uses

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !925
  br label %bb.ah

bb.h:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body51.i

bb.i:                                             ; preds = %bb.f
  %i.ai = extractvalue { ptr, i64 } %i.ag, 0
  %i.aj = extractvalue { ptr, i64 } %i.ag, 1      ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.experimental.noalias.scope.decl(metadata !927)
  call void @llvm.experimental.noalias.scope.decl(metadata !928)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !929
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.l, !noalias !926

.noexc.i:                                         ; preds = %bb.i
  %i.al = load i64, ptr %i.b, align 8, !range !11, !noalias !929, !noundef !5
  %i.am = trunc nuw i64 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !18, !noalias !929, !noundef !5 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.am, label %bb.j, label %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, !prof !6

bb.j:                                             ; preds = %.noexc.i
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !929
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.ao, i64 %i.aq) #20
          to label %.noexc33.i unwind label %bb.l, !noalias !926

.noexc33.i:                                       ; preds = %bb.j
  unreachable

_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i: ; preds = %.noexc.i
  %i.ar = load ptr, ptr %i.ap, align 8, !noalias !929, !nonnull !5, !noundef !5 ; 2 uses
  %i.as = icmp samesign ule i64 %i.aj, %i.ao
  call void @llvm.assume(i1 %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !929
  %.not.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %i.ai, i64 range(i64 0, -9223372036854775808) %i.aj, i1 false), !noalias !930
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body51.i

bb.m:                                             ; preds = %bb.k, %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i
  store i64 %i.ao, ptr %i.ak, align 8, !alias.scope !931, !noalias !932
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !931, !noalias !932
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  store i64 %i.aj, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !931, !noalias !932
  %.val.i = load ptr, ptr %i.af, align 8, !noalias !925, !noundef !5 ; 3 uses
  %i.au = getelementptr i8, ptr %1, i64 112
  %.val26.i = load i64, ptr %i.au, align 8, !noalias !925 ; 6 uses
  %.not.i.i.i34.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i34.i, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  switch i64 %.val26.i, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i.i.i [
    i64 0, label %bb.u
    i64 1, label %.invoke.i
  ], !prof !933

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i.i.i: ; preds = %bb.n
  %.sroa.02.0.copyload.i.i.i.i.i = load i16, ptr %i.av, align 1, !alias.scope !934, !noalias !926 ; 3 uses
  %i.aw = and i16 %.sroa.02.0.copyload.i.i.i.i.i, 64
  %i.ax = icmp eq i16 %i.aw, 0
  br i1 %i.ax, label %bb.u, label %bb.o

bb.o:                                             ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i.i.i
  %i.ay = and i16 %.sroa.02.0.copyload.i.i.i.i.i, 63 ; 2 uses
  %i.az = icmp eq i16 %i.ay, 0
  br i1 %i.az, label %.split9.i.i.i.i, label %.split.i.i.i.i

.split9.i.i.i.i:                                  ; preds = %bb.o
  %.not.i.i.i.i.i = icmp samesign ult i64 %.val26.i, 4
  br i1 %.not.i.i.i.i.i, label %.invoke.i, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i.i.i, !prof !6

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i.i.i: ; preds = %.split9.i.i.i.i
  %i.ba = call range(i16 1, 11) i16 @llvm.ctpop.i16(i16 %.sroa.02.0.copyload.i.i.i.i.i)
  %i.bb = shl nuw nsw i16 %i.ba, 1
  %narrow.i.i.i.i = add nuw nsw i16 %i.bb, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i, i64 18
  br label %bb.p

.split.i.i.i.i:                                   ; preds = %bb.o
  %i.bd = call range(i16 1, 7) i16 @llvm.ctpop.i16(i16 %i.ay)
  %i.be = shl nuw nsw i16 %i.bd, 1
  %i.bf = zext nneg i16 %i.be to i64              ; 4 uses
  %i.bg = add nuw nsw i64 %i.bf, 2                ; 3 uses
  %.not.i14.i.i.i.i = icmp samesign ugt i64 %i.bg, %.val26.i
  br i1 %.not.i14.i.i.i.i, label %.invoke.i, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit16.i.i.i.i, !prof !6

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit16.i.i.i.i: ; preds = %.split.i.i.i.i
  %i.bh = add nuw nsw i64 %i.bf, 4                ; 2 uses
  %.not.i17.i.i.i.i = icmp samesign ugt i64 %i.bh, %.val26.i
  br i1 %.not.i17.i.i.i.i, label %.invoke.i, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit19.i.i.i.i, !prof !6

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit19.i.i.i.i: ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit16.i.i.i.i
  %i.bi = getelementptr i8, ptr %i.av, i64 %i.bf  ; 2 uses
  %.sroa.02.0.copyload.i15.i.i.i.i = load i16, ptr %i.bi, align 1, !alias.scope !935, !noalias !926
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  br label %bb.p

bb.p:                                             ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit19.i.i.i.i, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i.i.i
  %phi.call.in.in.i.i.i.i = phi ptr [ %i.bj, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit19.i.i.i.i ], [ %i.bc, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i.i.i ]
  %.sroa.05.0.in.i.i.i.i = phi i16 [ %.sroa.02.0.copyload.i15.i.i.i.i, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit19.i.i.i.i ], [ %narrow.i.i.i.i, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i.i.i ] ; 2 uses
  %.sroa.05.0.i.i.i.i = zext i16 %.sroa.05.0.in.i.i.i.i to i64 ; 3 uses
  %phi.call.in.i.i.i.i = load i16, ptr %phi.call.in.in.i.i.i.i, align 1, !noalias !926 ; 2 uses
  %phi.call.i.i.i.i = zext i16 %phi.call.in.i.i.i.i to i64 ; 3 uses
  %i.bk = icmp ult i16 %phi.call.in.i.i.i.i, %.sroa.05.0.in.i.i.i.i
  %.not12.i.i.i.i = icmp ult i64 %.val26.i, %phi.call.i.i.i.i
  %or.cond.i.i.i.i = or i1 %i.bk, %.not12.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %.invoke.i, label %bb.r, !prof !936

.invoke.i:                                        ; preds = %bb.p, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit16.i.i.i.i, %.split.i.i.i.i, %.split9.i.i.i.i, %bb.n
  %i.bl = phi i64 [ %i.bg, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit16.i.i.i.i ], [ %i.bf, %.split.i.i.i.i ], [ 2, %.split9.i.i.i.i ], [ 0, %bb.n ], [ %.sroa.05.0.i.i.i.i, %bb.p ]
  %i.bm = phi i64 [ %i.bh, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit16.i.i.i.i ], [ %i.bg, %.split.i.i.i.i ], [ 4, %.split9.i.i.i.i ], [ 2, %bb.n ], [ %phi.call.i.i.i.i, %bb.p ]
  %i.bn = phi ptr [ @85, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit16.i.i.i.i ], [ @85, %.split.i.i.i.i ], [ @85, %.split9.i.i.i.i ], [ @86, %bb.n ], [ @76, %bb.p ]
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %i.bl, i64 noundef %i.bm, i64 noundef %.val26.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #19
          to label %.cont.i unwind label %bb.q, !noalias !926

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.q:                                             ; preds = %bb.s, %bb.r, %.invoke.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.r:                                             ; preds = %bb.p
  %i.bp = sub nuw nsw i64 %phi.call.i.i.i.i, %.sroa.05.0.i.i.i.i ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.05.0.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !937
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.bp, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc41.i unwind label %bb.q, !noalias !926

.noexc41.i:                                       ; preds = %bb.r
  %i.br = load i64, ptr %i.a, align 8, !range !11, !noalias !937, !noundef !5
  %i.bs = trunc nuw i64 %i.br to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !18, !noalias !937, !noundef !5 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bs, label %bb.s, label %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i, !prof !6

bb.s:                                             ; preds = %.noexc41.i
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !937
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.bu, i64 %i.bw) #20
          to label %.noexc42.i unwind label %bb.q, !noalias !926

.noexc42.i:                                       ; preds = %bb.s
  unreachable

_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i: ; preds = %.noexc41.i
  %i.bx = load ptr, ptr %i.bv, align 8, !noalias !937, !nonnull !5, !noundef !5 ; 3 uses
  %i.by = icmp samesign ule i64 %i.bp, %i.bu
  call void @llvm.assume(i1 %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !937
  %.not.i.i.i.i40.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i40.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull readonly align 1 %i.bq, i64 range(i64 0, -9223372036854775808) %i.bp, i1 false), !noalias !938
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i.i.i, %bb.n, %bb.m
  %.sroa.10.0.i = phi i64 [ 0, %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i ], [ %i.bp, %bb.t ], [ undef, %bb.n ], [ undef, %bb.m ], [ undef, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i.i.i ]
  %.sroa.9.0.i = phi ptr [ %i.bx, %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i ], [ %i.bx, %bb.t ], [ undef, %bb.n ], [ undef, %bb.m ], [ undef, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i.i.i ]
  %.sroa.0.090.i = phi i64 [ %i.bu, %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i ], [ %i.bu, %bb.t ], [ -1, %bb.n ], [ -1, %bb.m ], [ -1, %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !925
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 6 uses
  store i64 -1, ptr %i.bz, align 8, !alias.scope !939, !noalias !925
  %i.ca = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 2 uses
  store i64 -1, ptr %i.ca, align 8, !alias.scope !939, !noalias !925
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 2 uses
  store i64 -1, ptr %i.cb, align 8, !alias.scope !939, !noalias !925
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 2 uses
  store i64 -1, ptr %i.cc, align 8, !alias.scope !939, !noalias !925
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  store i64 -1, ptr %i.cd, align 8, !alias.scope !939, !noalias !925
  store i64 0, ptr %i.m, align 8, !alias.scope !939, !noalias !925
  %i.ce = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  store i64 0, ptr %i.ce, align 8, !alias.scope !939, !noalias !925
  %i.cf = getelementptr inbounds nuw i8, ptr %i.m, i64 168 ; 2 uses
  store i64 -1, ptr %i.cf, align 8, !alias.scope !939, !noalias !925
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 192 ; 2 uses
  store i64 -1, ptr %i.cg, align 8, !alias.scope !939, !noalias !925
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 216 ; 2 uses
  store i64 -1, ptr %i.ch, align 8, !alias.scope !939, !noalias !925
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 %.sroa.0.090.i, ptr %i.ci, align 8, !noalias !925
  %.sroa.4114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr %.sroa.9.0.i, ptr %.sroa.4114.0..sroa_idx.i, align 8, !noalias !925
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i64 %.sroa.10.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !925
  %i.cj = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false), !noalias !925
  %i.ck = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false), !noalias !925
  %i.cl = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !noalias !925
  %i.cm = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !noalias !925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !925
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false), !noalias !925
  %i.co = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false), !noalias !925
  %i.cp = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false), !noalias !925
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false), !noalias !925
  %i.cr = invoke { ptr, i64 } @_RNvXsf_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB5_6OpStatINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtNtB9_5types7options11StatOptionsE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(240) %i.n)
          to label %_RNvXs1_NtCsgxBkk5gSRhY_4core7convertNtNtNtCs5XgW7KoffLW_12opendal_core5types7options11StatOptionsINtB5_4IntoNtNtNtBE_3raw3ops6OpStatE4intoBE_.exit.i unwind label %bb.v, !noalias !926 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !925
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bz) #24
          to label %bb.ad unwind label %bb.ac, !noalias !926

_RNvXs1_NtCsgxBkk5gSRhY_4core7convertNtNtNtCs5XgW7KoffLW_12opendal_core5types7options11StatOptionsINtB5_4IntoNtNtNtBE_3raw3ops6OpStatE4intoBE_.exit.i: ; preds = %bb.u
  %i.ct = extractvalue { ptr, i64 } %i.cr, 0      ; 2 uses
  %i.cu = extractvalue { ptr, i64 } %i.cr, 1      ; 2 uses
  store ptr %i.ct, ptr %i.o, align 8, !noalias !925
  %i.cv = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.cu, ptr %i.cv, align 8, !noalias !925
  store i8 1, ptr %i.ac, align 1, !noalias !925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !925
  %i.cw = load i64, ptr %i.bz, align 8, !range !10, !alias.scope !940, !noalias !925, !noundef !5
  %i.cx = icmp eq i64 %i.cw, -1
  br i1 %i.cx, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_RNvXs1_NtCsgxBkk5gSRhY_4core7convertNtNtNtCs5XgW7KoffLW_12opendal_core5types7options11StatOptionsINtB5_4IntoNtNtNtBE_3raw3ops6OpStatE4intoBE_.exit.i
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i.i unwind label %bb.x, !noalias !926

bb.x:                                             ; preds = %bb.w
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %.body.i unwind label %bb.y, !noalias !926

bb.y:                                             ; preds = %bb.x
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !926
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.w
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %bb.aa unwind label %bb.z, !noalias !926

bb.z:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.z, %bb.x
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.da, %bb.z ], [ %i.cy, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !925
  br label %bb.ab

bb.aa:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i.i, %_RNvXs1_NtCsgxBkk5gSRhY_4core7convertNtNtNtCs5XgW7KoffLW_12opendal_core5types7options11StatOptionsINtB5_4IntoNtNtNtBE_3raw3ops6OpStatE4intoBE_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !925
  %.val27.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !925, !nonnull !5, !noundef !5
  %.val28.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !925, !noundef !5
  %i.db = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i8 0, ptr %i.ac, align 1, !noalias !925
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.ct, ptr %i.dd, align 8, !noalias !925
  %.sroa.877.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i64 %i.cu, ptr %.sroa.877.0..sroa_idx.i, align 8, !noalias !925
  %.sroa.1079.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr %.val27.i, ptr %.sroa.1079.0..sroa_idx.i, align 8, !noalias !925
  %.sroa.1180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 %.val28.i, ptr %.sroa.1180.0..sroa_idx.i, align 8, !noalias !925
  %.sroa.1281.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %i.dc, ptr %.sroa.1281.0..sroa_idx.i, align 8, !noalias !925
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.db, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !925
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 233
  store i8 0, ptr %.sroa.15.0..sroa_idx.i, align 1, !noalias !925
  br label %bb.ah

bb.ab:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit55.i, %.body.i
  %i.de = phi ptr [ %i.dv, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit55.i ], [ %i.z, %.body.i ] ; 4 uses
  %i.df = phi ptr [ %i.dw, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit55.i ], [ %i.aa, %.body.i ] ; 4 uses
  %.pn16.pn.pn.i = phi { ptr, i32 } [ %.pn16.pn.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit55.i ], [ %eh.lpad-body.i, %.body.i ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 249
  %i.dh = load i8, ptr %i.dg, align 1, !range !17, !noalias !925, !noundef !5
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.bs, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i

bb.ac:                                            ; preds = %bb.bx, %bb.bu, %bb.bk, %bb.bf, %bb.au, %bb.ai, %bb.ae, %bb.v
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
begin_hunk_1_@_RNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeINtB7_14CompleteReaderINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtBb_3raw3oio4read3api7ReadDynEL_EENtB1Q_4Read4read0Bb_:bb.a
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.aq:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.450, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.2.sroa.3, i64 80, i1 false)
  br label %bb.ad
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtB7_18ServicerFlatListerNtNtNtNtNtBb_3raw3oio4list3api4List4next0Bb_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.12 = alloca [40 x i8], align 8           ; 7 uses
  %.sroa.15.sroa.0 = alloca [25 x i8], align 8    ; 4 uses
  %.sroa.15.sroa.5 = alloca [6 x i8], align 2     ; 4 uses
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.620 = alloca [40 x i8], align 8          ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 11 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [88 x i8], align 8                ; 6 uses
  %i.g = alloca [88 x i8], align 8                ; 7 uses
  %i.h = alloca [88 x i8], align 8                ; 23 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.j = alloca [64 x i8], align 8                ; 10 uses
  %i.k = alloca [40 x i8], align 8                ; 14 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [88 x i8], align 8                ; 11 uses
  %.sroa.2 = alloca [40 x i8], align 8            ; 2 uses
  %i.p = alloca [88 x i8], align 8                ; 11 uses
  %.sroa.12320 = alloca [40 x i8], align 8        ; 11 uses
  %.sroa.14 = alloca [25 x i8], align 8           ; 10 uses
  %.sroa.16 = alloca [6 x i8], align 2            ; 10 uses
  %i.q = alloca [40 x i8], align 8                ; 9 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [88 x i8], align 8                ; 6 uses
  %i.u = alloca [40 x i8], align 8                ; 9 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [88 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [88 x i8], align 8                ; 15 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1, !range !16, !noundef !5
  switch i8 %i.ab, label %default.unreachable364 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.c
    i8 4, label %bb.d
  ]

default.unreachable364:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !align !12, !noundef !5
  store ptr %i.ae, ptr %1, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12320)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  br label %bb.bn

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #19
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #19
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  invoke fastcc void @_RNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB7_7ListDynEL_ENtB7_4List4next0Bf_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.g, ptr noundef nonnull align 8 %i.af, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_(ptr noundef nonnull align 8 %i.af) #24
          to label %.body unwind label %bb.ar

bb.i:                                             ; preds = %bb.g
  %i.ah = load i64, ptr %i.g, align 8, !range !19, !noundef !5
  %i.ai = icmp eq i64 %i.ah, -2
  br i1 %i.ai, label %bb.j, label %bb.k

common.ret:                                       ; preds = %bb.bq, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit219, %bb.j
  %.sink = phi i8 [ 3, %bb.bq ], [ 1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit219 ], [ 4, %bb.j ]
  store i8 %.sink, ptr %i.aa, align 1
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !range !13, !noundef !5
  %cond.i = icmp eq i8 %i.ak, 3
  br i1 %cond.i, label %bb.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i = load ptr, ptr %i.al, align 8          ; 5 uses
  %i.am = getelementptr i8, ptr %1, i64 48
  %.val1.i = load ptr, ptr %i.am, align 8, !nonnull !5, !align !12, !noundef !5 ; 5 uses
  %i.an = load ptr, ptr %.val1.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.an(ptr noundef nonnull %.val.i)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !8, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit

bb.p:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !range !8, !invariant.load !5
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.av, i64 noundef range(i64 1, 536870913) %i.ay) #21
  br label %.body

.body:                                            ; preds = %.thread301, %bb.ft, %bb.fs, %bb.fu, %bb.q, %bb.p, %bb.fv, %bb.fr, %bb.h
  %.pn90.pn.pn = phi { ptr, i32 } [ %i.at, %bb.p ], [ %.pn90.pn307, %bb.fr ], [ %.pn90.pn, %bb.fv ], [ %.pn90.pn307, %bb.ft ], [ %.pn90.pn307, %bb.fs ], [ %i.ag, %bb.h ], [ %.pn90, %.thread301 ], [ %i.at, %bb.q ], [ %.pn90.pn307, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit217

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit: ; preds = %bb.o, %bb.n, %bb.k
  %i.az = load i64, ptr %i.h, align 8, !range !10, !noundef !5 ; 2 uses
  %.not76 = icmp eq i64 %i.az, -1
  br i1 %.not76, label %bb.r, label %bb.as

bb.r:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !11, !noundef !5
  %i.bc = trunc nuw i64 %i.bb to i1               ; 2 uses
  br i1 %i.bc, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !5, !align !12, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %.sroa.0280.0.copyload = load i64, ptr %i.be, align 8, !alias.scope !1224
  store i64 0, ptr %i.be, align 8, !alias.scope !1225, !noalias !1223
  %i.bf = trunc nuw i64 %.sroa.0280.0.copyload to i1
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i64 40, i1 false)
  br label %bb.au

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bg = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !1226, !noalias !1227, !noundef !5 ; 4 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit: ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bl = add nsw i64 %i.bi, -1                   ; 2 uses
  store i64 %i.bl, ptr %i.bh, align 8, !alias.scope !1226, !noalias !1227
  %i.bm = load i64, ptr %i.bk, align 8, !range !7, !alias.scope !1226, !noalias !1227, !noundef !5
  %i.bn = icmp samesign ult i64 %i.bl, %i.bm
  call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !1226, !noalias !1227, !nonnull !5, !noundef !5
  %i.bq = icmp ult i64 %i.bi, 144115188075855873
  call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr [64 x i8], ptr %i.bp, i64 %i.bi
  %3 = getelementptr i8, ptr %i.br, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !noalias !1226
  %.pr = load i64, ptr %i.a, align 8, !alias.scope !1228
  %i.bs = icmp eq i64 %.pr, 2
  br i1 %i.bs, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit, label %bb.v

bb.v:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB12_4list3api7ListDynEL_EEEB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit: ; preds = %bb.u, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.bf

bb.x:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180, %bb.w
  %.pn90.pn = phi { ptr, i32 } [ %i.bt, %bb.w ], [ %.pn83.pn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180 ] ; 2 uses
  %.sroa.025.0 = xor i1 %i.bc, true
  %i.bu = load i64, ptr %i.h, align 8, !range !10, !noundef !5
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %bb.fr, label %bb.fv

.thread301:                                       ; preds = %bb.bd, %bb.fq
  %.pn90 = phi { ptr, i32 } [ %i.ef, %bb.bd ], [ %.pn86.pn.pn, %bb.fq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bw = load i64, ptr %i.h, align 8, !range !10, !noundef !5
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %bb.fr, label %.body

bb.y:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %.val139 = load i16, ptr %i.bz, align 4, !noundef !5
  %i.ca = and i16 %.val139, 3
  %switch.selectcmp.i = icmp eq i16 %i.ca, 2
  br i1 %switch.selectcmp.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(40) %i.by, i64 40, i1 false)
  br label %bb.au

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.by, i64 40, i1 false)
  %i.cb = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %bb.ac unwind label %bb.ab     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ac:                                            ; preds = %bb.aa
  %i.cd = extractvalue { ptr, i64 } %i.cb, 0      ; 2 uses
  %i.ce = extractvalue { ptr, i64 } %i.cb, 1      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !range !11, !alias.scope !1229, !noundef !5
  %i.ci = trunc nuw i64 %i.ch to i1
  br i1 %i.ci, label %_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionRNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryE6expectBQ_.exit, label %bb.ad, !prof !1230

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #19
          to label %.noexc176 unwind label %bb.ae

.noexc176:                                        ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionRNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryE6expectBQ_.exit: ; preds = %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cl = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ck)
          to label %bb.ag unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionRNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryE6expectBQ_.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ag:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionRNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryE6expectBQ_.exit
  %i.cn = extractvalue { ptr, i64 } %i.cl, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  %i.co = icmp eq i64 %i.ce, %i.cn
  br i1 %i.co, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread

_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.ag
  %i.cp = extractvalue { ptr, i64 } %i.cl, 0
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.cd, ptr nonnull readonly %i.cp, i64 %i.ce), !alias.scope !1231
  %.not314 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not314, label %bb.ah, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread

bb.ah:                                            ; preds = %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  %i.cq = load ptr, ptr %i.b, align 8, !alias.scope !1236, !noundef !5 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cs = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !1237
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.aj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit unwind label %bb.an

_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread: ; preds = %bb.ag, %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.cu = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  %i.cv = load i64, ptr %i.cu, align 8, !range !11, !alias.scope !1238, !noundef !5
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, label %bb.ak

bb.ak:                                            ; preds = %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !1243, !noundef !5 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.da = atomicrmw sub ptr %i.cy, i64 1 release, align 8, !noalias !1244
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.am, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cx) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit unwind label %bb.ao

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180: ; preds = %bb.ap, %.thread, %bb.aq, %bb.ao, %bb.an
  %.pn83.pn = phi { ptr, i32 } [ %i.dc, %bb.an ], [ %i.de, %bb.ao ], [ %.pn80.pn, %bb.aq ], [ %.pn80.pn, %.thread ], [ %.pn80.pn, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.an:                                            ; preds = %bb.aj
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit: ; preds = %bb.ai, %bb.ah, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit: ; preds = %bb.al, %bb.ak, %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread, %bb.am
  %i.dd = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  store i64 1, ptr %i.dd, align 8
  %.sroa.620.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620.0..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bf

bb.ao:                                            ; preds = %bb.am
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  store i64 1, ptr %i.df, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180

.thread:                                          ; preds = %bb.ae, %bb.af, %bb.ab
  %.pn80.pn = phi { ptr, i32 } [ %i.cc, %bb.ab ], [ %i.cm, %bb.af ], [ %i.cj, %bb.ae ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  %i.dg = load ptr, ptr %i.b, align 8, !alias.scope !1249, !noundef !5 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180, label %bb.ap

bb.ap:                                            ; preds = %.thread
  %i.di = atomicrmw sub ptr %i.dg, i64 1 release, align 8, !noalias !1250
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.aq, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180 unwind label %bb.ar

end_hunk_1
begin_hunk_2_@_RNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtB7_18ServicerFlatListerNtNtNtNtNtBb_3raw3oio4list3api4List4next0Bb_:bb.a
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.447.0.copyload = load i64, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.548.0..sroa_idx, i64 40, i1 false)
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.15.sroa.0, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.649.0..sroa_idx, i64 25, i1 false)
  %.sroa.649.sroa.5.0..sroa.649.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15.sroa.5, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.649.sroa.5.0..sroa.649.0..sroa_idx.sroa_idx, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit224

bb.en:                                            ; preds = %bb.eo, %bb.et
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.t)
          to label %bb.ew unwind label %bb.ev

bb.eo:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.t, ptr noundef nonnull align 8 dereferenceable(88) %i.z, i64 88, i1 false)
  %i.lc = load atomic i64, ptr @_RNvCsbBx43SIjCL2_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ld = icmp ult i64 %i.lc, 6
  call void @llvm.assume(i1 %i.ld)
  %i.le = icmp samesign ugt i64 %i.lc, 1
  br i1 %i.le, label %bb.ep, label %bb.en

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lf = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ek)
          to label %bb.es unwind label %bb.eq     ; 2 uses

bb.eq:                                            ; preds = %bb.ep
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.er:                                            ; preds = %bb.es
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ey

bb.es:                                            ; preds = %bb.ep
  %i.li = extractvalue { ptr, i64 } %i.lf, 0
  %i.lj = extractvalue { ptr, i64 } %i.lf, 1
  store ptr %i.li, ptr %i.s, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.lj, ptr %i.lk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.5245.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr @59, ptr %i.q, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 30, ptr %i.ll, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr @59, ptr %i.lm, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 30, ptr %i.ln, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr @63, ptr %i.lo, align 8
  invoke void @_RINvNtCsbBx43SIjCL2_3log13___private_api3loguNtB2_12GlobalLoggerECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull @62, ptr noundef nonnull %i.r, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.q)
          to label %bb.et unwind label %bb.er

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.en

bb.eu:                                            ; preds = %bb.ey, %bb.ev
  %.pn113 = phi { ptr, i32 } [ %i.lp, %bb.ev ], [ %.pn109.pn, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.thread295

bb.ev:                                            ; preds = %bb.en
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.ew:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ex

bb.ex:                                            ; preds = %bb.fi, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.cx

bb.ey:                                            ; preds = %bb.er, %bb.eq
  %.pn109.pn = phi { ptr, i32 } [ %i.lh, %bb.er ], [ %i.lg, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.t) #24
          to label %bb.eu unwind label %bb.ar

bb.ez:                                            ; preds = %bb.fa, %bb.ff
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.x)
          to label %bb.fi unwind label %bb.fh

bb.fa:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.x, ptr noundef nonnull align 8 dereferenceable(88) %i.z, i64 88, i1 false)
  %i.lq = load atomic i64, ptr @_RNvCsbBx43SIjCL2_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.lr = icmp ult i64 %i.lq, 6
  call void @llvm.assume(i1 %i.lr)
  %i.ls = icmp samesign ugt i64 %i.lq, 1
  br i1 %i.ls, label %bb.fb, label %bb.ez

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.lt = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ek)
          to label %bb.fe unwind label %bb.fc     ; 2 uses

bb.fc:                                            ; preds = %bb.fb
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fd:                                            ; preds = %bb.fe
  %i.lv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.fj

bb.fe:                                            ; preds = %bb.fb
  %i.lw = extractvalue { ptr, i64 } %i.lt, 0
  %i.lx = extractvalue { ptr, i64 } %i.lt, 1
  store ptr %i.lw, ptr %i.w, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.lx, ptr %i.ly, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.w, ptr %i.v, align 8
  %.sroa.5240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.5240.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr @59, ptr %i.u, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 30, ptr %i.lz, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr @59, ptr %i.ma, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 30, ptr %i.mb, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr @65, ptr %i.mc, align 8
  invoke void @_RINvNtCsbBx43SIjCL2_3log13___private_api3loguNtB2_12GlobalLoggerECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull @64, ptr noundef nonnull %i.v, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u)
          to label %bb.ff unwind label %bb.fd

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ez

bb.fg:                                            ; preds = %bb.fj, %bb.fh
  %.pn119 = phi { ptr, i32 } [ %i.md, %bb.fh ], [ %.pn115.pn, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.thread295

bb.fh:                                            ; preds = %bb.ez
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.fi:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ex

bb.fj:                                            ; preds = %bb.fd, %bb.fc
  %.pn115.pn = phi { ptr, i32 } [ %i.lv, %bb.fd ], [ %i.lu, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.x) #24
          to label %bb.fg unwind label %bb.ar

.thread295:                                       ; preds = %bb.eu, %bb.fg, %bb.bh, %bb.bi
  %.pn119.pn.pn = phi { ptr, i32 } [ %.pn113, %bb.eu ], [ %.pn119, %bb.fg ], [ %i.ep, %bb.bi ], [ %i.eo, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.body214

bb.fk:                                            ; preds = %bb.df, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit, %bb.dg, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208
  %i.me = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  %i.mg = getelementptr i8, ptr %i.me, i64 56     ; 2 uses
  %.val172 = load ptr, ptr %i.mg, align 8, !nonnull !5, !noundef !5
  %i.mh = getelementptr i8, ptr %i.me, i64 64     ; 3 uses
  %.val173 = load i64, ptr %i.mh, align 8, !noundef !5 ; 2 uses
  %.not.i228 = icmp eq i64 %.val173, 0
  %i.mi = getelementptr [64 x i8], ptr %.val172, i64 %.val173 ; 2 uses
  %i.mj = getelementptr i8, ptr %i.mi, i64 -64    ; 3 uses
  %.not70313 = icmp eq ptr %i.mj, null
  %.not70 = or i1 %.not.i228, %.not70313
  br i1 %.not70, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit219, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.mk = load i64, ptr %i.mj, align 8, !range !11, !noundef !5
  %i.ml = trunc nuw i64 %i.mk to i1
  br i1 %i.ml, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.mm = load i64, ptr %i.mh, align 8, !alias.scope !1307, !noalias !1308, !noundef !5 ; 4 uses
  %i.mn = icmp eq i64 %i.mm, 0
  br i1 %i.mn, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit234, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit230

bb.fn:                                            ; preds = %bb.fl
  %i.mo = getelementptr i8, ptr %i.mi, i64 -16
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.mj, ptr %i.mp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.mo, ptr %i.mq, align 8
  %.sroa.10269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %.sroa.10269.0..sroa_idx, align 8
  br label %bb.g

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit230: ; preds = %bb.fm
  %i.mr = add nsw i64 %i.mm, -1                   ; 2 uses
  store i64 %i.mr, ptr %i.mh, align 8, !alias.scope !1307, !noalias !1308
  %i.ms = load i64, ptr %i.mf, align 8, !range !7, !alias.scope !1307, !noalias !1308, !noundef !5
  %i.mt = icmp samesign ult i64 %i.mr, %i.ms
  call void @llvm.assume(i1 %i.mt)
  %i.mu = load ptr, ptr %i.mg, align 8, !alias.scope !1307, !noalias !1308, !nonnull !5, !noundef !5
  %i.mv = icmp ult i64 %i.mm, 144115188075855873
  call void @llvm.assume(i1 %i.mv)
  %i.mw = getelementptr [64 x i8], ptr %i.mu, i64 %i.mm
  %4 = getelementptr i8, ptr %i.mw, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false), !noalias !1307
  %.pr300 = load i64, ptr %i.i, align 8, !alias.scope !1309
  %i.mx = icmp eq i64 %.pr300, 2
  br i1 %i.mx, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit234, label %bb.fo

bb.fo:                                            ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit230
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB12_4list3api7ListDynEL_EEEB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit234 unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.my = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit217

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit234: ; preds = %bb.fm, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit230, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208

bb.fq:                                            ; preds = %bb.ba, %bb.ax
  %.pn86.pn.pn = phi { ptr, i32 } [ %i.ea, %bb.ba ], [ %i.dv, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.f) #24
          to label %.thread301 unwind label %bb.ar

bb.fr:                                            ; preds = %.thread301, %bb.x
  %.pn90.pn307 = phi { ptr, i32 } [ %.pn90, %.thread301 ], [ %.pn90.pn, %bb.x ] ; 4 uses
  %.sroa.025.0306 = phi i1 [ true, %.thread301 ], [ %.sroa.025.0, %bb.x ]
  %i.mz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.na = load i64, ptr %i.mz, align 8, !range !11, !noundef !5
  %i.nb = icmp ne i64 %i.na, 0
  %or.cond5 = and i1 %.sroa.025.0306, %i.nb
  br i1 %or.cond5, label %bb.fs, label %.body

bb.fs:                                            ; preds = %bb.fr
  %i.nc = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %i.nd = load ptr, ptr %i.nc, align 8, !alias.scope !1314, !noundef !5 ; 2 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %.body, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.nf = atomicrmw sub ptr %i.nd, i64 1 release, align 8, !noalias !1315
  %i.ng = icmp eq i64 %i.nf, 1
  br i1 %i.ng, label %bb.fu, label %.body

bb.fu:                                            ; preds = %bb.ft
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.nc) #23
          to label %.body unwind label %bb.ar

bb.fv:                                            ; preds = %bb.x
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.h) #24
          to label %.body unwind label %bb.ar
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXsa_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeINtB7_18CompleteReadStreamINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtBb_3raw3oio4read3api13ReadStreamDynEL_EENtB1U_10ReadStream4read0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [80 x i8], align 8            ; 4 uses
  %i.a = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.3 = alloca [40 x i8], align 8            ; 3 uses
  %.sroa.538 = alloca [40 x i8], align 8          ; 2 uses
  %i.b = alloca [88 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !range !13, !noundef !5
  switch i8 %i.e, label %default.unreachable60 [
    i8 0, label %.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable60:                            ; preds = %bb.d, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.h, ptr %i.i, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #19
  unreachable

.body:                                            ; preds = %bb.t, %.body.i
  %i.l = phi ptr [ %i.ab, %.body.i ], [ %i.m, %bb.t ]
  %.pn2 = phi { ptr, i32 } [ %.pn2.i, %.body.i ], [ %i.ax, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs5_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_13ReadStreamDynEL_ENtBJ_10ReadStream4read0EBR_(ptr noundef nonnull align 8 %i.l) #24
          to label %.body16 unwind label %bb.ag

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !13, !noalias !1337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  switch i8 %.pre, label %default.unreachable60 [
    i8 0, label %bb.f
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
  ]

bb.e:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %.thread, %bb.d
  %i.p = phi ptr [ %i.k, %.thread ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %.thread ], [ %i.m, %bb.d ] ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !noalias !1337, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %.val7.i = load ptr, ptr %i.r, align 8, !noalias !1337, !nonnull !5, !noundef !5
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val8.i = load ptr, ptr %i.s, align 8, !noalias !1337, !nonnull !5, !align !12, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %.val8.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !5, !noalias !1337, !nonnull !5
  %i.v = invoke { ptr, ptr } %i.u(ptr noundef nonnull %.val7.i)
          to label %bb.g unwind label %bb.e, !noalias !1337 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.w = extractvalue { ptr, ptr } %i.v, 0
  %i.x = extractvalue { ptr, ptr } %i.v, 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.w, ptr %i.y, align 8, !noalias !1337
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.x, ptr %i.z, align 8, !noalias !1337
  br label %bb.j

.body.i:                                          ; preds = %bb.r, %bb.q, %bb.k, %bb.e
  %i.aa = phi ptr [ %i.p, %bb.e ], [ %i.ac, %bb.k ], [ %i.ac, %bb.q ], [ %i.ac, %bb.r ]
  %i.ab = phi ptr [ %i.q, %bb.e ], [ %i.ad, %bb.k ], [ %i.ad, %bb.q ], [ %i.ad, %bb.r ]
  %.pn2.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.af, %bb.k ], [ %i.aq, %bb.q ], [ %i.aq, %bb.r ]
  store i8 2, ptr %i.aa, align 8, !noalias !1337
  br label %.body

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #19
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #19
          to label %.noexc13 unwind label %bb.t

.noexc13:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.d
  %i.ac = phi ptr [ %i.p, %bb.g ], [ %i.n, %bb.d ] ; 5 uses
  %i.ad = phi ptr [ %i.q, %bb.g ], [ %i.m, %bb.d ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXs_NtNtCsgxBkk5gSRhY_4core6future6futureINtNtB8_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB2e_5error5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2g_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  %.val5.i = load ptr, ptr %i.ae, align 8, !noalias !1337
  %i.ag = getelementptr i8, ptr %1, i64 32
  %.val6.i = load ptr, ptr %i.ag, align 8, !noalias !1337, !nonnull !5, !align !12, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB2s_5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_(ptr %.val5.i, ptr nonnull %.val6.i) #24
          to label %.body.i unwind label %bb.s, !noalias !1338

bb.l:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %i.b, align 8, !range !19, !alias.scope !1338, !noalias !1339, !noundef !5 ; 3 uses
  %i.ai = icmp eq i64 %i.ah, -2
  br i1 %i.ai, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i = load ptr, ptr %i.ae, align 8, !noalias !1337 ; 5 uses
  %i.aj = getelementptr i8, ptr %1, i64 32
  %.val4.i = load ptr, ptr %i.aj, align 8, !noalias !1337, !nonnull !5, !align !12, !noundef !5 ; 5 uses
  %i.ak = load ptr, ptr %.val4.i, align 8, !invariant.load !5, !noalias !1338 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

end_hunk_2
