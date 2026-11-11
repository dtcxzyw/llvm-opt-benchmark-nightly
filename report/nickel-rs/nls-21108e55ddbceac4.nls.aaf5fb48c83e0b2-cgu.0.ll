Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33046
inline.NumDeleted: 15305
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_ZN3nls12field_walker13FieldResolver18containers_at_path17h8f2bc0ba2e51366cE:.loopexit84
  store i64 %.sroa.762.8.copyload, ptr %.sroa.565.0..sroa_idx, align 8, !noalias !45111
  %i.co = add i64 %i.cj, 1
  store i64 %i.co, ptr %i.n, align 8, !alias.scope !45110, !noalias !45081
  br label %bb.af

bb.v:                                             ; preds = %bb.s
  invoke void @"_ZN100_$LT$$RF$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_core..typecheck..AnnotSeqRef$GT$4iter17h5b29a8e47d93cff3E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(104) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.561.8.copyload)
          to label %bb.w unwind label %bb.o

bb.w:                                             ; preds = %bb.v
  store ptr %1, ptr %.sroa.04.sroa.4.0..sroa_idx.i, align 8, !alias.scope !45112, !noalias !45081
  store ptr null, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !45112, !noalias !45081
  store ptr null, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !45112, !noalias !45081
  invoke fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h75f57110b89e90a0E"(ptr noalias noundef align 8 dereferenceable(24) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.g)
          to label %bb.x unwind label %bb.o

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.561.8.copyload, i64 216 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !range !74, !noalias !45081, !noundef !46
  %.not.i = icmp eq i32 %i.cq, 3
  br i1 %.not.i, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !45081
  invoke fastcc void @_ZN3nls12field_walker13FieldResolver17resolve_container17h589838502bee0d4aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cp)
          to label %bb.z unwind label %bb.o, !noalias !45081, !inline_history !45044

bb.z:                                             ; preds = %bb.y
  %.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8, !alias.scope !45113, !noalias !45081 ; 4 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !45113, !noalias !45081, !nonnull !46, !noundef !46 ; 3 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !45113, !noalias !45081 ; 5 uses
  %i.cr = icmp ult i64 %.sroa.5.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.cr), !noalias !45081
  call void @llvm.experimental.noalias.scope.decl(metadata !45114)
  %.idx81 = mul nuw nsw i64 %.sroa.5.0.copyload.i, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !45115), !noalias !45081
  %i.cs = load i64, ptr %i.n, align 8, !alias.scope !45116, !noalias !45081, !noundef !46 ; 3 uses
  %i.ct = load i64, ptr %i.i, align 8, !range !76, !alias.scope !45116, !noalias !45081, !noundef !46
  %i.cu = sub i64 %i.ct, %i.cs
  %i.cv = icmp ugt i64 %.sroa.5.0.copyload.i, %i.cu
  br i1 %i.cv, label %bb.ac, label %bb.ad, !prof !51

bb.aa:                                            ; preds = %bb.ac
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.cx, label %.body, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = mul nuw i64 %.sroa.0.0.copyload.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45117
  br label %.body

bb.ac:                                            ; preds = %bb.z
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.cs, i64 noundef %.sroa.5.0.copyload.i, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.aa, !noalias !45118

.noexc.i:                                         ; preds = %bb.ac
  %.pre.i.i = load i64, ptr %i.n, align 8, !alias.scope !45119, !noalias !45081
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc.i, %bb.z
  %i.cz = phi i64 [ %i.cs, %bb.z ], [ %.pre.i.i, %.noexc.i ] ; 3 uses
  %i.da = icmp ult i64 %i.cz, 384307168202282326
  call void @llvm.assume(i1 %i.da), !noalias !45081
  %i.db = load ptr, ptr %i.m, align 8, !alias.scope !45119, !noalias !45081, !nonnull !46, !noundef !46
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dc, ptr nonnull readonly align 8 %.sroa.4.0.copyload.i, i64 %.idx81, i1 false), !noalias !45120
  %i.dd = add nuw nsw i64 %i.cz, %.sroa.5.0.copyload.i
  store i64 %i.dd, ptr %i.n, align 8, !alias.scope !45119, !noalias !45081
  %i.de = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.de, label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h65b5a10e494a390fE.exit", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.df = mul nuw i64 %.sroa.0.0.copyload.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.df, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45121
  br label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h65b5a10e494a390fE.exit"

"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h65b5a10e494a390fE.exit": ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !45081
  br label %bb.af

bb.af:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he7e3f864399efe79E.exit", %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit", %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h65b5a10e494a390fE.exit", %bb.x
  %i.dg = icmp eq ptr %i.cb, %i.bu
  br i1 %i.dg, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit", label %bb.p

bb.ag:                                            ; preds = %bb.r
  %i.dh = load ptr, ptr %i.bw, align 8, !noalias !45081, !nonnull !46, !noundef !46 ; 5 uses
  %i.di = load i64, ptr %i.bx, align 8, !noalias !45081, !noundef !46 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45122)
  %i.dj = load i64, ptr %i.n, align 8, !alias.scope !45123, !noalias !45081, !noundef !46 ; 4 uses
  %i.dk = load i64, ptr %i.i, align 8, !range !76, !alias.scope !45123, !noalias !45081, !noundef !46
  %i.dl = sub i64 %i.dk, %i.dj
  %i.dm = icmp ugt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.ah, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i", !prof !51

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.dj, i64 noundef %i.di, i64 noundef 8, i64 noundef 24)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.thread" unwind label %bb.ai

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.thread": ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.n, align 8, !alias.scope !45122, !noalias !45081
  %i.dn = load ptr, ptr %i.m, align 8, !alias.scope !45122, !noalias !45081, !nonnull !46, !noundef !46
  br label %.preheader.i.preheader

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i": ; preds = %bb.ag
  %i.do = load ptr, ptr %i.m, align 8, !alias.scope !45122, !noalias !45081, !nonnull !46, !noundef !46
  %i.dp = icmp eq i64 %i.di, 0
  br i1 %i.dp, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.thread", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i"
  %i.dq = phi ptr [ %i.dn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.thread" ], [ %i.do, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i" ] ; 3 uses
  %i.dr = phi i64 [ %.pre.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.thread" ], [ %i.dj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i" ] ; 2 uses
  %xtraiter = and i64 %i.di, 1
  %i.ds = icmp eq i64 %i.di, 1
  br i1 %i.ds, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.di, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %i.dt = phi i64 [ %i.dr, %.preheader.i.preheader.new ], [ %i.ea, %.preheader.i ] ; 3 uses
  %.sroa.06.0.i.i.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.eb, %.preheader.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %.sroa.06.0.i.i.i.i
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.du, i64 24, i1 false), !noalias !45124
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %.sroa.06.0.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = getelementptr [24 x i8], ptr %i.dq, i64 %i.dt
  %i.dz = getelementptr i8, ptr %i.dy, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dx, i64 24, i1 false), !noalias !45124
  %i.ea = add i64 %i.dt, 2                        ; 3 uses
  %i.eb = add nuw i64 %.sroa.06.0.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i

bb.ai:                                            ; preds = %bb.ah
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val38.i = load i64, ptr %i.e, align 8, !noalias !45081 ; 2 uses
  %i.ed = icmp eq i64 %.val38.i, 0
  br i1 %i.ed, label %.body, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ee = mul nuw i64 %.val38.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dh, i64 noundef %i.ee, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45081
  br label %.body

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.epil.init = phi i64 [ %i.dr, %.preheader.i.preheader ], [ %i.ea, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.06.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.eb, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i64 %i.di to i1
  call void @llvm.assume(i1 %lcmp.mod46)
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %.sroa.06.0.i.i.i.i.epil.init
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ef, i64 24, i1 false), !noalias !45124
  %i.eh = add i64 %.epil.init, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i"
  %storemerge.i.i.i = phi i64 [ %i.dj, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i" ], [ %i.ea, %.loopexit.loopexit.unr-lcssa ], [ %i.eh, %.preheader.i.epil.preheader ]
  store i64 %storemerge.i.i.i, ptr %i.n, align 8, !alias.scope !45122, !noalias !45125
  %.val.i = load i64, ptr %i.e, align 8, !noalias !45081 ; 2 uses
  %i.ei = icmp eq i64 %.val.i, 0
  br i1 %i.ei, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit", label %bb.ak

bb.ak:                                            ; preds = %.loopexit
  %i.ej = mul nuw i64 %.val.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dh, i64 noundef %i.ej, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45081
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit"

"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit": ; preds = %bb.ak, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !45081
  br label %bb.af

.thread:                                          ; preds = %bb.a, %.body19
  resume { ptr, i32 } %.pn.pn.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3nls12field_walker13FieldResolver21resolve_def_with_path17h6c7df9767e50e720E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !45476 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.4377 = alloca [16 x i8], align 8         ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.6.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 13 uses
  %.sroa.6.i.i.i.i = alloca [16 x i8], align 8    ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [104 x i8], align 8               ; 20 uses
  %i.j = alloca [8 x i8], align 4                 ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 16 uses
  %i.l = alloca [104 x i8], align 8               ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [88 x i8], align 8                ; 8 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.8297 = alloca [96 x i8], align 8         ; 5 uses
  %.sroa.7291 = alloca [16 x i8], align 8         ; 5 uses
  %.sroa.7255 = alloca [16 x i8], align 8         ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 2 uses
  %.sroa.4239 = alloca [16 x i8], align 8         ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [104 x i8], align 8               ; 5 uses
  %i.t = alloca [248 x i8], align 8               ; 26 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 8 uses
  store i64 0, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke fastcc void @_ZN3nls12field_walker3Def6values17hd6562d9d475bbae6E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %2)
          to label %bb.d unwind label %bb.c

