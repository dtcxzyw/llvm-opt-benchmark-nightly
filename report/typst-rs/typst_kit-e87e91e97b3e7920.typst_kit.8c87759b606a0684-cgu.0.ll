Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_kit-e87e91e97b3e7920.typst_kit.8c87759b606a0684-cgu.0?download=true
inline.NumInlined: 3956
inline.NumDeleted: 1750
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMNtCsc4241EHy6Do_9typst_kit6serverNtB2_10HttpServer10set_bundle:bb.a
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsgpMJJHpo27b_12typst_bundle10introspect18BundleIntrospectorE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #46
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsgpMJJHpo27b_12typst_bundle10introspect18BundleIntrospectorEECsc4241EHy6Do_9typst_kit.exit unwind label %bb.h

_RINvMNtCsc4241EHy6Do_9typst_kit6serverNtB3_10HttpServer10set_routerNCNvB2_10set_bundle0EB5_.exit: ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtBJ_10HttpServer10set_bundle0E3newBL_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5454)
  %i.o = load ptr, ptr %i.c, align 8, !alias.scope !5455, !nonnull !17, !noundef !17
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !5455
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsgpMJJHpo27b_12typst_bundle10introspect18BundleIntrospectorEECsc4241EHy6Do_9typst_kit.exit1

bb.g:                                             ; preds = %_RINvMNtCsc4241EHy6Do_9typst_kit6serverNtB3_10HttpServer10set_routerNCNvB2_10set_bundle0EB5_.exit
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsgpMJJHpo27b_12typst_bundle10introspect18BundleIntrospectorE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #46
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsgpMJJHpo27b_12typst_bundle10introspect18BundleIntrospectorEECsc4241EHy6Do_9typst_kit.exit1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsgpMJJHpo27b_12typst_bundle10introspect18BundleIntrospectorEECsc4241EHy6Do_9typst_kit.exit1: ; preds = %_RINvMNtCsc4241EHy6Do_9typst_kit6serverNtB3_10HttpServer10set_routerNCNvB2_10set_bundle0EB5_.exit, %bb.g
  ret void

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsgpMJJHpo27b_12typst_bundle10introspect18BundleIntrospectorEECsc4241EHy6Do_9typst_kit.exit: ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsc4241EHy6Do_9typst_kit6serverNtB2_10HttpServer3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i16 noundef range(i16 0, 2) %3, i16 %4, i1 noundef zeroext %5) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [192 x i8], align 8               ; 4 uses
  %i.h = alloca [192 x i8], align 8               ; 9 uses
  %i.i = alloca [8 x i8], align 8                 ; 9 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 12 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [104 x i8], align 8               ; 4 uses
  %i.o = alloca [104 x i8], align 8               ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 13 uses
  %i.q = alloca [16 x i8], align 8                ; 16 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 16               ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [48 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [72 x i8], align 8               ; 4 uses
  %i.ac = alloca [72 x i8], align 8               ; 9 uses
  %i.ad = alloca [8 x i8], align 8                ; 9 uses
  %i.ae = alloca [32 x i8], align 8               ; 6 uses
  %i.af = alloca [8 x i8], align 8                ; 12 uses
  %i.ag = alloca [8 x i8], align 8                ; 6 uses
  %i.ah = alloca [64 x i8], align 8               ; 11 uses
  %i.ai = alloca [96 x i8], align 8               ; 16 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [48 x i8], align 8               ; 6 uses
  %i.al = alloca [32 x i8], align 8               ; 9 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [8 x i8], align 8                ; 5 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.5.i.sroa.5.i = alloca [96 x i8], align 8 ; 6 uses
  %i.ap = alloca [120 x i8], align 8              ; 10 uses
  %i.aq = alloca [120 x i8], align 4              ; 9 uses
  %i.ar = alloca [8 x i8], align 8                ; 11 uses
  %i.as = alloca [8 x i8], align 4                ; 6 uses
  %i.at = alloca [32 x i8], align 4               ; 29 uses
  %i.au = alloca [16 x i8], align 8               ; 35 uses
  %i.av = alloca [48 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [16 x i8], align 16              ; 7 uses
  %i.ay = alloca [8 x i8], align 8                ; 6 uses
  %i.az = alloca [16 x i8], align 16              ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [16 x i8], align 16              ; 7 uses
  %i.bc = alloca [2 x i8], align 2                ; 4 uses
  %i.bd = alloca [8 x i8], align 8                ; 16 uses
  %i.be = alloca [16 x i8], align 8               ; 21 uses
  %i.bf = alloca [48 x i8], align 8               ; 6 uses
  %i.bg = alloca [152 x i8], align 8              ; 7 uses
  %i.bh = alloca [24 x i8], align 8               ; 6 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [136 x i8], align 8              ; 11 uses
  %i.bk = trunc nuw i16 %3 to i1
  %.sroa.727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 2 ; 6 uses
  %.sroa.6.2..sroa.727.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 6 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5653
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5654)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5655
  store i16 0, ptr %i.at, align 4, !noalias !5655
  store i32 16777343, ptr %.sroa.727.0..sroa_idx.i.i, align 2, !noalias !5656
  br i1 %i.bk, label %.lr.ph.split.us.i.us.i, label %.lr.ph.split.us.i.preheader.i

.lr.ph.split.us.i.preheader.i:                    ; preds = %bb.a
  store i16 3000, ptr %.sroa.6.2..sroa.727.0..sroa_idx.i.sroa_idx.i, align 2, !noalias !5656
  call void @_RNvNvMs7_NtNtNtNtCsaL1QbXo9JQH_3std3sys3net10connection6socketNtB7_11TcpListener4bind5inner(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.at), !noalias !5657
  %i.bo = load i32, ptr %i.au, align 8, !range !28, !alias.scope !5654, !noalias !5657, !noundef !17
  %i.bp = trunc nuw i32 %i.bo to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5655
  br i1 %i.bp, label %bb.g, label %.split207.us.i

.lr.ph.split.us.i.us.i:                           ; preds = %bb.a
  store i16 %4, ptr %.sroa.6.2..sroa.727.0..sroa_idx.i.sroa_idx.i, align 2, !noalias !5656
  call void @_RNvNvMs7_NtNtNtNtCsaL1QbXo9JQH_3std3sys3net10connection6socketNtB7_11TcpListener4bind5inner(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.at), !noalias !5657
  %i.bq = load i32, ptr %i.au, align 8, !range !28, !alias.scope !5654, !noalias !5657, !noundef !17
  %i.br = trunc nuw i32 %i.bq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5655
  br i1 %i.br, label %bb.b, label %.split207.us.i

bb.b:                                             ; preds = %.lr.ph.split.us.i.us.i
  %i.bs = load ptr, ptr %i.bl, align 8, !noalias !5653, !nonnull !17, !noundef !17 ; 8 uses
  store ptr %i.bs, ptr %i.bm, align 8, !noalias !5653
  store i32 1, ptr %i.be, align 8, !noalias !5653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5653
  %i.bt = ptrtoint ptr %i.bs to i64               ; 3 uses
  %i.bu = and i64 %i.bt, 3                        ; 2 uses
  switch i64 %i.bu, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.e
    i64 0, label %bb.d
    i64 1, label %bb.c
  ], !prof !30

bb.c:                                             ; preds = %bb.b
  %i.bv = getelementptr i8, ptr %i.bs, i64 31
  %i.bw = load i8, ptr %i.bv, align 8, !range !36, !noalias !5653, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.us.i

bb.d:                                             ; preds = %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.by = load i8, ptr %i.bx, align 8, !range !36, !noalias !5653, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.us.i

bb.e:                                             ; preds = %bb.b
  %i.bz = lshr i64 %i.bt, 32
  %i.ca = icmp ult ptr %i.bs, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.us.i = trunc i64 %i.bz to i8 ; 2 uses
  %i.cb = icmp ne i8 %switch.idx.cast.i.i.i.us.i, -1
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.assume(i1 %i.cb)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.us.i

bb.f:                                             ; preds = %bb.b
  %i.cc = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc118.us.i unwind label %.split209.us.i.a, !noalias !5653

.noexc118.us.i:                                   ; preds = %bb.f
  %i.cd = lshr i64 %i.bt, 32
  %i.ce = trunc nuw i64 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !5653, !nonnull !17, !noundef !17
  %i.ch = invoke noundef i8 %i.cg(i32 noundef %i.ce)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.us.i unwind label %.split209.us.i.a, !noalias !5653, !inline_history !1

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.us.i: ; preds = %.noexc118.us.i, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.us.i = phi i8 [ %i.bw, %bb.c ], [ %switch.idx.cast.i.i.i.us.i, %bb.e ], [ %i.by, %bb.d ], [ %i.ch, %.noexc118.us.i ]
  %i.ci = icmp eq i8 %.sroa.0.0.i.us.i, 8
  br i1 %i.ci, label %.split215.us.i, label %.split212.us.i

