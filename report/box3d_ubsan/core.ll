Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/core?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@b3GrowAlloc:bb.a
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %i.ab = load i32, ptr %i.aa, align 4, !nosanitize !15
  %i.ac = icmp eq i32 %i.ab, -1056584962, !nosanitize !15
  br i1 %i.ac, label %bb.q, label %bb.s, !nosanitize !15

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr i8, ptr %i.z, i64 -4
  %i.ae = load i32, ptr %i.ad, align 8, !nosanitize !15
  %i.af = icmp eq i32 %i.ae, 1413295203, !nosanitize !15
  br i1 %i.af, label %bb.s, label %bb.r, !prof !16, !nosanitize !15

bb.r:                                             ; preds = %bb.q
  %i.ag = ptrtoint ptr %i.z to i64, !nosanitize !15
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @8, i64 %i.ag) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.s:                                             ; preds = %bb.q, %bb.p
  tail call void %i.z(ptr noundef nonnull %0) #15, !inline_history !32
  br label %b3Free.exit

bb.t:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %0) #15
  br label %b3Free.exit

b3Free.exit:                                      ; preds = %bb.s, %bb.t
  %i.ah = atomicrmw sub ptr @b3_byteCount, i32 %1 seq_cst, align 4 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %b3Alloc.exit.thread, %b3Free.exit, %b3Alloc.exit
  %.1.i13 = phi ptr [ null, %b3Alloc.exit.thread ], [ %.1.i, %b3Free.exit ], [ %.1.i, %b3Alloc.exit ]
  ret ptr %.1.i13
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_nonnull_arg_abort(ptr) local_unnamed_addr #7

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define i32 @b3GetByteCount() local_unnamed_addr #12 !func_sanitize !33 {
bb.a:
  %i.a = load atomic i32, ptr @b3_byteCount seq_cst, align 4
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden nonnull ptr @b3AllocZeroed(i64 noundef %0) local_unnamed_addr #3 !func_sanitize !17 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %b3Alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %0 to i32                      ; 2 uses
  %i.c = atomicrmw add ptr @b3_byteCount, i32 %i.b seq_cst, align 4 ; 0 uses
  %i.d = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.b, i32 -1) ; 2 uses
  %i.e = extractvalue { i32, i1 } %i.d, 1, !nosanitize !15
  br i1 %i.e, label %bb.c, label %bb.d, !prof !18, !nosanitize !15

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %0, 4294967295
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @3, i64 %i.f, i64 1) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.d:                                             ; preds = %bb.b
  %i.g = extractvalue { i32, i1 } %i.d, 0, !nosanitize !15
  %i.h = or i32 %i.g, 15                          ; 2 uses
  %i.i = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.h, i32 1), !nosanitize !15 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 0, !nosanitize !15 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.i, 1, !nosanitize !15
  br i1 %i.k, label %bb.e, label %bb.f, !prof !18, !nosanitize !15

bb.e:                                             ; preds = %bb.d
  %i.l = zext nneg i32 %i.h to i64, !nosanitize !15
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @4, i64 %i.l, i64 1) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.f:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @b3_allocFcn, align 8, !tbaa !14 ; 5 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load i32, ptr %i.n, align 4, !nosanitize !15
  %i.p = icmp eq i32 %i.o, -1056584962, !nosanitize !15
  br i1 %i.p, label %bb.h, label %bb.j, !nosanitize !15

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %i.m, i64 -4
  %i.r = load i32, ptr %i.q, align 8, !nosanitize !15
  %i.s = icmp eq i32 %i.r, -494295790, !nosanitize !15
  br i1 %i.s, label %bb.j, label %bb.i, !prof !16, !nosanitize !15

bb.i:                                             ; preds = %bb.h
  %i.t = ptrtoint ptr %i.m to i64, !nosanitize !15
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @6, i64 %i.t) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.u = tail call ptr %i.m(i32 noundef %i.j, i32 noundef 16) #15, !inline_history !19
  br label %b3Alloc.exit