.body:                                            ; preds = %bb.ba, %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i1032", %.body93, %bb.cc, %.body70, %bb.bx, %bb.by, %bb.c
  %.pn = phi { ptr, i32 } [ %i.no, %bb.bx ], [ %lpad.phi, %.body93 ], [ %eh.lpad-body71, %bb.cc ], [ %i.aa, %bb.c ], [ %i.no, %bb.by ], [ %eh.lpad-body71, %.body70 ], [ %eh.lpad-body79, %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i1032" ], [ %eh.lpad-body79, %bb.ba ]
  %.val = load i64, ptr %i.v, align 8             ; 2 uses
  %i.y = icmp eq i64 %.val, 0
  br i1 %i.y, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit", label %bb.b

bb.b:                                             ; preds = %.body
  %.val42 = load ptr, ptr %i.w, align 8, !nonnull !46, !noundef !46
  %i.z = mul nuw i64 %.val, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #66
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit"

bb.c:                                             ; preds = %.invoke, %bb.bw, %bb.bg, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8, !alias.scope !45477 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !45477, !nonnull !46, !noundef !46 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !45477 ; 2 uses
  %i.ab = icmp ult i64 %.sroa.5.0.copyload.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45478)
  %i.ad = load i32, ptr %2, align 8, !range !74   ; 3 uses
  %switch.i.i = icmp samesign ult i32 %i.ad, 2    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !46
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ah = load i64, ptr %i.ag, align 8
  %.sroa.0.0.i.i110 = select i1 %switch.i.i, ptr %i.af, ptr inttoptr (i64 4 to ptr) ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %.idx677 = select i1 %switch.i.i, i64 %i.ai, i64 0 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i110, i64 %.idx677
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 9 uses
  %i.am = icmp samesign eq i64 %.idx677, 0
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.7.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.10.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %.sroa.12.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %.sroa.14.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.24.0..sroa_idx16.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 3 uses
  %.sroa.26.0..sroa_idx18.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.27.0..sroa_idx20.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.04.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 4 uses
  %.sroa.6.0..sroa_idx.i69.i = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.4.0..sroa_idx.i74.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx.i76.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %.outer2104

