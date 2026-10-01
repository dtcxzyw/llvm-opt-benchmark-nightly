Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/parser?download=true
inline.NumInlined: 234
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@json_parse_number:bb.a
  %i.ou = add nuw i32 %reass.sub, 61
  %i.ov = add i32 %i.ou, %i.om
  %i.ow = zext nneg i32 %i.ov to i128
  %i.ox = lshr i128 %i.ot, %i.ow
  %i.oy = trunc i128 %i.ox to i64
  %i.oz = icmp uge i32 %.0.i.i.i.i, %i.mb
  br label %bb.aw

bb.aw:                                            ; preds = %multipleOfPowerOf5.exit.i.i, %bb.at, %bb.as, %bb.ar
  %.067.i.i = phi i64 [ %i.oy, %multipleOfPowerOf5.exit.i.i ], [ %i.nt, %bb.as ], [ %i.nt, %bb.at ], [ %i.nt, %bb.ar ] ; 5 uses
  %.066.i.i = phi i1 [ %i.oz, %multipleOfPowerOf5.exit.i.i ], [ false, %bb.as ], [ %i.nz, %bb.at ], [ true, %bb.ar ]
  %.065.i.i = phi i32 [ %i.om, %multipleOfPowerOf5.exit.i.i ], [ %i.ne, %bb.as ], [ %i.ne, %bb.at ], [ %i.ne, %bb.ar ] ; 2 uses
  %i.pa = add nsw i32 %.065.i.i, 1023
  %i.pb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.067.i.i, i1 true)
  %i.pc = trunc nuw nsw i64 %i.pb to i32
  %i.pd = xor i32 %i.pc, 63
  %i.pe = add i32 %i.pa, %i.pd                    ; 3 uses
  %i.pf = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.pe, i32 0)
  %i.pg = icmp sgt i32 %i.pe, 2046
  br i1 %i.pg, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ph = select i1 %2, double -inf, double +inf
  br label %ryu_s2d_from_parts.exit.i

bb.ay:                                            ; preds = %bb.aw
  %i.pi = tail call i32 @llvm.smax.i32(i32 %i.pe, i32 1)
  %i.pj = sub i32 %i.pi, %.065.i.i                ; 2 uses
  %i.pk = add i32 %i.pj, -1075                    ; 2 uses
  %i.pl = add i32 %i.pj, -1076
  %i.pm = zext i32 %i.pl to i64                   ; 2 uses
  %i.pn = shl nuw i64 1, %i.pm
  %i.po = and i64 %i.pn, %.067.i.i
  %.not.i.i = icmp eq i64 %i.po, 0
  br i1 %.not.i.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %notmask.i.i = shl nsw i64 -1, %i.pm
  %i.pp = xor i64 %notmask.i.i, -1
  %i.pq = and i64 %.067.i.i, %i.pp
  %i.pr = icmp eq i64 %i.pq, 0
  %i.ps = and i1 %.066.i.i, %i.pr
  br i1 %i.ps, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.pt = zext nneg i32 %i.pk to i64
  %i.pu = lshr i64 %.067.i.i, %i.pt
  %i.pv = trunc i64 %i.pu to i1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.pw = phi i1 [ false, %bb.ay ], [ true, %bb.az ], [ %i.pv, %bb.ba ] ; 2 uses
  %i.px = zext nneg i32 %i.pk to i64
  %i.py = lshr i64 %.067.i.i, %i.px
  %i.pz = zext i1 %i.pw to i64
  %i.qa = add i64 %i.py, %i.pz
  %i.qb = and i64 %i.qa, 4503599627370495         ; 2 uses
  %i.qc = icmp eq i64 %i.qb, 0
  %or.cond.i.i114 = and i1 %i.pw, %i.qc
  %i.qd = zext i1 %or.cond.i.i114 to i32
  %spec.select.i.i = add nuw nsw i32 %i.pf, %i.qd
  %i.qe = select i1 %2, i64 2048, i64 0
  %i.qf = zext nneg i32 %spec.select.i.i to i64
  %i.qg = or i64 %i.qe, %i.qf
  %i.qh = shl nuw i64 %i.qg, 52
  %i.qi = or disjoint i64 %i.qh, %i.qb
  %i.qj = bitcast i64 %i.qi to double
  br label %ryu_s2d_from_parts.exit.i