bb.k:                                             ; preds = %bb.f
  %i.v = sext i32 %i.j to i64
  %i.w = tail call noalias align 16 ptr @aligned_alloc(i64 noundef 16, i64 noundef %i.v) #17
  br label %b3Alloc.exit

b3Alloc.exit:                                     ; preds = %bb.j, %bb.k
  %.1.i = phi ptr [ %i.w, %bb.k ], [ %i.u, %bb.j ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null, !nosanitize !15
  br i1 %.not, label %b3Alloc.exit.thread, label %bb.l, !prof !20, !nosanitize !15

b3Alloc.exit.thread:                              ; preds = %bb.a, %b3Alloc.exit
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @12) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.l:                                             ; preds = %b3Alloc.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.1.i, i8 0, i64 %0, i1 false)
  ret ptr %.1.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nounwind uwtable
define hidden void @b3StrCpy(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #3 !func_sanitize !34 {
bb.a:
  %.not = icmp eq ptr %2, null
  %.not8 = icmp eq ptr %0, null, !nosanitize !15  ; 2 uses
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not8, label %bb.c, label %bb.d, !prof !18, !nosanitize !15

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @13) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.d:                                             ; preds = %bb.b
  %i.a = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 -1) ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 1, !nosanitize !15
  br i1 %i.b, label %bb.e, label %bb.f, !prof !18, !nosanitize !15

bb.e:                                             ; preds = %bb.d
  %i.c = zext i32 %1 to i64, !nosanitize !15
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @14, i64 %i.c, i64 1) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.f:                                             ; preds = %bb.d
  %i.d = extractvalue { i32, i1 } %i.a, 0, !nosanitize !15 ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 3 uses
  %i.f = tail call ptr @strncpy(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef %i.e) #15 ; 0 uses
  %i.g = ptrtoint ptr %0 to i64, !nosanitize !15  ; 3 uses
  %i.h = add i64 %i.e, %i.g, !nosanitize !15      ; 3 uses
  %i.i = icmp ne i64 %i.h, 0, !nosanitize !15
  %i.j = icmp uge i64 %i.h, %i.g, !nosanitize !15
  %i.k = icmp slt i32 %i.d, 0
  %i.l = xor i1 %i.k, %i.j
  %i.m = and i1 %i.i, %i.l, !nosanitize !15
  br i1 %i.m, label %bb.h, label %bb.g, !prof !16, !nosanitize !15

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @15, i64 %i.g, i64 %i.h) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !21
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  br i1 %.not8, label %bb.j, label %bb.k, !prof !18, !nosanitize !15

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @16) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.k:                                             ; preds = %bb.i
  %i.o = sext i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %0, i8 0, i64 %i.o, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_pointer_overflow_abort(ptr, i64, i64) local_unnamed_addr #7

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_type_mismatch_v1_abort(ptr, i64) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden range(i64 1, 0) i64 @b3Hash64NonZero(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 !func_sanitize !36 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.ci, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 12 uses
  %.not.i = icmp ult i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 16), ptrtoint (ptr @rapid_secret to i64), !nosanitize !15
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !18, !nosanitize !15

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @17, i64 ptrtoint (ptr @rapid_secret to i64), i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 16)) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.d:                                             ; preds = %bb.b
  %.not149.i = icmp ult i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 8), ptrtoint (ptr @rapid_secret to i64), !nosanitize !15
  br i1 %.not149.i, label %bb.e, label %rapid_mum.exit, !prof !18, !nosanitize !15

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @18, i64 ptrtoint (ptr @rapid_secret to i64), i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 8)) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit:                                   ; preds = %bb.d
  %i.c = icmp samesign ult i32 %1, 17
  br i1 %i.c, label %bb.f, label %bb.w, !prof !37