.split215.us.i:                                   ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !5653
  store ptr %i.bs, ptr %i.bd, align 8, !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !5653
  store i16 %4, ptr %i.bc, align 2, !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !5653
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) %i.bb, i8 0, i64 15, i1 false), !noalias !5653
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 15
  store i8 -128, ptr %.sroa.455.0..sroa_idx.i, align 1, !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !5653
  store ptr %i.bc, ptr %i.ba, align 8, !noalias !5653
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.459.0..sroa_idx.i, align 8, !noalias !5653
  %i.cj = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @115, ptr noundef nonnull @269, ptr noundef nonnull %i.ba)
          to label %bb.dl unwind label %bb.dk, !noalias !5653

default.unreachable:                              ; preds = %bb.fd, %bb.fa, %bb.ev, %bb.es, %bb.en, %bb.ek, %bb.ef, %bb.ec, %bb.dx, %bb.dn, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit117.i, %bb.da, %bb.g, %bb.b
  unreachable

.split209.us.i.a:                                 ; preds = %.noexc118.us.i, %bb.f
  %lpad.thr_comm.split-lp.us.i = landingpad { ptr, i32 }
          cleanup
  br label %6

common.resume:                                    ; preds = %.thread, %.body39, %bb.ii, %bb.l, %bb.cx, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.cz, %6, %bb.dj, %bb.dq
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.dq ], [ %i.jf, %bb.cz ], [ %.pn47.i.i, %bb.l ], [ %i.jn, %bb.cx ], [ %i.jn, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.jw, %bb.dj ], [ %.us-phi210.i, %6 ], [ %eh.lpad-body, %.thread ], [ %eh.lpad-body40, %.body39 ], [ %eh.lpad-body40, %bb.ii ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %.lr.ph.split.us.i.preheader.i
  store i32 1, ptr %i.au, align 8, !alias.scope !5654, !noalias !5657
  %i.ck = load ptr, ptr %i.bl, align 8, !noalias !5653, !nonnull !17, !noundef !17 ; 8 uses
  store ptr %i.ck, ptr %i.bm, align 8, !noalias !5653
  store i32 1, ptr %i.be, align 8, !noalias !5653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5653
  %i.cl = ptrtoint ptr %i.ck to i64               ; 4 uses
  %i.cm = and i64 %i.cl, 3                        ; 2 uses
  switch i64 %i.cm, label %default.unreachable [
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 0, label %bb.j
    i64 1, label %bb.k
  ], !prof !30

bb.h:                                             ; preds = %bb.g
  %i.cn = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc118.i unwind label %.split209.i, !noalias !5653

.noexc118.i:                                      ; preds = %bb.h
  %i.co = lshr i64 %i.cl, 32
  %i.cp = trunc nuw i64 %i.co to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !5653, !nonnull !17, !noundef !17
  %i.cs = invoke noundef i8 %i.cr(i32 noundef %i.cp)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i unwind label %.split209.i, !noalias !5653, !inline_history !1

bb.i:                                             ; preds = %bb.g
  %i.ct = lshr i64 %i.cl, 32
  %i.cu = icmp ult ptr %i.ck, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.ct to i8 ; 2 uses
  %i.cv = icmp ne i8 %switch.idx.cast.i.i.i.i, -1
  call void @llvm.assume(i1 %i.cu)
  call void @llvm.assume(i1 %i.cv)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i

bb.j:                                             ; preds = %bb.g
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !range !36, !noalias !5653, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i

bb.k:                                             ; preds = %bb.g
  %i.cy = getelementptr i8, ptr %i.ck, i64 31
  %i.cz = load i8, ptr %i.cy, align 8, !range !36, !noalias !5653, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i

.split207.us.sink.split.i:                        ; preds = %.lr.ph.split.us.i.5.i, %.lr.ph.split.us.i.4.i, %.lr.ph.split.us.i.3.i, %.lr.ph.split.us.i.2.i, %.lr.ph.split.us.i.1.i
  %.us-phi.ph.i = phi i16 [ 3003, %.lr.ph.split.us.i.3.i ], [ 3002, %.lr.ph.split.us.i.2.i ], [ 3001, %.lr.ph.split.us.i.1.i ], [ 3004, %.lr.ph.split.us.i.4.i ], [ 3005, %.lr.ph.split.us.i.5.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5657
  br label %.split207.us.i

.split207.us.i:                                   ; preds = %.split207.us.sink.split.i, %.lr.ph.split.us.i.us.i, %.lr.ph.split.us.i.preheader.i
  %.us-phi.i = phi i16 [ 3000, %.lr.ph.split.us.i.preheader.i ], [ %4, %.lr.ph.split.us.i.us.i ], [ %.us-phi.ph.i, %.split207.us.sink.split.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.db = load i32, ptr %i.da, align 4, !range !29, !noalias !5653, !noundef !17 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !5653
  store i64 -1, ptr %i.av, align 8, !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !5658
  store i32 0, ptr %i.as, align 4, !noalias !5658
  %i.dc = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.db, ptr %i.dc, align 4, !noalias !5658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !5658
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5658
  %i.dd = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !5658 ; 5 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.m, label %bb.n, !prof !15

bb.l:                                             ; preds = %bb.cr, %.noexc58.i.i
  %.pn47.i.i = phi { ptr, i32 } [ %.pn43.i.i, %.noexc58.i.i ], [ %.pn45104.i.i, %bb.cr ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbGiR87yI9G2_9tiny_http9SslConfigEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.av) #44, !noalias !5659
  br label %common.resume

bb.m:                                             ; preds = %.split207.us.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #43
          to label %.noexc.i.i unwind label %.split.thread.i.i, !noalias !5658

.noexc.i.i:                                       ; preds = %bb.m
  unreachable

.noexc58.i.i:                                     ; preds = %bb.o, %.body.i.i
  br i1 %.sroa.021.2.i.i, label %bb.cr, label %bb.l

.split.thread.i.i:                                ; preds = %bb.cq, %bb.m
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.n:                                             ; preds = %.split207.us.i
  store i64 1, ptr %i.dd, align 8, !noalias !5658
  %.sroa.489.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 1, ptr %.sroa.489.0..sroa_idx.i.i, align 8, !noalias !5658
  %.sroa.590.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i8 0, ptr %.sroa.590.0..sroa_idx.i.i, align 8, !noalias !5658
  store ptr %i.dd, ptr %i.ar, align 8, !noalias !5658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !5658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !5658
  invoke void @_RNvMNtCsbGiR87yI9G2_9tiny_http10connectionNtB2_8Listener10local_addr(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ap, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.as)
          to label %bb.q unwind label %bb.p, !noalias !5658

.body.i.i:                                        ; preds = %.thread.i120.i, %bb.ci, %.body65.i.i, %bb.t, %bb.p
  %.sroa.021.2.i.i = phi i1 [ true, %bb.t ], [ false, %.thread.i120.i ], [ true, %bb.p ], [ false, %.body65.i.i ], [ false, %bb.ci ]
  %.pn43.i.i = phi { ptr, i32 } [ %i.dp, %bb.t ], [ %eh.lpad-body50.i.i, %.thread.i120.i ], [ %i.di, %bb.p ], [ %eh.lpad-body66.i.i, %.body65.i.i ], [ %eh.lpad-body66.i.i, %bb.ci ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5660)
  call void @llvm.experimental.noalias.scope.decl(metadata !5661)
  %i.df = load ptr, ptr %i.ar, align 8, !alias.scope !5662, !noalias !5658, !nonnull !17, !noundef !17
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !5663
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.o, label %.noexc58.i.i

bb.o:                                             ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicbEE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #46
          to label %.noexc58.i.i unwind label %bb.co, !noalias !5658

bb.p:                                             ; preds = %bb.w, %bb.n
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.q:                                             ; preds = %bb.n
  %i.dj = load i32, ptr %i.ap, align 8, !range !40, !noalias !5658, !noundef !17 ; 3 uses
  %i.dk = icmp eq i32 %i.dj, 2
  br i1 %i.dk, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !5658, !nonnull !17, !noundef !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !5658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !5658
  store ptr %i.dm, ptr %i.aj, align 8, !noalias !5658
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5658
  %i.dn = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !5658 ; 3 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.s, label %bb.cp, !prof !15

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #43
          to label %.noexc59.i.i unwind label %bb.t, !noalias !5658

.noexc59.i.i:                                     ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj) #44
          to label %.body.i.i unwind label %bb.u, !noalias !5658

bb.u:                                             ; preds = %bb.t
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !5658
  unreachable

bb.v:                                             ; preds = %bb.q
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.sroa.426.0.copyload.i.i = load i32, ptr %.sroa.426.0..sroa_idx.i.i, align 4, !noalias !5658 ; 2 uses
  %.sroa.527.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.527.0.copyload.i.i = load ptr, ptr %.sroa.527.0..sroa_idx.i.i, align 8, !noalias !5658 ; 2 uses
  %.sroa.628.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.5.i.sroa.0.0.copyload.i = load ptr, ptr %.sroa.628.0..sroa_idx.i.i, align 8, !noalias !5658 ; 2 uses
  %.sroa.5.i.sroa.5.0..sroa.628.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.i.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.i.sroa.5.0..sroa.628.0..sroa_idx.i.sroa_idx.i, i64 96, i1 false), !noalias !5658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !5658
  store i32 %i.dj, ptr %i.aq, align 4, !noalias !5658
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %.sroa.426.0.copyload.i.i, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !noalias !5658
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.sroa.527.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !5658
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %.sroa.5.i.sroa.0.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !5658
  %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.i.sroa.5.i, i64 96, i1 false), !noalias !5658
  %i.dr = load atomic i64, ptr @_RNvCscpCkzoVBb9P_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !5658 ; 2 uses
  %i.ds = icmp ult i64 %i.dr, 6
  call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp samesign ugt i64 %i.dr, 3
  br i1 %i.dt, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !5658
  store ptr %i.aq, ptr %i.ao, align 8, !noalias !5658
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXsa_NtCsbGiR87yI9G2_9tiny_http10connectionNtB5_10ListenAddrNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !noalias !5658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !5664
  %i.du = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store i64 4, ptr %i.du, align 8, !noalias !5664
  %.sroa.422.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store ptr @14, ptr %.sroa.422.0..sroa_idx.i.i.i.i, align 8, !noalias !5664
  %.sroa.523.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store i64 9, ptr %.sroa.523.0..sroa_idx.i.i.i.i, align 8, !noalias !5664
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  store ptr @13, ptr %i.dv, align 8, !noalias !5664
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store ptr %i.ao, ptr %i.dw, align 8, !noalias !5664
  store i64 0, ptr %i.ai, align 8, !noalias !5664
  %.sroa.428.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @14, ptr %.sroa.428.0..sroa_idx.i.i.i.i, align 8, !noalias !5664
  %.sroa.529.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 9, ptr %.sroa.529.0..sroa_idx.i.i.i.i, align 8, !noalias !5664
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 0, ptr %i.dx, align 8, !noalias !5664
  %.sroa.434.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr @12, ptr %.sroa.434.0..sroa_idx.i.i.i.i, align 8, !noalias !5664
  %.sroa.535.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i64 96, ptr %.sroa.535.0..sroa_idx.i.i.i.i, align 8, !noalias !5664
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  store i32 1, ptr %i.dy, align 8, !noalias !5664
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ai, i64 76
  store i32 253, ptr %i.dz, align 4, !noalias !5664
  invoke void @_RNvXs0_NtCscpCkzoVBb9P_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ai)
          to label %bb.x unwind label %bb.p, !noalias !5658

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !5664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5658
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !5658
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5665
  %i.ea = call noundef align 8 dereferenceable_or_null(1408) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 1408, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !5665 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMNtCsc4241EHy6Do_9typst_kit6serverNtB2_10HttpServer3new:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #46
          to label %.body65.i.i unwind label %bb.ca, !noalias !5682

