Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/unsafe_libyaml-c83d027d29d4f62c.unsafe_libyaml.d8757c7f39422774-cgu.0?download=true
inline.NumInlined: 729
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN14unsafe_libyaml7scanner9READ_LINE17h88f7fbc974d67c94E:bb.a
  %i.cn = load ptr, ptr %i.a, align 8, !noundef !6
  %i.co = getelementptr i8, ptr %i.cn, i64 1
  store ptr %i.co, ptr %i.a, align 8
  %i.cp = load ptr, ptr %i.ac, align 8, !noundef !6
  %i.cq = getelementptr i8, ptr %i.cp, i64 1      ; 2 uses
  store ptr %i.cq, ptr %i.ac, align 8
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !6
  %i.cs = load ptr, ptr %i.a, align 8, !noundef !6
  store i8 %i.cr, ptr %i.cs, align 1
  %i.ct = load ptr, ptr %i.a, align 8, !noundef !6
  %i.cu = getelementptr i8, ptr %i.ct, i64 1
  store ptr %i.cu, ptr %i.a, align 8
  %i.cv = load ptr, ptr %i.ac, align 8, !noundef !6
  %i.cw = getelementptr i8, ptr %i.cv, i64 1
  store ptr %i.cw, ptr %i.ac, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !6 ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, -4
  br i1 %i.cz, label %bb.s, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit19", !prof !4

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit19": ; preds = %bb.r
  %i.da = add nuw i64 %i.cy, 3
  store i64 %i.da, ptr %i.cx, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !6 ; 2 uses
  %i.de = icmp eq i64 %i.dd, -1
  br i1 %i.de, label %bb.t, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit20", !prof !4