.outer2104:                                       ; preds = %bb.d, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit"
  %.val4.i.i.i288.ph = phi ptr [ undef, %bb.d ], [ %i.ir, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit" ] ; 2 uses
  %.val6.i.i286.ph = phi i64 [ undef, %bb.d ], [ %.sroa.0307.0.copyload, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit" ] ; 4 uses
  %.val.i.i.i280.ph = phi ptr [ undef, %bb.d ], [ %.sroa.4308.0.copyload, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit" ]
  %.ph2105 = phi ptr [ null, %bb.d ], [ %.sroa.4308.0.copyload, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit" ] ; 4 uses
  %.sroa.7.sroa.0.sroa.4.0.copyload228.ph = phi ptr [ %.sroa.4.0.copyload.i, %bb.d ], [ %i.bh, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit" ] ; 3 uses
  %.not.i114 = icmp eq ptr %.ph2105, null
  %3 = ptrtoint ptr %.val4.i.i.i288.ph to i64
  br label %bb.e

bb.e:                                             ; preds = %.outer2104, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit"
  %.val.i.i.i280.a = phi ptr [ %i.bc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit" ], [ %.val.i.i.i280.ph, %.outer2104 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7255)
  br i1 %.not.i114, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit124.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = icmp eq ptr %.val.i.i.i280.a, %.val4.i.i.i288.ph
  br i1 %i.az, label %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i121, label %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i115

_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i115: ; preds = %bb.f
  %.sroa.0.0.copyload8.i116 = load i64, ptr %.val.i.i.i280.a, align 8, !noalias !45479 ; 2 uses
  %.not6.i118 = icmp eq i64 %.sroa.0.0.copyload8.i116, 6
  br i1 %.not6.i118, label %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i121, label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h763f252720ed0cc5E.exit.thread"

_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i121: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i115, %bb.f
  %i.ba = icmp eq i64 %.val6.i.i286.ph, 0
  br i1 %i.ba, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit124.thread, label %bb.g

bb.g:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i121
  %i.bb = mul nuw i64 %.val6.i.i286.ph, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.ph2105, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45480
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit124.thread

"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h763f252720ed0cc5E.exit.thread": ; preds = %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i115
  %.sroa.7.0..sroa_idx9.i117 = getelementptr inbounds nuw i8, ptr %.val.i.i.i280.a, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i.i.i280.a, i64 24 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7255, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx9.i117, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4239)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4239, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7255, i64 16, i1 false), !noalias !45478
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7255)
  %4 = load i64, ptr %i.x, align 8, !alias.scope !45478, !noundef !46 ; 5 uses
  %i.bd = icmp ult i64 %4, 384307168202282326
  call void @llvm.assume(i1 %i.bd)
  %i.be = load i64, ptr %i.v, align 8, !range !76, !alias.scope !45478, !noundef !46
  %i.bf = icmp eq i64 %4, %i.be
  br i1 %i.bf, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit61.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit"

_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit124.thread: ; preds = %bb.e, %bb.g, %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i121
  %.sroa.0.2 = phi ptr [ null, %bb.g ], [ null, %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i121 ], [ %.ph2105, %bb.e ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7255)
  %i.bg = icmp eq ptr %.sroa.7.sroa.0.sroa.4.0.copyload228.ph, %i.ac
  br i1 %i.bg, label %.noexc77.thread, label %"_ZN3nls12field_walker13FieldResolver21resolve_def_with_path28_$u7b$$u7b$closure$u7d$$u7d$17ha33c4d6c78d8683cE.exit.i"

"_ZN3nls12field_walker13FieldResolver21resolve_def_with_path28_$u7b$$u7b$closure$u7d$$u7d$17ha33c4d6c78d8683cE.exit.i": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit124.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.7.sroa.0.sroa.4.0.copyload228.ph, i64 8
  %i.bi = load ptr, ptr %.sroa.7.sroa.0.sroa.4.0.copyload228.ph, align 8, !noalias !45481, !nonnull !46, !align !52, !noundef !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !45482
  invoke fastcc void @_ZN3nls12field_walker13FieldResolver17resolve_container17h589838502bee0d4aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bi)
          to label %.noexc111 unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit, !inline_history !45154

.noexc111:                                        ; preds = %"_ZN3nls12field_walker13FieldResolver21resolve_def_with_path28_$u7b$$u7b$closure$u7d$$u7d$17ha33c4d6c78d8683cE.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !45483)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8, !alias.scope !45484 ; 2 uses
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !45484, !nonnull !46, !noundef !46 ; 2 uses
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !45484 ; 4 uses
  %i.bj = icmp ult i64 %.sroa.5.0.copyload.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !45485
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.k, align 8, !alias.scope !45486, !noalias !45485
  store ptr %.sroa.4.0.copyload.i.i, ptr %i.ak, align 8, !alias.scope !45486, !noalias !45485
  store i64 %.sroa.5.0.copyload.i.i, ptr %i.al, align 8, !alias.scope !45486, !noalias !45485
  br i1 %i.am, label %.noexc77, label %.lr.ph663

"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.i.i.i.i": ; preds = %.loopexit.split-lp.thread.i.i.i.i, %.loopexit.split-lp.i.i.i.i, %bb.s, %.body71.i, %bb.t, %.body.i.i.i.i.i, %"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.sink.split.i.i.i.i"
  %.pn.pn.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i, %"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.sink.split.i.i.i.i" ], [ %lpad.phi.i.i.i.i.i, %.body.i.i.i.i.i ], [ %.pn.i, %.body71.i ], [ %.pn.i, %bb.t ], [ %lpad.loopexit.i.i.i.i, %.loopexit.split-lp.thread.i.i.i.i ], [ %lpad.loopexit.split-lp28.i.i.i.i, %bb.s ], [ %lpad.loopexit.split-lp28.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.val42.i = load i64, ptr %i.k, align 8, !noalias !45485 ; 2 uses
  %i.bk = icmp eq i64 %.val42.i, 0
  br i1 %i.bk, label %.body78, label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.i.i.i.i"
  %.val43.i = load ptr, ptr %i.ak, align 8, !noalias !45485, !nonnull !46, !noundef !46
  %i.bl = mul nuw i64 %.val42.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val43.i, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45485, !inline_history !45170
  br label %.body78

.lr.ph663:                                        ; preds = %.noexc111, %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$17hf5e77e122e3c7a36E.exit68.i"
  %i.bm = phi i64 [ %i.ee, %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$17hf5e77e122e3c7a36E.exit68.i" ], [ %.sroa.5.0.copyload.i.i, %.noexc111 ]
  %.sroa.0340.0662 = phi ptr [ %i.bn, %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$17hf5e77e122e3c7a36E.exit68.i" ], [ %.sroa.0.0.i.i110, %.noexc111 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0340.0662, i64 4 ; 2 uses
  %i.bo = load i32, ptr %.sroa.0340.0662, align 4, !noalias !45487, !noundef !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !45485
  store i32 0, ptr %i.j, align 4, !noalias !45485
  store i32 %i.bo, ptr %i.an, align 4, !noalias !45485
  %i.bp = load ptr, ptr %i.ak, align 8, !noalias !45485, !nonnull !46, !noundef !46 ; 2 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.bm ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !45488
  br label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i3.i.i.i.i", %.lr.ph663
  %.sroa.24.0.i.i.i = phi ptr [ %i.bp, %.lr.ph663 ], [ %i.bv, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i3.i.i.i.i" ] ; 5 uses
  %.sroa.12.0.i.i.i = phi ptr [ undef, %.lr.ph663 ], [ %i.bz, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i3.i.i.i.i" ] ; 4 uses
  %.sroa.10.0.i.i.i = phi i64 [ undef, %.lr.ph663 ], [ %.pr.i.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i3.i.i.i.i" ] ; 6 uses
  %.sroa.7.0.i.i.i = phi ptr [ undef, %.lr.ph663 ], [ %.sroa.2.0.copyload.i.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i3.i.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ null, %.lr.ph663 ], [ %.sroa.2.0.copyload.i.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i3.i.i.i.i" ] ; 5 uses
  %.not.i.i.i2.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %.not.i.i.i2.i.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = icmp eq ptr %.sroa.7.0.i.i.i, %.sroa.12.0.i.i.i
  br i1 %i.br, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bs = icmp eq i64 %.sroa.10.0.i.i.i, 0
  br i1 %i.bs, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = shl nuw i64 %.sroa.10.0.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i.i.i, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45489, !inline_history !45170
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45490
  %i.bu = icmp eq ptr %.sroa.24.0.i.i.i, %i.bq
  br i1 %i.bu, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit.i.thread", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h627a3de8ffdc501cE.exit.i.i.i.i.i.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h627a3de8ffdc501cE.exit.i.i.i.i.i.i": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.24.0.i.i.i, i64 24
  %i.bw = load i32, ptr %i.j, align 4, !range !74, !noalias !45491, !noundef !46
  %i.bx = load i32, ptr %i.an, align 4, !noalias !45491
  invoke fastcc void @_ZN3nls12field_walker9Container3get17h17c6500e0ea203c6E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.24.0.i.i.i, i32 noundef %i.bw, i32 %i.bx)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.thread.i.i.i.i, !noalias !45492, !inline_history !45170

.noexc.i.i.i.i:                                   ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h627a3de8ffdc501cE.exit.i.i.i.i.i.i"
  %.pr.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !45490 ; 2 uses
  %.not.i.i.i.i.i.i167 = icmp eq i64 %.pr.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i167, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit.i.thread", label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i3.i.i.i.i"

"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i3.i.i.i.i": ; preds = %.noexc.i.i.i.i
  %.sroa.3.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !45490 ; 2 uses
  %i.by = icmp ult i64 %.sroa.3.0.copyload.i.i.i.i.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.by), !noalias !45493
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !45490, !nonnull !46, !noundef !46 ; 3 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.3.0.copyload.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45490
  br label %bb.i

bb.m:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i.i, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0.i.i.i, i64 16, i1 false), !noalias !45494
  %i.cb = ptrtoint ptr %.sroa.12.0.i.i.i to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub nuw i64 %i.cb, %i.cc                ; 2 uses
  %i.ce = lshr exact i64 %i.cd, 4
  %i.cf = call i64 @llvm.umax.i64(i64 %i.ce, i64 3) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = add nuw nsw i64 %i.cf, 1 ; 2 uses
  %i.cg = shl i64 %.sroa.0.0.i.i.i.i.i.i, 4       ; 4 uses
  %i.ch = icmp eq i64 %i.cd, -16
  %i.ci = icmp ugt i64 %i.cg, 9223372036854775800
  %or.cond.i.i.i6.i.i.i.i.i = select i1 %i.ch, i1 true, i1 %i.ci, !prof !71
  br i1 %or.cond.i.i.i6.i.i.i.i.i, label %bb.o, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !71

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit.i.thread": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i.i, %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !45488
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  store i64 0, ptr %i.al, align 8, !noalias !45485
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$17hf5e77e122e3c7a36E.exit68.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.cj = icmp eq i64 %i.cg, 0
  br i1 %i.cj, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !45495, !inline_history !45170
  %i.ck = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cg, i64 noundef range(i64 1, 9) 8) #66, !noalias !45495, !inline_history !45170 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.n ], [ 0, %bb.m ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !45488, !inline_history !45170

.noexc.i.i.i.i.i:                                 ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.ck, %bb.n ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.n ] ; 2 uses
  %i.cm = icmp samesign ult i64 %i.cf, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.cm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i, i64 16, i1 false), !noalias !45488
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.f, align 8, !noalias !45488
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !45488
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !45488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !45488
  store ptr %.sroa.0.0.i.i.i, ptr %i.e, align 8, !noalias !45496
  store ptr %i.ca, ptr %.sroa.7.0..sroa_idx2.i.i.i, align 8, !noalias !45496
  store i64 %.sroa.10.0.i.i.i, ptr %.sroa.10.0..sroa_idx4.i.i.i, align 8, !noalias !45496
  store ptr %.sroa.12.0.i.i.i, ptr %.sroa.12.0..sroa_idx6.i.i.i, align 8, !noalias !45496
  store ptr null, ptr %.sroa.14.0..sroa_idx8.i.i.i, align 8, !noalias !45496
  store ptr %.sroa.24.0.i.i.i, ptr %.sroa.24.0..sroa_idx16.i.i.i, align 8, !noalias !45496
  store ptr %i.bq, ptr %.sroa.26.0..sroa_idx18.i.i.i, align 8, !noalias !45496
  store ptr %i.j, ptr %.sroa.27.0..sroa_idx20.i.i.i, align 8, !noalias !45496
  call void @llvm.experimental.noalias.scope.decl(metadata !45497)
  call void @llvm.experimental.noalias.scope.decl(metadata !45498)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  br label %bb.q

bb.q:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i.i", %bb.p
  %i.cn = phi ptr [ %i.dg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i, %bb.p ]
  %i.co = phi i64 [ %i.di, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i.i" ], [ 1, %bb.p ] ; 5 uses
  %i.cp = phi ptr [ %.lcssa552, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i.i" ], [ %.sroa.24.0.i.i.i, %bb.p ] ; 2 uses
  %.pr.i.i30.lcssa3150.i.i.i.i.i = phi i64 [ %.val5.i.i.i.i.i.i.i.i.i.lcssa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i, %bb.p ] ; 2 uses
  %.sroa.2.0.copyload.i.i26.lcssa2746.i.i.i.i.i = phi ptr [ %i.dc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i.i" ], [ %i.ca, %bb.p ] ; 3 uses
  %.lcssa3642.i.i.i.i.i = phi ptr [ %.lcssa559, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i.i" ], [ %.sroa.12.0.i.i.i, %bb.p ] ; 3 uses
  %.sroa.2.0.copyload.i.i20.lcssa39.i.i.i.i.i = phi ptr [ %.sroa.2.0.copyload.i.i19.i.i.i.i.i.lcssa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i.i" ], [ %.sroa.0.0.i.i.i, %bb.p ] ; 2 uses
  %i.cq = icmp eq ptr %.sroa.2.0.copyload.i.i26.lcssa2746.i.i.i.i.i, %.lcssa3642.i.i.i.i.i
  br i1 %i.cq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.q, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i.i"
  %.sroa.2.0.copyload.i.i19.i.i.i.i.i646 = phi ptr [ %.sroa.2.0.copyload.i.i.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i.i" ], [ %.sroa.2.0.copyload.i.i20.lcssa39.i.i.i.i.i, %bb.q ]
  %i.cr = phi ptr [ %i.cw, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i.i" ], [ %i.cp, %bb.q ] ; 3 uses
  %.sroa.2.0.copyload.i.i26.i.i.i.i.i645 = phi ptr [ %.sroa.2.0.copyload.i.i.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i.i" ], [ %.sroa.2.0.copyload.i.i26.lcssa2746.i.i.i.i.i, %bb.q ]
  %.val5.i.i.i.i.i.i.i.i.i644 = phi i64 [ %.pr.i.i.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i.i" ], [ %.pr.i.i30.lcssa3150.i.i.i.i.i, %bb.q ] ; 3 uses
  %i.cs = phi ptr [ %i.da, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i.i" ], [ %.lcssa3642.i.i.i.i.i, %bb.q ]
  %i.ct = icmp eq i64 %.val5.i.i.i.i.i.i.i.i.i644, 0
  br i1 %i.ct, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.cu = shl nuw i64 %.val5.i.i.i.i.i.i.i.i.i644, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i19.i.i.i.i.i646, i64 noundef %i.cu, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45499, !inline_history !45170
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.r, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !45500
  %i.cv = icmp eq ptr %i.cr, %i.bq
  br i1 %i.cv, label %_ZN4core4iter6traits8iterator8Iterator7collect17h4e071a5f63f00d9dE.exit.i, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h627a3de8ffdc501cE.exit.i.i.i.i.i.i.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h627a3de8ffdc501cE.exit.i.i.i.i.i.i.i": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 3 uses
  %i.cx = load i32, ptr %i.j, align 4, !range !74, !noalias !45501, !noundef !46
  %i.cy = load i32, ptr %i.an, align 4, !noalias !45501
  invoke fastcc void @_ZN3nls12field_walker9Container3get17h17c6500e0ea203c6E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr, i32 noundef %i.cx, i32 %i.cy)
          to label %.noexc10.i.i.i.i.i unwind label %.body.loopexit.i.i.i.i.i, !noalias !45488, !inline_history !45170

.noexc10.i.i.i.i.i:                               ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h627a3de8ffdc501cE.exit.i.i.i.i.i.i.i"
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !45500 ; 3 uses
  %.not.i.i8.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i8.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h4e071a5f63f00d9dE.exit.i, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i.i"

"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i.i": ; preds = %.noexc10.i.i.i.i.i
  %.sroa.3.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !45500 ; 3 uses
  %i.cz = icmp ult i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.cz), !noalias !45502
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !45500, !nonnull !46, !noundef !46 ; 5 uses
  %.idx678 = shl nuw nsw i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i, 4
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, i64 %.idx678 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !45500
  %i.db = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.db, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i.i", %bb.q
  %.lcssa559 = phi ptr [ %.lcssa3642.i.i.i.i.i, %bb.q ], [ %i.da, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i.i" ] ; 3 uses
  %.val5.i.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %.pr.i.i30.lcssa3150.i.i.i.i.i, %bb.q ], [ %.pr.i.i.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i.i" ] ; 2 uses
  %.sroa.2.0.copyload.i.i26.i.i.i.i.i.lcssa = phi ptr [ %.sroa.2.0.copyload.i.i26.lcssa2746.i.i.i.i.i, %bb.q ], [ %.sroa.2.0.copyload.i.i.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i.i" ] ; 2 uses
  %.lcssa552 = phi ptr [ %i.cp, %bb.q ], [ %i.cw, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i.i" ] ; 2 uses
  %.sroa.2.0.copyload.i.i19.i.i.i.i.i.lcssa = phi ptr [ %.sroa.2.0.copyload.i.i20.lcssa39.i.i.i.i.i, %bb.q ], [ %.sroa.2.0.copyload.i.i.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i.i" ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i26.i.i.i.i.i.lcssa, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0.copyload.i.i26.i.i.i.i.i.lcssa, i64 16, i1 false), !noalias !45503
  %i.dd = icmp samesign ult i64 %i.co, 576460752303423488
  call void @llvm.assume(i1 %i.dd)
  %i.de = load i64, ptr %i.f, align 8, !range !76, !alias.scope !45502, !noalias !45488, !noundef !46
  %i.df = icmp eq i64 %i.co, %i.de
  br i1 %i.df, label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h3e72ca32672301c6E.exit.i.i.i.i.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h3e72ca32672301c6E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i_crit_edge.i.i.i.i.i", %._crit_edge
  %i.dg = phi ptr [ %.pre.i.i.i.i.i, %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h3e72ca32672301c6E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i_crit_edge.i.i.i.i.i" ], [ %i.cn, %._crit_edge ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i, i64 16, i1 false), !noalias !45504
  %i.di = add nuw nsw i64 %i.co, 1                ; 2 uses
  store i64 %i.di, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !45502, !noalias !45488
  br label %bb.q

.body.loopexit.i.i.i.i.i:                         ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h627a3de8ffdc501cE.exit.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !noalias !45488
  store ptr %i.cw, ptr %.sroa.24.0..sroa_idx16.i.i.i, align 8, !noalias !45488
  store ptr %.sroa.2.0.copyload.i.i26.i.i.i.i.i645, ptr %.sroa.7.0..sroa_idx2.i.i.i, align 8, !noalias !45488
  store i64 %.val5.i.i.i.i.i.i.i.i.i644, ptr %.sroa.10.0..sroa_idx4.i.i.i, align 8, !noalias !45488
  store ptr %i.cs, ptr %.sroa.12.0..sroa_idx6.i.i.i, align 8, !noalias !45488
  br label %.body.i.i.i.i.i

.body.loopexit.split-lp.i.i.i.i.i:                ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h3e72ca32672301c6E.exit.i.i.i.i.i.i.i"
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.2.0.copyload.i.i19.i.i.i.i.i.lcssa, ptr %i.e, align 8, !noalias !45488
  store ptr %.lcssa559, ptr %.sroa.12.0..sroa_idx6.i.i.i, align 8, !noalias !45488
  store ptr %i.dc, ptr %.sroa.7.0..sroa_idx2.i.i.i, align 8, !noalias !45488
  store i64 %.val5.i.i.i.i.i.i.i.i.i.lcssa, ptr %.sroa.10.0..sroa_idx4.i.i.i, align 8, !noalias !45488
  store ptr %.lcssa552, ptr %.sroa.24.0..sroa_idx16.i.i.i, align 8, !noalias !45488
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.body.loopexit.split-lp.i.i.i.i.i, %.body.loopexit.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.body.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.body.loopexit.split-lp.i.i.i.i.i ] ; 2 uses
  call fastcc void @"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.e) #77, !noalias !45505, !inline_history !45170
  %.val.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !45488 ; 2 uses
  %i.dj = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.dj, label %"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.i.i.i.i", label %"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.sink.split.i.i.i.i"

"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h3e72ca32672301c6E.exit.i.i.i.i.i.i.i": ; preds = %._crit_edge
  %i.dk = ptrtoint ptr %.lcssa559 to i64
  %i.dl = ptrtoint ptr %i.dc to i64
  %i.dm = sub nuw i64 %i.dk, %i.dl
  %i.dn = lshr exact i64 %i.dm, 4
  %i.do = add nuw nsw i64 %i.dn, 1
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.co, i64 noundef %i.do, i64 noundef 8, i64 noundef 16)
          to label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h3e72ca32672301c6E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i_crit_edge.i.i.i.i.i" unwind label %.body.loopexit.split-lp.i.i.i.i.i, !noalias !45506, !inline_history !45170

"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h3e72ca32672301c6E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i_crit_edge.i.i.i.i.i": ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h3e72ca32672301c6E.exit.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !45502, !noalias !45488
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.sink.split.i.i.i.i": ; preds = %.body.i.i.i.i.i
  %.val5.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !45488, !nonnull !46, !noundef !46
  %i.dp = shl nuw i64 %.val.i.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %i.dp, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45507, !inline_history !45170
  br label %"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.i.i.i.i"

.loopexit.split-lp.thread.i.i.i.i:                ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h627a3de8ffdc501cE.exit.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.i.i.i.i"

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.o
  %lpad.loopexit.split-lp28.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dq = icmp eq i64 %.sroa.10.0.i.i.i, 0
  br i1 %i.dq, label %"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp.i.i.i.i
  %i.dr = shl nuw i64 %.sroa.10.0.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i.i.i, i64 noundef %i.dr, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45508, !inline_history !45170
  br label %"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.i.i.i.i"

_ZN4core4iter6traits8iterator8Iterator7collect17h4e071a5f63f00d9dE.exit.i: ; preds = %.noexc10.i.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !45500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !45488
  %.sroa.0342.0.copyload = load i64, ptr %i.f, align 8, !noalias !45509 ; 4 uses
  %.sroa.5343.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !45509, !nonnull !46, !noundef !46 ; 4 uses
  %.sroa.7344.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !45509 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !45488
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  store i64 0, ptr %i.al, align 8, !noalias !45485
  %i.ds = icmp ult i64 %.sroa.7344.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.ds)
  %.idx679 = shl nuw nsw i64 %.sroa.7344.0.copyload, 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.5343.0.copyload, i64 %.idx679
  %i.du = icmp eq i64 %.sroa.7344.0.copyload, 0
  br i1 %i.du, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit.i", label %.lr.ph657

.body71.i:                                        ; preds = %bb.al, %bb.aw, %bb.ax, %bb.ao, %bb.ap, %bb.u
  %.pn.i = phi { ptr, i32 } [ %i.hc, %bb.ao ], [ %lpad.phi527, %bb.al ], [ %i.dx, %bb.u ], [ %i.hc, %bb.ap ], [ %i.im, %bb.ax ], [ %i.im, %bb.aw ] ; 2 uses
  %i.dv = icmp eq i64 %.sroa.0342.0.copyload, 0
  br i1 %i.dv, label %"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %.body71.i
  %i.dw = shl nuw i64 %.sroa.0342.0.copyload, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5343.0.copyload, i64 noundef %i.dw, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45510, !inline_history !45170
  br label %"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.i.i.i.i"

bb.u:                                             ; preds = %bb.am, %bb.aa, %bb.z, %bb.w
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body71.i

.lr.ph657:                                        ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h4e071a5f63f00d9dE.exit.i, %bb.at
  %i.dy = phi i64 [ %i.hm, %bb.at ], [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17h4e071a5f63f00d9dE.exit.i ] ; 8 uses
  %.sroa.5357.0656 = phi ptr [ %i.dz, %bb.at ], [ %.sroa.5343.0.copyload, %_ZN4core4iter6traits8iterator8Iterator7collect17h4e071a5f63f00d9dE.exit.i ] ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.5357.0656, i64 16 ; 2 uses
  %.sroa.5362.8.copyload = load ptr, ptr %.sroa.5357.0656, align 8, !noalias !45511 ; 5 uses
  %.sroa.7363.8..sroa.5357.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5357.0656, i64 8
  %.sroa.7363.8.copyload = load i64, ptr %.sroa.7363.8..sroa.5357.8..sroa_idx, align 8, !noalias !45511 ; 3 uses
  %i.ea = icmp eq ptr %.sroa.5362.8.copyload, null
  br i1 %i.ea, label %bb.w, label %bb.x

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit.i": ; preds = %bb.at, %_ZN4core4iter6traits8iterator8Iterator7collect17h4e071a5f63f00d9dE.exit.i
  %i.eb = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17h4e071a5f63f00d9dE.exit.i ], [ %i.hm, %bb.at ] ; 2 uses
  %i.ec = icmp eq i64 %.sroa.0342.0.copyload, 0
  br i1 %i.ec, label %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$17hf5e77e122e3c7a36E.exit68.i", label %bb.v

bb.v:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit.i"
  %i.ed = shl nuw i64 %.sroa.0342.0.copyload, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5343.0.copyload, i64 noundef %i.ed, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45512, !inline_history !45170
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$17hf5e77e122e3c7a36E.exit68.i"

"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$17hf5e77e122e3c7a36E.exit68.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit.i.thread", %bb.v, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit.i"
  %i.ee = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit.i.thread" ], [ %i.eb, %bb.v ], [ %i.eb, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !45485
  %i.ef = icmp eq ptr %i.bn, %i.aj
  br i1 %i.ef, label %.noexc77.loopexit, label %.lr.ph663

bb.w:                                             ; preds = %.lr.ph657
  %i.eg = inttoptr i64 %.sroa.7363.8.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !45485
  invoke fastcc void @_ZN3nls12field_walker13FieldResolver12resolve_type17hb954fe2ab5116529E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.eg)
          to label %bb.au unwind label %bb.u, !noalias !45485, !inline_history !45170

bb.x:                                             ; preds = %.lr.ph657
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.5362.8.copyload, i64 272
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !45485, !noundef !46
  %i.ej = icmp eq i64 %.sroa.7363.8.copyload, %i.ei
  br i1 %i.ej, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !45513)
  %i.ek = load i64, ptr %i.k, align 8, !range !76, !alias.scope !45513, !noalias !45485, !noundef !46
  %i.el = icmp eq i64 %i.dy, %i.ek
  br i1 %i.el, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he7e3f864399efe79E.exit.i"

bb.z:                                             ; preds = %bb.y
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1d4064b3619b3b4fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he7e3f864399efe79E.exit.i" unwind label %bb.u, !noalias !45485, !inline_history !45170

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he7e3f864399efe79E.exit.i": ; preds = %bb.z, %bb.y
  %i.em = load ptr, ptr %i.ak, align 8, !alias.scope !45513, !noalias !45485, !nonnull !46, !noundef !46
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.dy ; 3 uses
  store i64 1, ptr %i.en, align 8, !noalias !45514
  %.sroa.4365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %.sroa.5362.8.copyload, ptr %.sroa.4365.0..sroa_idx, align 8, !noalias !45514
  %.sroa.5366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 %.sroa.7363.8.copyload, ptr %.sroa.5366.0..sroa_idx, align 8, !noalias !45514
  %i.eo = add i64 %i.dy, 1                        ; 2 uses
  store i64 %i.eo, ptr %i.al, align 8, !alias.scope !45513, !noalias !45485
  br label %bb.at

bb.aa:                                            ; preds = %bb.x
  invoke void @"_ZN100_$LT$$RF$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_core..typecheck..AnnotSeqRef$GT$4iter17h5b29a8e47d93cff3E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(104) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.5362.8.copyload)
          to label %_ZN3nls12field_walker13FieldResolver13resolve_annot17hc526aa9fb85b80d0E.exit.i unwind label %bb.u, !noalias !45485, !inline_history !45170

_ZN3nls12field_walker13FieldResolver13resolve_annot17hc526aa9fb85b80d0E.exit.i: ; preds = %bb.aa
  store ptr %1, ptr %.sroa.04.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !45515, !noalias !45485
  store ptr null, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !45515, !noalias !45485
  store ptr null, ptr %.sroa.6.0..sroa_idx.i69.i, align 8, !alias.scope !45515, !noalias !45485
  call void @llvm.experimental.noalias.scope.decl(metadata !45516)
  %.promoted.pre = load i64, ptr %i.i, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i", %_ZN3nls12field_walker13FieldResolver13resolve_annot17hc526aa9fb85b80d0E.exit.i
  %.promoted = phi i64 [ %.promoted809864, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i" ], [ %.promoted.pre, %_ZN3nls12field_walker13FieldResolver13resolve_annot17hc526aa9fb85b80d0E.exit.i ] ; 4 uses
  %.sroa.45.0..sroa_idx.i.i.promoted = phi ptr [ %i.gr, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i" ], [ null, %_ZN3nls12field_walker13FieldResolver13resolve_annot17hc526aa9fb85b80d0E.exit.i ]
  %i.ep = phi i64 [ %i.gu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i" ], [ %i.dy, %_ZN3nls12field_walker13FieldResolver13resolve_annot17hc526aa9fb85b80d0E.exit.i ] ; 11 uses
  br label %bb.ac

bb.ac:                                            ; preds = %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit.i164", %bb.ab
  %i.eq = phi ptr [ %.sroa.4.0.copyload.i.i.i.i, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit.i164" ], [ %.sroa.45.0..sroa_idx.i.i.promoted, %bb.ab ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45517)
  %.not.i97.i = icmp eq ptr %i.eq, null
  br i1 %.not.i97.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !45518), !noalias !45519
  call void @llvm.experimental.noalias.scope.decl(metadata !45520), !noalias !45519
  %i.er = load ptr, ptr %i.ao, align 8, !alias.scope !45521, !noalias !45522, !nonnull !46, !noundef !46 ; 2 uses
  %i.es = load ptr, ptr %i.ap, align 8, !alias.scope !45521, !noalias !45522, !nonnull !46, !noundef !46 ; 4 uses
  %i.et = icmp eq ptr %i.es, %i.er
  br i1 %i.et, label %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i104.i, label %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i98.i

bb.ae:                                            ; preds = %.lr.ph2069
  %.sroa.0.0.copyload.i.i.i.i.jt0 = load i64, ptr %i.b, align 8, !alias.scope !45523, !noalias !45524 ; 5 uses
  %.sroa.4.0.copyload.i.i.i.i.jt0 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45523, !noalias !45524, !nonnull !46, !noundef !46 ; 7 uses
  %.sroa.5.0.copyload.i.i.i.i.jt0 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45523, !noalias !45524 ; 3 uses
  %i.eu = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.jt0, 384307168202282326
  call void @llvm.assume(i1 %i.eu), !noalias !45525
  %.idx = mul nuw nsw i64 %.sroa.5.0.copyload.i.i.i.i.jt0, 24
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.jt0, i64 %.idx ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45524
  %i.ew = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i.jt0, 0
  br i1 %i.ew, label %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i104.i.jt0, label %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i98.i.jt0

_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i98.i: ; preds = %bb.ad
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store ptr %i.ex, ptr %i.ap, align 8, !alias.scope !45521, !noalias !45522
  %.sroa.0.0.copyload8.i99.i = load i64, ptr %i.es, align 8, !noalias !45526 ; 2 uses
  %.not6.i101.i = icmp eq i64 %.sroa.0.0.copyload8.i99.i, 6
  br i1 %.not6.i101.i, label %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i104.i, label %.loopexit1587

_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i98.i.jt0: ; preds = %bb.ae
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i.jt0, i64 24 ; 2 uses
  %.sroa.0.0.copyload8.i99.i.jt0 = load i64, ptr %.sroa.4.0.copyload.i.i.i.i.jt0, align 8, !noalias !45526 ; 2 uses
  %.not6.i101.i.jt0 = icmp eq i64 %.sroa.0.0.copyload8.i99.i.jt0, 6
  br i1 %.not6.i101.i.jt0, label %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i104.i.jt0, label %.loopexit1586

_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i104.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i98.i, %bb.ad
  %.val7.i105.i = load i64, ptr %i.aq, align 8, !alias.scope !45517, !noalias !45522 ; 2 uses
  %i.ez = icmp eq i64 %.val7.i105.i, 0
  br i1 %i.ez, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread, label %bb.af

_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i104.i.jt0: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i98.i.jt0, %bb.ae
  %i.fa = phi ptr [ %i.ey, %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i98.i.jt0 ], [ %.sroa.4.0.copyload.i.i.i.i.jt0, %bb.ae ] ; 2 uses
  %i.fb = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.jt0, 0
  br i1 %i.fb, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread.jt0, label %bb.ag

bb.af:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i104.i
  %i.fc = mul nuw i64 %.val7.i105.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eq, i64 noundef %i.fc, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45527, !inline_history !45170
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread

bb.ag:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i104.i.jt0
  %i.fd = mul nuw i64 %.sroa.0.0.copyload.i.i.i.i.jt0, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.jt0, i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45527, !inline_history !45170
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread.jt0

_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread: ; preds = %bb.af, %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i104.i, %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !45528)
  switch i64 %.promoted, label %bb.ah [
    i64 2, label %.loopexit1588
    i64 0, label %.preheader
  ]

_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread.jt0: ; preds = %bb.ag, %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i104.i.jt0
  %i.fe = icmp eq ptr %i.fl, %i.fg
  br i1 %i.fe, label %.loopexit1582, label %.lr.ph2069

bb.ah:                                            ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread
  %i.ff = load ptr, ptr %i.ar, align 8, !alias.scope !45529, !noalias !45485, !align !52, !noundef !46 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !alias.scope !45529, !noalias !45485
  %.not.i.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i, label %.preheader, label %bb.ai

.preheader:                                       ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread, %bb.ah
  %i.fg = load ptr, ptr %i.at, align 8, !alias.scope !45530, !noalias !45485, !nonnull !46 ; 2 uses
  %.promoted1814 = load ptr, ptr %i.as, align 8, !alias.scope !45530, !noalias !45485 ; 4 uses
  %.promoted1818 = load ptr, ptr %i.ap, align 8   ; 2 uses
  %.promoted1822 = load i64, ptr %i.aq, align 8   ; 2 uses
  %.promoted1825 = load ptr, ptr %i.ao, align 8   ; 2 uses
  %.not.i.i.i.i.i2066 = icmp eq ptr %.promoted1814, null
  %i.fh = icmp eq ptr %.promoted1814, %i.fg
  %or.cond.i.i.i.i.i1612067 = select i1 %.not.i.i.i.i.i2066, i1 true, i1 %i.fh
  br i1 %or.cond.i.i.i.i.i1612067, label %.loopexit1582, label %.lr.ph2069

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45524
  invoke fastcc void @_ZN3nls12field_walker13FieldResolver12resolve_type17hb954fe2ab5116529E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ff)
          to label %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit.i164" unwind label %.loopexit525.loopexit.split-lp, !noalias !45485, !inline_history !45292

.lr.ph2069:                                       ; preds = %.preheader, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread.jt0
  %i.fi = phi ptr [ %i.fl, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread.jt0 ], [ %.promoted1814, %.preheader ] ; 2 uses
  %i.fj = phi ptr [ %i.fa, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread.jt0 ], [ %.promoted1818, %.preheader ]
  %.val7.i105.i.jt018232068 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.jt0, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread.jt0 ], [ %.promoted1822, %.preheader ]
  %i.fk = phi ptr [ %i.ev, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread.jt0 ], [ %.promoted1825, %.preheader ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 104 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45524
  invoke fastcc void @_ZN3nls12field_walker13FieldResolver12resolve_type17hb954fe2ab5116529E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.fi)
          to label %bb.ae unwind label %.loopexit525.loopexit, !noalias !45485, !inline_history !45292

"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit.i164": ; preds = %bb.ai
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !45523, !noalias !45524
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45523, !noalias !45524, !nonnull !46, !noundef !46 ; 3 uses
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45523, !noalias !45524 ; 2 uses
  %i.fm = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.fm), !noalias !45525
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.0.copyload.i.i.i.i, i64 %.sroa.5.0.copyload.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45524
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %i.ap, align 8, !noalias !45522
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.aq, align 8, !noalias !45522
  store ptr %i.fn, ptr %i.ao, align 8, !noalias !45522
  br label %bb.ac

.loopexit1582:                                    ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread.jt0, %.preheader
  %.lcssa1912 = phi ptr [ %.promoted1825, %.preheader ], [ %i.ev, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread.jt0 ]
  %.val7.i105.i.jt01823.lcssa = phi i64 [ %.promoted1822, %.preheader ], [ %.sroa.0.0.copyload.i.i.i.i.jt0, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread.jt0 ]
  %.lcssa1907 = phi ptr [ %.promoted1818, %.preheader ], [ %i.fa, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread.jt0 ]
  %.lcssa1904 = phi ptr [ %.promoted1814, %.preheader ], [ %i.fl, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread.jt0 ]
  store ptr %.lcssa1904, ptr %i.as, align 8
  store ptr %.lcssa1907, ptr %i.ap, align 8
  store i64 %.val7.i105.i.jt01823.lcssa, ptr %i.aq, align 8
  store ptr %.lcssa1912, ptr %i.ao, align 8
  br label %.loopexit1588

.loopexit1588:                                    ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread, %.loopexit1582
  %i.fo = phi i64 [ 0, %.loopexit1582 ], [ %.promoted, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit107.i.thread ] ; 3 uses
  store ptr null, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  store i64 %i.fo, ptr %i.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !45531)
  %i.fp = load ptr, ptr %.sroa.6.0..sroa_idx.i69.i, align 8, !alias.scope !45531, !noalias !45532, !noundef !46 ; 2 uses
  %.not.i90.i = icmp eq ptr %i.fp, null
  br i1 %.not.i90.i, label %"_ZN4core3ptr386drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..iter..adapters..chain..Chain$LT$core..option..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$C$core..slice..iter..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$C$nls..field_walker..FieldResolver..resolve_annot..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h33442ad003f7a801E.exit.i", label %bb.aj

bb.aj:                                            ; preds = %.loopexit1588
  call void @llvm.experimental.noalias.scope.decl(metadata !45533), !noalias !45516
  call void @llvm.experimental.noalias.scope.decl(metadata !45534), !noalias !45516
  %i.fq = load ptr, ptr %i.au, align 8, !alias.scope !45535, !noalias !45532, !nonnull !46, !noundef !46
  %i.fr = load ptr, ptr %i.av, align 8, !alias.scope !45535, !noalias !45532, !nonnull !46, !noundef !46 ; 4 uses
  %i.fs = icmp eq ptr %i.fr, %i.fq
  br i1 %i.fs, label %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i.i

_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i.i: ; preds = %bb.aj
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  store ptr %i.ft, ptr %i.av, align 8, !alias.scope !45535, !noalias !45532
  %.sroa.0.0.copyload8.i.i = load i64, ptr %i.fr, align 8, !noalias !45536 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3nls12field_walker13FieldResolver21resolve_def_with_path17h6c7df9767e50e720E:bb.a
  store ptr %i.fk, ptr %i.ao, align 8
  br label %.loopexit525

.loopexit525.loopexit.split-lp:                   ; preds = %bb.ai
  %lpad.loopexit.split-lp1584 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit525

.loopexit525:                                     ; preds = %.loopexit525.loopexit.split-lp, %.loopexit525.loopexit
  %i.gv = phi i64 [ 0, %.loopexit525.loopexit ], [ %.promoted, %.loopexit525.loopexit.split-lp ]
  %lpad.phi1585 = phi { ptr, i32 } [ %lpad.loopexit1583, %.loopexit525.loopexit ], [ %lpad.loopexit.split-lp1584, %.loopexit525.loopexit.split-lp ]
  store ptr null, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  store i64 %i.gv, ptr %i.i, align 8
  br label %bb.al

.loopexit.split-lp:                               ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit60.i.i.i"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp, %.loopexit525
  %lpad.phi527 = phi { ptr, i32 } [ %lpad.phi1585, %.loopexit525 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr386drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..iter..adapters..chain..Chain$LT$core..option..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$C$core..slice..iter..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$C$nls..field_walker..FieldResolver..resolve_annot..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h33442ad003f7a801E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.i) #77, !noalias !45532, !inline_history !45308
  br label %.body71.i

"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit60.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit.i.i.i", %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit.i.i.i.thread"
  %.sroa.7.0.i.i84.i1581 = phi i64 [ %.sroa.7.0.i.i84.i1580, %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit.i.i.i.thread" ], [ %i.gk, %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit.i.i.i" ]
  %.sroa.0372.04488678721579 = phi i64 [ %.sroa.0372.04488678721578, %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit.i.i.i.thread" ], [ %.sroa.0.0.copyload8.i99.i1571, %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit.i.i.i" ]
  %i.gw = phi ptr [ %i.gm, %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit.i.i.i.thread" ], [ %i.fx, %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit.i.i.i" ]
  %.promoted8098658731577 = phi i64 [ %.promoted8098658731576, %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit.i.i.i.thread" ], [ %i.fy, %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit.i.i.i" ]
  %.sroa.8.0.i.i.i = phi i64 [ %i.gq, %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit.i.i.i.thread" ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit.i.i.i" ]
  %i.gx = add nuw nsw i64 %.sroa.7.0.i.i84.i1581, %.sroa.8.0.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ep, i64 noundef %i.gx, i64 noundef 8, i64 noundef 24)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i" unwind label %.loopexit.split-lp, !noalias !45485, !inline_history !45170

"_ZN4core3ptr386drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..iter..adapters..chain..Chain$LT$core..option..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$C$core..slice..iter..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$C$nls..field_walker..FieldResolver..resolve_annot..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h33442ad003f7a801E.exit.i": ; preds = %.loopexit1588, %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h929b61d3dfd10379E.exit.i146.thread452"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.5362.8.copyload, i64 216 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !range !74, !noalias !45485
  %.not34.i = icmp eq i32 %.pre, 3
  br i1 %.not34.i, label %bb.at, label %bb.am

bb.am:                                            ; preds = %"_ZN4core3ptr386drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..iter..adapters..chain..Chain$LT$core..option..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$C$core..slice..iter..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$C$nls..field_walker..FieldResolver..resolve_annot..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h33442ad003f7a801E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !45485
  invoke fastcc void @_ZN3nls12field_walker13FieldResolver17resolve_container17h589838502bee0d4aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.phi.trans.insert)
          to label %bb.an unwind label %bb.u, !noalias !45485, !inline_history !45170

bb.an:                                            ; preds = %bb.am
  %.sroa.0.0.copyload.i73.i = load i64, ptr %i.h, align 8, !alias.scope !45540, !noalias !45485 ; 4 uses
  %.sroa.4.0.copyload.i75.i = load ptr, ptr %.sroa.4.0..sroa_idx.i74.i, align 8, !alias.scope !45540, !noalias !45485, !nonnull !46, !noundef !46 ; 3 uses
  %.sroa.5.0.copyload.i77.i = load i64, ptr %.sroa.5.0..sroa_idx.i76.i, align 8, !alias.scope !45540, !noalias !45485 ; 5 uses
  %i.gy = icmp ult i64 %.sroa.5.0.copyload.i77.i, 384307168202282326
  call void @llvm.assume(i1 %i.gy)
  call void @llvm.experimental.noalias.scope.decl(metadata !45541)
  %.idx516 = mul nuw nsw i64 %.sroa.5.0.copyload.i77.i, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !45542)
  %i.gz = load i64, ptr %i.k, align 8, !range !76, !alias.scope !45543, !noalias !45485, !noundef !46
  %i.ha = sub i64 %i.gz, %i.ep
  %i.hb = icmp ugt i64 %.sroa.5.0.copyload.i77.i, %i.ha
  br i1 %i.hb, label %bb.aq, label %bb.ar, !prof !51

bb.ao:                                            ; preds = %bb.aq
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = icmp eq i64 %.sroa.0.0.copyload.i73.i, 0
  br i1 %i.hd, label %.body71.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.he = mul nuw i64 %.sroa.0.0.copyload.i73.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i75.i, i64 noundef %i.he, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45544, !inline_history !45170
  br label %.body71.i

bb.aq:                                            ; preds = %bb.an
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ep, i64 noundef %.sroa.5.0.copyload.i77.i, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i.i unwind label %bb.ao, !noalias !45545, !inline_history !45170

.noexc.i.i:                                       ; preds = %bb.aq
  %.pre.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !45546, !noalias !45485
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc.i.i, %bb.an
  %i.hf = phi i64 [ %i.ep, %bb.an ], [ %.pre.i.i.i, %.noexc.i.i ] ; 3 uses
  %i.hg = icmp ult i64 %i.hf, 384307168202282326
  call void @llvm.assume(i1 %i.hg)
  %i.hh = load ptr, ptr %i.ak, align 8, !alias.scope !45546, !noalias !45485, !nonnull !46, !noundef !46
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %i.hh, i64 %i.hf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hi, ptr nonnull readonly align 8 %.sroa.4.0.copyload.i75.i, i64 %.idx516, i1 false), !noalias !45547
  %i.hj = add nuw nsw i64 %i.hf, %.sroa.5.0.copyload.i77.i ; 2 uses
  store i64 %i.hj, ptr %i.al, align 8, !alias.scope !45546, !noalias !45485
  %i.hk = icmp eq i64 %.sroa.0.0.copyload.i73.i, 0
  br i1 %i.hk, label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h65b5a10e494a390fE.exit.i", label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hl = mul nuw i64 %.sroa.0.0.copyload.i73.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i75.i, i64 noundef %i.hl, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45548, !inline_history !45170
  br label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h65b5a10e494a390fE.exit.i"

"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h65b5a10e494a390fE.exit.i": ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !45485
  br label %bb.at

bb.at:                                            ; preds = %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit82.i", %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h65b5a10e494a390fE.exit.i", %"_ZN4core3ptr386drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..iter..adapters..chain..Chain$LT$core..option..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$C$core..slice..iter..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$C$nls..field_walker..FieldResolver..resolve_annot..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h33442ad003f7a801E.exit.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he7e3f864399efe79E.exit.i"
  %i.hm = phi i64 [ %storemerge.i.i.i.i, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit82.i" ], [ %i.hj, %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h65b5a10e494a390fE.exit.i" ], [ %i.ep, %"_ZN4core3ptr386drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..iter..adapters..chain..Chain$LT$core..option..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$C$core..slice..iter..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$C$nls..field_walker..FieldResolver..resolve_annot..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h33442ad003f7a801E.exit.i" ], [ %i.eo, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he7e3f864399efe79E.exit.i" ] ; 2 uses
  %i.hn = icmp eq ptr %i.dz, %i.dt
  br i1 %i.hn, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit.i", label %.lr.ph657

bb.au:                                            ; preds = %bb.w
  %i.ho = load ptr, ptr %i.ax, align 8, !noalias !45485, !nonnull !46, !noundef !46 ; 5 uses
  %i.hp = load i64, ptr %i.ay, align 8, !noalias !45485, !noundef !46 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45549)
  %i.hq = load i64, ptr %i.k, align 8, !range !76, !alias.scope !45550, !noalias !45485, !noundef !46
  %i.hr = sub i64 %i.hq, %i.dy
  %i.hs = icmp ugt i64 %i.hp, %i.hr
  br i1 %i.hs, label %bb.av, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i", !prof !51

bb.av:                                            ; preds = %bb.au
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.dy, i64 noundef %i.hp, i64 noundef 8, i64 noundef 24)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i.thread" unwind label %bb.aw, !noalias !45485, !inline_history !45170

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i.thread": ; preds = %bb.av
  %.pre.i.i166 = load i64, ptr %i.al, align 8, !alias.scope !45549, !noalias !45485
  %i.ht = load ptr, ptr %i.ak, align 8, !alias.scope !45549, !noalias !45485, !nonnull !46, !noundef !46
  br label %.preheader.i.i.preheader

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i": ; preds = %bb.au
  %i.hu = load ptr, ptr %i.ak, align 8, !alias.scope !45549, !noalias !45485, !nonnull !46, !noundef !46
  %i.hv = icmp eq i64 %i.hp, 0
  br i1 %i.hv, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i", label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i.thread", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i"
  %i.hw = phi ptr [ %i.ht, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i.thread" ], [ %i.hu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i" ] ; 3 uses
  %i.hx = phi i64 [ %.pre.i.i166, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i.thread" ], [ %i.dy, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i" ] ; 2 uses
  %xtraiter = and i64 %i.hp, 1
  %i.hy = icmp eq i64 %i.hp, 1
  br i1 %i.hy, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %i.hp, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %i.hz = phi i64 [ %i.hx, %.preheader.i.i.preheader.new ], [ %i.ig, %.preheader.i.i ] ; 3 uses
  %.sroa.06.0.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.ih, %.preheader.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %i.ho, i64 %.sroa.06.0.i.i.i.i.i
  %i.ib = getelementptr inbounds nuw [24 x i8], ptr %i.hw, i64 %i.hz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ib, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ia, i64 24, i1 false), !noalias !45551
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %i.ho, i64 %.sroa.06.0.i.i.i.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = getelementptr [24 x i8], ptr %i.hw, i64 %i.hz
  %i.if = getelementptr i8, ptr %i.ie, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.if, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.id, i64 24, i1 false), !noalias !45551
  %i.ig = add i64 %i.hz, 2                        ; 3 uses
  %i.ih = add nuw i64 %.sroa.06.0.i.i.i.i.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i.loopexit.unr-lcssa", label %.preheader.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i.loopexit.unr-lcssa": ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i", label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i.loopexit.unr-lcssa", %.preheader.i.i.preheader
  %.epil.init = phi i64 [ %i.hx, %.preheader.i.i.preheader ], [ %i.ig, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i.loopexit.unr-lcssa" ] ; 2 uses
  %.sroa.06.0.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.ih, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i.loopexit.unr-lcssa" ]
  %lcmp.mod2253 = trunc i64 %i.hp to i1
  call void @llvm.assume(i1 %lcmp.mod2253)
  %i.ii = getelementptr inbounds nuw [24 x i8], ptr %i.ho, i64 %.sroa.06.0.i.i.i.i.i.epil.init
  %i.ij = getelementptr inbounds nuw [24 x i8], ptr %i.hw, i64 %.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ij, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ii, i64 24, i1 false), !noalias !45551
  %i.ik = add i64 %.epil.init, 1
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i": ; preds = %.preheader.i.i.epil.preheader, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i.loopexit.unr-lcssa", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i"
  %storemerge.i.i.i.i = phi i64 [ %i.dy, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i" ], [ %i.ig, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i.loopexit.unr-lcssa" ], [ %i.ik, %.preheader.i.i.epil.preheader ] ; 2 uses
  store i64 %storemerge.i.i.i.i, ptr %i.al, align 8, !alias.scope !45549, !noalias !45552
  %.val.i165 = load i64, ptr %i.g, align 8, !noalias !45485 ; 2 uses
  %i.il = icmp eq i64 %.val.i165, 0
  br i1 %i.il, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit82.i", label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.im = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val40.i = load i64, ptr %i.g, align 8, !noalias !45485 ; 2 uses
  %i.in = icmp eq i64 %.val40.i, 0
  br i1 %i.in, label %.body71.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.io = mul nuw i64 %.val40.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ho, i64 noundef %i.io, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45485, !inline_history !45170
  br label %.body71.i