ryu_s2d_from_parts.exit.i:                        ; preds = %bb.bb, %bb.ax, %bb.ap, %bb.an
  %.1.i.i = phi double [ %i.mv, %bb.an ], [ %i.qj, %bb.bb ], [ %i.mx, %bb.ap ], [ %i.ph, %bb.ax ]
  %i.qk = tail call i64 @rb_float_new(double noundef %.1.i.i) #19
  br label %json_decode_integer.exit

json_decode_integer.exit:                         ; preds = %ryu_s2d_from_parts.exit.i, %bb.al, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ac
  %.053 = phi i64 [ %i.lt, %bb.ag ], [ %i.lx, %bb.ah ], [ %i.lp, %bb.ad ], [ %i.lo, %bb.ac ], [ %i.ls, %bb.af ], [ %i.ml, %bb.aj ], [ %i.mt, %bb.al ], [ %i.qk, %ryu_s2d_from_parts.exit.i ]
  ret i64 %.053
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @json_decode_large_integer(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = add nsw i64 %1, 1                        ; 3 uses
  %i.c = icmp ult i64 %i.b, 1024
  br i1 %i.c, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.d = add i64 %1, 8
  %i.e = lshr i64 %i.d, 3
  %i.f = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.b, i64 noundef %i.e) #27
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !11
  %i.g = alloca i8, i64 %i.b, align 16            ; 2 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = phi ptr [ %i.f, %.thread ], [ %i.g, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %0, i64 %1, i1 false)
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %1
  store i8 0, ptr %i.j, align 1, !tbaa !42
  %i.k = call i64 @rb_cstr2inum(ptr noundef nonnull %i.i, i32 noundef 10) #19
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i64 %i.k
}

