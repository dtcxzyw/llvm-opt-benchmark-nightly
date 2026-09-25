Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.14?download=true
inline.NumInlined: 672
inline.NumDeleted: 323
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive7variantINtB5_14VariantDecoderKj4_Kb0_ENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog:bb.a
.invoke.i:                                        ; preds = %bb.c, %bb.b
  %i.k = phi i64 [ 0, %bb.b ], [ %i.i, %bb.c ]
  %i.l = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.0.i.i.i, %bb.c ]
  %i.m = phi ptr [ @8, %bb.b ], [ @7, %bb.c ]
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.k, i64 noundef %i.l, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m) #19
          to label %.cont.i unwind label %bb.i, !noalias !428

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.n = zext i1 %.not.i.i.i to i64
  %.sroa.0.0.i.i.i = add nuw nsw i64 %i.i, %i.n   ; 2 uses
  %.not21.i.i = icmp ugt i64 %.sroa.0.0.i.i.i, %i.g
  br i1 %.not21.i.i, label %.invoke.i, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i
  %i.p = load i8, ptr %i.o, align 1, !noalias !429, !noundef !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.6.0.i.i = phi i8 [ %i.p, %bb.e ], [ undef, %bb.d ] ; 3 uses
  %i.q = icmp ult i64 %2, 400
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !noalias !430
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !431, !noalias !432, !nonnull !4, !noundef !4 ; 6 uses
  %i.t = load i64, ptr %i.d, align 8, !alias.scope !431, !noalias !432, !noundef !4 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = icmp samesign eq i64 %i.t, 0
  br i1 %i.v, label %.loopexit, label %.lr.ph27.i.i.preheader

.lr.ph27.i.i.preheader:                           ; preds = %bb.g
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph27.i.i.prol.loopexit, label %.lr.ph27.i.i.prol

.lr.ph27.i.i.prol:                                ; preds = %.lr.ph27.i.i.preheader, %.lr.ph27.i.i.prol
  %.sroa.012.026.i.i.prol = phi ptr [ %i.w, %.lr.ph27.i.i.prol ], [ %i.s, %.lr.ph27.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph27.i.i.prol ], [ 0, %.lr.ph27.i.i.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.026.i.i.prol, i64 1 ; 2 uses
  %i.x = load i8, ptr %.sroa.012.026.i.i.prol, align 1, !noalias !429, !noundef !4
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !430, !noundef !4
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !noalias !430
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph27.i.i.prol.loopexit, label %.lr.ph27.i.i.prol, !llvm.loop !419

.lr.ph27.i.i.prol.loopexit:                       ; preds = %.lr.ph27.i.i.prol, %.lr.ph27.i.i.preheader
  %.sroa.012.026.i.i.unr = phi ptr [ %i.s, %.lr.ph27.i.i.preheader ], [ %i.w, %.lr.ph27.i.i.prol ]
  %i.ac = icmp ult i64 %i.t, 4
  br i1 %i.ac, label %.loopexit, label %.lr.ph27.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !430
  invoke void @_RNvNtCs87O7Q65ve1k_7bitcode9histogram9histogram(ptr noalias noundef nonnull sret([2048 x i8]) align 8 captures(address) dereferenceable(2048) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.i)
          to label %.noexc67.i unwind label %bb.i, !noalias !428

.noexc67.i:                                       ; preds = %bb.h
  invoke void @_RINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj4_Kj100_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2048) %i.b)
          to label %.noexc68.i unwind label %bb.i, !noalias !428

.noexc68.i:                                       ; preds = %.noexc67.i
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.noexc68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !430
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !421, !noalias !422
  br label %.loopexit

.lr.ph.i.i:                                       ; preds = %.noexc68.i
  %i.ad = and i8 %.sroa.6.0.i.i, 3
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noalias !430, !noundef !4
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !noalias !430
  %exitcond.not.i.i = icmp eq i64 %i.j, 1
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.ai = lshr i8 %.sroa.6.0.i.i, 2
  %i.aj = and i8 %i.ai, 3
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !noalias !430, !noundef !4
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !noalias !430
  %exitcond.not.i.i.1 = icmp eq i64 %i.j, 2
  br i1 %exitcond.not.i.i.1, label %.loopexit.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.ao = lshr i8 %.sroa.6.0.i.i, 4
  %i.ap = and i8 %i.ao, 3
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !noalias !430, !noundef !4
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !noalias !430
  br label %.loopexit.i.i

