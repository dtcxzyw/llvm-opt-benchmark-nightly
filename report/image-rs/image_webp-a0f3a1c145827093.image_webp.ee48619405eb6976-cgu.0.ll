Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.0?download=true
inline.NumInlined: 163
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs_NtCsksn9slvsHfS_10image_webp7huffmanNtB4_11HuffmanTree14build_implicit:bb.a
  %i.fz = icmp eq i16 %i.fy, 2
  br i1 %i.fz, label %bb.bg, label %.loopexit

bb.bb:                                            ; preds = %bb.bh
  unreachable

.loopexit:                                        ; preds = %bb.ba, %bb.bh
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 14, ptr %i.ga, align 8
  store i64 -2, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.be unwind label %bb.bc

bb.bc:                                            ; preds = %.loopexit
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i115 = load i64, ptr %i.a, align 8, !alias.scope !105 ; 2 uses
  %i.gc = icmp eq i64 %.val2.i115, 0
  br i1 %i.gc, label %.body, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.val3.i116 = load ptr, ptr %i.dr, align 8, !alias.scope !105, !nonnull !4, !noundef !4
  %i.gd = shl nuw i64 %.val2.i115, 2
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i116, i64 noundef %i.gd, i64 noundef range(i64 1, -9223372036854775807) 4) #22
  br label %.body

bb.be:                                            ; preds = %.loopexit
  %.val.i117 = load i64, ptr %i.a, align 8, !alias.scope !105 ; 2 uses
  %i.ge = icmp eq i64 %.val.i117, 0
  br i1 %i.ge, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsksn9slvsHfS_10image_webp.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val1.i118 = load ptr, ptr %i.dr, align 8, !alias.scope !105, !nonnull !4, !noundef !4
  %i.gf = shl nuw i64 %.val.i117, 2
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i118, i64 noundef %i.gf, i64 noundef range(i64 1, -9223372036854775807) 4) #22
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsksn9slvsHfS_10image_webp.exit

bb.bg:                                            ; preds = %bb.ba
  %i.gg = trunc i64 %.sroa.8136.0247 to i16
  store i16 1, ptr %i.fx, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  store i16 %i.gg, ptr %.sroa.451.0..sroa_idx, align 2
  br label %.backedge

.backedge:                                        ; preds = %bb.bu, %bb.bg, %bb.at, %.lr.ph250
  %i.gh = icmp eq ptr %i.dx, %i.dv
  br i1 %i.gh, label %._crit_edge251, label %.lr.ph250

bb.bh:                                            ; preds = %.lr.ph244
  %i.gi = load ptr, ptr %i.dl, align 8, !nonnull !4, !noundef !4
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %.sroa.026.1242 ; 4 uses
  %.sroa.040.0.copyload = load i16, ptr %i.gj, align 8
  switch i16 %.sroa.040.0.copyload, label %bb.bb [
    i16 0, label %bb.bi
    i16 1, label %.loopexit
    i16 2, label %bb.bp
  ]

bb.bi:                                            ; preds = %bb.bh
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %.sroa.542.0.copyload = load i64, ptr %.sroa.542.0..sroa_idx, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeE8push_mutBJ_.exit128, %bb.bi
  %i.gk = phi i64 [ %i.ft, %bb.bi ], [ %i.hh, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeE8push_mutBJ_.exit128 ] ; 2 uses
  %.sroa.043.0 = phi i64 [ %.sroa.542.0.copyload, %bb.bi ], [ %i.gw, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeE8push_mutBJ_.exit128 ]
  %i.gl = zext nneg i16 %i.fu to i64
  %i.gm = lshr i64 %i.fp, %i.gl
  %i.gn = and i64 %i.gm, 1
  %i.go = add nuw i64 %i.gn, %.sroa.026.1242
  %i.gp = add i64 %i.go, %.sroa.043.0             ; 2 uses
  %.not90 = icmp eq i16 %i.fu, 0
  br i1 %.not90, label %._crit_edge245, label %.lr.ph244

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsksn9slvsHfS_10image_webp.exit: ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.bm unwind label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsksn9slvsHfS_10image_webp.exit
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i119 = load i64, ptr %i.b, align 8, !alias.scope !106 ; 2 uses
  %i.gr = icmp eq i64 %.val2.i119, 0
  br i1 %i.gr, label %.body123, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.val3.i120 = load ptr, ptr %i.dl, align 8, !alias.scope !106, !nonnull !4, !noundef !4
  %i.gs = shl nuw i64 %.val2.i119, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i120, i64 noundef %i.gs, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %.body123