bb.cg:                                            ; preds = %bb.af
  call void @llvm.trap()
  unreachable

bb.ch:                                            ; preds = %bb.cn
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %.body65.i.i

.body65.i.i:                                      ; preds = %bb.ck, %bb.ch, %bb.cf, %bb.ce, %bb.cd, %bb.cc
  %eh.lpad-body66.i.i = phi { ptr, i32 } [ %i.ir, %bb.ck ], [ %i.in, %bb.ch ], [ %.pn2721.i.i.i.i, %bb.cf ], [ %.pn2721.i.i.i.i, %bb.ce ], [ %.pn2721.i.i.i.i, %bb.cd ], [ %.pn2721.i.i.i.i, %bb.cc ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5701)
  call void @llvm.experimental.noalias.scope.decl(metadata !5702)
  %i.io = load ptr, ptr %i.an, align 8, !alias.scope !5703, !noalias !5658, !nonnull !17, !noundef !17
  %i.ip = atomicrmw sub ptr %i.io, i64 1 release, align 8, !noalias !5704
  %i.iq = icmp eq i64 %i.ip, 1
  br i1 %i.iq, label %bb.ci, label %.body.i.i

bb.ci:                                            ; preds = %.body65.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsbGiR87yI9G2_9tiny_http4util14messages_queue13MessagesQueueNtBN_7MessageEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #46
          to label %.body.i.i unwind label %bb.co, !noalias !5658

bb.cj:                                            ; preds = %bb.bx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !5668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !5667
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hv) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !5658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5705
  store ptr %i.hv, ptr %i.w, align 8, !noalias !5705
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 22, ptr noundef nonnull %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @189, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #43
          to label %bb.cl unwind label %bb.ck, !noalias !5705

bb.ck:                                            ; preds = %bb.cj
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #44
          to label %.body65.i.i unwind label %bb.cm, !noalias !5705

bb.cl:                                            ; preds = %bb.cj
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !5705
  unreachable

bb.cn:                                            ; preds = %bb.bu
  %i.it = ptrtoint ptr %i.hv to i64
  %i.iu = load ptr, ptr %i.af, align 8, !noalias !5668, !nonnull !17, !noundef !17
  %i.iv = load ptr, ptr %i.ad, align 8, !noalias !5668, !nonnull !17, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !5668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !5668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !5667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !5658
  call void @llvm.experimental.noalias.scope.decl(metadata !5706)
  call void @llvm.experimental.noalias.scope.decl(metadata !5707)
  store ptr %i.iu, ptr %i.am, align 8, !alias.scope !5708, !noalias !5658
  %.sroa.6100.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.iv, ptr %.sroa.6100.0..sroa_idx.i.i, align 8, !alias.scope !5708, !noalias !5658
  %.sroa.9.0..sroa_idx.i121.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.it, ptr %.sroa.9.0..sroa_idx.i121.i, align 8, !alias.scope !5708, !noalias !5658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5658
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am)
          to label %_RNvNtCsc4241EHy6Do_9typst_kit6server12start_server.exit unwind label %bb.ch, !noalias !5658

bb.co:                                            ; preds = %bb.ci, %bb.o
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !5658
  unreachable

_RINvMs1_CsbGiR87yI9G2_9tiny_httpNtB6_6Server13from_listenerNtNtNtCsaL1QbXo9JQH_3std3net3tcp11TcpListenerECsc4241EHy6Do_9typst_kit.exit.thread.i: ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !5658
  %i.ix = call noundef i32 @close(i32 noundef range(i32 0, -1) %i.db) #40, !noalias !5658 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5658
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5653
  store ptr %i.dn, ptr %i.v, align 8, !noalias !5709
  %i.iy = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store ptr @19, ptr %i.iy, align 8, !noalias !5709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5709
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) %i.u, i8 0, i64 15, i1 false), !noalias !5709
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx.i.i, align 1, !noalias !5709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5709
  store ptr %i.v, ptr %i.t, align 8, !noalias !5709
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsm_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtBM_3fmt7Display3fmtCsc4241EHy6Do_9typst_kit, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !5709
  %i.iz = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @115, ptr noundef nonnull @184, ptr noundef nonnull %i.t)
          to label %bb.ct unwind label %bb.cs, !noalias !5710

.thread.i120.i:                                   ; preds = %bb.ad, %bb.ab
  %eh.lpad-body50.i.i = phi { ptr, i32 } [ %i.eg, %bb.ab ], [ %i.ei, %bb.ad ]
  %i.ja = call noundef i32 @close(i32 noundef range(i32 0, -1) %i.db) #40, !noalias !5658 ; 0 uses
  br label %.body.i.i

bb.cp:                                            ; preds = %bb.r
  store ptr %i.dm, ptr %i.dn, align 8, !noalias !5658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !5658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5658
  call void @llvm.experimental.noalias.scope.decl(metadata !5711)
  call void @llvm.experimental.noalias.scope.decl(metadata !5712)
  %i.jb = load ptr, ptr %i.ar, align 8, !alias.scope !5713, !noalias !5658, !nonnull !17, !noundef !17
  %i.jc = atomicrmw sub ptr %i.jb, i64 1 release, align 8, !noalias !5714
  %i.jd = icmp eq i64 %i.jc, 1
  br i1 %i.jd, label %bb.cq, label %_RINvMs1_CsbGiR87yI9G2_9tiny_httpNtB6_6Server13from_listenerNtNtNtCsaL1QbXo9JQH_3std3net3tcp11TcpListenerECsc4241EHy6Do_9typst_kit.exit.thread.i

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicbEE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #46
          to label %_RINvMs1_CsbGiR87yI9G2_9tiny_httpNtB6_6Server13from_listenerNtNtNtCsaL1QbXo9JQH_3std3net3tcp11TcpListenerECsc4241EHy6Do_9typst_kit.exit.thread.i unwind label %.split.thread.i.i, !noalias !5658

bb.cr:                                            ; preds = %.split.thread.i.i, %.noexc58.i.i
  %.pn45104.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.split.thread.i.i ], [ %.pn43.i.i, %.noexc58.i.i ]
  %i.je = call noundef i32 @close(i32 noundef range(i32 0, -1) %i.db) #40, !noalias !5658 ; 0 uses
  br label %bb.l

bb.cs:                                            ; preds = %bb.cu, %_RINvMs1_CsbGiR87yI9G2_9tiny_httpNtB6_6Server13from_listenerNtNtNtCsaL1QbXo9JQH_3std3net3tcp11TcpListenerECsc4241EHy6Do_9typst_kit.exit.thread.i
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u) #44
          to label %bb.cz unwind label %bb.cy, !noalias !5710