bb.f:                                             ; preds = %rapid_mum.exit
  %i.d = icmp samesign ugt i32 %1, 3
  br i1 %i.d, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.e = xor i64 %i.b, 4766890152743124950        ; 2 uses
  %i.f = icmp samesign ugt i32 %1, 7
  %i.g = ptrtoint ptr %0 to i64, !nosanitize !15  ; 4 uses
  %i.h = add i64 %i.b, %i.g, !nosanitize !15      ; 4 uses
  %i.i = icmp ne ptr %0, null, !nosanitize !15
  %i.j = icmp ne i64 %i.h, 0
  %i.k = and i1 %i.i, %i.j
  %i.l = icmp uge i64 %i.h, %i.g, !nosanitize !15
  %i.m = and i1 %i.l, %i.k, !nosanitize !15       ; 2 uses
  br i1 %i.f, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  br i1 %i.m, label %bb.j, label %bb.i, !prof !16, !nosanitize !15

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @19, i64 %i.g, i64 %i.h) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.j:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 3 uses
  %i.o = ptrtoint ptr %i.n to i64, !nosanitize !15 ; 2 uses
  %i.p = add i64 %i.o, -8, !nosanitize !15        ; 2 uses
  %i.q = icmp ne i64 %i.p, 0, !nosanitize !15
  %i.r = icmp ugt ptr %i.n, inttoptr (i64 7 to ptr)
  %i.s = and i1 %i.r, %i.q, !nosanitize !15
  br i1 %i.s, label %rapid_read64.exit, label %bb.k, !prof !16, !nosanitize !15

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @20, i64 %i.o, i64 %i.p) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_read64.exit:                                ; preds = %bb.j
  %i.t = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.u = load i64, ptr %0, align 1
  %i.v = load i64, ptr %i.t, align 1
  br label %rapid_mum.exit54

bb.l:                                             ; preds = %bb.g
  br i1 %i.m, label %bb.n, label %bb.m, !prof !16, !nosanitize !15

bb.m:                                             ; preds = %bb.l
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @21, i64 %i.g, i64 %i.h) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.n:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 3 uses
  %i.x = ptrtoint ptr %i.w to i64, !nosanitize !15 ; 2 uses
  %i.y = add i64 %i.x, -4, !nosanitize !15        ; 2 uses
  %i.z = icmp ne i64 %i.y, 0, !nosanitize !15
  %i.aa = icmp ugt ptr %i.w, inttoptr (i64 3 to ptr)
  %i.ab = and i1 %i.aa, %i.z, !nosanitize !15
  br i1 %i.ab, label %rapid_read32.exit, label %bb.o, !prof !16, !nosanitize !15

bb.o:                                             ; preds = %bb.n
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @22, i64 %i.x, i64 %i.y) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_read32.exit:                                ; preds = %bb.n
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.ad = load i32, ptr %0, align 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = load i32, ptr %i.ac, align 1
  %i.ag = zext i32 %i.af to i64
  br label %rapid_mum.exit54

bb.p:                                             ; preds = %bb.f
  %.not = icmp eq ptr %0, null, !nosanitize !15
  br i1 %.not, label %bb.q, label %bb.r, !prof !18, !nosanitize !15

bb.q:                                             ; preds = %bb.p
  %i.ah = ptrtoint ptr %0 to i64, !nosanitize !15
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @24, i64 %i.ah) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.r:                                             ; preds = %bb.p
  %2 = ptrtoint ptr %0 to i64, !nosanitize !15    ; 6 uses
  %3 = add i64 %2, -1
  %i.ai = add i64 %3, %i.b, !nosanitize !15       ; 2 uses
  %.not154.i = icmp ult i64 %i.ai, %2, !nosanitize !15
  br i1 %.not154.i, label %bb.s, label %bb.t, !prof !18, !nosanitize !15