.lr.ph27.i.i:                                     ; preds = %.lr.ph27.i.i.prol.loopexit, %.lr.ph27.i.i
  %.sroa.012.026.i.i = phi ptr [ %i.bm, %.lr.ph27.i.i ], [ %.sroa.012.026.i.i.unr, %.lr.ph27.i.i.prol.loopexit ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.026.i.i, i64 1
  %i.av = load i8, ptr %.sroa.012.026.i.i, align 1, !noalias !429, !noundef !4
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aw ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !430, !noundef !4
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.ax, align 8, !noalias !430
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.012.026.i.i, i64 2
  %i.bb = load i8, ptr %i.au, align 1, !noalias !429, !noundef !4
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bc ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !noalias !430, !noundef !4
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !noalias !430
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.012.026.i.i, i64 3
  %i.bh = load i8, ptr %i.ba, align 1, !noalias !429, !noundef !4
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bi ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !430, !noundef !4
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !noalias !430
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.012.026.i.i, i64 4 ; 2 uses
  %i.bn = load i8, ptr %i.bg, align 1, !noalias !429, !noundef !4
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bo ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !430, !noundef !4
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !noalias !430
  %i.bs = icmp eq ptr %i.bm, %i.u
  br i1 %i.bs, label %.loopexit, label %.lr.ph27.i.i

bb.i:                                             ; preds = %.noexc67.i, %bb.h, %.invoke.i, %bb.a
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !421, !noalias !422, !nonnull !4, !noundef !4
  store ptr %i.bv, ptr %i.c, align 8, !alias.scope !421, !noalias !422
  resume { ptr, i32 } %i.bt

bb.j:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !425
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !421, !noalias !422, !nonnull !4, !noundef !4
  br label %bb.k

.loopexit:                                        ; preds = %.lr.ph27.i.i.prol.loopexit, %.lr.ph27.i.i, %.loopexit.i.i, %bb.g
  %i.by = phi ptr [ %i.s, %bb.g ], [ %.pre, %.loopexit.i.i ], [ %i.s, %.lr.ph27.i.i ], [ %i.s, %.lr.ph27.i.i.prol.loopexit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !425
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.j
  %storemerge = phi ptr [ %i.by, %.loopexit ], [ %i.bx, %bb.j ]
  store ptr %storemerge, ptr %i.c, align 8, !alias.scope !421, !noalias !422
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive7variantINtB5_14VariantDecoderKj4_Kb1_ENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(64) initializes((16, 32)) %0, ptr noalias noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8, !alias.scope !436, !noalias !437
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8, !alias.scope !436, !noalias !437
  %i.c = invoke fastcc noundef zeroext i1 @_RINvNtCs87O7Q65ve1k_7bitcode4pack17unpack_arithmeticKj4_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCs87O7Q65ve1k_7bitcode4pack22unpack_bytes_less_thanKj4_Kj0_ECs844E4pPEVZX_17influxdb3_catalog.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !436, !noalias !437, !nonnull !4, !noundef !4
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !436, !noalias !437
  resume { ptr, i32 } %i.d

_RINvNtCs87O7Q65ve1k_7bitcode4pack22unpack_bytes_less_thanKj4_Kj0_ECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !436, !noalias !437, !nonnull !4, !noundef !4
  store ptr %i.h, ptr %i.a, align 8, !alias.scope !436, !noalias !437
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive7variantINtB5_14VariantDecoderKj5_Kb0_ENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(72) initializes((16, 32)) %0, ptr noalias noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 13 uses
  %i.b = alloca [2048 x i8], align 8              ; 8 uses
  %i.c = alloca [1728 x i8], align 8              ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !alias.scope !451, !noalias !452
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.e, align 8, !alias.scope !451, !noalias !452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !455
  %i.f = load ptr, ptr %1, align 8, !alias.scope !456, !noalias !457, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !456, !noalias !457, !noundef !4 ; 3 uses
  %i.i = invoke fastcc noundef zeroext i1 @_RINvNtCs87O7Q65ve1k_7bitcode4pack17unpack_arithmeticKj6_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc.i unwind label %bb.k, !noalias !458

.noexc.i:                                         ; preds = %bb.a
  br i1 %i.i, label %bb.m, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  %i.j = udiv i64 %2, 3                           ; 7 uses
  %i.k = urem i64 %2, 3
  %.not.i.i.i = icmp ne i64 %i.k, 0               ; 3 uses
  %.not.i.i = icmp ugt i64 %i.j, %i.h
  br i1 %.not.i.i, label %.invoke.i, label %bb.c, !prof !8

.invoke.i:                                        ; preds = %bb.c, %bb.b
  %i.l = phi i64 [ 0, %bb.b ], [ %i.j, %bb.c ]
  %i.m = phi i64 [ %i.j, %bb.b ], [ %.sroa.0.0.i.i.i, %bb.c ]
  %i.n = phi ptr [ @8, %bb.b ], [ @7, %bb.c ]
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.l, i64 noundef %i.m, i64 noundef %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n) #19
          to label %.cont.i unwind label %bb.k, !noalias !458

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.o = zext i1 %.not.i.i.i to i64
  %.sroa.0.0.i.i.i = add nuw nsw i64 %i.j, %i.o   ; 2 uses
  %.neg.i.i = mul i64 %i.j, -3
  %i.p = add i64 %.neg.i.i, %2                    ; 2 uses
  %.not21.i.i = icmp ugt i64 %.sroa.0.0.i.i.i, %i.h
  br i1 %.not21.i.i, label %.invoke.i, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.r = load i8, ptr %i.q, align 1, !noalias !459, !noundef !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.6.0.i.i = phi i8 [ %i.r, %bb.e ], [ undef, %bb.d ] ; 2 uses
  %i.s = icmp ult i64 %2, 300
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !460
  invoke void @_RNvNtCs87O7Q65ve1k_7bitcode9histogram9histogram(ptr noalias noundef nonnull sret([2048 x i8]) align 8 captures(address) dereferenceable(2048) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.j)
          to label %.noexc67.i unwind label %bb.k, !noalias !458

.noexc67.i:                                       ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1728
  %3 = load <38 x i64>, ptr %i.t, align 8, !alias.scope !461, !noalias !462
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 2032
  %.val.i.38.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !461, !noalias !462, !noundef !4
  %i.v = call i64 @llvm.vector.reduce.add.v38i64(<38 x i64> %3)
  %op.rdx = add i64 %i.v, %.val.i.38.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 2040
  %.val.i.39.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !461, !noalias !462, !noundef !4
  %i.x = sub i64 0, %op.rdx
  %i.y = icmp eq i64 %.val.i.39.i.i.i, %i.x
  br i1 %i.y, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !noalias !460
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !463, !noalias !464, !nonnull !4, !noundef !4 ; 3 uses
  %i.ab = load i64, ptr %i.e, align 8, !alias.scope !463, !noalias !464, !noundef !4 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = icmp samesign eq i64 %i.ab, 0
  br i1 %i.ad, label %._crit_edge.i.i, label %.lr.ph30.i.i.preheader

.lr.ph30.i.i.preheader:                           ; preds = %bb.h
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph30.i.i.prol.loopexit, label %.lr.ph30.i.i.prol

.lr.ph30.i.i.prol:                                ; preds = %.lr.ph30.i.i.preheader, %.lr.ph30.i.i.prol
  %.sroa.012.029.i.i.prol = phi ptr [ %i.ae, %.lr.ph30.i.i.prol ], [ %i.aa, %.lr.ph30.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph30.i.i.prol ], [ 0, %.lr.ph30.i.i.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.012.029.i.i.prol, i64 1 ; 2 uses
  %i.af = load i8, ptr %.sroa.012.029.i.i.prol, align 1, !noalias !459, !noundef !4
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !460, !noundef !4
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !noalias !460
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph30.i.i.prol.loopexit, label %.lr.ph30.i.i.prol, !llvm.loop !449

.lr.ph30.i.i.prol.loopexit:                       ; preds = %.lr.ph30.i.i.prol, %.lr.ph30.i.i.preheader
  %.sroa.012.029.i.i.unr = phi ptr [ %i.aa, %.lr.ph30.i.i.preheader ], [ %i.ae, %.lr.ph30.i.i.prol ]
  %i.ak = icmp ult i64 %i.ab, 4
  br i1 %i.ak, label %._crit_edge.i.i, label %.lr.ph30.i.i

bb.i:                                             ; preds = %.noexc67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !460
  br label %bb.m

bb.j:                                             ; preds = %.noexc67.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1728) %i.c, ptr noundef nonnull align 8 dereferenceable(1728) %i.b, i64 1728, i1 false), !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !460
  invoke void @_RINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj6_Kjd8_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1728) %i.c)
          to label %.noexc68.i unwind label %bb.k, !noalias !458