bb.ct:                                            ; preds = %_RINvMs1_CsbGiR87yI9G2_9tiny_httpNtB6_6Server13from_listenerNtNtNtCsaL1QbXo9JQH_3std3net3tcp11TcpListenerECsc4241EHy6Do_9typst_kit.exit.thread.i
  br i1 %i.iz, label %bb.cu, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i.i, !prof !23

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #47
          to label %.noexc.i123.i unwind label %bb.cs, !noalias !5710

.noexc.i123.i:                                    ; preds = %bb.cu
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5709
  %i.jg = load <2 x ptr>, ptr %i.u, align 16, !noalias !5715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5709
  %.val24.i.i = load ptr, ptr %i.v, align 8, !noalias !5709 ; 5 uses
  %.val25.i.i = load ptr, ptr %i.iy, align 8, !noalias !5709, !nonnull !17, !align !25, !noundef !17 ; 5 uses
  %i.jh = load ptr, ptr %.val25.i.i, align 8, !invariant.load !17, !noalias !5710 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val24.i.i) ]
  invoke void %i.jh(ptr noundef nonnull %.val24.i.i)
          to label %bb.cw unwind label %bb.cx, !noalias !5710

bb.cw:                                            ; preds = %bb.cv, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %.val25.i.i, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !range !21, !invariant.load !17, !noalias !5710 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %_RNCNvNtCsc4241EHy6Do_9typst_kit6server12start_server0B5_.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.cw
  %i.jl = getelementptr inbounds nuw i8, ptr %.val25.i.i, i64 16
  %i.jm = load i64, ptr %i.jl, align 8, !range !24, !invariant.load !17, !noalias !5710
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val24.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24.i.i, i64 noundef %i.jj, i64 noundef range(i64 1, -9223372036854775807) %i.jm) #40, !noalias !5710
  br label %_RNCNvNtCsc4241EHy6Do_9typst_kit6server12start_server0B5_.exit.i

bb.cx:                                            ; preds = %bb.cv
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.val25.i.i, i64 8
  %i.jp = load i64, ptr %i.jo, align 8, !range !21, !invariant.load !17, !noalias !5710 ; 2 uses
  %i.jq = icmp eq i64 %i.jp, 0
  br i1 %i.jq, label %common.resume, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.cx
  %i.jr = getelementptr inbounds nuw i8, ptr %.val25.i.i, i64 16
  %i.js = load i64, ptr %i.jr, align 8, !range !24, !invariant.load !17, !noalias !5710
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24.i.i, i64 noundef %i.jp, i64 noundef range(i64 1, -9223372036854775807) %i.js) #40, !noalias !5710
  br label %common.resume

bb.cy:                                            ; preds = %bb.cz, %bb.cs
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !5710
  unreachable

bb.cz:                                            ; preds = %bb.cs
  %.val.i.i = load ptr, ptr %i.v, align 8, !noalias !5709
  %.val23.i.i = load ptr, ptr %i.iy, align 8, !noalias !5709, !nonnull !17, !align !25, !noundef !17
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsc4241EHy6Do_9typst_kit(ptr %.val.i.i, ptr nonnull %.val23.i.i) #44
          to label %common.resume unwind label %bb.cy, !noalias !5710

_RNCNvNtCsc4241EHy6Do_9typst_kit6server12start_server0B5_.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5653
  br label %_RNvNtCsc4241EHy6Do_9typst_kit6server12start_server.exit.thread

.split209.i:                                      ; preds = %.noexc118.5.i, %bb.fh, %.noexc118.4.i, %bb.ez, %.noexc118.3.i, %bb.er, %.noexc118.2.i, %bb.ej, %.noexc118.1.i, %bb.eb, %.noexc118.i, %bb.h
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %6

6:                                                ; preds = %.split209.i, %.split209.us.i.a
  %.us-phi210.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.split209.i ], [ %lpad.thr_comm.split-lp.us.i, %.split209.us.i.a ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bm) #44
          to label %common.resume unwind label %bb.di, !noalias !5653

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %.noexc118.i
  %.sroa.0.0.i.i = phi i8 [ %i.cz, %bb.k ], [ %switch.idx.cast.i.i.i.i, %bb.i ], [ %i.cx, %bb.j ], [ %i.cs, %.noexc118.i ]
  %i.ju = icmp eq i8 %.sroa.0.0.i.i, 8
  br i1 %i.ju, label %bb.da, label %.split212.us.i

.split212.us.i:                                   ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.5.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.4.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.3.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.2.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.1.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.us.i
  %.us-phi213.i = phi ptr [ %i.bs, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.us.i ], [ %i.ck, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i ], [ %i.kx, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.1.i ], [ %i.lu, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.2.i ], [ %i.mr, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.3.i ], [ %i.no, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.4.i ], [ %i.ol, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.5.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !5653
  store ptr %.us-phi213.i, ptr %i.ay, align 8, !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !5653
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) %i.ax, i8 0, i64 15, i1 false), !noalias !5653
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 15
  store i8 -128, ptr %.sroa.449.0..sroa_idx.i, align 1, !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !5653
  store ptr %i.ay, ptr %i.aw, align 8, !noalias !5653
  %.sroa.493.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.493.0..sroa_idx.i, align 8, !noalias !5653
  %i.jv = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @115, ptr noundef nonnull @267, ptr noundef nonnull %i.aw)
          to label %bb.dc unwind label %bb.db, !noalias !5653

bb.da:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5716
  switch i64 %i.cm, label %default.unreachable [
    i64 2, label %.lr.ph.split.us.i.1.i
    i64 3, label %bb.ds
    i64 0, label %.lr.ph.split.us.i.1.i
    i64 1, label %bb.dt
  ], !prof !30

bb.db:                                            ; preds = %bb.dd, %.split212.us.i
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ax) #44
          to label %bb.dj unwind label %bb.di, !noalias !5653

bb.dc:                                            ; preds = %.split212.us.i
  br i1 %i.jv, label %bb.dd, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit117.i, !prof !23

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @268) #47
          to label %.noexc116.i unwind label %bb.db, !noalias !5653

.noexc116.i:                                      ; preds = %bb.dd
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit117.i: ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5653
  %i.jx = load <2 x ptr>, ptr %i.ax, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !5653
  call void @llvm.experimental.noalias.scope.decl(metadata !5717)
  %.val.i124.i = load ptr, ptr %i.ay, align 8, !alias.scope !5717, !noalias !5653, !nonnull !17, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5718
  %i.jy = ptrtoint ptr %.val.i124.i to i64        ; 2 uses
  %i.jz = and i64 %i.jy, 3
  switch i64 %i.jz, label %default.unreachable [
    i64 2, label %bb.dg
    i64 3, label %bb.de
    i64 0, label %bb.dg
    i64 1, label %bb.df
  ], !prof !30

bb.de:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit117.i
  %i.ka = icmp ult ptr %.val.i124.i, inttoptr (i64 188978561024 to ptr)
  %i.kb = and i64 %i.jy, 1095216660480
  %i.kc = icmp ne i64 %i.kb, 1095216660480
  call void @llvm.assume(i1 %i.ka)
  call void @llvm.assume(i1 %i.kc)
  br label %bb.dg

bb.df:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit117.i
  %i.kd = getelementptr i8, ptr %.val.i124.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kd) ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.kd, ptr %i.ke, align 8, !alias.scope !5719, !noalias !5718
  store i8 3, ptr %i.s, align 8, !alias.scope !5719, !noalias !5718
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ke), !noalias !5653
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit117.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit117.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !5653
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dw, %bb.dg
  %i.kf = phi <2 x ptr> [ %i.kl, %bb.dw ], [ %i.jx, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !5653
  br label %_RNvNtCsc4241EHy6Do_9typst_kit6server12start_server.exit.thread

bb.di:                                            ; preds = %bb.du, %bb.dq, %bb.dk, %bb.dj, %bb.db, %6
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !5653
  unreachable

bb.dj:                                            ; preds = %bb.db
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay) #44
          to label %common.resume unwind label %bb.di, !noalias !5653

bb.dk:                                            ; preds = %bb.dm, %.split215.us.i
  %i.kh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bb) #44
          to label %bb.dq unwind label %bb.di, !noalias !5653

bb.dl:                                            ; preds = %.split215.us.i
  br i1 %i.cj, label %bb.dm, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i, !prof !23

bb.dm:                                            ; preds = %bb.dl
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #47
          to label %.noexc.i unwind label %bb.dk, !noalias !5653

