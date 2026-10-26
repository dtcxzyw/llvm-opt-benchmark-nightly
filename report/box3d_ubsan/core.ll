Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/core?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@b3AllocZeroed:bb.a

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
  %i.b = zext nneg i32 %1 to i64                  ; 11 uses
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @24, i64 0) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.r:                                             ; preds = %bb.p
  %i.ah = add nsw i64 %i.b, -1                    ; 2 uses
  %i.ai = ptrtoint ptr %0 to i64, !nosanitize !15 ; 6 uses
  %i.aj = add i64 %i.ah, %i.ai, !nosanitize !15   ; 2 uses
  %.not154.i = icmp ult i64 %i.aj, %i.ai, !nosanitize !15
  br i1 %.not154.i, label %bb.s, label %bb.t, !prof !18, !nosanitize !15

bb.s:                                             ; preds = %bb.r
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @25, i64 %i.ai, i64 %i.aj) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.t:                                             ; preds = %bb.r
  %i.ak = lshr i64 %i.b, 1                        ; 2 uses
  %i.al = add i64 %i.ak, %i.ai, !nosanitize !15   ; 2 uses
  %.not156.i = icmp ult i64 %i.al, %i.ai, !nosanitize !15
  br i1 %.not156.i, label %bb.u, label %bb.v, !prof !18, !nosanitize !15

bb.u:                                             ; preds = %bb.t
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @26, i64 %i.ai, i64 %i.al) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.v:                                             ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.an = load i8, ptr %0, align 1, !tbaa !21
  %i.ao = zext i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 45
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !21
  %i.as = zext i8 %i.ar to i64
  %i.at = or disjoint i64 %i.ap, %i.as
  %i.au = load i8, ptr %i.am, align 1, !tbaa !21
  %i.av = zext i8 %i.au to i64
  br label %rapid_mum.exit54

bb.w:                                             ; preds = %rapid_mum.exit
  %i.aw = icmp samesign ugt i32 %1, 112
  br i1 %i.aw, label %.preheader, label %bb.bd

.preheader:                                       ; preds = %bb.w
  %.not150.i = icmp ult i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 24), ptrtoint (ptr @rapid_secret to i64)
  %.not151.i = icmp ult i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 32), ptrtoint (ptr @rapid_secret to i64)
  %.not152.i = icmp ult i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 40), ptrtoint (ptr @rapid_secret to i64)
  %.not153.i = icmp ult i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 48), ptrtoint (ptr @rapid_secret to i64)
  br label %bb.x

bb.x:                                             ; preds = %.preheader, %bb.bb
  %.0122.i = phi i64 [ %i.bk, %bb.bb ], [ 4766890152743124950, %.preheader ]
  %.0120.i = phi ptr [ %i.fv, %bb.bb ], [ %0, %.preheader ] ; 31 uses
  %.0119.i = phi i64 [ %i.gg, %bb.bb ], [ %i.b, %.preheader ] ; 2 uses
  %.0118.i = phi i64 [ %i.ce, %bb.bb ], [ 4766890152743124950, %.preheader ]
  %.0117.i = phi i64 [ %i.cy, %bb.bb ], [ 4766890152743124950, %.preheader ]
  %.0116.i = phi i64 [ %i.ds, %bb.bb ], [ 4766890152743124950, %.preheader ]
  %.0115.i = phi i64 [ %i.em, %bb.bb ], [ 4766890152743124950, %.preheader ]
  %.0114.i = phi i64 [ %i.fg, %bb.bb ], [ 4766890152743124950, %.preheader ]
  %.0.i = phi i64 [ %i.gf, %bb.bb ], [ 4766890152743124950, %.preheader ]
  %.not.i21 = icmp eq ptr %.0120.i, null, !nosanitize !15
  br i1 %.not.i21, label %bb.y, label %rapid_read64.exit22, !prof !18, !nosanitize !15

bb.y:                                             ; preds = %bb.x
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @60) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_read64.exit22:                              ; preds = %bb.x
  %i.ax = ptrtoint ptr %.0120.i to i64, !nosanitize !15 ; 28 uses
  %i.ay = add i64 %i.ax, 8, !nosanitize !15       ; 2 uses
  %i.az = icmp ne i64 %i.ay, 0
  %switch.i = icmp ult ptr %.0120.i, inttoptr (i64 -8 to ptr)
  %or.cond.i = and i1 %switch.i, %i.az
  br i1 %or.cond.i, label %rapid_mum.exit47, label %bb.z, !prof !38

bb.z:                                             ; preds = %rapid_read64.exit22
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @27, i64 %i.ax, i64 %i.ay) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit47:                                 ; preds = %rapid_read64.exit22
  %i.ba = load i64, ptr %.0120.i, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.0120.i, i64 8
  %i.bc = xor i64 %i.ba, 3257665815644502181
  %i.bd = load i64, ptr %i.bb, align 1
  %i.be = xor i64 %i.bd, %.0122.i
  %i.bf = zext i64 %i.bc to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bg, %i.bf               ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64                 ; 2 uses
  %i.bl = add i64 %i.ax, 16, !nosanitize !15      ; 2 uses
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = icmp ult ptr %.0120.i, inttoptr (i64 -16 to ptr)
  %i.bo = and i1 %i.bn, %i.bm
  br i1 %i.bo, label %bb.ab, label %bb.aa, !prof !16, !nosanitize !15

bb.aa:                                            ; preds = %rapid_mum.exit47
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @28, i64 %i.ax, i64 %i.bl) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.ab:                                            ; preds = %rapid_mum.exit47
  %i.bp = add i64 %i.ax, 24, !nosanitize !15      ; 2 uses
  %i.bq = icmp ne i64 %i.bp, 0
  %i.br = icmp ult ptr %.0120.i, inttoptr (i64 -24 to ptr)
  %i.bs = and i1 %i.br, %i.bq
  br i1 %i.bs, label %rapid_mum.exit48, label %bb.ac, !prof !16, !nosanitize !15

