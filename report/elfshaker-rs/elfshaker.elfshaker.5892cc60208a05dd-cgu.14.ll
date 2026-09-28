Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.14?download=true
inline.NumInlined: 309
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write:bb.a
  %..i.i = tail call noundef range(i64 0, 21) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.g, i64 range(i64 8, 21) %2) ; 2 uses
  %i.h = icmp ugt i64 %i.g, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i.i = load i32, ptr %1, align 1, !alias.scope !285, !noalias !283
  %i.i = zext i32 %.sroa.014.0.copyload.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i.i
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !285, !noalias !283
  %i.m = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i.i
  %i.q = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i.i, %..i.i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_le.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !285, !noalias !283, !noundef !6
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i.i
  br label %_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.2.i.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !283, !noalias !284, !noundef !6
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !283, !noalias !284
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0.i            ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %bb.h
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !283, !noalias !284
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19.i = load i64, ptr %i.aj, align 8, !alias.scope !283, !noalias !284
  %.promoted20.i = load i64, ptr %i.ak, align 8, !alias.scope !286, !noalias !284
  %.promoted22.i = load i64, ptr %i.al, align 8, !alias.scope !286, !noalias !284
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_le.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !283, !noalias !284, !noundef !6
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !287, !noalias !284, !noundef !6
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !287, !noalias !284, !noundef !6 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !287, !noalias !284, !noundef !6
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !287, !noalias !284
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !287, !noalias !284
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !287, !noalias !284
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8, !alias.scope !283, !noalias !284
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_le.exit.i
  %i.bj = add i64 %i.e, %2
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7BtpbLEd5q3_9elfshaker.exit

._crit_edge.i:                                    ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8, !alias.scope !283, !noalias !284
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !286, !noalias !284
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !286, !noalias !284
  store i64 %i.da, ptr %0, align 8, !alias.scope !283, !noalias !284
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.h
  %.sroa.0.1.lcssa.i = phi i64 [ %i.db, %._crit_edge.i ], [ %.sroa.0.0.i, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %.sroa.014.0.copyload.i16.i = load i32, ptr %i.bl, align 1, !alias.scope !288, !noalias !283
  %i.bm = zext i32 %.sroa.014.0.copyload.i16.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10.i = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11.i = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i10.i, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10.i
  %.sroa.015.0.copyload.i15.i = load i16, ptr %i.bq, align 1, !alias.scope !288, !noalias !283
  %i.br = zext i16 %.sroa.015.0.copyload.i15.i to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10.i, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11.i
  %i.bv = or disjoint i64 %.sroa.03.0.i10.i, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12.i = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i13.i = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11.i, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12.i, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_le.exit17.i

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !288, !noalias !283, !noundef !6
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i12.i, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i13.i
  br label %_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_le.exit17.i

_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_le.exit17.i: ; preds = %bb.p, %bb.o
  %.sroa.0.2.i14.i = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i13.i, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14.i, ptr %i.cf, align 8, !alias.scope !283, !noalias !284
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7BtpbLEd5q3_9elfshaker.exit

bb.q:                                             ; preds = %bb.q, %.lr.ph.i
  %i.cg = phi i64 [ %.promoted22.i, %.lr.ph.i ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted20.i, %.lr.ph.i ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted19.i, %.lr.ph.i ], [ %i.cy, %bb.q ]
  %.sroa.0.118.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118.i
  %.sroa.07.0.copyload.i = load i64, ptr %i.ck, align 1, !alias.scope !284, !noalias !283 ; 2 uses
  %i.cl = xor i64 %.sroa.07.0.copyload.i, %i.ci   ; 3 uses
  %i.cm = add i64 %i.cj, %i.ch                    ; 3 uses
  %i.cn = add i64 %i.cl, %i.cg                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.cm, %i.co                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload.i   ; 2 uses
  %i.db = add nuw i64 %.sroa.0.118.i, 8           ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.j, %_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_le.exit17.i
  %storemerge.i = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCs3oUPovFnLWP_4core4hash3sip9u8to64_le.exit17.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !283, !noalias !284
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_IBH_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEEEEENtNtB1Y_7default7Default7defaultCs7BtpbLEd5q3_9elfshaker() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.b = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 49) 48, i64 noundef 8) #27 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs7_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_4sync3ArcIBM_INtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEEEEENtNtB1V_7default7Default7defaultCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.b, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #27
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultIB28_NtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEENtNtB1A_7default7Default7defaultCs7BtpbLEd5q3_9elfshaker() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.b = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 49) 48, i64 noundef 8) #27 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs7_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_6result6ResultIB1A_NtNtB1E_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtB12_7default7Default7defaultCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.b, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #27
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB1A_2io5error5ErrorEEEEENtNtB1A_7default7Default7defaultCs7BtpbLEd5q3_9elfshaker() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.b = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 49) 48, i64 noundef 8) #27 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs7_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB12_2io5error5ErrorEEEENtNtB12_7default7Default7defaultCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.b, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #27
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2O_5error5ErrorEEEEENtNtB1A_7default7Default7defaultCs7BtpbLEd5q3_9elfshaker() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.b = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 49) 48, i64 noundef 8) #27 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs7_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2x_5error5ErrorEEEENtNtB12_7default7Default7defaultCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.b, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #27
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsY_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtB7_3vec3VecINtNtB1A_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEENtNtB1A_7default7Default7defaultCs7BtpbLEd5q3_9elfshaker() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.b = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 49) 48, i64 noundef 8) #27 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs7_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB12_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtB12_7default7Default7defaultCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.b, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #27
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1q_4sync3ArcINtBY_5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB8_6thread11join_handle10JoinHandleuEEEEEEENtNtB2r_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1q_6result6ResultIB1Y_NtNtB22_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEENtNtB1q_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1q_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB1q_2io5error5ErrorEEEEENtNtB1q_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1q_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2V_5error5ErrorEEEEENtNtB1q_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1q_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEENtNtB1q_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB8_6thread11join_handle10JoinHandleuEEEENtNtB1q_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtNtNtB8_11collections4hash3set7HashSetAhj14_EEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsa_NtCs3oUPovFnLWP_4core5arrayAhj14_NtNtB7_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(20) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtShNtB5_5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef 20, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsa_NtCs3oUPovFnLWP_4core5arrayAhj4_NtNtB7_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtShNtB5_5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef 4, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1D_6marker4SendEL_EuECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef range(i64 0, 2), i64, i1 noundef zeroext, ptr noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCskfBPnJUU6aB_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_NtNtB7_6string6StringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultIBw_NtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBK_2io5error5ErrorEENtNtNtBK_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtNtB7_6string6StringKj2_EENtNtNtBM_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultINtNtB7_3vec3VecNtNtB7_6string6StringENtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

end_hunk_0