.noexc.i:                                         ; preds = %bb.dm
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !5653
  %i.ki = load <2 x ptr>, ptr %i.bb, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !5653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !5653
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dv, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i
  %i.kj = phi ptr [ %i.bs, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i ], [ %i.ol, %bb.dv ] ; 2 uses
  %i.kk = phi i64 [ %i.bu, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i ], [ %i.on, %bb.dv ]
  %i.kl = phi <2 x ptr> [ %i.ki, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.i ], [ %i.ku, %bb.dv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5720
  switch i64 %i.kk, label %default.unreachable [
    i64 2, label %bb.dw
    i64 3, label %bb.do
    i64 0, label %bb.dw
    i64 1, label %bb.dp
  ], !prof !30

bb.do:                                            ; preds = %bb.dn
  %i.km = icmp ult ptr %i.kj, inttoptr (i64 188978561024 to ptr)
  call void @llvm.assume(i1 %i.km)
  br label %bb.dw

bb.dp:                                            ; preds = %bb.dn
  %i.kn = getelementptr i8, ptr %i.kj, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kn) ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.kn, ptr %i.ko, align 8, !alias.scope !5721, !noalias !5720
  store i8 3, ptr %i.r, align 8, !alias.scope !5721, !noalias !5720
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ko), !noalias !5653
  br label %bb.dw

bb.dq:                                            ; preds = %bb.du, %bb.dk
  %.pn.i = phi { ptr, i32 } [ %i.kh, %bb.dk ], [ %i.kt, %bb.du ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd) #44
          to label %common.resume unwind label %bb.di, !noalias !5653

bb.dr:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !5653
  store ptr %i.ol, ptr %i.bd, align 8, !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !5653
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) %i.az, i8 0, i64 15, i1 false), !noalias !5653
  %.sroa.477.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 15
  store i8 -128, ptr %.sroa.477.0..sroa_idx.i, align 1, !noalias !5653
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @271, i64 noundef 40)
          to label %bb.dv unwind label %bb.du, !noalias !5653

bb.ds:                                            ; preds = %bb.da
  %i.kp = icmp ult ptr %i.ck, inttoptr (i64 188978561024 to ptr)
  %i.kq = and i64 %i.cl, 1095216660480
  %i.kr = icmp ne i64 %i.kq, 1095216660480
  call void @llvm.assume(i1 %i.kp)
  call void @llvm.assume(i1 %i.kr)
  br label %.lr.ph.split.us.i.1.i

bb.dt:                                            ; preds = %bb.da
  %i.ks = getelementptr i8, ptr %i.ck, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ks) ]
  store ptr %i.ks, ptr %i.bn, align 8, !alias.scope !5722, !noalias !5716
  store i8 3, ptr %i.q, align 8, !alias.scope !5722, !noalias !5716
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bn), !noalias !5653
  br label %.lr.ph.split.us.i.1.i

bb.du:                                            ; preds = %bb.dr
  %i.kt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.az) #44
          to label %bb.dq unwind label %bb.di, !noalias !5653

bb.dv:                                            ; preds = %bb.dr
  %i.ku = load <2 x ptr>, ptr %i.az, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !5653
  br label %bb.dn

bb.dw:                                            ; preds = %bb.dp, %bb.do, %bb.dn, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !5653
  br label %bb.dh

.lr.ph.split.us.i.1.i:                            ; preds = %bb.dt, %bb.ds, %bb.da, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !5653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5653
  call void @llvm.experimental.noalias.scope.decl(metadata !5723)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5724
  store i16 0, ptr %i.at, align 4, !noalias !5724
  store i32 16777343, ptr %.sroa.727.0..sroa_idx.i.i, align 2, !noalias !5725
  store i16 3001, ptr %.sroa.6.2..sroa.727.0..sroa_idx.i.sroa_idx.i, align 2, !noalias !5725
  call void @_RNvNvMs7_NtNtNtNtCsaL1QbXo9JQH_3std3sys3net10connection6socketNtB7_11TcpListener4bind5inner(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.at), !noalias !5657
  %i.kv = load i32, ptr %i.au, align 8, !range !28, !alias.scope !5723, !noalias !5657, !noundef !17
  %i.kw = trunc nuw i32 %i.kv to i1
  br i1 %i.kw, label %bb.dx, label %.split207.us.sink.split.i

bb.dx:                                            ; preds = %.lr.ph.split.us.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5724
  store i32 1, ptr %i.au, align 8, !alias.scope !5723, !noalias !5657
  %i.kx = load ptr, ptr %i.bl, align 8, !noalias !5653, !nonnull !17, !noundef !17 ; 8 uses
  store ptr %i.kx, ptr %i.bm, align 8, !noalias !5653
  store i32 1, ptr %i.be, align 8, !noalias !5653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5653
  %i.ky = ptrtoint ptr %i.kx to i64               ; 4 uses
  %i.kz = and i64 %i.ky, 3                        ; 2 uses
  switch i64 %i.kz, label %default.unreachable [
    i64 2, label %bb.eb
    i64 3, label %bb.ea
    i64 0, label %bb.dz
    i64 1, label %bb.dy
  ], !prof !30

bb.dy:                                            ; preds = %bb.dx
  %i.la = getelementptr i8, ptr %i.kx, i64 31
  %i.lb = load i8, ptr %i.la, align 8, !range !36, !noalias !5653, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.1.i

bb.dz:                                            ; preds = %bb.dx
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.ld = load i8, ptr %i.lc, align 8, !range !36, !noalias !5653, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.1.i

bb.ea:                                            ; preds = %bb.dx
  %i.le = lshr i64 %i.ky, 32
  %i.lf = icmp ult ptr %i.kx, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.1.i = trunc i64 %i.le to i8 ; 2 uses
  %i.lg = icmp ne i8 %switch.idx.cast.i.i.i.1.i, -1
  call void @llvm.assume(i1 %i.lf)
  call void @llvm.assume(i1 %i.lg)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.1.i

bb.eb:                                            ; preds = %bb.dx
  %i.lh = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc118.1.i unwind label %.split209.i, !noalias !5653

.noexc118.1.i:                                    ; preds = %bb.eb
  %i.li = lshr i64 %i.ky, 32
  %i.lj = trunc nuw i64 %i.li to i32
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !noalias !5653, !nonnull !17, !noundef !17
  %i.lm = invoke noundef i8 %i.ll(i32 noundef %i.lj)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.1.i unwind label %.split209.i, !noalias !5653, !inline_history !1

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.1.i: ; preds = %.noexc118.1.i, %bb.ea, %bb.dz, %bb.dy
  %.sroa.0.0.i.1.i = phi i8 [ %i.lb, %bb.dy ], [ %switch.idx.cast.i.i.i.1.i, %bb.ea ], [ %i.ld, %bb.dz ], [ %i.lm, %.noexc118.1.i ]
  %i.ln = icmp eq i8 %.sroa.0.0.i.1.i, 8
  br i1 %i.ln, label %bb.ec, label %.split212.us.i

bb.ec:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5716
  switch i64 %i.kz, label %default.unreachable [
    i64 2, label %.lr.ph.split.us.i.2.i
    i64 3, label %bb.ee
    i64 0, label %.lr.ph.split.us.i.2.i
    i64 1, label %bb.ed
  ], !prof !30

bb.ed:                                            ; preds = %bb.ec
  %i.lo = getelementptr i8, ptr %i.kx, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lo) ]
  store ptr %i.lo, ptr %i.bn, align 8, !alias.scope !5722, !noalias !5716
  store i8 3, ptr %i.q, align 8, !alias.scope !5722, !noalias !5716
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bn), !noalias !5653
  br label %.lr.ph.split.us.i.2.i

bb.ee:                                            ; preds = %bb.ec
  %i.lp = icmp ult ptr %i.kx, inttoptr (i64 188978561024 to ptr)
  %i.lq = and i64 %i.ky, 1095216660480
  %i.lr = icmp ne i64 %i.lq, 1095216660480
  call void @llvm.assume(i1 %i.lp)
  call void @llvm.assume(i1 %i.lr)
  br label %.lr.ph.split.us.i.2.i

.lr.ph.split.us.i.2.i:                            ; preds = %bb.ee, %bb.ed, %bb.ec, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !5653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5653
  call void @llvm.experimental.noalias.scope.decl(metadata !5726)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5727
  store i16 0, ptr %i.at, align 4, !noalias !5727
  store i32 16777343, ptr %.sroa.727.0..sroa_idx.i.i, align 2, !noalias !5728
  store i16 3002, ptr %.sroa.6.2..sroa.727.0..sroa_idx.i.sroa_idx.i, align 2, !noalias !5728
  call void @_RNvNvMs7_NtNtNtNtCsaL1QbXo9JQH_3std3sys3net10connection6socketNtB7_11TcpListener4bind5inner(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.at), !noalias !5657
  %i.ls = load i32, ptr %i.au, align 8, !range !28, !alias.scope !5726, !noalias !5657, !noundef !17
  %i.lt = trunc nuw i32 %i.ls to i1
  br i1 %i.lt, label %bb.ef, label %.split207.us.sink.split.i

bb.ef:                                            ; preds = %.lr.ph.split.us.i.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5727
  store i32 1, ptr %i.au, align 8, !alias.scope !5726, !noalias !5657
  %i.lu = load ptr, ptr %i.bl, align 8, !noalias !5653, !nonnull !17, !noundef !17 ; 8 uses
  store ptr %i.lu, ptr %i.bm, align 8, !noalias !5653
  store i32 1, ptr %i.be, align 8, !noalias !5653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5653
  %i.lv = ptrtoint ptr %i.lu to i64               ; 4 uses
  %i.lw = and i64 %i.lv, 3                        ; 2 uses
  switch i64 %i.lw, label %default.unreachable [
    i64 2, label %bb.ej
    i64 3, label %bb.ei
    i64 0, label %bb.eh
    i64 1, label %bb.eg
  ], !prof !30