.noexc68.i:                                       ; preds = %bb.j
  %.not31.i.i = icmp ne i64 %i.p, 0
  %or.cond.not.i.i = and i1 %.not.i.i.i, %.not31.i.i
  br i1 %or.cond.not.i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.noexc68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !460
  br label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.noexc68.i
  %i.al = urem i8 %.sroa.6.0.i.i, 6
  %i.am = udiv i8 %.sroa.6.0.i.i, 6
  %i.an = zext nneg i8 %i.al to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !460, !noundef !4
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !noalias !460
  %exitcond.not.i.i = icmp eq i64 %i.p, 1
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.ar = urem i8 %i.am, 6
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noalias !460, !noundef !4
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !noalias !460
  br label %.loopexit.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph30.i.i.prol.loopexit, %.lr.ph30.i.i, %.loopexit.i.i, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val.i.i24.i.i = load i64, ptr %i.aw, align 8, !noalias !460, !noundef !4
  %i.ax = icmp eq i64 %.val.i.i24.i.i, 0
  br i1 %i.ax, label %bb.l, label %bb.m

.lr.ph30.i.i:                                     ; preds = %.lr.ph30.i.i.prol.loopexit, %.lr.ph30.i.i
  %.sroa.012.029.i.i = phi ptr [ %i.bq, %.lr.ph30.i.i ], [ %.sroa.012.029.i.i.unr, %.lr.ph30.i.i.prol.loopexit ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.029.i.i, i64 1
  %i.az = load i8, ptr %.sroa.012.029.i.i, align 1, !noalias !459, !noundef !4
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ba ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !460, !noundef !4
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.bb, align 8, !noalias !460
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.012.029.i.i, i64 2
  %i.bf = load i8, ptr %i.ay, align 1, !noalias !459, !noundef !4
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bg ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !460, !noundef !4
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bh, align 8, !noalias !460
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.012.029.i.i, i64 3
  %i.bl = load i8, ptr %i.be, align 1, !noalias !459, !noundef !4
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !460, !noundef !4
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %i.bn, align 8, !noalias !460
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.012.029.i.i, i64 4 ; 2 uses
  %i.br = load i8, ptr %i.bk, align 1, !noalias !459, !noundef !4
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bs ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !460, !noundef !4
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.bt, align 8, !noalias !460
  %i.bw = icmp eq ptr %i.bq, %i.ac
  br i1 %i.bw, label %._crit_edge.i.i, label %.lr.ph30.i.i

bb.k:                                             ; preds = %bb.j, %bb.g, %.invoke.i, %bb.a
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !451, !noalias !452, !nonnull !4, !noundef !4
  store ptr %i.bz, ptr %i.d, align 8, !alias.scope !451, !noalias !452
  resume { ptr, i32 } %i.bx

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ca, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %.noexc.i, %bb.i, %bb.l
  %i.cb = phi i1 [ false, %bb.l ], [ true, %bb.i ], [ true, %.noexc.i ], [ true, %._crit_edge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !455
  %storemerge.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %storemerge = load ptr, ptr %storemerge.in, align 8, !alias.scope !451, !noalias !452, !nonnull !4, !noundef !4
  store ptr %storemerge, ptr %i.d, align 8, !alias.scope !451, !noalias !452
  ret i1 %i.cb
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive7variantINtB5_14VariantDecoderKj5_Kb1_ENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(72) initializes((16, 32)) %0, ptr noalias noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !alias.scope !473, !noalias !474
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !473, !noalias !474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.d = invoke fastcc noundef zeroext i1 @_RINvNtCs87O7Q65ve1k_7bitcode4pack17unpack_arithmeticKj6_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.a
  br i1 %i.d, label %_RINvNtCs87O7Q65ve1k_7bitcode4pack22unpack_bytes_less_thanKj5_Kj0_ECs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !476, !noalias !477, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load i64, ptr %i.c, align 8, !alias.scope !476, !noalias !477, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !478
  store ptr %i.f, ptr %i.a, align 8, !noalias !478
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !noalias !478
  %i.j = invoke { i1, i8 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc66.i unwind label %bb.d ; 2 uses

.noexc66.i:                                       ; preds = %bb.b
  %i.k = extractvalue { i1, i8 } %i.j, 0
  br i1 %i.k, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldhNvYhNtNtBc_3cmp3Ord3cmpE0ECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldhNvYhNtNtBc_3cmp3Ord3cmpE0ECs844E4pPEVZX_17influxdb3_catalog.exit.thread.i.i.i

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldhNvYhNtNtBc_3cmp3Ord3cmpE0ECs844E4pPEVZX_17influxdb3_catalog.exit.thread.i.i.i: ; preds = %.noexc66.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !478
  br label %bb.c

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldhNvYhNtNtBc_3cmp3Ord3cmpE0ECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i: ; preds = %.noexc66.i
  %i.l = extractvalue { i1, i8 } %i.j, 1
  %i.m = load ptr, ptr %i.a, align 8, !noalias !478, !nonnull !4, !noundef !4
  %i.n = load ptr, ptr %i.i, align 8, !noalias !478, !noundef !4
  %i.o = invoke noundef i8 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4foldhNCINvNvB1v_6max_by4foldhNvYhNtNtBb_3cmp3Ord3cmpE0ECs844E4pPEVZX_17influxdb3_catalog(ptr noundef nonnull %i.m, ptr noundef %i.n, i8 noundef %i.l)
          to label %.noexc67.i unwind label %bb.d

.noexc67.i:                                       ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldhNvYhNtNtBc_3cmp3Ord3cmpE0ECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !478
  %i.p = icmp ugt i8 %i.o, 4
  br i1 %i.p, label %_RINvNtCs87O7Q65ve1k_7bitcode4pack22unpack_bytes_less_thanKj5_Kj0_ECs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.c

bb.c:                                             ; preds = %.noexc67.i, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldhNvYhNtNtBc_3cmp3Ord3cmpE0ECs844E4pPEVZX_17influxdb3_catalog.exit.thread.i.i.i
  br label %_RINvNtCs87O7Q65ve1k_7bitcode4pack22unpack_bytes_less_thanKj5_Kj0_ECs844E4pPEVZX_17influxdb3_catalog.exit

bb.d:                                             ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB1q_6max_by4foldhNvYhNtNtBc_3cmp3Ord3cmpE0ECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i, %bb.b, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !473, !noalias !474, !nonnull !4, !noundef !4
  store ptr %i.s, ptr %i.b, align 8, !alias.scope !473, !noalias !474
  resume { ptr, i32 } %i.q

_RINvNtCs87O7Q65ve1k_7bitcode4pack22unpack_bytes_less_thanKj5_Kj0_ECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %.noexc.i, %.noexc67.i, %bb.c
  %.sroa.01.0.i.i = phi i1 [ true, %.noexc.i ], [ false, %bb.c ], [ true, %.noexc67.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !473, !noalias !474, !nonnull !4, !noundef !4
  store ptr %i.u, ptr %i.b, align 8, !alias.scope !473, !noalias !474
  ret i1 %.sroa.01.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive7variantINtB5_14VariantDecoderKj6_Kb0_ENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(80) initializes((16, 32)) %0, ptr noalias noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 13 uses
  %i.b = alloca [2048 x i8], align 8              ; 8 uses
  %i.c = alloca [1728 x i8], align 8              ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !alias.scope !492, !noalias !493
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.e, align 8, !alias.scope !492, !noalias !493
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !496
  %i.f = load ptr, ptr %1, align 8, !alias.scope !497, !noalias !498, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !497, !noalias !498, !noundef !4 ; 3 uses
  %i.i = invoke fastcc noundef zeroext i1 @_RINvNtCs87O7Q65ve1k_7bitcode4pack17unpack_arithmeticKj6_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc.i unwind label %bb.k, !noalias !499

.noexc.i:                                         ; preds = %bb.a
  br i1 %i.i, label %bb.l, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  %i.j = udiv i64 %2, 3                           ; 7 uses
  %i.k = urem i64 %2, 3
  %.not.i.i.i = icmp ne i64 %i.k, 0               ; 3 uses
  %.not.i.i = icmp ugt i64 %i.j, %i.h
  br i1 %.not.i.i, label %.invoke.i, label %bb.c, !prof !8

.invoke.i:                                        ; preds = %bb.c, %bb.b
  %i.l = phi i64 [ 0, %bb.b ], [ %i.j, %bb.c ]
  %i.m = phi i64 [ %i.j, %bb.b ], [ %.sroa.0.0.i.i.i, %bb.c ]
  %i.n = phi ptr [ @8, %bb.b ], [ @7, %bb.c ]
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.l, i64 noundef %i.m, i64 noundef %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n) #19
          to label %.cont.i unwind label %bb.k, !noalias !499

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.o = zext i1 %.not.i.i.i to i64
  %.sroa.0.0.i.i.i = add nuw nsw i64 %i.j, %i.o   ; 2 uses
  %.neg.i.i = mul i64 %i.j, -3
  %i.p = add i64 %.neg.i.i, %2                    ; 2 uses
  %.not21.i.i = icmp ugt i64 %.sroa.0.0.i.i.i, %i.h
  br i1 %.not21.i.i, label %.invoke.i, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.r = load i8, ptr %i.q, align 1, !noalias !500, !noundef !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.6.0.i.i = phi i8 [ %i.r, %bb.e ], [ undef, %bb.d ] ; 2 uses
  %i.s = icmp ult i64 %2, 300
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !501
  invoke void @_RNvNtCs87O7Q65ve1k_7bitcode9histogram9histogram(ptr noalias noundef nonnull sret([2048 x i8]) align 8 captures(address) dereferenceable(2048) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.j)
          to label %.noexc67.i unwind label %bb.k, !noalias !499

.noexc67.i:                                       ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1728
  %3 = load <38 x i64>, ptr %i.t, align 8, !alias.scope !502, !noalias !503
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 2032
  %.val.i.38.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !502, !noalias !503, !noundef !4
  %i.v = call i64 @llvm.vector.reduce.add.v38i64(<38 x i64> %3)
  %op.rdx = add i64 %i.v, %.val.i.38.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 2040
  %.val.i.39.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !502, !noalias !503, !noundef !4
  %i.x = sub i64 0, %op.rdx
  %i.y = icmp eq i64 %.val.i.39.i.i.i, %i.x
  br i1 %i.y, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !noalias !501
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !504, !noalias !505, !nonnull !4, !noundef !4 ; 6 uses
  %i.ab = load i64, ptr %i.e, align 8, !alias.scope !504, !noalias !505, !noundef !4 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = icmp samesign eq i64 %i.ab, 0
  br i1 %i.ad, label %.loopexit, label %.lr.ph28.i.i.preheader

.lr.ph28.i.i.preheader:                           ; preds = %bb.h
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph28.i.i.prol.loopexit, label %.lr.ph28.i.i.prol

.lr.ph28.i.i.prol:                                ; preds = %.lr.ph28.i.i.preheader, %.lr.ph28.i.i.prol
  %.sroa.012.027.i.i.prol = phi ptr [ %i.ae, %.lr.ph28.i.i.prol ], [ %i.aa, %.lr.ph28.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph28.i.i.prol ], [ 0, %.lr.ph28.i.i.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.012.027.i.i.prol, i64 1 ; 2 uses
  %i.af = load i8, ptr %.sroa.012.027.i.i.prol, align 1, !noalias !500, !noundef !4
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !501, !noundef !4
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !noalias !501
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph28.i.i.prol.loopexit, label %.lr.ph28.i.i.prol, !llvm.loop !490

.lr.ph28.i.i.prol.loopexit:                       ; preds = %.lr.ph28.i.i.prol, %.lr.ph28.i.i.preheader
  %.sroa.012.027.i.i.unr = phi ptr [ %i.aa, %.lr.ph28.i.i.preheader ], [ %i.ae, %.lr.ph28.i.i.prol ]
  %i.ak = icmp ult i64 %i.ab, 4
  br i1 %i.ak, label %.loopexit, label %.lr.ph28.i.i

bb.i:                                             ; preds = %.noexc67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !501
  br label %bb.l

bb.j:                                             ; preds = %.noexc67.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1728) %i.c, ptr noundef nonnull align 8 dereferenceable(1728) %i.b, i64 1728, i1 false), !noalias !501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !501
  invoke void @_RINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj6_Kjd8_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1728) %i.c)
          to label %.noexc68.i unwind label %bb.k, !noalias !499