bb.s:                                             ; preds = %bb.r
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @25, i64 %2, i64 %i.ai) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.t:                                             ; preds = %bb.r
  %i.aj = lshr i64 %i.b, 1                        ; 2 uses
  %i.ak = add i64 %i.aj, %2, !nosanitize !15      ; 2 uses
  %.not156.i = icmp ult i64 %i.ak, %2, !nosanitize !15
  br i1 %.not156.i, label %bb.u, label %bb.v, !prof !18, !nosanitize !15

bb.u:                                             ; preds = %bb.t
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @26, i64 %2, i64 %i.ak) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.v:                                             ; preds = %bb.t
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.am = load i8, ptr %0, align 1, !tbaa !21
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 45
  %4 = getelementptr i8, ptr %0, i64 %i.b
  %i.ap = getelementptr i8, ptr %4, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !21
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.ao, %i.ar
  %i.at = load i8, ptr %i.al, align 1, !tbaa !21
  %i.au = zext i8 %i.at to i64
  br label %rapid_mum.exit54

bb.w:                                             ; preds = %rapid_mum.exit
  %i.av = icmp samesign ugt i32 %1, 112
  br i1 %i.av, label %.preheader, label %bb.bd

.preheader:                                       ; preds = %bb.w
  %.not150.i = icmp ult i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 24), ptrtoint (ptr @rapid_secret to i64)
  %.not151.i = icmp ult i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 32), ptrtoint (ptr @rapid_secret to i64)
  %.not152.i = icmp ult i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 40), ptrtoint (ptr @rapid_secret to i64)
  %.not153.i = icmp ult i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 48), ptrtoint (ptr @rapid_secret to i64)
  br label %bb.x

bb.x:                                             ; preds = %.preheader, %bb.bb
  %.0122.i = phi i64 [ %i.bj, %bb.bb ], [ 4766890152743124950, %.preheader ]
  %.0120.i = phi ptr [ %i.fu, %bb.bb ], [ %0, %.preheader ] ; 31 uses
  %.0119.i = phi i64 [ %i.gf, %bb.bb ], [ %i.b, %.preheader ] ; 2 uses
  %.0118.i = phi i64 [ %i.cd, %bb.bb ], [ 4766890152743124950, %.preheader ]
  %.0117.i = phi i64 [ %i.cx, %bb.bb ], [ 4766890152743124950, %.preheader ]
  %.0116.i = phi i64 [ %i.dr, %bb.bb ], [ 4766890152743124950, %.preheader ]
  %.0115.i = phi i64 [ %i.el, %bb.bb ], [ 4766890152743124950, %.preheader ]
  %.0114.i = phi i64 [ %i.ff, %bb.bb ], [ 4766890152743124950, %.preheader ]
  %.0.i = phi i64 [ %i.ge, %bb.bb ], [ 4766890152743124950, %.preheader ]
  %.not.i21 = icmp eq ptr %.0120.i, null, !nosanitize !15
  br i1 %.not.i21, label %bb.y, label %rapid_read64.exit22, !prof !18, !nosanitize !15

bb.y:                                             ; preds = %bb.x
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @60) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_read64.exit22:                              ; preds = %bb.x
  %i.aw = ptrtoint ptr %.0120.i to i64, !nosanitize !15 ; 28 uses
  %i.ax = add i64 %i.aw, 8, !nosanitize !15       ; 2 uses
  %i.ay = icmp ne i64 %i.ax, 0
  %switch.i = icmp ult ptr %.0120.i, inttoptr (i64 -8 to ptr)
  %or.cond.i = and i1 %switch.i, %i.ay
  br i1 %or.cond.i, label %rapid_mum.exit47, label %bb.z, !prof !38