bb.eg:                                            ; preds = %bb.ef
  %i.lx = getelementptr i8, ptr %i.lu, i64 31
  %i.ly = load i8, ptr %i.lx, align 8, !range !36, !noalias !5653, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.2.i

bb.eh:                                            ; preds = %bb.ef
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.ma = load i8, ptr %i.lz, align 8, !range !36, !noalias !5653, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.2.i

bb.ei:                                            ; preds = %bb.ef
  %i.mb = lshr i64 %i.lv, 32
  %i.mc = icmp ult ptr %i.lu, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.2.i = trunc i64 %i.mb to i8 ; 2 uses
  %i.md = icmp ne i8 %switch.idx.cast.i.i.i.2.i, -1
  call void @llvm.assume(i1 %i.mc)
  call void @llvm.assume(i1 %i.md)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.2.i

bb.ej:                                            ; preds = %bb.ef
  %i.me = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc118.2.i unwind label %.split209.i, !noalias !5653

.noexc118.2.i:                                    ; preds = %bb.ej
  %i.mf = lshr i64 %i.lv, 32
  %i.mg = trunc nuw i64 %i.mf to i32
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !noalias !5653, !nonnull !17, !noundef !17
  %i.mj = invoke noundef i8 %i.mi(i32 noundef %i.mg)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.2.i unwind label %.split209.i, !noalias !5653, !inline_history !1

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.2.i: ; preds = %.noexc118.2.i, %bb.ei, %bb.eh, %bb.eg
  %.sroa.0.0.i.2.i = phi i8 [ %i.ly, %bb.eg ], [ %switch.idx.cast.i.i.i.2.i, %bb.ei ], [ %i.ma, %bb.eh ], [ %i.mj, %.noexc118.2.i ]
  %i.mk = icmp eq i8 %.sroa.0.0.i.2.i, 8
  br i1 %i.mk, label %bb.ek, label %.split212.us.i

bb.ek:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.2.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5716
  switch i64 %i.lw, label %default.unreachable [
    i64 2, label %.lr.ph.split.us.i.3.i
    i64 3, label %bb.em
    i64 0, label %.lr.ph.split.us.i.3.i
    i64 1, label %bb.el
  ], !prof !30

bb.el:                                            ; preds = %bb.ek
  %i.ml = getelementptr i8, ptr %i.lu, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ml) ]
  store ptr %i.ml, ptr %i.bn, align 8, !alias.scope !5722, !noalias !5716
  store i8 3, ptr %i.q, align 8, !alias.scope !5722, !noalias !5716
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bn), !noalias !5653
  br label %.lr.ph.split.us.i.3.i

bb.em:                                            ; preds = %bb.ek
  %i.mm = icmp ult ptr %i.lu, inttoptr (i64 188978561024 to ptr)
  %i.mn = and i64 %i.lv, 1095216660480
  %i.mo = icmp ne i64 %i.mn, 1095216660480
  call void @llvm.assume(i1 %i.mm)
  call void @llvm.assume(i1 %i.mo)
  br label %.lr.ph.split.us.i.3.i

.lr.ph.split.us.i.3.i:                            ; preds = %bb.em, %bb.el, %bb.ek, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !5653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5653
  call void @llvm.experimental.noalias.scope.decl(metadata !5729)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5730
  store i16 0, ptr %i.at, align 4, !noalias !5730
  store i32 16777343, ptr %.sroa.727.0..sroa_idx.i.i, align 2, !noalias !5731
  store i16 3003, ptr %.sroa.6.2..sroa.727.0..sroa_idx.i.sroa_idx.i, align 2, !noalias !5731
  call void @_RNvNvMs7_NtNtNtNtCsaL1QbXo9JQH_3std3sys3net10connection6socketNtB7_11TcpListener4bind5inner(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.at), !noalias !5657
  %i.mp = load i32, ptr %i.au, align 8, !range !28, !alias.scope !5729, !noalias !5657, !noundef !17
  %i.mq = trunc nuw i32 %i.mp to i1
  br i1 %i.mq, label %bb.en, label %.split207.us.sink.split.i

bb.en:                                            ; preds = %.lr.ph.split.us.i.3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5730
  store i32 1, ptr %i.au, align 8, !alias.scope !5729, !noalias !5657
  %i.mr = load ptr, ptr %i.bl, align 8, !noalias !5653, !nonnull !17, !noundef !17 ; 8 uses
  store ptr %i.mr, ptr %i.bm, align 8, !noalias !5653
  store i32 1, ptr %i.be, align 8, !noalias !5653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5653
  %i.ms = ptrtoint ptr %i.mr to i64               ; 4 uses
  %i.mt = and i64 %i.ms, 3                        ; 2 uses
  switch i64 %i.mt, label %default.unreachable [
    i64 2, label %bb.er
    i64 3, label %bb.eq
    i64 0, label %bb.ep
    i64 1, label %bb.eo
  ], !prof !30

bb.eo:                                            ; preds = %bb.en
  %i.mu = getelementptr i8, ptr %i.mr, i64 31
  %i.mv = load i8, ptr %i.mu, align 8, !range !36, !noalias !5653, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.3.i

bb.ep:                                            ; preds = %bb.en
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mx = load i8, ptr %i.mw, align 8, !range !36, !noalias !5653, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.3.i

bb.eq:                                            ; preds = %bb.en
  %i.my = lshr i64 %i.ms, 32
  %i.mz = icmp ult ptr %i.mr, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.3.i = trunc i64 %i.my to i8 ; 2 uses
  %i.na = icmp ne i8 %switch.idx.cast.i.i.i.3.i, -1
  call void @llvm.assume(i1 %i.mz)
  call void @llvm.assume(i1 %i.na)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.3.i

bb.er:                                            ; preds = %bb.en
  %i.nb = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc118.3.i unwind label %.split209.i, !noalias !5653

.noexc118.3.i:                                    ; preds = %bb.er
  %i.nc = lshr i64 %i.ms, 32
  %i.nd = trunc nuw i64 %i.nc to i32
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !5653, !nonnull !17, !noundef !17
  %i.ng = invoke noundef i8 %i.nf(i32 noundef %i.nd)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.3.i unwind label %.split209.i, !noalias !5653, !inline_history !1

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.3.i: ; preds = %.noexc118.3.i, %bb.eq, %bb.ep, %bb.eo
  %.sroa.0.0.i.3.i = phi i8 [ %i.mv, %bb.eo ], [ %switch.idx.cast.i.i.i.3.i, %bb.eq ], [ %i.mx, %bb.ep ], [ %i.ng, %.noexc118.3.i ]
  %i.nh = icmp eq i8 %.sroa.0.0.i.3.i, 8
  br i1 %i.nh, label %bb.es, label %.split212.us.i

bb.es:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5716
  switch i64 %i.mt, label %default.unreachable [
    i64 2, label %.lr.ph.split.us.i.4.i
    i64 3, label %bb.eu
    i64 0, label %.lr.ph.split.us.i.4.i
    i64 1, label %bb.et
  ], !prof !30

bb.et:                                            ; preds = %bb.es
  %i.ni = getelementptr i8, ptr %i.mr, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ni) ]
  store ptr %i.ni, ptr %i.bn, align 8, !alias.scope !5722, !noalias !5716
  store i8 3, ptr %i.q, align 8, !alias.scope !5722, !noalias !5716
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bn), !noalias !5653
  br label %.lr.ph.split.us.i.4.i

bb.eu:                                            ; preds = %bb.es
  %i.nj = icmp ult ptr %i.mr, inttoptr (i64 188978561024 to ptr)
  %i.nk = and i64 %i.ms, 1095216660480
  %i.nl = icmp ne i64 %i.nk, 1095216660480
  call void @llvm.assume(i1 %i.nj)
  call void @llvm.assume(i1 %i.nl)
  br label %.lr.ph.split.us.i.4.i

.lr.ph.split.us.i.4.i:                            ; preds = %bb.eu, %bb.et, %bb.es, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !5653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5653
  call void @llvm.experimental.noalias.scope.decl(metadata !5732)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5733
  store i16 0, ptr %i.at, align 4, !noalias !5733
  store i32 16777343, ptr %.sroa.727.0..sroa_idx.i.i, align 2, !noalias !5734
  store i16 3004, ptr %.sroa.6.2..sroa.727.0..sroa_idx.i.sroa_idx.i, align 2, !noalias !5734
  call void @_RNvNvMs7_NtNtNtNtCsaL1QbXo9JQH_3std3sys3net10connection6socketNtB7_11TcpListener4bind5inner(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.at), !noalias !5657
  %i.nm = load i32, ptr %i.au, align 8, !range !28, !alias.scope !5732, !noalias !5657, !noundef !17
  %i.nn = trunc nuw i32 %i.nm to i1
  br i1 %i.nn, label %bb.ev, label %.split207.us.sink.split.i