.noexc68.i:                                       ; preds = %bb.j
  %.not29.i.i = icmp ne i64 %i.p, 0
  %or.cond.not.i.i = and i1 %.not.i.i.i, %.not29.i.i
  br i1 %or.cond.not.i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.noexc68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !501
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !492, !noalias !493
  br label %.loopexit

.lr.ph.i.i:                                       ; preds = %.noexc68.i
  %i.al = urem i8 %.sroa.6.0.i.i, 6
  %i.am = udiv i8 %.sroa.6.0.i.i, 6
  %i.an = zext nneg i8 %i.al to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !501, !noundef !4
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !noalias !501
  %exitcond.not.i.i = icmp eq i64 %i.p, 1
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.ar = urem i8 %i.am, 6
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noalias !501, !noundef !4
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !noalias !501
  br label %.loopexit.i.i

.lr.ph28.i.i:                                     ; preds = %.lr.ph28.i.i.prol.loopexit, %.lr.ph28.i.i
  %.sroa.012.027.i.i = phi ptr [ %i.bo, %.lr.ph28.i.i ], [ %.sroa.012.027.i.i.unr, %.lr.ph28.i.i.prol.loopexit ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.027.i.i, i64 1
  %i.ax = load i8, ptr %.sroa.012.027.i.i, align 1, !noalias !500, !noundef !4
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ay ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !noalias !501, !noundef !4
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.az, align 8, !noalias !501
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.012.027.i.i, i64 2
  %i.bd = load i8, ptr %i.aw, align 1, !noalias !500, !noundef !4
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.be ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !501, !noundef !4
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !noalias !501
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.012.027.i.i, i64 3
  %i.bj = load i8, ptr %i.bc, align 1, !noalias !500, !noundef !4
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bk ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !501, !noundef !4
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.bl, align 8, !noalias !501
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.012.027.i.i, i64 4 ; 2 uses
  %i.bp = load i8, ptr %i.bi, align 1, !noalias !500, !noundef !4
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bq ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !noalias !501, !noundef !4
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.br, align 8, !noalias !501
  %i.bu = icmp eq ptr %i.bo, %i.ac
  br i1 %i.bu, label %.loopexit, label %.lr.ph28.i.i

bb.k:                                             ; preds = %bb.j, %bb.g, %.invoke.i, %bb.a
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !492, !noalias !493, !nonnull !4, !noundef !4
  store ptr %i.bx, ptr %i.d, align 8, !alias.scope !492, !noalias !493
  resume { ptr, i32 } %i.bv

bb.l:                                             ; preds = %bb.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !496
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !492, !noalias !493, !nonnull !4, !noundef !4
  br label %bb.m

.loopexit:                                        ; preds = %.lr.ph28.i.i.prol.loopexit, %.lr.ph28.i.i, %.loopexit.i.i, %bb.h
  %i.ca = phi ptr [ %i.aa, %bb.h ], [ %.pre, %.loopexit.i.i ], [ %i.aa, %.lr.ph28.i.i ], [ %i.aa, %.lr.ph28.i.i.prol.loopexit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cb, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !496
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.l
  %storemerge = phi ptr [ %i.ca, %.loopexit ], [ %i.bz, %bb.l ]
  %i.cc = phi i1 [ false, %.loopexit ], [ true, %bb.l ]
  store ptr %storemerge, ptr %i.d, align 8, !alias.scope !492, !noalias !493
  ret i1 %i.cc
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive7variantINtB5_14VariantDecoderKj6_Kb1_ENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(80) initializes((16, 32)) %0, ptr noalias noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8, !alias.scope !509, !noalias !510
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8, !alias.scope !509, !noalias !510
  %i.c = invoke fastcc noundef zeroext i1 @_RINvNtCs87O7Q65ve1k_7bitcode4pack17unpack_arithmeticKj6_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCs87O7Q65ve1k_7bitcode4pack22unpack_bytes_less_thanKj6_Kj0_ECs844E4pPEVZX_17influxdb3_catalog.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !509, !noalias !510, !nonnull !4, !noundef !4
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !509, !noalias !510
  resume { ptr, i32 } %i.d

_RINvNtCs87O7Q65ve1k_7bitcode4pack22unpack_bytes_less_thanKj6_Kj0_ECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !509, !noalias !510, !nonnull !4, !noundef !4
  store ptr %i.h, ptr %i.a, align 8, !alias.scope !509, !noalias !510
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive7variantINtB5_14VariantDecoderKjb_Kb0_ENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(120) initializes((16, 32)) %0, ptr noalias noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 14 uses
  %i.b = alloca [2048 x i8], align 8              ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8, !alias.scope !530, !noalias !531
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8, !alias.scope !530, !noalias !531
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !534
  %i.e = load ptr, ptr %1, align 8, !alias.scope !535, !noalias !536, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !535, !noalias !536, !noundef !4 ; 4 uses
  %i.h = lshr i64 %2, 1                           ; 20 uses
  %.sroa.0.0.i.i.i.i = sub nuw i64 %2, %i.h       ; 6 uses
  %i.i = invoke { ptr, i64 } @_RNvNtCs87O7Q65ve1k_7bitcode7consume13consume_bytes(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %.noexc.i unwind label %bb.m, !noalias !537 ; 2 uses

.noexc.i:                                         ; preds = %bb.a
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 9 uses
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 4 uses
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %bb.n, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2)
          to label %.noexc65.i unwind label %bb.m, !noalias !538

end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecDecoderTNtNtCscdodAO9FK5_5alloc6string6StringBZ_EENtNtB9_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessV_1__NtB5_20DeletionScopeDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate(ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtCs87O7Q65ve1k_7bitcode3intINtB5_10IntDecodertENtNtB7_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtCs87O7Q65ve1k_7bitcode3intINtB5_10IntDecoderxENtNtB7_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtCs87O7Q65ve1k_7bitcode3intINtB5_10IntDecoderyENtNtB7_5coder4View8populateCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs87O7Q65ve1k_7bitcode6derive6encodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records7restore14RestoreCatalogEBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB2_10VecEncoderNtNtB6_7u8_char6U8CharENtNtCs4NRVxsYgnAr_4core7default7Default7defaultCs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs87O7Q65ve1k_7bitcode6derive6decodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records7restore14RestoreCatalogEBM_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs87O7Q65ve1k_7bitcode6derive6encodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records13feature_level19AdvanceFeatureLevelEBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVectEINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VectEE4fromCs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVecxEINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VecxEE4fromCs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVecyEINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VecyEE4fromCs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden i48 @_RINvNtCs87O7Q65ve1k_7bitcode6derive6decodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records13feature_level19AdvanceFeatureLevelEBM_(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs87O7Q65ve1k_7bitcode6derive6encodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5cache15DeleteLastCacheEBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs87O7Q65ve1k_7bitcode6derive6decodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5cache15DeleteLastCacheEBM_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVechE5clearCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtNtNtB8_7catalog8versions2v36schema8database14DatabaseSchemaE12modify_by_iduNtNtNtB8_6format5apply10ApplyErrorNCNvXs_NtNtB37_7records5cacheNtB3I_19DeleteDistinctCacheNtNtB37_8registry13CatalogRecord5apply0EB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(192), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtNtNtB8_7catalog8versions2v36schema8database14DatabaseSchemaE12modify_by_iduNtNtNtB8_6format5apply10ApplyErrorNCNvXs_NtNtNtNtB8_10enterprise6format7records9retentionNtB3I_25ClearTableRetentionPeriodNtNtB37_8registry13CatalogRecord5apply0EB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(192), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NvNtNtCs844E4pPEVZX_17influxdb3_catalog6format13feature_levels_1__NtB4_19FeatureLevelEncoderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typess3_1__NtB4_15NodeSpecDecoderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias noundef writable sret([152 x i8]) align 8 captures(none) dereferenceable(152)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecDecoderNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnIdentifierENtNtCs4NRVxsYgnAr_4core7default7Default7defaultB16_(ptr dead_on_unwind noalias noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typess6_1__NtB4_18CacheSourceDecoderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVecmEINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VecmEE4fromCs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typess2_1__NtB4_15NodeSpecEncoderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB2_10VecEncoderNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnIdentifierENtNtCs4NRVxsYgnAr_4core7default7Default7defaultB13_(ptr dead_on_unwind noalias noundef writable sret([152 x i8]) align 8 captures(none) dereferenceable(152)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typess8_1__NtB4_31LastCacheValueColumnsDefEncoderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typess9_1__NtB4_31LastCacheValueColumnsDefDecoderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias noundef writable sret([272 x i8]) align 8 captures(none) dereferenceable(272)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typess5_1__NtB4_18CacheSourceEncoderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecDecoderNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core7default7Default7defaultCs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias noundef writable sret([152 x i8]) align 8 captures(none) dereferenceable(152)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB2_10VecEncoderNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core7default7Default7defaultCs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessP_1__NtB4_22RetentionPeriodDecoderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5typessO_1__NtB4_22RetentionPeriodEncoderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs87O7Q65ve1k_7bitcode6derive6encodeNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog10enterprise6format7records9retention23SetTableRetentionPeriodEBO_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs87O7Q65ve1k_7bitcode6derive6decodeNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog10enterprise6format7records9retention23SetTableRetentionPeriodEBO_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs87O7Q65ve1k_7bitcode6derive6encodeNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog10enterprise6format7records9retention25ClearTableRetentionPeriodEBO_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs87O7Q65ve1k_7bitcode6derive6decodeNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog10enterprise6format7records9retention25ClearTableRetentionPeriodEBO_(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs87O7Q65ve1k_7bitcode6derive6encodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5cache19CreateDistinctCacheEBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs87O7Q65ve1k_7bitcode6derive6decodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5cache19CreateDistinctCacheEBM_(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs87O7Q65ve1k_7bitcode6derive6encodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5cache19DeleteDistinctCacheEBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs87O7Q65ve1k_7bitcode6derive6decodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5cache19DeleteDistinctCacheEBM_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs87O7Q65ve1k_7bitcode6derive6encodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5cache15CreateLastCacheEBM_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs87O7Q65ve1k_7bitcode6derive6decodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5cache15CreateLastCacheEBM_(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v8i16(<8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umin.v8i16(<8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umin.v4i16(<4 x i16>, <4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v4i16(<4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umin.v4i16(<4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i8> @llvm.ctpop.v2i8(<2 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v12i64(<12 x i64>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v38i64(<38 x i64>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v4i8(<4 x i8>) #15

attributes #0 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { cold }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i8 0, i8 2}
!4 = !{}
!5 = !{i64 -1, i64 -9223372036854775808}
!6 = !{i64 -2, i64 -9223372036854775808}
!7 = !{i64 0, i64 -9223372036854775808}
!8 = !{!"branch_weights", i32 4001, i32 4000000}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = !{!"branch_weights", i32 8, i32 8}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!"branch_weights", i32 4000000, i32 4001}
!15 = !{i64 0, i64 2}
!16 = !{i8 -1, i8 61}
!17 = !{i64 8}
!18 = !{i8 0, i8 6}
!19 = !{i64 0, i64 3}
!20 = !{!"branch_weights", i32 4, i32 12}
!21 = !{i32 0, i32 2}
!22 = distinct !{!22, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdLkRf3gRIi6_10serde_json5value5ValueEECs844E4pPEVZX_17influxdb3_catalog"}
!23 = distinct !{!23, !22, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdLkRf3gRIi6_10serde_json5value5ValueEECs844E4pPEVZX_17influxdb3_catalog: argument 0"}
!24 = distinct !{!24, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs844E4pPEVZX_17influxdb3_catalog"}
!25 = distinct !{!25, !24, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs844E4pPEVZX_17influxdb3_catalog: argument 0"}
!26 = !{i8 -1, i8 6}
!27 = !{!23}
!28 = !{!25}
!29 = distinct !{!29, !9, !10}
!30 = distinct !{!30, !9, !10}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !10, !9}
!33 = distinct !{!33, !"_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj10_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog"}
!34 = distinct !{!34, !33, !"_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj10_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 1"}
!35 = distinct !{!35, !33, !"_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj10_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 0"}
!36 = distinct !{!36, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj10_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog"}
!37 = distinct !{!37, !36, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj10_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 0"}
!38 = distinct !{!38, !36, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj10_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 2"}
!39 = distinct !{!39, !36, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj10_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 1"}
!40 = !{!34}
!41 = !{!35, !34}
!42 = !{!37}
!43 = !{!38}
!44 = !{!38, !34}
!45 = !{!37, !39, !35}
!46 = !{!37, !39, !38, !35, !34}
!47 = !{!39, !38, !35, !34}
!48 = distinct !{!48, !"_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj2_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog"}
!49 = distinct !{!49, !48, !"_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj2_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 1"}
!50 = distinct !{!50, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj2_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog"}
!51 = distinct !{!51, !50, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj2_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 2"}
!52 = distinct !{!52, !48, !"_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj2_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 0"}
!53 = distinct !{!53, !50, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj2_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 1"}
!54 = distinct !{!54, !50, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj2_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 0"}
!55 = distinct !{!55, !9, !10}
!56 = distinct !{!56, !10, !9}
!57 = distinct !{!57, !9, !10}
!58 = distinct !{!58, !10, !9}
!59 = !{!49}
!60 = !{!51}
!61 = !{!54, !53, !51, !52, !49}
!62 = !{!51, !49}
!63 = !{!54, !53, !52}
!64 = distinct !{!64, !"_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj3_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kjf3_E0E0ECs844E4pPEVZX_17influxdb3_catalog"}
!65 = distinct !{!65, !64, !"_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj3_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kjf3_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 1"}
!66 = distinct !{!66, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj3_Kjf3_E0E0ECs844E4pPEVZX_17influxdb3_catalog"}
!67 = distinct !{!67, !66, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj3_Kjf3_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 2"}
!68 = distinct !{!68, !64, !"_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj3_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kjf3_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 0"}
!69 = distinct !{!69, !66, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj3_Kjf3_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 1"}
!70 = distinct !{!70, !66, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj3_Kjf3_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 0"}
!71 = distinct !{!71, !9, !10}
!72 = distinct !{!72, !10, !9}
!73 = distinct !{!73, !10, !9}
!74 = distinct !{!74, !9, !10}
!75 = distinct !{!75, !10, !9}
!76 = distinct !{!76, !9, !10}
!77 = !{!65}
!78 = !{!67}
!79 = !{!67, !65}
!80 = !{!70, !69, !68}
!81 = !{!70, !69, !67, !68, !65}
!82 = distinct !{!82, !"_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj4_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog"}
!83 = distinct !{!83, !82, !"_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj4_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 1"}
!84 = distinct !{!84, !82, !"_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj4_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 0"}
!85 = distinct !{!85, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj4_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog"}
!86 = distinct !{!86, !85, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj4_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 0"}
!87 = distinct !{!87, !85, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj4_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 2"}
!88 = distinct !{!88, !85, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj4_Kj100_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 1"}
!89 = !{!83}
!90 = !{!84, !83}
!91 = !{!86}
!92 = !{!87}
!93 = !{!87, !83}
!94 = !{!86, !88, !84}
!95 = !{!86, !88, !87, !84, !83}
!96 = !{!88, !87, !84, !83}
!97 = distinct !{!97, !"_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj6_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kjd8_E0E0ECs844E4pPEVZX_17influxdb3_catalog"}
!98 = distinct !{!98, !97, !"_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj6_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kjd8_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 1"}
!99 = distinct !{!99, !97, !"_RINvNtCs4NRVxsYgnAr_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitjEKj6_NCINvMBJ_BG_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKB1q_Kjd8_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 0"}
!100 = distinct !{!100, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj6_Kjd8_E0E0ECs844E4pPEVZX_17influxdb3_catalog"}
!101 = distinct !{!101, !100, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj6_Kjd8_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 0"}
!102 = distinct !{!102, !100, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj6_Kjd8_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 2"}
!103 = distinct !{!103, !100, !"_RINvNtCs4NRVxsYgnAr_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitjENCINvMBQ_BN_10wrap_mut_1jNCINvNtCs87O7Q65ve1k_7bitcode4pack16unpack_histogramKj6_Kjd8_E0E0ECs844E4pPEVZX_17influxdb3_catalog: argument 1"}
!104 = !{!98}
!105 = !{!99, !98}
!106 = !{!101}
!107 = !{!102}
!108 = !{!102, !98}
!109 = !{!101, !103, !99}
!110 = !{!101, !103, !102, !99, !98}
!111 = !{!103, !102, !99, !98}
!112 = distinct !{!112, !"LVerDomain"}
!113 = distinct !{!113, !112}
!114 = distinct !{!114, !112}
!115 = distinct !{!115, !9, !10}
!116 = distinct !{!116, !9, !10}
!117 = distinct !{!117, !9}
!118 = !{!113}
!119 = !{!114}
!120 = distinct !{!120, !"LVerDomain"}
!121 = distinct !{!121, !120}
!122 = distinct !{!122, !120}
!123 = distinct !{!123, !9, !10}
!124 = distinct !{!124, !9, !10}
!125 = distinct !{!125, !9}
!126 = !{!121}
!127 = !{!122}
!128 = distinct !{!128, !"_RINvMNtCs87O7Q65ve1k_7bitcode9pack_intsNtB3_7Packing5writeyECs844E4pPEVZX_17influxdb3_catalog"}
!129 = distinct !{!129, !128, !"_RINvMNtCs87O7Q65ve1k_7bitcode9pack_intsNtB3_7Packing5writeyECs844E4pPEVZX_17influxdb3_catalog: argument 0"}
!130 = distinct !{!130, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs844E4pPEVZX_17influxdb3_catalog"}
!131 = distinct !{!131, !130, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs844E4pPEVZX_17influxdb3_catalog: argument 0"}
!132 = distinct !{!132, !9, !10}
!133 = distinct !{!133, !10, !9}
!134 = distinct !{!134, !"_RINvMNtCs87O7Q65ve1k_7bitcode9pack_intsNtB3_7Packing5writeyECs844E4pPEVZX_17influxdb3_catalog"}
!135 = distinct !{!135, !134, !"_RINvMNtCs87O7Q65ve1k_7bitcode9pack_intsNtB3_7Packing5writeyECs844E4pPEVZX_17influxdb3_catalog: argument 0"}
!136 = distinct !{!136, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs844E4pPEVZX_17influxdb3_catalog"}
!137 = distinct !{!137, !136, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs844E4pPEVZX_17influxdb3_catalog: argument 0"}
!138 = !{!131, !129}
!139 = !{!137, !135}
!140 = distinct !{!140, !"_RNvXs1_NtCs87O7Q65ve1k_7bitcode9pack_intsmNtB5_9SizedUInt8unpack32"}
!141 = distinct !{!141, !140, !"_RNvXs1_NtCs87O7Q65ve1k_7bitcode9pack_intsmNtB5_9SizedUInt8unpack32: argument 1:thread"}
!142 = distinct !{!142, !140, !"_RNvXs1_NtCs87O7Q65ve1k_7bitcode9pack_intsmNtB5_9SizedUInt8unpack32: argument 0:thread"}
!143 = distinct !{!143, !140, !"_RNvXs1_NtCs87O7Q65ve1k_7bitcode9pack_intsmNtB5_9SizedUInt8unpack32: argument 1"}
!144 = distinct !{!144, !140, !"_RNvXs1_NtCs87O7Q65ve1k_7bitcode9pack_intsmNtB5_9SizedUInt8unpack32: argument 0"}
!145 = !{!141}
!146 = !{!142}
!147 = !{!143}
!148 = !{!144}
!149 = distinct !{!149, !"_RNvXs2_NtCs87O7Q65ve1k_7bitcode9pack_intstNtB5_9SizedUInt8unpack16"}
!150 = distinct !{!150, !149, !"_RNvXs2_NtCs87O7Q65ve1k_7bitcode9pack_intstNtB5_9SizedUInt8unpack16: argument 1:thread"}
!151 = distinct !{!151, !149, !"_RNvXs2_NtCs87O7Q65ve1k_7bitcode9pack_intstNtB5_9SizedUInt8unpack16: argument 0:thread"}
!152 = distinct !{!152, !149, !"_RNvXs2_NtCs87O7Q65ve1k_7bitcode9pack_intstNtB5_9SizedUInt8unpack16: argument 1"}
!153 = distinct !{!153, !149, !"_RNvXs2_NtCs87O7Q65ve1k_7bitcode9pack_intstNtB5_9SizedUInt8unpack16: argument 0"}
!154 = !{!150}
!155 = !{!151}
!156 = !{!152}
!157 = !{!153}
!158 = distinct !{!158, !"_RNvXs0_NtCs87O7Q65ve1k_7bitcode9pack_intsyNtB5_9SizedUInt8unpack64"}
!159 = distinct !{!159, !158, !"_RNvXs0_NtCs87O7Q65ve1k_7bitcode9pack_intsyNtB5_9SizedUInt8unpack64: argument 1:thread"}
!160 = distinct !{!160, !158, !"_RNvXs0_NtCs87O7Q65ve1k_7bitcode9pack_intsyNtB5_9SizedUInt8unpack64: argument 0:thread"}
!161 = distinct !{!161, !158, !"_RNvXs0_NtCs87O7Q65ve1k_7bitcode9pack_intsyNtB5_9SizedUInt8unpack64: argument 1"}
!162 = distinct !{!162, !158, !"_RNvXs0_NtCs87O7Q65ve1k_7bitcode9pack_intsyNtB5_9SizedUInt8unpack64: argument 0"}
!163 = !{!159}
!164 = !{!160}
!165 = !{!161}
!166 = !{!162}
!167 = !{i64 1, i64 0}
!168 = !{i64 -1, i64 -9223372036854775790}
end_hunk_1