bb.bm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsksn9slvsHfS_10image_webp.exit
  %.val.i121 = load i64, ptr %i.b, align 8, !alias.scope !106 ; 2 uses
  %i.gt = icmp eq i64 %.val.i121, 0
  br i1 %i.gt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeEEB1c_.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.val1.i122 = load ptr, ptr %i.dl, align 8, !alias.scope !106, !nonnull !4, !noundef !4
  %i.gu = shl nuw i64 %.val.i121, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i122, i64 noundef %i.gu, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeEEB1c_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeEEB1c_.exit: ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeEEB1c_.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ab

bb.bp:                                            ; preds = %bb.bh
  %i.gv = icmp ult i64 %i.ft, 576460752303423488
  tail call void @llvm.assume(i1 %i.gv)
  %i.gw = sub nuw i64 %i.ft, %.sroa.026.1242      ; 2 uses
  store i16 0, ptr %i.gj, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store i64 %i.gw, ptr %.sroa.447.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.gx = load i64, ptr %i.dm, align 8, !alias.scope !107, !noundef !4 ; 4 uses
  %i.gy = load i64, ptr %i.b, align 8, !range !6, !alias.scope !107, !noundef !4
  %i.gz = icmp eq i64 %i.gx, %i.gy
  br i1 %i.gz, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !108

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.ha = load ptr, ptr %i.dl, align 8, !alias.scope !107, !nonnull !4, !noundef !4
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %i.gx
  store i16 2, ptr %i.hb, align 8, !noalias !107
  %i.hc = add i64 %i.gx, 1                        ; 3 uses
  store i64 %i.hc, ptr %i.dm, align 8, !alias.scope !107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.hd = load i64, ptr %i.b, align 8, !range !6, !alias.scope !109, !noundef !4
  %i.he = icmp eq i64 %i.hc, %i.hd
  br i1 %i.he, label %bb.bs, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeE8push_mutBJ_.exit128

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeE8push_mutBJ_.exit128 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !110

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeE8push_mutBJ_.exit128: ; preds = %bb.bs, %bb.br
  %i.hf = load ptr, ptr %i.dl, align 8, !alias.scope !109, !nonnull !4, !noundef !4
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %i.hc
  store i16 2, ptr %i.hg, align 8, !noalias !109
  %i.hh = add i64 %i.gx, 2                        ; 2 uses
  store i64 %i.hh, ptr %i.dm, align 8, !alias.scope !109
  br label %bb.bj

bb.bt:                                            ; preds = %.lr.ph239, %bb.bu
  %.sroa.023.0237 = phi i64 [ %i.es, %.lr.ph239 ], [ %i.hm, %bb.bu ] ; 4 uses
  %i.hi = load i64, ptr %i.ds, align 8, !noundef !4 ; 2 uses
  %i.hj = icmp ult i64 %.sroa.023.0237, %i.hi
  br i1 %i.hj, label %bb.bu, label %.invoke409

bb.bu:                                            ; preds = %bb.bt
  %i.hk = load ptr, ptr %i.dr, align 8, !nonnull !4, !noundef !4
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %.sroa.023.0237
  store i32 %i.ew, ptr %i.hl, align 4
  %i.hm = add nuw nsw i64 %.sroa.023.0237, %i.ey  ; 2 uses
  %i.hn = icmp samesign ult i64 %i.hm, %i.cd
  br i1 %i.hn, label %bb.bt, label %.backedge