bb.ev:                                            ; preds = %.lr.ph.split.us.i.4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5733
  store i32 1, ptr %i.au, align 8, !alias.scope !5732, !noalias !5657
  %i.no = load ptr, ptr %i.bl, align 8, !noalias !5653, !nonnull !17, !noundef !17 ; 8 uses
  store ptr %i.no, ptr %i.bm, align 8, !noalias !5653
  store i32 1, ptr %i.be, align 8, !noalias !5653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5653
  %i.np = ptrtoint ptr %i.no to i64               ; 4 uses
  %i.nq = and i64 %i.np, 3                        ; 2 uses
  switch i64 %i.nq, label %default.unreachable [
    i64 2, label %bb.ez
    i64 3, label %bb.ey
    i64 0, label %bb.ex
    i64 1, label %bb.ew
  ], !prof !30

bb.ew:                                            ; preds = %bb.ev
  %i.nr = getelementptr i8, ptr %i.no, i64 31
  %i.ns = load i8, ptr %i.nr, align 8, !range !36, !noalias !5653, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.4.i

bb.ex:                                            ; preds = %bb.ev
  %i.nt = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nu = load i8, ptr %i.nt, align 8, !range !36, !noalias !5653, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.4.i

bb.ey:                                            ; preds = %bb.ev
  %i.nv = lshr i64 %i.np, 32
  %i.nw = icmp ult ptr %i.no, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.4.i = trunc i64 %i.nv to i8 ; 2 uses
  %i.nx = icmp ne i8 %switch.idx.cast.i.i.i.4.i, -1
  call void @llvm.assume(i1 %i.nw)
  call void @llvm.assume(i1 %i.nx)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.4.i

bb.ez:                                            ; preds = %bb.ev
  %i.ny = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc118.4.i unwind label %.split209.i, !noalias !5653

.noexc118.4.i:                                    ; preds = %bb.ez
  %i.nz = lshr i64 %i.np, 32
  %i.oa = trunc nuw i64 %i.nz to i32
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8, !noalias !5653, !nonnull !17, !noundef !17
  %i.od = invoke noundef i8 %i.oc(i32 noundef %i.oa)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.4.i unwind label %.split209.i, !noalias !5653, !inline_history !1

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.4.i: ; preds = %.noexc118.4.i, %bb.ey, %bb.ex, %bb.ew
  %.sroa.0.0.i.4.i = phi i8 [ %i.ns, %bb.ew ], [ %switch.idx.cast.i.i.i.4.i, %bb.ey ], [ %i.nu, %bb.ex ], [ %i.od, %.noexc118.4.i ]
  %i.oe = icmp eq i8 %.sroa.0.0.i.4.i, 8
  br i1 %i.oe, label %bb.fa, label %.split212.us.i

bb.fa:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.4.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5716
  switch i64 %i.nq, label %default.unreachable [
    i64 2, label %.lr.ph.split.us.i.5.i
    i64 3, label %bb.fc
    i64 0, label %.lr.ph.split.us.i.5.i
    i64 1, label %bb.fb
  ], !prof !30

bb.fb:                                            ; preds = %bb.fa
  %i.of = getelementptr i8, ptr %i.no, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.of) ]
  store ptr %i.of, ptr %i.bn, align 8, !alias.scope !5722, !noalias !5716
  store i8 3, ptr %i.q, align 8, !alias.scope !5722, !noalias !5716
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bn), !noalias !5653
  br label %.lr.ph.split.us.i.5.i

bb.fc:                                            ; preds = %bb.fa
  %i.og = icmp ult ptr %i.no, inttoptr (i64 188978561024 to ptr)
  %i.oh = and i64 %i.np, 1095216660480
  %i.oi = icmp ne i64 %i.oh, 1095216660480
  call void @llvm.assume(i1 %i.og)
  call void @llvm.assume(i1 %i.oi)
  br label %.lr.ph.split.us.i.5.i

.lr.ph.split.us.i.5.i:                            ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !5653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !5653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5653
  call void @llvm.experimental.noalias.scope.decl(metadata !5735)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5736
  store i16 0, ptr %i.at, align 4, !noalias !5736
  store i32 16777343, ptr %.sroa.727.0..sroa_idx.i.i, align 2, !noalias !5737
  store i16 3005, ptr %.sroa.6.2..sroa.727.0..sroa_idx.i.sroa_idx.i, align 2, !noalias !5737
  call void @_RNvNvMs7_NtNtNtNtCsaL1QbXo9JQH_3std3sys3net10connection6socketNtB7_11TcpListener4bind5inner(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.au, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.at), !noalias !5657
  %i.oj = load i32, ptr %i.au, align 8, !range !28, !alias.scope !5735, !noalias !5657, !noundef !17
  %i.ok = trunc nuw i32 %i.oj to i1
  br i1 %i.ok, label %bb.fd, label %.split207.us.sink.split.i

bb.fd:                                            ; preds = %.lr.ph.split.us.i.5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5736
  %i.ol = load ptr, ptr %i.bl, align 8, !noalias !5653, !nonnull !17, !noundef !17 ; 8 uses
  store ptr %i.ol, ptr %i.bm, align 8, !noalias !5653
  store i32 1, ptr %i.be, align 8, !noalias !5653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5653
  %i.om = ptrtoint ptr %i.ol to i64               ; 3 uses
  %i.on = and i64 %i.om, 3                        ; 2 uses
  switch i64 %i.on, label %default.unreachable [
    i64 2, label %bb.fh
    i64 3, label %bb.fg
    i64 0, label %bb.ff
    i64 1, label %bb.fe
  ], !prof !30

bb.fe:                                            ; preds = %bb.fd
  %i.oo = getelementptr i8, ptr %i.ol, i64 31
  %i.op = load i8, ptr %i.oo, align 8, !range !36, !noalias !5653, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.5.i

bb.ff:                                            ; preds = %bb.fd
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.or = load i8, ptr %i.oq, align 8, !range !36, !noalias !5653, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.5.i

bb.fg:                                            ; preds = %bb.fd
  %i.os = lshr i64 %i.om, 32
  %i.ot = icmp ult ptr %i.ol, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.5.i = trunc i64 %i.os to i8 ; 2 uses
  %i.ou = icmp ne i8 %switch.idx.cast.i.i.i.5.i, -1
  call void @llvm.assume(i1 %i.ot)
  call void @llvm.assume(i1 %i.ou)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.5.i

bb.fh:                                            ; preds = %bb.fd
  %i.ov = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc118.5.i unwind label %.split209.i, !noalias !5653

.noexc118.5.i:                                    ; preds = %bb.fh
  %i.ow = lshr i64 %i.om, 32
  %i.ox = trunc nuw i64 %i.ow to i32
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8, !noalias !5653, !nonnull !17, !noundef !17
  %i.pa = invoke noundef i8 %i.oz(i32 noundef %i.ox)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.5.i unwind label %.split209.i, !noalias !5653, !inline_history !1

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.5.i: ; preds = %.noexc118.5.i, %bb.fg, %bb.ff, %bb.fe
  %.sroa.0.0.i.5.i = phi i8 [ %i.op, %bb.fe ], [ %switch.idx.cast.i.i.i.5.i, %bb.fg ], [ %i.or, %bb.ff ], [ %i.pa, %.noexc118.5.i ]
  %i.pb = icmp eq i8 %.sroa.0.0.i.5.i, 8
  br i1 %i.pb, label %bb.dr, label %.split212.us.i

_RNvNtCsc4241EHy6Do_9typst_kit6server12start_server.exit: ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5658
  %i.pc = load ptr, ptr %i.ar, align 8, !noalias !5658, !nonnull !17, !noundef !17
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.i.sroa.5.i, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !5658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !5658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5658
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5653
  %.sroa.044.6.insert.ext = zext i16 %.us-phi.i to i64
  %.sroa.044.6.insert.shift = shl nuw i64 %.sroa.044.6.insert.ext, 48
  %.sroa.044.6.insert.insert = or disjoint i64 %.sroa.044.6.insert.shift, 1099519950848
  %i.pd = inttoptr i64 %.sroa.044.6.insert.insert to ptr
  store i32 %i.dj, ptr %i.bj, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 %.sroa.426.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %.sroa.527.0.copyload.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %.sroa.5.i.sroa.0.0.copyload.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 120
  store ptr %i.pc, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.6.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 128
  store ptr %i.ee, ptr %.sroa.2.sroa.6.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.not.i = icmp ult i64 %2, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5738
  br i1 %.not.i, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc4241EHy6Do_9typst_kit.exit.i, label %bb.fi

_RNvNtCsc4241EHy6Do_9typst_kit6server12start_server.exit.thread: ; preds = %_RNCNvNtCsc4241EHy6Do_9typst_kit6server12start_server0B5_.exit.i, %bb.dh
  %i.pe = phi <2 x ptr> [ %i.kf, %bb.dh ], [ %i.jg, %_RNCNvNtCsc4241EHy6Do_9typst_kit6server12start_server0B5_.exit.i ]
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.pe, ptr %i.pf, align 8
  store i16 2, ptr %0, align 8
  br label %bb.ip