declare i64 @rb_ll2inum(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ull2inum(i64 noundef) local_unnamed_addr #1

declare i64 @rb_cstr2inum(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(1,2)
declare noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_funcallv(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @json_decode_large_float(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = icmp slt i64 %1, 64
  br i1 %i.c, label %bb.b, label %bb.d, !prof !23

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %0, i64 %1, i1 false)
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.b, %bb.c
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %1
  store i8 0, ptr %i.d, align 1, !tbaa !42
  %i.e = call double @rb_cstr_to_dbl(ptr noundef nonnull %i.a, i32 noundef 1) #19
  %i.f = call i64 @rb_float_new(double noundef %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.g = add nuw nsw i64 %1, 1                    ; 2 uses
  %i.h = icmp samesign ult i64 %1, 1023
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.b, align 8, !tbaa !11
  %i.i = alloca i8, i64 %i.g, align 16
  br label %ruby_nonempty_memcpy.exit18

bb.f:                                             ; preds = %bb.d
  %i.j = add nuw i64 %1, 8
  %i.k = lshr i64 %i.j, 3
  %i.l = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.g, i64 noundef %i.k) #27
  br label %ruby_nonempty_memcpy.exit18

ruby_nonempty_memcpy.exit18:                      ; preds = %bb.f, %bb.e
  %i.m = phi ptr [ %i.i, %bb.e ], [ %i.l, %bb.f ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr readonly align 1 %0, i64 %1, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %1
  store i8 0, ptr %i.n, align 1, !tbaa !42
  %i.o = call double @rb_cstr_to_dbl(ptr noundef nonnull %i.m, i32 noundef 1) #19
  %i.p = call i64 @rb_float_new(double noundef %i.o) #19
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.g

bb.g:                                             ; preds = %ruby_nonempty_memcpy.exit18, %ruby_nonempty_memcpy.exit
  %.0 = phi i64 [ %i.f, %ruby_nonempty_memcpy.exit ], [ %i.p, %ruby_nonempty_memcpy.exit18 ]
  ret i64 %.0
}

declare i64 @rb_float_new(double noundef) local_unnamed_addr #1

declare double @rb_cstr_to_dbl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @json_string_fastpath(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #10 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 13 uses
  br i1 %4, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.e = load i8, ptr %i.d, align 1, !tbaa !38, !range !60, !noundef !61
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.h = load i32, ptr %i.g, align 8, !tbaa !66
  %.not = icmp ne i32 %i.h, 0
  %i.i = icmp ult i64 %i.c, 56
  %or.cond = and i1 %i.i, %.not
  br i1 %or.cond, label %json_string_cacheable_p.exit, label %json_string_cacheable_p.exit.thread, !prof !101

json_string_cacheable_p.exit:                     ; preds = %bb.b
  %i.j = load i8, ptr %2, align 1, !tbaa !42
  %i.k = and i8 %i.j, -33
  %i.l = sext i8 %i.k to i32
  %i.m = add nsw i32 %i.l, -65
  %narrow.i.i = icmp ult i32 %i.m, 26
  br i1 %narrow.i.i, label %bb.c, label %json_string_cacheable_p.exit.thread, !prof !18

bb.c:                                             ; preds = %json_string_cacheable_p.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  br i1 %i.f, label %bb.d, label %bb.e, !prof !64

bb.d:                                             ; preds = %bb.c
  %i.o = tail call fastcc i64 @rsymbol_cache_fetch(ptr noundef %i.n, ptr noundef nonnull %2, i64 noundef %i.c)
  br label %rstring_cache_fetch.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.n, align 8, !tbaa !68   ; 2 uses
  %.not.i66 = icmp slt i32 %i.p, 1
  br i1 %.not.i66, label %._crit_edge, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.e
  %i.q = add nsw i32 %i.p, -1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %5 = and i64 %i.c, 56                           ; 2 uses
  %6 = icmp slt i64 %5, %i.c
  %.not.i28102 = icmp slt i64 %i.c, 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph69, %rstring_cache_cmp.exit.thread
  %.023.i68 = phi i32 [ %i.q, %.lr.ph69 ], [ %.1.i, %rstring_cache_cmp.exit.thread ] ; 2 uses
  %.024.i67 = phi i32 [ 0, %.lr.ph69 ], [ %.125.i, %rstring_cache_cmp.exit.thread ] ; 2 uses
  %i.s = add nuw nsw i32 %.023.i68, %.024.i67
  %i.t = lshr i32 %i.s, 1                         ; 3 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11   ; 4 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !17
  %i.z = and i64 %i.y, 8192
  %.not.i32 = icmp eq i64 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  br i1 %.not.i32, label %RSTRING_PTR.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.f, %bb.g
  %i.ac = phi ptr [ %i.ab, %bb.g ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = icmp eq i64 %i.c, %i.ae
  br i1 %i.af, label %.preheader56.preheader, label %rstring_cache_cmp.exit

.preheader56.preheader:                           ; preds = %RSTRING_PTR.exit
  br i1 %.not.i28102, label %.preheader, label %bb.h

.preheader56:                                     ; preds = %bb.h
  %i.ag = add nuw nsw i64 %7, 8                   ; 2 uses
  %.not.i28 = icmp sgt i64 %i.ag, %i.c
  br i1 %.not.i28, label %.preheader, label %bb.h

.preheader:                                       ; preds = %.preheader56, %.preheader56.preheader
  br i1 %6, label %.lr.ph, label %rstring_cache_fetch.exit

bb.h:                                             ; preds = %.preheader56.preheader, %.preheader56
  %7 = phi i64 [ %i.ag, %.preheader56 ], [ 8, %.preheader56.preheader ] ; 2 uses
  %.026.i103 = phi i64 [ %7, %.preheader56 ], [ 0, %.preheader56.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %.026.i103
  %.0.copyload4.i = load i64, ptr %i.ah, align 1  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.026.i103
  %.0.copyload.i = load i64, ptr %i.ai, align 1   ; 2 uses
  %.not33.i = icmp eq i64 %.0.copyload4.i, %.0.copyload.i
  br i1 %.not33.i, label %.preheader56, label %.thread

.thread:                                          ; preds = %bb.h
  %i.aj = tail call i64 @llvm.bswap.i64(i64 %.0.copyload4.i)
  %i.ak = tail call i64 @llvm.bswap.i64(i64 %.0.copyload.i)
  %i.al = icmp ult i64 %i.aj, %i.ak
  %i.am = select i1 %i.al, i32 -1, i32 1
  br label %rstring_cache_cmp.exit.thread

bb.i:                                             ; preds = %.lr.ph
  %i.an = add nuw nsw i64 %.1.i3164, 1            ; 2 uses
  %8 = icmp slt i64 %i.an, %i.c
  br i1 %8, label %.lr.ph, label %rstring_cache_fetch.exit

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.1.i3164 = phi i64 [ %i.an, %bb.i ], [ %5, %.preheader ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %.1.i3164
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !42  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i3164
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !42  ; 2 uses
  %.not32.i = icmp eq i8 %i.ap, %i.ar
  br i1 %.not32.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.as = icmp slt i8 %i.ap, %i.ar
  %i.at = select i1 %i.as, i32 -1, i32 1
  br label %rstring_cache_cmp.exit.thread

rstring_cache_cmp.exit:                           ; preds = %RSTRING_PTR.exit
  %i.au = sub nsw i64 %i.c, %i.ae
  %i.av = trunc i64 %i.au to i32                  ; 2 uses
  %.not31.i = icmp eq i32 %i.av, 0
  br i1 %.not31.i, label %rstring_cache_fetch.exit, label %rstring_cache_cmp.exit.thread

rstring_cache_cmp.exit.thread:                    ; preds = %bb.j, %.thread, %rstring_cache_cmp.exit
  %.0.i39 = phi i32 [ %i.av, %rstring_cache_cmp.exit ], [ %i.at, %bb.j ], [ %i.am, %.thread ]
  %i.aw = icmp sgt i32 %.0.i39, 0                 ; 2 uses
  %i.ax = add nuw nsw i32 %i.t, 1
  %i.ay = add nsw i32 %i.t, -1
  %.125.i = select i1 %i.aw, i32 %i.ax, i32 %.024.i67 ; 3 uses
  %.1.i = select i1 %i.aw, i32 %.023.i68, i32 %i.ay ; 2 uses
  %.not.i = icmp sgt i32 %.125.i, %.1.i
  br i1 %.not.i, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %rstring_cache_cmp.exit.thread, %bb.e
  %.024.i.lcssa = phi i32 [ 0, %bb.e ], [ %.125.i, %rstring_cache_cmp.exit.thread ] ; 2 uses
  %i.az = load ptr, ptr @enc_utf8, align 8, !tbaa !14
  %i.ba = tail call i64 @rb_enc_interned_str(ptr noundef nonnull %2, i64 noundef %i.c, ptr noundef %i.az) #19 ; 3 uses
  %i.bb = load i32, ptr %i.n, align 8, !tbaa !68  ; 3 uses
  %i.bc = icmp slt i32 %i.bb, 63
  br i1 %i.bc, label %bb.k, label %rstring_cache_fetch.exit

bb.k:                                             ; preds = %._crit_edge
  %i.bd = sub nsw i32 %i.bb, %.024.i.lcssa        ; 2 uses
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = icmp slt i32 %i.bd, 0
  br i1 %i.bf, label %bb.l, label %rvalue_cache_insert_at.exit, !prof !64

bb.l:                                             ; preds = %bb.k
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.be) #21
  unreachable

rvalue_cache_insert_at.exit:                      ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = zext nneg i32 %.024.i.lcssa to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = shl nuw nsw i64 %i.be, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr nonnull align 8 %i.bi, i64 %i.bk, i1 false)
  %i.bl = add nsw i32 %i.bb, 1
  store i32 %i.bl, ptr %i.n, align 8, !tbaa !68
  store i64 %i.ba, ptr %i.bi, align 8, !tbaa !11
  br label %rstring_cache_fetch.exit

rstring_cache_fetch.exit:                         ; preds = %rstring_cache_cmp.exit, %.preheader, %bb.i, %rvalue_cache_insert_at.exit, %._crit_edge, %bb.d
  %.024 = phi i64 [ %i.o, %bb.d ], [ %i.ba, %._crit_edge ], [ %i.ba, %rvalue_cache_insert_at.exit ], [ %i.w, %bb.i ], [ %i.w, %.preheader ], [ %i.w, %rstring_cache_cmp.exit ] ; 2 uses
  %.not26 = icmp eq i64 %.024, 0
  br i1 %.not26, label %json_string_cacheable_p.exit.thread, label %build_string.exit

bb.m:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !39, !range !60, !noundef !61
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %.thread55, label %.thread53

.thread55:                                        ; preds = %bb.m
  %i.bp = load ptr, ptr @enc_utf8, align 8, !tbaa !14
  %i.bq = tail call i64 @rb_enc_interned_str(ptr noundef %2, i64 noundef %i.c, ptr noundef %i.bp) #19
  br label %build_string.exit

.thread53:                                        ; preds = %bb.m
  %i.br = tail call i64 @rb_utf8_str_new(ptr noundef %2, i64 noundef %i.c) #19
  br label %build_string.exit

json_string_cacheable_p.exit.thread:              ; preds = %rstring_cache_fetch.exit, %json_string_cacheable_p.exit, %bb.b
  %i.bs = load ptr, ptr @enc_utf8, align 8, !tbaa !14
  %i.bt = tail call i64 @rb_enc_interned_str(ptr noundef %2, i64 noundef %i.c, ptr noundef %i.bs) #19 ; 2 uses
  br i1 %i.f, label %bb.n, label %build_string.exit

bb.n:                                             ; preds = %json_string_cacheable_p.exit.thread
  %i.bu = tail call i64 @rb_str_intern(i64 noundef %i.bt) #19
  br label %build_string.exit

build_string.exit:                                ; preds = %bb.n, %json_string_cacheable_p.exit.thread, %.thread53, %.thread55, %rstring_cache_fetch.exit
  %.1 = phi i64 [ %.024, %rstring_cache_fetch.exit ], [ %i.bu, %bb.n ], [ %i.bt, %json_string_cacheable_p.exit.thread ], [ %i.br, %.thread53 ], [ %i.bq, %.thread55 ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @json_parse_escaped_string(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #9 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [16 x ptr], align 16              ; 5 uses
  %4 = alloca %struct._json_unescape_positions, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 0, ptr %4, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 17 uses
  store i64 0, ptr %i.d, align 8
  %.promoted40 = load ptr, ptr %i.e, align 8, !tbaa !62 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 34 ; 2 uses
  %i.g = load i32, ptr @simd_impl, align 4
  %.fr57 = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr57, 2
  %i.i = getelementptr i8, ptr %0, i64 24         ; 2 uses
  br i1 %i.h, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %.pre = load i8, ptr %.promoted40, align 1, !tbaa !42
  br label %.split

.split.us.loopexit.loopexit.split.loop.exit:      ; preds = %.lr.ph39.us.3
  %i.j = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  br label %.split.us.backedge

.split.us.loopexit.loopexit.split.loop.exit205:   ; preds = %.lr.ph39.us.2
  %i.k = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  br label %.split.us.backedge

.split.us.loopexit.loopexit.split.loop.exit207:   ; preds = %.lr.ph39.us.1
  %i.l = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  br label %.split.us.backedge

.split.us:                                        ; preds = %bb.a, %.split.us.backedge
  %i.m = phi i64 [ %i.v, %.split.us.backedge ], [ 0, %bb.a ] ; 5 uses
  %.promoted3743.us = phi ptr [ %.promoted3743.us.be, %.split.us.backedge ], [ %.promoted40, %bb.a ] ; 5 uses
  %i.n = load i8, ptr %.promoted3743.us, align 1, !tbaa !42
  switch i8 %i.n, label %bb.f [
    i8 34, label %.split53.us
    i8 92, label %bb.b
  ]

bb.b:                                             ; preds = %.split.us
  %i.o = icmp slt i64 %i.m, 16
  br i1 %i.o, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 8, !tbaa !74
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.m
  store ptr %.promoted3743.us, ptr %i.p, align 8, !tbaa !62
  %i.q = add nsw i64 %i.m, 1                      ; 2 uses
  store i64 %i.q, ptr %4, align 8, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi i64 [ %i.m, %bb.c ], [ %i.q, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %.promoted3743.us, i64 1
  br label %bb.g

bb.f:                                             ; preds = %.split.us
  %i.t = load i8, ptr %i.f, align 2, !tbaa !37, !range !60, !noundef !61
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %.split56.us

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi i64 [ %i.m, %bb.f ], [ %i.r, %bb.e ]
  %.promoted3745.us = phi ptr [ %.promoted3743.us, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.promoted3745.us, i64 1 ; 3 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !55
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !56   ; 5 uses
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.promoted3745.us, i64 17 ; 2 uses
  %.not.i1636.us = icmp ugt ptr %i.z, %i.x
  br i1 %.not.i1636.us, label %string_scan_simd_sse2.exit.thread27.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %i.ai, %bb.h ], [ %i.z, %bb.g ] ; 4 uses
  %i.ab = phi ptr [ %i.aa, %bb.h ], [ %i.w, %bb.g ] ; 2 uses
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !42 ; 2 uses
  %i.ad = xor <16 x i8> %i.ac, splat (i8 2)
  %i.ae = icmp ult <16 x i8> %i.ad, splat (i8 33)
  %i.af = icmp eq <16 x i8> %i.ac, splat (i8 92)
  %i.ag = or <16 x i1> %i.af, %i.ae
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not10.i.not.us = icmp eq i16 %i.ah, 0
  br i1 %.not10.i.not.us, label %bb.h, label %string_scan_simd_sse2.exit.us

bb.h:                                             ; preds = %.lr.ph.us
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %.not.i16.us = icmp ugt ptr %i.ai, %i.x
  br i1 %.not.i16.us, label %string_scan_simd_sse2.exit.thread27.loopexit.us, label %.lr.ph.us

string_scan_simd_sse2.exit.us:                    ; preds = %.lr.ph.us
  %i.aj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ak ; 2 uses
  store ptr %i.al, ptr %i.e, align 8, !tbaa !55
  br label %.split.us.backedge

end_hunk_0