.invoke409:                                       ; preds = %._crit_edge245, %bb.as, %bb.aq, %bb.bt, %.lr.ph244
  %i.ho = phi i64 [ %.sroa.023.0237, %bb.bt ], [ %.sroa.026.1242, %.lr.ph244 ], [ %i.ep, %bb.as ], [ %i.ef, %bb.aq ], [ %.sroa.026.1.lcssa, %._crit_edge245 ]
  %i.hp = phi i64 [ %i.hi, %bb.bt ], [ %i.ft, %.lr.ph244 ], [ %i.eq, %bb.as ], [ 16, %bb.aq ], [ %i.fr, %._crit_edge245 ]
  %i.hq = phi ptr [ @9, %bb.bt ], [ @8, %.lr.ph244 ], [ @6, %bb.as ], [ @5, %bb.aq ], [ @7, %._crit_edge245 ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ho, i64 noundef %i.hp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hq) #23
          to label %.cont410 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont410:                                         ; preds = %.invoke409
  unreachable

bb.bv:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body, %.body123
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.bw:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs_NtCsksn9slvsHfS_10image_webp7huffmanNtB1K_11HuffmanTree14build_implicit0EB1M_.exit
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 2, !noundef !4
  %i.hu = add i16 %i.ht, 1
  store i16 %i.hu, ptr %i.hs, align 2
  %i.hv = add i32 %.sroa.0.0, 1
  br label %bb.b

bb.bx:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs_NtCsksn9slvsHfS_10image_webp7huffmanNtB1K_11HuffmanTree14build_implicit0EB1M_.exit
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23
          to label %bb.aa unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsksn9slvsHfS_10image_webp7huffmanNtB4_11HuffmanTree14build_two_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i16 noundef %1, i16 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.b = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #22 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #23
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %3 = zext i16 %1 to i32                         ; 2 uses
  %4 = shl nuw i32 %3, 16
  %5 = or disjoint i32 %4, 1
  store i32 %5, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %6 = zext i16 %2 to i32                         ; 2 uses
  %7 = shl nuw i32 %6, 16
  %8 = or disjoint i32 %7, 1
  store i32 %8, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i16 2, ptr %i.e, align 8
  store i64 3, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 3, ptr %i.g, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.h = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #22 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit13, !prof !10