bb.fi:                                            ; preds = %_RNvNtCsc4241EHy6Do_9typst_kit6server12start_server.exit
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !5739
  %i.pg = call noundef dereferenceable_or_null(595) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 595, i64 noundef range(i64 1, 9) 1) #40, !noalias !5739 ; 2 uses
  %i.ph = icmp eq ptr %i.pg, null
  br i1 %i.ph, label %bb.fj, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc4241EHy6Do_9typst_kit.exit.i

bb.fj:                                            ; preds = %bb.fi
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 595) #43
          to label %.noexc unwind label %bb.fx

.noexc:                                           ; preds = %bb.fj
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.fi, %_RNvNtCsc4241EHy6Do_9typst_kit6server12start_server.exit
  %.sroa.02.025.i = phi i64 [ 595, %bb.fi ], [ 0, %_RNvNtCsc4241EHy6Do_9typst_kit6server12start_server.exit ]
  %.sroa.10.0.i.i = phi ptr [ %i.pg, %bb.fi ], [ inttoptr (i64 1 to ptr), %_RNvNtCsc4241EHy6Do_9typst_kit6server12start_server.exit ] ; 4 uses
  store i64 %.sroa.02.025.i, ptr %i.p, align 8, !noalias !5738
  %.sroa.4.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 6 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i24, align 8, !noalias !5738
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !5738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5738
  invoke void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 595, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @206, i64 noundef 7)
          to label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i unwind label %bb.fm, !noalias !5738

bb.fk:                                            ; preds = %bb.fo, %bb.fm
  %.pn.i25 = phi { ptr, i32 } [ %i.pq, %bb.fo ], [ %i.pj, %bb.fm ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5740)
  call void @llvm.experimental.noalias.scope.decl(metadata !5741)
  %.val.i.i.i = load i64, ptr %i.p, align 8, !range !21, !alias.scope !5742, !noalias !5738, !noundef !17 ; 2 uses
  %i.pi = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.pi, label %.thread, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i24, align 8, !alias.scope !5742, !noalias !5738, !nonnull !17, !noundef !17
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !5743
  br label %.thread

bb.fm:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc4241EHy6Do_9typst_kit.exit.i
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsc4241EHy6Do_9typst_kit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.o, ptr noundef nonnull align 8 dereferenceable(104) %i.n, i64 104, i1 false), !noalias !5738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5738
  %i.pk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.not.i32.i = icmp eq i64 %2, 0
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fw, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i
  %i.pm = phi ptr [ %.sroa.10.0.i.i, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i ], [ %i.re, %bb.fw ] ; 2 uses
  %i.pn = phi ptr [ %.sroa.10.0.i.i, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i ], [ %i.rf, %bb.fw ] ; 2 uses
  %i.po = phi ptr [ %.sroa.10.0.i.i, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i ], [ %i.rg, %bb.fw ] ; 2 uses
  %i.pp = phi i64 [ 0, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i ], [ %i.ri, %bb.fw ] ; 10 uses
  %.sroa.04.0.i = phi i64 [ 0, %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i ], [ %i.qe, %bb.fw ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5738
  invoke fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef align 8 dereferenceable(104) %i.o)
          to label %bb.fp unwind label %bb.fo, !noalias !5738

bb.fo:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i33.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i28.i, %bb.fn
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.fp:                                            ; preds = %bb.fn
  %i.pr = load i64, ptr %i.m, align 8, !range !19, !noalias !5738, !noundef !17
  %i.ps = trunc nuw i64 %i.pr to i1
  br i1 %i.ps, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5738
  %i.pt = getelementptr inbounds nuw i8, ptr @205, i64 %.sroa.04.0.i
  %gepdiff.i = sub nuw nsw i64 595, %.sroa.04.0.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5744)
  %i.pu = load i64, ptr %i.p, align 8, !range !21, !alias.scope !5745, !noalias !5738, !noundef !17 ; 2 uses
  %i.pv = sub i64 %i.pu, %i.pp
  %i.pw = icmp ugt i64 %gepdiff.i, %i.pv
  br i1 %i.pw, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i.i, !prof !23

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i.i: ; preds = %bb.fq
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.pp, i64 noundef %gepdiff.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i26 unwind label %bb.fm, !noalias !5738

.noexc.i26:                                       ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i.i
  %i.px = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !5744, !noalias !5738, !noundef !17 ; 2 uses
  %i.py = icmp sgt i64 %i.px, -1
  call void @llvm.assume(i1 %i.py)
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i24, align 8, !alias.scope !5744, !noalias !5738
  br label %bb.fr

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.fq
  %i.pz = icmp sgt i64 %i.pp, -1
  call void @llvm.assume(i1 %i.pz)
  %.not.i.i = icmp eq i64 %.sroa.04.0.i, 595
  br i1 %.not.i.i, label %bb.fy, label %bb.fr

bb.fr:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i.i, %.noexc.i26
  %i.qa = phi ptr [ %.pre.i, %.noexc.i26 ], [ %i.po, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i.i ]
  %i.qb = phi i64 [ %i.px, %.noexc.i26 ], [ %i.pp, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i.i ] ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.qb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qc, ptr nonnull readonly align 1 %i.pt, i64 %gepdiff.i, i1 false), !noalias !5746
  %.sroa.058.0.copyload.pre = load i64, ptr %i.p, align 8, !noalias !5747
  br label %bb.fy

bb.fs:                                            ; preds = %bb.fp
  %i.qd = load i64, ptr %i.pk, align 8, !noalias !5738, !noundef !17 ; 2 uses
  %i.qe = load i64, ptr %i.pl, align 8, !noalias !5738, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5738
  %i.qf = getelementptr inbounds nuw i8, ptr @205, i64 %.sroa.04.0.i
  %gepdiff27.i = sub nuw nsw i64 %i.qd, %.sroa.04.0.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5748)
  %i.qg = load i64, ptr %i.p, align 8, !range !21, !alias.scope !5749, !noalias !5738, !noundef !17 ; 3 uses
  %i.qh = sub i64 %i.qg, %i.pp
  %i.qi = icmp ugt i64 %gepdiff27.i, %i.qh
  br i1 %i.qi, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i28.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i26.i, !prof !23

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i28.i: ; preds = %bb.fs
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.pp, i64 noundef %gepdiff27.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc29.i unwind label %bb.fo, !noalias !5738

.noexc29.i:                                       ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i28.i
  %i.qj = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !5748, !noalias !5738, !noundef !17 ; 2 uses
  %i.qk = icmp sgt i64 %i.qj, -1
  call void @llvm.assume(i1 %i.qk)
  %.pre30.i = load ptr, ptr %.sroa.4.0..sroa_idx.i24, align 8, !alias.scope !5748, !noalias !5738 ; 2 uses
  %.pre31.pre.i = load i64, ptr %i.p, align 8, !range !21, !alias.scope !5750, !noalias !5738
  br label %bb.ft

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i26.i: ; preds = %bb.fs
  %i.ql = icmp sgt i64 %i.pp, -1
  call void @llvm.assume(i1 %i.ql)
  %.not.i27.i = icmp eq i64 %i.qd, %.sroa.04.0.i
  br i1 %.not.i27.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i26.i, %.noexc29.i
  %.pre31.i = phi i64 [ %.pre31.pre.i, %.noexc29.i ], [ %i.qg, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i26.i ]
  %i.qm = phi ptr [ %.pre30.i, %.noexc29.i ], [ %i.pm, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i26.i ]
  %i.qn = phi ptr [ %.pre30.i, %.noexc29.i ], [ %i.pn, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i26.i ] ; 3 uses
  %i.qo = phi i64 [ %i.qj, %.noexc29.i ], [ %i.pp, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i26.i ] ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.qo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qp, ptr nonnull readonly align 1 %i.qf, i64 %gepdiff27.i, i1 false), !noalias !5751
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i26.i
  %i.qq = phi ptr [ %i.qm, %bb.ft ], [ %i.pm, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i26.i ] ; 2 uses
  %i.qr = phi i64 [ %.pre31.i, %bb.ft ], [ %i.qg, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i26.i ]
  %i.qs = phi ptr [ %i.qn, %bb.ft ], [ %i.pn, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i26.i ]
  %i.qt = phi ptr [ %i.qn, %bb.ft ], [ %i.po, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i26.i ]
  %i.qu = phi i64 [ %i.qo, %bb.ft ], [ %i.pp, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i26.i ]
  %i.qv = add i64 %i.qu, %gepdiff27.i             ; 6 uses
  store i64 %i.qv, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !5748, !noalias !5738
  call void @llvm.experimental.noalias.scope.decl(metadata !5752)
  %i.qw = sub i64 %i.qr, %i.qv
  %i.qx = icmp ugt i64 %2, %i.qw
  br i1 %i.qx, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i33.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i31.i, !prof !23

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i33.i: ; preds = %bb.fu
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.qv, i64 noundef %2, i64 noundef 1, i64 noundef 1)
          to label %.noexc34.i unwind label %bb.fo, !noalias !5738
end_hunk_1