bb.z:                                             ; preds = %rapid_read64.exit22
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @27, i64 %i.aw, i64 %i.ax) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit47:                                 ; preds = %rapid_read64.exit22
  %i.az = load i64, ptr %.0120.i, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0120.i, i64 8
  %i.bb = xor i64 %i.az, 3257665815644502181
  %i.bc = load i64, ptr %i.ba, align 1
  %i.bd = xor i64 %i.bc, %.0122.i
  %i.be = zext i64 %i.bb to i128
  %i.bf = zext i64 %i.bd to i128
  %i.bg = mul nuw i128 %i.bf, %i.be               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = xor i128 %i.bh, %i.bg
  %i.bj = trunc i128 %i.bi to i64                 ; 2 uses
  %i.bk = add i64 %i.aw, 16, !nosanitize !15      ; 2 uses
  %i.bl = icmp ne i64 %i.bk, 0
  %i.bm = icmp ult ptr %.0120.i, inttoptr (i64 -16 to ptr)
  %i.bn = and i1 %i.bm, %i.bl
  br i1 %i.bn, label %bb.ab, label %bb.aa, !prof !16, !nosanitize !15

bb.aa:                                            ; preds = %rapid_mum.exit47
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @28, i64 %i.aw, i64 %i.bk) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.ab:                                            ; preds = %rapid_mum.exit47
  %i.bo = add i64 %i.aw, 24, !nosanitize !15      ; 2 uses
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = icmp ult ptr %.0120.i, inttoptr (i64 -24 to ptr)
  %i.br = and i1 %i.bq, %i.bp
  br i1 %i.br, label %rapid_mum.exit48, label %bb.ac, !prof !16, !nosanitize !15

bb.ac:                                            ; preds = %bb.ab
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @29, i64 %i.aw, i64 %i.bo) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit48:                                 ; preds = %bb.ab
  %i.bs = getelementptr inbounds nuw i8, ptr %.0120.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.0120.i, i64 24
  %i.bv = xor i64 %i.bt, -8378864009470890807
  %i.bw = load i64, ptr %i.bu, align 1
  %i.bx = xor i64 %i.bw, %.0118.i
  %i.by = zext i64 %i.bv to i128
  %i.bz = zext i64 %i.bx to i128
  %i.ca = mul nuw i128 %i.bz, %i.by               ; 2 uses
  %i.cb = lshr i128 %i.ca, 64
  %i.cc = xor i128 %i.cb, %i.ca
  %i.cd = trunc i128 %i.cc to i64                 ; 2 uses
  %i.ce = add i64 %i.aw, 32, !nosanitize !15      ; 2 uses
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = icmp ult ptr %.0120.i, inttoptr (i64 -32 to ptr)
  %i.ch = and i1 %i.cg, %i.cf
  br i1 %i.ch, label %bb.ae, label %bb.ad, !prof !16, !nosanitize !15

bb.ad:                                            ; preds = %rapid_mum.exit48
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @30, i64 %i.aw, i64 %i.ce) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.ae:                                            ; preds = %rapid_mum.exit48
  %i.ci = add i64 %i.aw, 40, !nosanitize !15      ; 2 uses
  %i.cj = icmp ne i64 %i.ci, 0
  %i.ck = icmp ult ptr %.0120.i, inttoptr (i64 -40 to ptr)
  %i.cl = and i1 %i.ck, %i.cj
  br i1 %i.cl, label %rapid_mum.exit49, label %bb.af, !prof !16, !nosanitize !15

bb.af:                                            ; preds = %bb.ae
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @31, i64 %i.aw, i64 %i.ci) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit49:                                 ; preds = %bb.ae
  %i.cm = getelementptr inbounds nuw i8, ptr %.0120.i, i64 32
  %i.cn = load i64, ptr %i.cm, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %.0120.i, i64 40
  %i.cp = xor i64 %i.cn, 5418857496715711651
  %i.cq = load i64, ptr %i.co, align 1
  %i.cr = xor i64 %i.cq, %.0117.i
  %i.cs = zext i64 %i.cp to i128
  %i.ct = zext i64 %i.cr to i128
  %i.cu = mul nuw i128 %i.ct, %i.cs               ; 2 uses
  %i.cv = lshr i128 %i.cu, 64
  %i.cw = xor i128 %i.cv, %i.cu
  %i.cx = trunc i128 %i.cw to i64                 ; 2 uses
  %i.cy = add i64 %i.aw, 48, !nosanitize !15      ; 2 uses
  %i.cz = icmp ne i64 %i.cy, 0
  %i.da = icmp ult ptr %.0120.i, inttoptr (i64 -48 to ptr)
  %i.db = and i1 %i.da, %i.cz
  br i1 %i.db, label %bb.ah, label %bb.ag, !prof !16, !nosanitize !15