bb.t:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit19"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit20": ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit19"
  %i.df = add nuw i64 %i.dd, 1
  store i64 %i.df, ptr %i.dc, align 8
  br label %.thread21.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14unsafe_libyaml7scanner9SKIP_LINE17hc921a906d7b29922E(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6 ; 7 uses
  %i.c = load i8, ptr %i.b, align 1, !noundef !6
  switch i8 %i.c, label %.thread15 [
    i8 13, label %bb.b
    i8 -62, label %bb.f
    i8 10, label %.thread
    i8 -30, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.e = load i8, ptr %i.d, align 1, !noundef !6
  %i.f = icmp eq i8 %i.e, 10
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !6 ; 2 uses
  %i.i = icmp ugt i64 %i.h, -3
  br i1 %i.i, label %bb.d, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit", !prof !4

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit": ; preds = %bb.c
  %i.j = add nuw i64 %i.h, 2
  store i64 %i.j, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !6 ; 2 uses
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.e, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit8", !prof !4

bb.e:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit8": ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit"
  %i.o = add nuw i64 %i.m, 1
  store i64 %i.o, ptr %i.l, align 8
  br label %.thread15.sink.split

.thread15.sink.split:                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit8", %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit10"
  %.sink24 = phi i64 [ -1, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit10" ], [ -2, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit8" ]
  %.sroa.0.0.sink = phi i64 [ %.sroa.0.0, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit10" ], [ 2, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit8" ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !6
  %i.r = add i64 %i.q, %.sink24
  store i64 %i.r, ptr %i.p, align 8
  %i.s = getelementptr i8, ptr %i.b, i64 %.sroa.0.0.sink
  store ptr %i.s, ptr %i.a, align 8
  br label %.thread15

.thread15:                                        ; preds = %.thread15.sink.split, %bb.g, %bb.a, %bb.f, %bb.i
  ret void

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.u = load i8, ptr %i.t, align 1, !noundef !6
  %i.v = icmp eq i8 %i.u, -123
  br i1 %i.v, label %.thread, label %.thread15

bb.g:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.x = load i8, ptr %i.w, align 1, !noundef !6
  %i.y = icmp eq i8 %i.x, -128
  br i1 %i.y, label %bb.h, label %.thread15

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !noundef !6
  %i.ab = icmp eq i8 %i.aa, -88
  br i1 %i.ab, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !6
  %i.ae = icmp eq i8 %i.ad, -87
  br i1 %i.ae, label %.thread, label %.thread15

.thread:                                          ; preds = %bb.h, %bb.i, %bb.f, %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ 2, %bb.f ], [ 1, %bb.b ], [ 1, %bb.a ], [ 3, %bb.i ], [ 3, %bb.h ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !6 ; 2 uses
  %i.ah = add i64 %i.ag, %.sroa.0.0               ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.j, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit9", !prof !4

bb.j:                                             ; preds = %.thread
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit9": ; preds = %.thread
  store i64 %i.ah, ptr %i.af, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !noundef !6 ; 2 uses
  %i.am = icmp eq i64 %i.al, -1
  br i1 %i.am, label %bb.k, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit10", !prof !4

bb.k:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit9"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit10": ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit9"
  %i.an = add nuw i64 %i.al, 1
  store i64 %i.an, ptr %i.ak, align 8
  br label %.thread15.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h911c7ebaaf7caf01E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !74, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write10write_char17h3c0900e68c9aa341E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #4 {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i32 0, ptr %.sroa.0, align 4
  %i.a = icmp samesign ult i32 %1, 128
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %1, 2048
  %i.c = trunc i32 %1 to i8
  %i.d = and i8 %i.c, 63
  %i.e = or disjoint i8 %i.d, -128                ; 3 uses
  %i.f = lshr i32 %1, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %1, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %1, 18
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = or disjoint i8 %i.o, -16
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = trunc nuw nsw i32 %1 to i8
  store i8 %i.q, ptr %.sroa.0, align 4, !alias.scope !79
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.d:                                             ; preds = %bb.b
  %i.r = or disjoint i8 %i.g, -64
  store i8 %i.r, ptr %.sroa.0, align 4, !alias.scope !79
  %.sroa.0.1..sroa_idx11 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.e, ptr %.sroa.0.1..sroa_idx11, align 1, !alias.scope !79
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.e:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %1, 65536
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = or disjoint i8 %i.k, -32
  store i8 %i.t, ptr %.sroa.0, align 4, !alias.scope !79
  %.sroa.0.1..sroa_idx10 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.i, ptr %.sroa.0.1..sroa_idx10, align 1, !alias.scope !79
  %.sroa.0.2..sroa_idx12 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.e, ptr %.sroa.0.2..sroa_idx12, align 2, !alias.scope !79
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.p, ptr %.sroa.0, align 4, !alias.scope !79
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.m, ptr %.sroa.0.1..sroa_idx, align 1, !alias.scope !79
  %.sroa.0.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.i, ptr %.sroa.0.2..sroa_idx, align 2, !alias.scope !79
  %.sroa.0.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  store i8 %i.e, ptr %.sroa.0.3..sroa_idx, align 1, !alias.scope !79
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.u = load ptr, ptr %0, align 8, !alias.scope !80, !noundef !6 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull readonly align 4 dereferenceable(1) %.sroa.0, i64 %.sroa.0.05.i, i1 false), !noalias !80
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.05.i
  store ptr %i.v, ptr %0, align 8, !alias.scope !80
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17h87f2ac93f1386263E(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hde831491e87fd175E.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !85
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @189, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !86, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !84
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef i8 @"_ZN52_$LT$u8$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h4c212720c760998eE"(i8 noundef %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = add i8 %1, %0                            ; 2 uses
  %i.b = icmp ult i8 %i.a, %0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @"_ZN53_$LT$i32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hdfc638f9bd2553d8E"(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 %1) ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i32, i1 } %i.a, 0
  ret i32 %i.c

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h74e3088bddfd46d3E()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @"_ZN53_$LT$i32$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h1e4244e2435ea463E"(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %0, i32 %1) ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i32, i1 } %i.a, 0
  ret i32 %i.c

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h74e3088bddfd46d3E()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @"_ZN53_$LT$i64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h9fc10cf53f2f2bf6E"(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i1 } %i.a, 0
  ret i64 %i.c

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17h19b81f44728adbc4E()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E"(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, %0                           ; 2 uses
  %i.b = icmp ult i32 %i.a, %0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE"(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, %0                           ; 2 uses
  %i.b = icmp ult i64 %i.a, %0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h2b0fe3050e347818E"(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i1 } %i.a, 0
  ret i64 %i.c

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17hc4dd84d397823d12E()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @"_ZN55_$LT$usize$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17hd8904030b1e8e879E"(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, %0                           ; 2 uses
  %i.b = icmp ult i64 %i.a, %0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$unsafe_libyaml..fmt..WriteToPtr$u20$as$u20$core..fmt..Write$GT$9write_str17h823ed6ac062738fdE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !6   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr nonnull align 1 %1, i64 %2, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  store ptr %i.b, ptr %0, align 8
  ret i1 false
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @"_ZN78_$LT$unsafe_libyaml..ops..die..PanicAgain$u20$as$u20$core..ops..drop..Drop$GT$4drop17h477fabff473d15ceE"(ptr noalias nofree noundef nonnull readnone align 1 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @31, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #20
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @"_ZN87_$LT$unsafe_libyaml..externs..__assert_fail..Abort$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d06f22617d570ebE"(ptr noalias nofree noundef nonnull readnone align 1 captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @191, i64 noundef 14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #20
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h304ef928d833cc67E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #13

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nonlazybind "target-cpu"="x86-64" }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #11 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { noreturn }
attributes #21 = { nounwind }
attributes #22 = { cold noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!4 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{}
!7 = !{i32 0, i32 11}
!8 = !{i32 0, i32 22}
!9 = !{i32 0, i32 4}
!10 = !{i8 0, i8 2}
!11 = !{i32 0, i32 6}
!12 = !{i32 0, i32 3}
!13 = !{i32 0, i32 8}
!14 = !{i32 0, i32 24}
!15 = !{i32 0, i32 18}
!16 = distinct !{!16, i1 true, !"_ZN14unsafe_libyaml3fmt10WriteToPtr9write_fmt17h5c53879d4f6985d2E"}
!17 = distinct !{!17, !16, !"_ZN14unsafe_libyaml3fmt10WriteToPtr9write_fmt17h5c53879d4f6985d2E: argument 1"}
!18 = distinct !{!18, !16, !"_ZN14unsafe_libyaml3fmt10WriteToPtr9write_fmt17h5c53879d4f6985d2E: argument 0"}
!19 = distinct !{!19, i1 true, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hde831491e87fd175E"}
!20 = distinct !{!20, !19, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hde831491e87fd175E: argument 1"}
!21 = distinct !{!21, !19, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hde831491e87fd175E: argument 0"}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = !{!21, !20, !18, !17}
!25 = !{!21, !18}
!26 = !{!20, !17}
!27 = distinct !{!27, i1 true, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!28 = distinct !{!28, !27, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!29 = distinct !{!29, i1 true, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!30 = distinct !{!30, !29, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!31 = distinct !{!31, i1 true, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!32 = distinct !{!32, !31, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!33 = distinct !{!33, i1 true, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!34 = distinct !{!34, !33, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!35 = distinct !{!35, i1 true, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!36 = distinct !{!36, !35, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!37 = distinct !{!37, i1 true, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!38 = distinct !{!38, !37, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!39 = !{!28}
!40 = !{!30}
!41 = !{!32}
!42 = !{!34}
!43 = !{!36}
!44 = !{!38}
!45 = distinct !{!45, i1 true, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!46 = distinct !{!46, !45, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!47 = !{!46}
!48 = distinct !{!48, i1 true, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!49 = distinct !{!49, !48, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!50 = !{!49}
!51 = distinct !{!51, i1 true, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!52 = distinct !{!52, !51, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!53 = distinct !{!53, i1 true, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!54 = distinct !{!54, !53, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!55 = !{!52}
!56 = !{!54}
!57 = distinct !{!57, i1 true, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E"}
!58 = distinct !{!58, !57, !"_ZN14unsafe_libyaml6parser32yaml_parser_process_empty_scalar17h0ab25385781b5de7E: argument 0"}
!59 = !{!58}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = distinct !{!62, i1 true, !"_ZN14unsafe_libyaml7scanner28yaml_parser_scan_uri_escapes17hd766e041e3b7f25dE"}
!63 = distinct !{!63, !62, !"_ZN14unsafe_libyaml7scanner28yaml_parser_scan_uri_escapes17hd766e041e3b7f25dE: argument 0"}
!64 = !{!63}
!65 = distinct !{!65, i1 true, !"_ZN14unsafe_libyaml7scanner31yaml_parser_scan_directive_name17hc85103571f9a2e89E"}
!66 = distinct !{!66, !65, !"_ZN14unsafe_libyaml7scanner31yaml_parser_scan_directive_name17hc85103571f9a2e89E: argument 0"}
!67 = distinct !{!67, i1 true, !"_ZN14unsafe_libyaml7scanner40yaml_parser_scan_version_directive_value17h58cfe3db9dd1fea3E"}
!68 = distinct !{!68, !67, !"_ZN14unsafe_libyaml7scanner40yaml_parser_scan_version_directive_value17h58cfe3db9dd1fea3E: argument 0"}
!69 = distinct !{!69, i1 true, !"_ZN14unsafe_libyaml7scanner36yaml_parser_scan_tag_directive_value17h0c4076d3ff5a7a26E"}
!70 = distinct !{!70, !69, !"_ZN14unsafe_libyaml7scanner36yaml_parser_scan_tag_directive_value17h0c4076d3ff5a7a26E: argument 0"}
!71 = !{!66}
!72 = !{!68}
!73 = !{!70}
!74 = !{i64 1}
!75 = distinct !{!75, i1 true, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE"}
!76 = distinct !{!76, !75, !"_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE: argument 0"}
!77 = distinct !{!77, i1 true, !"_ZN68_$LT$unsafe_libyaml..fmt..WriteToPtr$u20$as$u20$core..fmt..Write$GT$9write_str17h823ed6ac062738fdE"}
!78 = distinct !{!78, !77, !"_ZN68_$LT$unsafe_libyaml..fmt..WriteToPtr$u20$as$u20$core..fmt..Write$GT$9write_str17h823ed6ac062738fdE: argument 0"}
!79 = !{!76}
!80 = !{!78}
!81 = distinct !{!81, i1 true, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hde831491e87fd175E"}
!82 = distinct !{!82, !81, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hde831491e87fd175E: argument 1"}
!83 = distinct !{!83, !81, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hde831491e87fd175E: argument 0"}
!84 = !{!83, !82}
!85 = !{!83}
!86 = !{!82}
end_hunk_0