bb.ac:                                            ; preds = %bb.ab
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @29, i64 %i.ax, i64 %i.bp) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit48:                                 ; preds = %bb.ab
  %i.bt = getelementptr inbounds nuw i8, ptr %.0120.i, i64 16
  %i.bu = load i64, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.0120.i, i64 24
  %i.bw = xor i64 %i.bu, -8378864009470890807
  %i.bx = load i64, ptr %i.bv, align 1
  %i.by = xor i64 %i.bx, %.0118.i
  %i.bz = zext i64 %i.bw to i128
  %i.ca = zext i64 %i.by to i128
  %i.cb = mul nuw i128 %i.ca, %i.bz               ; 2 uses
  %i.cc = lshr i128 %i.cb, 64
  %i.cd = xor i128 %i.cc, %i.cb
  %i.ce = trunc i128 %i.cd to i64                 ; 2 uses
  %i.cf = add i64 %i.ax, 32, !nosanitize !15      ; 2 uses
  %i.cg = icmp ne i64 %i.cf, 0
  %i.ch = icmp ult ptr %.0120.i, inttoptr (i64 -32 to ptr)
  %i.ci = and i1 %i.ch, %i.cg
  br i1 %i.ci, label %bb.ae, label %bb.ad, !prof !16, !nosanitize !15

bb.ad:                                            ; preds = %rapid_mum.exit48
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @30, i64 %i.ax, i64 %i.cf) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.ae:                                            ; preds = %rapid_mum.exit48
  %i.cj = add i64 %i.ax, 40, !nosanitize !15      ; 2 uses
  %i.ck = icmp ne i64 %i.cj, 0
  %i.cl = icmp ult ptr %.0120.i, inttoptr (i64 -40 to ptr)
  %i.cm = and i1 %i.cl, %i.ck
  br i1 %i.cm, label %rapid_mum.exit49, label %bb.af, !prof !16, !nosanitize !15

bb.af:                                            ; preds = %bb.ae
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @31, i64 %i.ax, i64 %i.cj) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit49:                                 ; preds = %bb.ae
  %i.cn = getelementptr inbounds nuw i8, ptr %.0120.i, i64 32
  %i.co = load i64, ptr %i.cn, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %.0120.i, i64 40
  %i.cq = xor i64 %i.co, 5418857496715711651
  %i.cr = load i64, ptr %i.cp, align 1
  %i.cs = xor i64 %i.cr, %.0117.i
  %i.ct = zext i64 %i.cq to i128
  %i.cu = zext i64 %i.cs to i128
  %i.cv = mul nuw i128 %i.cu, %i.ct               ; 2 uses
  %i.cw = lshr i128 %i.cv, 64
  %i.cx = xor i128 %i.cw, %i.cv
  %i.cy = trunc i128 %i.cx to i64                 ; 2 uses
  %i.cz = add i64 %i.ax, 48, !nosanitize !15      ; 2 uses
  %i.da = icmp ne i64 %i.cz, 0
  %i.db = icmp ult ptr %.0120.i, inttoptr (i64 -48 to ptr)
  %i.dc = and i1 %i.db, %i.da
  br i1 %i.dc, label %bb.ah, label %bb.ag, !prof !16, !nosanitize !15

bb.ag:                                            ; preds = %rapid_mum.exit49
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @32, i64 %i.ax, i64 %i.cz) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.ah:                                            ; preds = %rapid_mum.exit49
  %i.dd = getelementptr inbounds nuw i8, ptr %.0120.i, i64 48
  %i.de = load i64, ptr %i.dd, align 1
  br i1 %.not150.i, label %bb.ai, label %bb.aj, !prof !18, !nosanitize !15

bb.ai:                                            ; preds = %bb.ah
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @33, i64 ptrtoint (ptr @rapid_secret to i64), i64 add (i64 ptrtoint (ptr @rapid_secret to i64), i64 24)) #16, !nosanitize !15
  unreachable, !nosanitize !15

bb.aj:                                            ; preds = %bb.ah
  %i.df = add i64 %i.ax, 56, !nosanitize !15      ; 2 uses
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = icmp ult ptr %.0120.i, inttoptr (i64 -56 to ptr)
  %i.di = and i1 %i.dh, %i.dg
  br i1 %i.di, label %rapid_mum.exit50, label %bb.ak, !prof !16, !nosanitize !15

bb.ak:                                            ; preds = %bb.aj
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @34, i64 %i.ax, i64 %i.df) #16, !nosanitize !15
  unreachable, !nosanitize !15

rapid_mum.exit50:                                 ; preds = %bb.aj
  %i.dj = getelementptr inbounds nuw i8, ptr %.0120.i, i64 56
  %i.dk = xor i64 %i.de, 5573817676018592327
  %i.dl = load i64, ptr %i.dj, align 1
  %i.dm = xor i64 %i.dl, %.0116.i
  %i.dn = zext i64 %i.dk to i128
  %i.do = zext i64 %i.dm to i128
  %i.dp = mul nuw i128 %i.do, %i.dn               ; 2 uses
  %i.dq = lshr i128 %i.dp, 64
  %i.dr = xor i128 %i.dq, %i.dp
  %i.ds = trunc i128 %i.dr to i64                 ; 2 uses
  %i.dt = add i64 %i.ax, 64, !nosanitize !15      ; 2 uses
  %i.du = icmp ne i64 %i.dt, 0
  %i.dv = icmp ult ptr %.0120.i, inttoptr (i64 -64 to ptr)
end_hunk_0