bb.ag:                                            ; preds = %rapid_mum.exit49
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @32, i64 %i.aw, i64 %i.cy) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.ah:                                            ; preds = %rapid_mum.exit49
  %i.dc = getelementptr inbounds nuw i8, ptr %.0120.i, i64 48
  %i.dd = load i64, ptr %i.dc, align 1
  br i1 %.not150.i, label %bb.ai, label %bb.aj, !prof !18, !nosanitize !15

bb.ai:                                            ; preds = %bb.ah
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @33, i64 ptrtoint (ptr @rapid_secret to i64), i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 24)) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.aj:                                            ; preds = %bb.ah
  %i.de = add i64 %i.aw, 56, !nosanitize !15      ; 2 uses
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = icmp ult ptr %.0120.i, inttoptr (i64 -56 to ptr)
  %i.dh = and i1 %i.dg, %i.df
  br i1 %i.dh, label %rapid_mum.exit50, label %bb.ak, !prof !16, !nosanitize !15

bb.ak:                                            ; preds = %bb.aj
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @34, i64 %i.aw, i64 %i.de) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit50:                                 ; preds = %bb.aj
  %i.di = getelementptr inbounds nuw i8, ptr %.0120.i, i64 56
  %i.dj = xor i64 %i.dd, 5573817676018592327
  %i.dk = load i64, ptr %i.di, align 1
  %i.dl = xor i64 %i.dk, %.0116.i
  %i.dm = zext i64 %i.dj to i128
  %i.dn = zext i64 %i.dl to i128
  %i.do = mul nuw i128 %i.dn, %i.dm               ; 2 uses
  %i.dp = lshr i128 %i.do, 64
  %i.dq = xor i128 %i.dp, %i.do
  %i.dr = trunc i128 %i.dq to i64                 ; 2 uses
  %i.ds = add i64 %i.aw, 64, !nosanitize !15      ; 2 uses
  %i.dt = icmp ne i64 %i.ds, 0
  %i.du = icmp ult ptr %.0120.i, inttoptr (i64 -64 to ptr)
  %i.dv = and i1 %i.du, %i.dt
  br i1 %i.dv, label %bb.am, label %bb.al, !prof !16, !nosanitize !15

bb.al:                                            ; preds = %rapid_mum.exit50
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @35, i64 %i.aw, i64 %i.ds) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.am:                                            ; preds = %rapid_mum.exit50
  %i.dw = getelementptr inbounds nuw i8, ptr %.0120.i, i64 64
  %i.dx = load i64, ptr %i.dw, align 1
  br i1 %.not151.i, label %bb.an, label %bb.ao, !prof !18, !nosanitize !15

bb.an:                                            ; preds = %bb.am
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @36, i64 ptrtoint (ptr @rapid_secret to i64), i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 32)) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.ao:                                            ; preds = %bb.am
  %i.dy = add i64 %i.aw, 72, !nosanitize !15      ; 2 uses
  %i.dz = icmp ne i64 %i.dy, 0
  %i.ea = icmp ult ptr %.0120.i, inttoptr (i64 -72 to ptr)
  %i.eb = and i1 %i.ea, %i.dz
  br i1 %i.eb, label %rapid_mum.exit51, label %bb.ap, !prof !16, !nosanitize !15

bb.ap:                                            ; preds = %bb.ao
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @37, i64 %i.aw, i64 %i.dy) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit51:                                 ; preds = %bb.ao
  %i.ec = getelementptr inbounds nuw i8, ptr %.0120.i, i64 72
end_hunk_0