bb.c:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 8) #23
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #24
          to label %bb.f unwind label %bb.e

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit13: ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %9 = or disjoint i32 %3, 65536
  %10 = or disjoint i32 %6, 65536
  store i32 %9, ptr %i.h, align 4
  %11 = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %10, ptr %11, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 -16, 16) i32 @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter22common_adjust_vertical(i1 noundef zeroext %0, ptr noalias nofree noundef nonnull captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %4, 1
  %i.b = sub i64 %3, %i.a                         ; 3 uses
  %i.c = icmp ult i64 %i.b, %2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %i.e = load i8, ptr %i.d, align 1, !noundef !4
  %i.f = zext i8 %i.e to i32
  %i.g = sub i64 %3, %4                           ; 3 uses
  %i.h = icmp ult i64 %i.g, %2
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !noundef !4
  %i.k = icmp ult i64 %3, %2
  br i1 %i.k, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #25
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %3 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !noundef !4
  %i.n = add i64 %4, %3                           ; 3 uses
  %i.o = icmp ult i64 %i.n, %2
  br i1 %i.o, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  br i1 %0, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !noundef !4
  %i.r = zext i8 %i.q to i32
  %i.s = sub nsw i32 %i.f, %i.r
  %i.t = tail call i32 @llvm.smax.i32(i32 range(i32 -893, 893) %i.s, i32 -128)
  %.sroa.0.0.i = tail call noundef range(i32 -128, 128) i32 @llvm.smin.i32(i32 %i.t, i32 127)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.i, %bb.j ], [ 0, %bb.h ]
  %i.u = zext i8 %i.m to i32                      ; 2 uses
  %i.v = add nsw i32 %i.u, -128
  %i.w = zext i8 %i.j to i32                      ; 2 uses
  %i.x = add nsw i32 %i.w, -128
  %i.y = sub nsw i32 %i.u, %i.w
  %i.z = mul nsw i32 %i.y, 3
  %i.aa = add nsw i32 %.sroa.0.0, %i.z
  %i.ab = tail call i32 @llvm.smax.i32(i32 range(i32 -893, 893) %i.aa, i32 -128) ; 2 uses
  %i.ac = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 124)
  %.sroa.0.0.i9 = add nsw i32 %i.ac, 3
  %i.ad = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 123)
  %.sroa.0.0.i10 = add nsw i32 %i.ad, 4
  %i.ae = ashr i32 %.sroa.0.0.i10, 3              ; 2 uses
  %i.af = sub nsw i32 %i.v, %i.ae
  %i.ag = tail call i32 @llvm.smax.i32(i32 range(i32 -893, 893) %i.af, i32 -128)
  %.sroa.0.0.i11 = tail call noundef range(i32 -128, 128) i32 @llvm.smin.i32(i32 %i.ag, i32 127)
  %i.ah = trunc nsw i32 %.sroa.0.0.i11 to i8
  %i.ai = xor i8 %i.ah, -128
  %i.aj = ashr i32 %.sroa.0.0.i9, 3
  store i8 %i.ai, ptr %i.l, align 1
  %i.ak = add nsw i32 %i.x, %i.aj
  %i.al = tail call i32 @llvm.smax.i32(i32 range(i32 -893, 893) %i.ak, i32 -128)
  %.sroa.0.0.i12 = tail call noundef range(i32 -128, 128) i32 @llvm.smin.i32(i32 %i.al, i32 127)
  %i.am = trunc nsw i32 %.sroa.0.0.i12 to i8
  %i.an = xor i8 %i.am, -128
  store i8 %i.an, ptr %i.i, align 1
  ret i32 %i.ae
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter22should_filter_vertical(i8 noundef %0, i8 noundef %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = zext i8 %1 to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.b = sub i64 %4, %5                           ; 3 uses
  %i.c = icmp ult i64 %i.b, %3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %4, %3
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #25, !noalias !113
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !113, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %4
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !113, !noundef !4
  %i.i = shl i64 %5, 1                            ; 2 uses
  %i.j = sub i64 %4, %i.i                         ; 3 uses
  %i.k = icmp ult i64 %i.j, %3
  br i1 %i.k, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #25, !noalias !113
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = add i64 %5, %4                           ; 3 uses
  %i.m = icmp ult i64 %i.l, %3
  br i1 %i.m, label %_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_threshold_vertical.exit, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #25, !noalias !113
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #25, !noalias !113
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_threshold_vertical.exit: ; preds = %bb.f
  %i.n = zext i8 %i.f to i32                      ; 2 uses
  %i.o = zext i8 %i.h to i32                      ; 2 uses
  %i.p = sub nsw i32 %i.n, %i.o
  %.sroa.0.0.i = tail call i32 @llvm.abs.i32(i32 %i.p, i1 true)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !113, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !113, !noundef !4
  %i.u = zext i8 %i.r to i32                      ; 3 uses
  %i.v = zext i8 %i.t to i32                      ; 3 uses
  %i.w = sub nsw i32 %i.u, %i.v
  %.sroa.01.0.i = tail call i32 @llvm.abs.i32(i32 %i.w, i1 true)
  %i.x = shl nuw nsw i32 %.sroa.0.0.i, 1
  %i.y = lshr i32 %.sroa.01.0.i, 1
  %i.z = add nuw nsw i32 %i.y, %i.x
  %.not39 = icmp samesign ugt i32 %i.z, %i.a
  br i1 %.not39, label %bb.v, label %bb.i

bb.i:                                             ; preds = %_RNvNtCsksn9slvsHfS_10image_webp11loop_filter25simple_threshold_vertical.exit
  %i.aa = shl i64 %5, 2
  %i.ab = sub i64 %4, %i.aa                       ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %3
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = mul i64 %5, 3                           ; 2 uses
  %i.ae = sub i64 %4, %i.ad                       ; 3 uses
  %i.af = icmp ult i64 %i.ae, %3
  br i1 %i.af, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.ab
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !4
  %i.ak = zext i8 %i.ah to i32
  %i.al = zext i8 %i.aj to i32                    ; 2 uses
  %i.am = sub nsw i32 %i.ak, %i.al
  %.sroa.01.0 = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %i.an = trunc nuw i32 %.sroa.01.0 to i8
  %.not = icmp ult i8 %0, %i.an
end_hunk_0