bb.ay:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i"
  %i.ip = mul nuw i64 %.val.i165, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ho, i64 noundef %i.ip, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45485, !inline_history !45170
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit82.i"

"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit82.i": ; preds = %bb.ay, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !45485
  br label %bb.at

.noexc77.loopexit:                                ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$17hf5e77e122e3c7a36E.exit68.i"
  %.sroa.0307.0.copyload.pre = load i64, ptr %i.k, align 8, !noalias !45483
  %.sroa.4308.0.copyload.pre = load ptr, ptr %i.ak, align 8, !noalias !45483
  br label %.noexc77

.noexc77:                                         ; preds = %.noexc77.loopexit, %.noexc111
  %.sroa.5309.0.copyload = phi i64 [ %i.ee, %.noexc77.loopexit ], [ %.sroa.5.0.copyload.i.i, %.noexc111 ] ; 2 uses
  %.sroa.4308.0.copyload = phi ptr [ %.sroa.4308.0.copyload.pre, %.noexc77.loopexit ], [ %.sroa.4.0.copyload.i.i, %.noexc111 ] ; 4 uses
  %.sroa.0307.0.copyload = phi i64 [ %.sroa.0307.0.copyload.pre, %.noexc77.loopexit ], [ %.sroa.0.0.copyload.i.i, %.noexc111 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !45485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !45482
  %.not1.i.i = icmp eq i64 %.sroa.0307.0.copyload, -9223372036854775808
  br i1 %.not1.i.i, label %.noexc77.thread, label %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit"

"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit": ; preds = %.noexc77
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4308.0.copyload) ]
  %i.iq = icmp ult i64 %.sroa.5309.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.iq), !noalias !45553
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4308.0.copyload, i64 %.sroa.5309.0.copyload
  br label %.outer2104

.noexc77.thread:                                  ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit124.thread, %.noexc77
  %i.is = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.is, label %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i", label %bb.bb

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit61.i.i", %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h763f252720ed0cc5E.exit.thread"
  %i.it = load ptr, ptr %i.w, align 8, !alias.scope !45478, !nonnull !46, !noundef !46
  %i.iu = getelementptr inbounds nuw [24 x i8], ptr %i.it, i64 %4 ; 2 uses
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4244.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4239, i64 16, i1 false), !noalias !45478
  store i64 %.sroa.0.0.copyload8.i116, ptr %i.iu, align 8, !noalias !45478
  %i.iv = add nuw nsw i64 %4, 1
  store i64 %i.iv, ptr %i.x, align 8, !alias.scope !45478
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4239)
  br label %bb.e

.loopexit.split-lp529.loopexit.split-lp.loopexit: ; preds = %"_ZN3nls12field_walker13FieldResolver21resolve_def_with_path28_$u7b$$u7b$closure$u7d$$u7d$17ha33c4d6c78d8683cE.exit.i"
  %lpad.loopexit1130 = landingpad { ptr, i32 }
          cleanup
  br label %.body78

.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit61.i.i"
  %lpad.loopexit.split-lp1131 = landingpad { ptr, i32 }
          cleanup
  br label %.body78

.body78:                                          ; preds = %.loopexit.split-lp529.loopexit.split-lp.loopexit, %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp, %bb.h, %"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.i.i.i.i"
  %.sroa.0.4 = phi ptr [ %.sroa.0.2, %"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.i.i.i.i" ], [ %.sroa.0.2, %bb.h ], [ %.sroa.0.2, %.loopexit.split-lp529.loopexit.split-lp.loopexit ], [ %.ph2105, %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %eh.lpad-body79 = phi { ptr, i32 } [ %.pn.pn.i, %"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.i.i.i.i" ], [ %.pn.pn.i, %bb.h ], [ %lpad.loopexit1130, %.loopexit.split-lp529.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp1131, %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.iw = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.iw, label %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i1032", label %bb.az

bb.az:                                            ; preds = %.body78
  %i.ix = shl nuw i64 %.sroa.0.0.copyload.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.ix, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45554
  br label %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i1032"

"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i1032": ; preds = %bb.az, %.body78
  %i.iy = icmp eq ptr %.sroa.0.4, null
  %i.iz = icmp eq i64 %.val6.i.i286.ph, 0
  %or.cond.i11.i.i = or i1 %i.iy, %i.iz
  br i1 %or.cond.i11.i.i, label %.body, label %bb.ba

bb.ba:                                            ; preds = %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i1032"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.4) ], !noalias !45478
  %i.ja = mul nuw i64 %.val6.i.i286.ph, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.4, i64 noundef %i.ja, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45555
  br label %.body

"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit61.i.i": ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h763f252720ed0cc5E.exit.thread"
  %i.jb = ptrtoint ptr %i.bc to i64
  %i.jc = sub nuw i64 %3, %i.jb
  %i.jd = udiv exact i64 %i.jc, 24
  %i.je = add nuw nsw i64 %i.jd, 1
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %4, i64 noundef %i.je, i64 noundef 8, i64 noundef 24)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit" unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %.noexc77.thread
  %i.jf = shl nuw i64 %.sroa.0.0.copyload.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.jf, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45556
  br label %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i"

"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i": ; preds = %.noexc77.thread, %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !45557)
  switch i32 %i.ad, label %default.unreachable1570 [
    i32 0, label %bb.bc
    i32 1, label %bb.bd
    i32 2, label %.loopexit
    i32 3, label %bb.be
  ]

default.unreachable1570:                          ; preds = %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i"
  unreachable

bb.bc:                                            ; preds = %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !45558
  %i.jg = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #66, !noalias !45558 ; 2 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %.invoke, label %_ZN4core4iter6traits8iterator8Iterator7collect17h6c3ccb2a5473ad02E.exit.sink.split.i, !prof !51

bb.bd:                                            ; preds = %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !45558
  %i.ji = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #66, !noalias !45558 ; 2 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %.invoke, label %_ZN4core4iter6traits8iterator8Iterator7collect17h6c3ccb2a5473ad02E.exit.sink.split.i, !prof !51

bb.be:                                            ; preds = %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i"
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8, !alias.scope !45557, !nonnull !46, !noundef !46 ; 5 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.jn = load i64, ptr %i.jm, align 8, !alias.scope !45557, !noundef !46 ; 7 uses
  %i.jo = shl nuw nsw i64 %i.jn, 3                ; 2 uses
  %i.jp = icmp eq i64 %i.jn, 0
  br i1 %i.jp, label %.loopexit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !45559
  %i.jq = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.jo, i64 noundef range(i64 1, 9) 8) #66, !noalias !45559 ; 4 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.bg, label %.preheader.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.bf
  %min.iters.check = icmp ult i64 %i.jn, 5
  br i1 %min.iters.check, label %.preheader.i.i.i.i.i.i.i.preheader2102, label %vector.ph

.preheader.i.i.i.i.i.i.i.preheader2102:           ; preds = %vector.body, %.preheader.i.i.i.i.i.i.i.preheader
  %.ph2103 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %n.vec, %vector.body ]
  br label %.preheader.i.i.i.i.i.i.i

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %i.js = and i64 %i.jn, 3                        ; 2 uses
  %i.jt = icmp eq i64 %i.js, 0
  %i.ju = select i1 %i.jt, i64 4, i64 %i.js
  %n.vec = sub i64 %i.jn, %i.ju                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %index
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %index
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %index
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %index
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 48
  %i.kc = load ptr, ptr %i.jv, align 8, !noalias !45560
  %i.kd = load ptr, ptr %i.jx, align 8, !noalias !45560
  %i.ke = insertelement <2 x ptr> poison, ptr %i.kc, i64 0
  %i.kf = insertelement <2 x ptr> %i.ke, ptr %i.kd, i64 1
  %i.kg = load ptr, ptr %i.jz, align 8, !noalias !45560
  %i.kh = load ptr, ptr %i.kb, align 8, !noalias !45560
  %i.ki = insertelement <2 x ptr> poison, ptr %i.kg, i64 0
  %i.kj = insertelement <2 x ptr> %i.ki, ptr %i.kh, i64 1
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %index ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store <2 x ptr> %i.kf, ptr %i.kk, align 8, !noalias !45561
  store <2 x ptr> %i.kj, ptr %i.kl, align 8, !noalias !45561
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.km = icmp eq i64 %index.next, %n.vec
  br i1 %i.km, label %.preheader.i.i.i.i.i.i.i.preheader2102, label %vector.body, !llvm.loop !45385

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.jo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.bg
  unreachable

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.preheader2102, %.preheader.i.i.i.i.i.i.i
  %i.kn = phi i64 [ %i.kq, %.preheader.i.i.i.i.i.i.i ], [ %.ph2103, %.preheader.i.i.i.i.i.i.i.preheader2102 ] ; 3 uses
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %i.kn
  %.val21.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ko, align 8, !noalias !45560, !nonnull !46, !align !52, !noundef !46
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.kn
  store ptr %.val21.i.i.i.i.i.i.i.i.i.i, ptr %i.kp, align 8, !noalias !45561
  %i.kq = add nuw i64 %i.kn, 1                    ; 2 uses
  %i.kr = icmp eq i64 %i.kq, %i.jn
  br i1 %i.kr, label %.loopexit, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !45386

_ZN4core4iter6traits8iterator8Iterator7collect17h6c3ccb2a5473ad02E.exit.sink.split.i: ; preds = %bb.bd, %bb.bc
  %.sink.i = phi i64 [ 32, %bb.bd ], [ 24, %bb.bc ]
  %.sink15.i = phi ptr [ %i.ji, %bb.bd ], [ %i.jg, %bb.bc ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 %.sink.i
  %i.kt = load ptr, ptr %i.ks, align 8, !alias.scope !45557, !nonnull !46, !align !52, !noundef !46
  store ptr %i.kt, ptr %.sink15.i, align 8, !noalias !45558
  br label %.loopexit

.invoke:                                          ; preds = %bb.bd, %bb.bc
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #75
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit:                                        ; preds = %.preheader.i.i.i.i.i.i.i, %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i", %bb.be, %_ZN4core4iter6traits8iterator8Iterator7collect17h6c3ccb2a5473ad02E.exit.sink.split.i
  %.sink14.i = phi i64 [ 1, %_ZN4core4iter6traits8iterator8Iterator7collect17h6c3ccb2a5473ad02E.exit.sink.split.i ], [ 0, %bb.be ], [ 0, %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i" ], [ %i.jn, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %.sink12.i = phi ptr [ %.sink15.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h6c3ccb2a5473ad02E.exit.sink.split.i ], [ inttoptr (i64 8 to ptr), %bb.be ], [ inttoptr (i64 8 to ptr), %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i" ], [ %i.jq, %.preheader.i.i.i.i.i.i.i ] ; 4 uses
  %i.ku = icmp ult i64 %.sink14.i, 1152921504606846976
  call void @llvm.assume(i1 %i.ku)
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %.sink12.i, i64 %.sink14.i ; 2 uses
  store i64 3, ptr %i.t, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store i64 3, ptr %.sroa.528.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  store ptr %.sink12.i, ptr %.sroa.7.0..sroa_idx30, align 8
  %.sroa.7.sroa.035.sroa.4.0..sroa.7.0..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 216 ; 2 uses
  store ptr %.sink12.i, ptr %.sroa.7.sroa.035.sroa.4.0..sroa.7.0..sroa_idx30.sroa_idx, align 8
  %.sroa.7.sroa.035.sroa.5.0..sroa.7.0..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  store i64 %.sink14.i, ptr %.sroa.7.sroa.035.sroa.5.0..sroa.7.0..sroa_idx30.sroa_idx, align 8
  %.sroa.7.sroa.035.sroa.6.0..sroa.7.0..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 232
  store ptr %i.kv, ptr %.sroa.7.sroa.035.sroa.6.0..sroa.7.0..sroa_idx30.sroa_idx, align 8
  %.sroa.7.sroa.436.0..sroa.7.0..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  store ptr %1, ptr %.sroa.7.sroa.436.0..sroa.7.0..sroa_idx30.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !45562)
  %i.kw = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 5 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ld = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.le = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %.sroa.04.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.sroa.8297.0..sroa_idx298 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %.outer

.outer:                                           ; preds = %.loopexit, %"_ZN4core3ptr414drop_in_place$LT$core..option..Option$LT$core..iter..adapters..flatten..FlatMap$LT$core..iter..adapters..chain..Chain$LT$core..option..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$C$core..slice..iter..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$C$nls..field_walker..FieldResolver..resolve_annot..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h845eec903a71e85aE.exit"
  %.ph = phi ptr [ %.sink12.i, %.loopexit ], [ %i.mr, %"_ZN4core3ptr414drop_in_place$LT$core..option..Option$LT$core..iter..adapters..flatten..FlatMap$LT$core..iter..adapters..chain..Chain$LT$core..option..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$C$core..slice..iter..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$C$nls..field_walker..FieldResolver..resolve_annot..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h845eec903a71e85aE.exit" ] ; 3 uses
  %.ph2073 = phi i64 [ 3, %.loopexit ], [ %.sroa.0295.0.copyload296, %"_ZN4core3ptr414drop_in_place$LT$core..option..Option$LT$core..iter..adapters..flatten..FlatMap$LT$core..iter..adapters..chain..Chain$LT$core..option..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$C$core..slice..iter..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$C$nls..field_walker..FieldResolver..resolve_annot..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h845eec903a71e85aE.exit" ]
  %i.li = load ptr, ptr %i.lc, align 8, !nonnull !46
  %i.lj = load ptr, ptr %i.ld, align 8, !nonnull !46, !align !52
  %i.lk = load ptr, ptr %i.le, align 8            ; 2 uses
  %.not.i171 = icmp eq ptr %i.lk, null
  %i.ll = load ptr, ptr %i.lf, align 8, !nonnull !46
  %i.lm = load ptr, ptr %i.le, align 8
  %.not51.i.i.i.i.i.i = icmp eq ptr %i.lm, null
  %.val4.i59.i.i.i.i.i.i = load ptr, ptr %i.lf, align 8, !nonnull !46
  %i.ln = ptrtoint ptr %.val4.i59.i.i.i.i.i.i to i64
  %.promoted2425 = load ptr, ptr %i.kw, align 8
  %.promoted2428 = load ptr, ptr %i.kx, align 8
  %.promoted2430 = load ptr, ptr %i.ky, align 8
  %.promoted2432 = load i64, ptr %i.kz, align 8
  %.promoted2435 = load ptr, ptr %i.la, align 8
  %.promoted2436 = load ptr, ptr %i.lb, align 8
  %.promoted2439 = load ptr, ptr %i.lg, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %.outer, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81"
  %.val.i58.i.i.i.i.i.i2440 = phi ptr [ %.val.i58.i.i.i.i.i.i2441, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81" ], [ %.promoted2439, %.outer ] ; 5 uses
  %.lcssa22702437 = phi ptr [ %i.lq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81" ], [ %.promoted2436, %.outer ]
  %i.lo = phi ptr [ %i.ml, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81" ], [ %.promoted2435, %.outer ]
  %.sroa.0.0.copyload.i.i.i1020.lcssa22642433 = phi i64 [ %.sroa.0.0.copyload.i.i.i1020, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81" ], [ %.promoted2432, %.outer ]
  %.sroa.4.0.copyload.i.i.i1016.lcssa2431 = phi ptr [ %.val.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81" ], [ %.promoted2430, %.outer ]
  %.val4.i.i.i.i.i.i.i.lcssa22592429 = phi ptr [ %.val4.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81" ], [ %.promoted2428, %.outer ]
  %.sroa.4.0.copyload.i.i.i665.lcssa2426 = phi ptr [ %.sroa.4.0.copyload.i.i.i665.lcssa2427, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81" ], [ %.promoted2425, %.outer ]
  %i.lp = phi i64 [ %.pr.pre.pre818, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81" ], [ %.ph2073, %.outer ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7291)
  %.not.i131 = icmp eq i64 %i.lp, 3
  br i1 %.not.i131, label %.loopexit2074, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184"
  %i.lq = phi ptr [ %i.ma, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184" ], [ %.lcssa22702437, %bb.bh ] ; 8 uses
  %i.lr = phi ptr [ %i.mb, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184" ], [ %i.lo, %bb.bh ] ; 6 uses
  %.sroa.0.0.copyload.i.i.i1020 = phi i64 [ %.sroa.0.0.copyload.i.i.i, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184" ], [ %.sroa.0.0.copyload.i.i.i1020.lcssa22642433, %bb.bh ] ; 6 uses
  %.sroa.4.0.copyload.i.i.i1014 = phi ptr [ %.sroa.4.0.copyload.i.i.i, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184" ], [ %.sroa.4.0.copyload.i.i.i1016.lcssa2431, %bb.bh ] ; 6 uses
  %.val4.i.i.i.i.i.i.i = phi ptr [ %i.me, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184" ], [ %.val4.i.i.i.i.i.i.i.lcssa22592429, %bb.bh ] ; 6 uses
  %i.ls = phi i64 [ %i.mc, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184" ], [ %i.lp, %bb.bh ] ; 5 uses
  %.sroa.4.0.copyload.i.i.i665 = phi ptr [ %.sroa.4.0.copyload.i.i.i, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184" ], [ %.sroa.4.0.copyload.i.i.i665.lcssa2426, %bb.bh ] ; 4 uses
end_hunk_1
