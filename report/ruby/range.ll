Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/range?download=true
inline.NumInlined: 546
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@range_step:bb.a
  %i.ge = icmp eq i64 %i.gd, 4
  br i1 %i.ge, label %r_less.exit202.thread, label %r_less.exit202

r_less.exit202:                                   ; preds = %r_less.exit.thread
  %i.gf = tail call i32 @rb_cmpint(i64 noundef %i.gd, i64 noundef %i.e, i64 noundef %i.k) #11 ; 2 uses
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.be, label %r_less.exit202.thread

bb.be:                                            ; preds = %r_less.exit202
  %i.gh = load i64, ptr %i.c, align 8, !tbaa !16
  %i.gi = and i64 %i.gh, 1040384
  %.not.i.i.i203 = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i.i203, label %bb.bf, label %RANGE_EXCL.exit205

bb.bf:                                            ; preds = %bb.be
  %i.gj = getelementptr i8, ptr %i.c, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !17
  br label %RANGE_EXCL.exit205

RANGE_EXCL.exit205:                               ; preds = %bb.be, %bb.bf
  %.0.i.i.i204 = phi ptr [ %i.gk, %bb.bf ], [ %i.d, %bb.be ]
  %i.gl = getelementptr i8, ptr %.0.i.i.i204, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !14
  %i.gn = and i64 %i.gm, -5
  %.not232 = icmp eq i64 %i.gn, 0
  br i1 %.not232, label %bb.bg, label %r_less.exit198.thread

bb.bg:                                            ; preds = %RANGE_EXCL.exit205
  %i.go = tail call i64 @rb_yield(i64 noundef %i.e) #11 ; 0 uses
  br label %r_less.exit198.thread

r_less.exit202.thread:                            ; preds = %r_less.exit.thread, %r_less.exit202
  %.0.i201223 = phi i32 [ %i.gf, %r_less.exit202 ], [ 2147483647, %r_less.exit.thread ] ; 3 uses
  %i.gp = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.e, i64 noundef 43, i32 noundef 1, i64 noundef %.0152) #11 ; 2 uses
  %i.gq = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.e, i64 noundef 135, i32 noundef 1, i64 noundef %i.gp) #11 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 4
  br i1 %i.gr, label %r_less.exit207, label %bb.bh

bb.bh:                                            ; preds = %r_less.exit202.thread
  %i.gs = tail call i32 @rb_cmpint(i64 noundef %i.gq, i64 noundef %i.e, i64 noundef %i.gp) #11
  br label %r_less.exit207

r_less.exit207:                                   ; preds = %r_less.exit202.thread, %bb.bh
  %.0.i206 = phi i32 [ %i.gs, %bb.bh ], [ 2147483647, %r_less.exit202.thread ]
  %i.gt = icmp eq i32 %.0.i201223, %.0.i206
  br i1 %i.gt, label %bb.bi, label %r_less.exit198.thread

bb.bi:                                            ; preds = %r_less.exit207
  %i.gu = load i64, ptr %i.c, align 8, !tbaa !16
  %i.gv = and i64 %i.gu, 1040384
  %.not.i.i.i208 = icmp eq i64 %i.gv, 0
  br i1 %.not.i.i.i208, label %bb.bj, label %RANGE_EXCL.exit210

bb.bj:                                            ; preds = %bb.bi
  %i.gw = getelementptr i8, ptr %i.c, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !17
  br label %RANGE_EXCL.exit210

RANGE_EXCL.exit210:                               ; preds = %bb.bi, %bb.bj
  %.0.i.i.i209 = phi ptr [ %i.gx, %bb.bj ], [ %i.d, %bb.bi ]
  %i.gy = getelementptr i8, ptr %.0.i.i.i209, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !14
  %i.ha = and i64 %i.gz, -5
  %.not233 = icmp eq i64 %i.ha, 0
  br i1 %.not233, label %.preheader234, label %.preheader235

.preheader235:                                    ; preds = %RANGE_EXCL.exit210, %bb.bl
  %.3 = phi i64 [ %i.hg, %bb.bl ], [ %i.e, %RANGE_EXCL.exit210 ] ; 4 uses
  %i.hb = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.3, i64 noundef 135, i32 noundef 1, i64 noundef %i.k) #11 ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 4
  br i1 %i.hc, label %r_less.exit212, label %bb.bk

bb.bk:                                            ; preds = %.preheader235
  %i.hd = tail call i32 @rb_cmpint(i64 noundef %i.hb, i64 noundef %.3, i64 noundef %i.k) #11
  br label %r_less.exit212

r_less.exit212:                                   ; preds = %.preheader235, %bb.bk
  %.0.i211 = phi i32 [ %i.hd, %bb.bk ], [ 2147483647, %.preheader235 ]
  %i.he = icmp eq i32 %.0.i211, %.0.i201223
  br i1 %i.he, label %bb.bl, label %r_less.exit198.thread

bb.bl:                                            ; preds = %r_less.exit212
  %i.hf = tail call i64 @rb_yield(i64 noundef %.3) #11 ; 0 uses
  %i.hg = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.3, i64 noundef 43, i32 noundef 1, i64 noundef %.0152) #11
  br label %.preheader235, !llvm.loop !37

.preheader234:                                    ; preds = %RANGE_EXCL.exit210, %bb.bo
  %.4 = phi i64 [ %i.ho, %bb.bo ], [ %i.e, %RANGE_EXCL.exit210 ] ; 4 uses
  %i.hh = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.4, i64 noundef 135, i32 noundef 1, i64 noundef %i.k) #11 ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 4
  br i1 %i.hi, label %r_less.exit214, label %bb.bm

bb.bm:                                            ; preds = %.preheader234
  %i.hj = tail call i32 @rb_cmpint(i64 noundef %i.hh, i64 noundef %.4, i64 noundef %i.k) #11
  br label %r_less.exit214

r_less.exit214:                                   ; preds = %.preheader234, %bb.bm
  %.0.i213 = phi i32 [ %i.hj, %bb.bm ], [ 2147483647, %.preheader234 ] ; 2 uses
  %i.hk = icmp eq i32 %.0.i213, %.0.i201223
  %i.hl = icmp eq i32 %.0.i213, 0                 ; 2 uses
  %i.hm = or i1 %i.hk, %i.hl
  br i1 %i.hm, label %bb.bn, label %r_less.exit198.thread

bb.bn:                                            ; preds = %r_less.exit214
  %i.hn = tail call i64 @rb_yield(i64 noundef %.4) #11 ; 0 uses
  br i1 %i.hl, label %r_less.exit198.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ho = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.4, i64 noundef 43, i32 noundef 1, i64 noundef %.0152) #11
  br label %.preheader234, !llvm.loop !38

r_less.exit198.thread:                            ; preds = %rb_long2num_inline.exit183, %rb_long2num_inline.exit177, %r_less.exit198, %bb.bb, %bb.bc, %r_less.exit200, %bb.bd, %r_less.exit212, %r_less.exit214, %bb.bn, %RANGE_EXCL.exit180, %RANGE_EXCL.exit174, %.preheader239, %.preheader237, %RANGE_EXCL.exit186, %bb.av, %r_less.exit207, %RANGE_EXCL.exit205, %bb.bg, %bb.ap, %bb.u, %RANGE_EXCL.exit
  %.0156 = phi i64 [ %i.bj, %bb.u ], [ %i.bd, %RANGE_EXCL.exit ], [ %2, %.preheader237 ], [ %2, %.preheader239 ], [ %2, %bb.ap ], [ %2, %bb.bg ], [ %2, %RANGE_EXCL.exit205 ], [ %2, %RANGE_EXCL.exit174 ], [ %2, %r_less.exit198 ], [ %2, %bb.av ], [ %2, %r_less.exit207 ], [ %2, %r_less.exit212 ], [ %2, %RANGE_EXCL.exit186 ], [ %2, %RANGE_EXCL.exit180 ], [ %2, %r_less.exit214 ], [ %2, %rb_long2num_inline.exit177 ], [ %2, %bb.bc ], [ %2, %bb.bn ], [ %2, %bb.bd ], [ %2, %r_less.exit200 ], [ %2, %bb.bb ], [ %2, %rb_long2num_inline.exit183 ]
  ret i64 %.0156
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @range_percent_step(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !14
  %i.b = call i64 @range_step(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %0)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @range_reverse_each(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_frame_this_func() #11
  %i.c = tail call i64 @rb_id2sym(i64 noundef %i.b) #11
  %i.d = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.c, i32 noundef 0, ptr noundef null, ptr noundef nonnull @range_enum_reverse_size) #11
  br label %range_reverse_each_fixnum_section.exit

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !17   ; 13 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !16
  %i.i = and i64 %i.h, 1040384
  %.not.i.i.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %RANGE_EXCL.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17   ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  br label %RANGE_EXCL.exit

RANGE_EXCL.exit:                                  ; preds = %bb.c, %bb.d
  %.in = phi ptr [ %i.l, %bb.d ], [ %i.j, %bb.c ]
  %.0.i.i.i31 = phi ptr [ %i.k, %bb.d ], [ %i.f, %bb.c ]
  %i.m = load i64, ptr %.in, align 8, !tbaa !14   ; 11 uses
  %i.n = getelementptr i8, ptr %.0.i.i.i31, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14
  %i.p = and i64 %i.o, -5
  %.not58 = icmp eq i64 %i.p, 0                   ; 2 uses
  %i.q = icmp eq i64 %i.m, 4
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %RANGE_EXCL.exit
  %i.r = load i64, ptr @rb_eTypeError, align 8, !tbaa !14
  %i.s = tail call ptr @rb_obj_classname(i64 noundef 4) #11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.38, ptr noundef %i.s) #12
  unreachable

bb.f:                                             ; preds = %RANGE_EXCL.exit
  %i.t = trunc i64 %i.g to i1                     ; 5 uses
  br i1 %i.t, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.u = trunc i64 %i.m to i1
  br i1 %i.u, label %bb.h, label %rb_integer_type_p.exit.thread

bb.h:                                             ; preds = %bb.g
  br i1 %.not58, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp eq i64 %i.m, -9223372036854775807
  br i1 %i.v, label %range_reverse_each_fixnum_section.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call i64 @rb_int_minus(i64 noundef %i.m, i64 noundef 3) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %.0 = phi i64 [ %i.w, %bb.j ], [ %i.m, %bb.h ]  ; 3 uses
  %i.x = trunc i64 %.0 to i1
  br i1 %i.x, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = tail call i32 @rb_big_sign(i64 noundef %.0) #11
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %range_reverse_each_fixnum_section.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.012.i = phi i64 [ %.0, %bb.k ], [ 9223372036854775806, %bb.l ]
  %i.z = ashr i64 %i.g, 1                         ; 2 uses
  %i.aa = ashr i64 %.012.i, 1                     ; 2 uses
  %.not15.i = icmp slt i64 %i.aa, %i.z
  br i1 %.not15.i, label %range_reverse_each_fixnum_section.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.016.i = phi i64 [ %i.ae, %.lr.ph.i ], [ %i.aa, %bb.m ] ; 3 uses
  %i.ab = shl i64 %.016.i, 1
  %i.ac = or disjoint i64 %i.ab, 1
  %i.ad = tail call i64 @rb_yield(i64 noundef %i.ac) #11 ; 0 uses
  %i.ae = add nsw i64 %.016.i, -1
  %.not.not.i = icmp sgt i64 %.016.i, %i.z
  br i1 %.not.not.i, label %.lr.ph.i, label %range_reverse_each_fixnum_section.exit, !llvm.loop !39

.thread:                                          ; preds = %bb.f
  %i.af = icmp eq i64 %i.g, 4
  br i1 %i.af, label %rb_integer_type_p.exit.thread, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.ag = icmp eq i64 %i.g, 0
  %i.ah = and i64 %i.g, 6
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = or i1 %i.ag, %i.ai
  br i1 %i.aj, label %rb_integer_type_p.exit.thread53, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.n
  %i.ak = inttoptr i64 %i.g to ptr
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.am = and i64 %i.al, 31
  %i.an = icmp eq i64 %i.am, 10
  br i1 %i.an, label %rb_integer_type_p.exit.thread, label %rb_integer_type_p.exit.thread53

rb_integer_type_p.exit.thread:                    ; preds = %bb.g, %.thread, %rb_integer_type_p.exit
  %i.ao = phi i1 [ true, %.thread ], [ false, %rb_integer_type_p.exit ], [ false, %bb.g ] ; 3 uses
  %i.ap = trunc i64 %i.m to i1
  br i1 %i.ap, label %rb_integer_type_p.exit33.thread, label %bb.o

bb.o:                                             ; preds = %rb_integer_type_p.exit.thread
  %i.aq = icmp eq i64 %i.m, 0
  %i.ar = and i64 %i.m, 6
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = or i1 %i.aq, %i.as
  br i1 %i.at, label %rb_integer_type_p.exit.thread53, label %rb_integer_type_p.exit33

rb_integer_type_p.exit33:                         ; preds = %bb.o
  %i.au = inttoptr i64 %i.m to ptr
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16
  %i.aw = and i64 %i.av, 31
  %i.ax = icmp eq i64 %i.aw, 10
  br i1 %i.ax, label %rb_integer_type_p.exit33.thread, label %rb_integer_type_p.exit.thread53

rb_integer_type_p.exit33.thread:                  ; preds = %rb_integer_type_p.exit.thread, %rb_integer_type_p.exit33
  br i1 %.not58, label %bb.q, label %bb.p

bb.p:                                             ; preds = %rb_integer_type_p.exit33.thread
  %i.ay = tail call i64 @rb_int_minus(i64 noundef %i.m, i64 noundef 3) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %rb_integer_type_p.exit33.thread
  %.1 = phi i64 [ %i.ay, %bb.p ], [ %i.m, %rb_integer_type_p.exit33.thread ] ; 8 uses
  %i.az = trunc i64 %.1 to i1                     ; 3 uses
  br i1 %i.az, label %range_reverse_each_positive_bignum_section.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = tail call i32 @rb_big_sign(i64 noundef %.1) #11
  %.not.i.i34 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i34, label %range_reverse_each_positive_bignum_section.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %or.cond.i = or i1 %i.ao, %i.t
  br i1 %or.cond.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call i32 @rb_big_sign(i64 noundef %i.g) #11
  %.not.i7.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i7.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bc = tail call i64 @rb_int2big(i64 noundef 4611686018427387904) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i35 = phi i64 [ %i.bc, %bb.u ], [ %i.g, %bb.t ] ; 2 uses
  %i.bd = tail call i64 @rb_big_cmp(i64 noundef %.0.i35, i64 noundef %.1) #11 ; 2 uses
  %.not6.i.i = icmp eq i64 %i.bd, 3
  br i1 %.not6.i.i, label %range_reverse_each_positive_bignum_section.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %bb.w
  %i.be = phi i64 [ %i.bi, %bb.w ], [ %i.bd, %bb.v ]
  %.07.i.i = phi i64 [ %i.bh, %bb.w ], [ %.1, %bb.v ] ; 2 uses
  %i.bf = tail call i64 @rb_yield(i64 noundef %.07.i.i) #11 ; 0 uses
  %i.bg = icmp eq i64 %i.be, 1
  br i1 %i.bg, label %range_reverse_each_positive_bignum_section.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.bh = tail call i64 @rb_big_minus(i64 noundef %.07.i.i, i64 noundef 3) #11 ; 2 uses
  %i.bi = tail call i64 @rb_big_cmp(i64 noundef %.0.i35, i64 noundef %i.bh) #11 ; 2 uses
  %.not.i8.i = icmp eq i64 %i.bi, 3
  br i1 %.not.i8.i, label %range_reverse_each_positive_bignum_section.exit, label %.lr.ph.i.i, !llvm.loop !40

range_reverse_each_positive_bignum_section.exit:  ; preds = %.lr.ph.i.i, %bb.w, %bb.q, %bb.r, %bb.v
  %brmerge = or i1 %i.ao, %i.t
  %.mux = select i1 %i.t, i64 %i.g, i64 -9223372036854775808
  br i1 %brmerge, label %bb.y, label %bb.x

bb.x:                                             ; preds = %range_reverse_each_positive_bignum_section.exit
  %i.bj = tail call i32 @rb_big_sign(i64 noundef %i.g) #11
  %.not14.i36 = icmp eq i32 %i.bj, 0
  br i1 %.not14.i36, label %bb.y, label %range_reverse_each_fixnum_section.exit44

bb.y:                                             ; preds = %range_reverse_each_positive_bignum_section.exit, %bb.x
  %.013.i37 = phi i64 [ %.mux, %range_reverse_each_positive_bignum_section.exit ], [ -9223372036854775808, %bb.x ]
  br i1 %i.az, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = tail call i32 @rb_big_sign(i64 noundef %.1) #11
  %.not.i.i38 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i38, label %range_reverse_each_fixnum_section.exit44.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.012.i39 = phi i64 [ %.1, %bb.y ], [ 9223372036854775806, %bb.z ]
  %i.bl = ashr i64 %.013.i37, 1                   ; 2 uses
  %i.bm = ashr i64 %.012.i39, 1                   ; 2 uses
  %.not15.i40 = icmp slt i64 %i.bm, %i.bl
  br i1 %.not15.i40, label %range_reverse_each_fixnum_section.exit44, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %bb.aa, %.lr.ph.i41
  %.016.i42 = phi i64 [ %i.bq, %.lr.ph.i41 ], [ %i.bm, %bb.aa ] ; 3 uses
  %i.bn = shl i64 %.016.i42, 1
  %i.bo = or disjoint i64 %i.bn, 1
  %i.bp = tail call i64 @rb_yield(i64 noundef %i.bo) #11 ; 0 uses
  %i.bq = add nsw i64 %.016.i42, -1
  %.not.not.i43 = icmp sgt i64 %.016.i42, %i.bl
  br i1 %.not.not.i43, label %.lr.ph.i41, label %range_reverse_each_fixnum_section.exit44, !llvm.loop !39

range_reverse_each_fixnum_section.exit44:         ; preds = %.lr.ph.i41, %bb.x, %bb.aa
  br i1 %i.az, label %bb.ab, label %range_reverse_each_fixnum_section.exit44.thread

range_reverse_each_fixnum_section.exit44.thread:  ; preds = %bb.z, %range_reverse_each_fixnum_section.exit44
  %i.br = tail call i32 @rb_big_sign(i64 noundef %.1) #11
  %.not.i = icmp eq i32 %i.br, 0
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %range_reverse_each_fixnum_section.exit44.thread, %range_reverse_each_fixnum_section.exit44
  %i.bs = tail call i64 @rb_int2big(i64 noundef -4611686018427387905) #11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %range_reverse_each_fixnum_section.exit44.thread
  %.0.i45 = phi i64 [ %i.bs, %bb.ab ], [ %.1, %range_reverse_each_fixnum_section.exit44.thread ] ; 3 uses
  br i1 %i.ao, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @range_reverse_each_bignum_beginless(i64 noundef %.0.i45) #13
  unreachable

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.t, label %range_reverse_each_fixnum_section.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = tail call i32 @rb_big_sign(i64 noundef %i.g) #11
  %.not8.i = icmp eq i32 %i.bt, 0
  br i1 %.not8.i, label %bb.ag, label %range_reverse_each_fixnum_section.exit

bb.ag:                                            ; preds = %bb.af
  %i.bu = tail call i64 @rb_big_cmp(i64 noundef %i.g, i64 noundef %.0.i45) #11 ; 2 uses
  %.not6.i.i46 = icmp eq i64 %i.bu, 3
  br i1 %.not6.i.i46, label %range_reverse_each_fixnum_section.exit, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %bb.ag, %bb.ah
  %i.bv = phi i64 [ %i.bz, %bb.ah ], [ %i.bu, %bb.ag ]
  %.07.i.i48 = phi i64 [ %i.by, %bb.ah ], [ %.0.i45, %bb.ag ] ; 2 uses
  %i.bw = tail call i64 @rb_yield(i64 noundef %.07.i.i48) #11 ; 0 uses
  %i.bx = icmp eq i64 %i.bv, 1
  br i1 %i.bx, label %range_reverse_each_fixnum_section.exit, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i47
  %i.by = tail call i64 @rb_big_minus(i64 noundef %.07.i.i48, i64 noundef 3) #11 ; 2 uses
  %i.bz = tail call i64 @rb_big_cmp(i64 noundef %i.g, i64 noundef %i.by) #11 ; 2 uses
  %.not.i.i49 = icmp eq i64 %i.bz, 3
  br i1 %.not.i.i49, label %range_reverse_each_fixnum_section.exit, label %.lr.ph.i.i47, !llvm.loop !40

rb_integer_type_p.exit.thread53:                  ; preds = %bb.o, %bb.n, %rb_integer_type_p.exit33, %rb_integer_type_p.exit
  %i.ca = tail call i64 @rb_call_super(i32 noundef 0, ptr noundef null) #11
  br label %range_reverse_each_fixnum_section.exit

range_reverse_each_fixnum_section.exit:           ; preds = %bb.ah, %.lr.ph.i.i47, %.lr.ph.i, %bb.ag, %bb.af, %bb.ae, %bb.m, %bb.l, %rb_integer_type_p.exit.thread53, %bb.i, %bb.b
  %.128 = phi i64 [ %i.d, %bb.b ], [ %i.ca, %rb_integer_type_p.exit.thread53 ], [ %0, %bb.i ], [ %0, %.lr.ph.i ], [ %0, %bb.l ], [ %0, %bb.m ], [ %0, %bb.ae ], [ %0, %bb.af ], [ %0, %bb.ag ], [ %0, %.lr.ph.i.i47 ], [ %0, %bb.ah ]
  ret i64 %.128
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @range_bsearch(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17   ; 18 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !16
  %i.e = and i64 %i.d, 1040384
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %bb.b, label %RANGE_END.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  br label %RANGE_END.exit

RANGE_END.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ]
  %i.h = getelementptr i8, ptr %.0.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 19 uses
  %i.j = trunc i64 %i.c to i1                     ; 3 uses
  %i.k = trunc i64 %i.i to i1                     ; 3 uses
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.c, label %bb.q

bb.c:                                             ; preds = %RANGE_END.exit
  %i.l = ashr i64 %i.c, 1                         ; 2 uses
  %i.m = ashr i64 %i.i, 1
  %i.n = tail call i32 @rb_block_given_p() #11
  %.not397 = icmp eq i32 %i.n, 0
  br i1 %.not397, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i64 @rb_frame_this_func() #11
  %i.p = tail call i64 @rb_id2sym(i64 noundef %i.o) #11
  %i.q = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.p, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  br label %.thread469

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.a, align 8, !tbaa !16
  %i.s = and i64 %i.r, 1040384
  %.not.i.i.i411 = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i411, label %bb.f, label %RANGE_EXCL.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.a, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17
  br label %RANGE_EXCL.exit

RANGE_EXCL.exit:                                  ; preds = %bb.e, %bb.f
  %.0.i.i.i412 = phi ptr [ %i.u, %bb.f ], [ %i.b, %bb.e ]
  %i.v = getelementptr i8, ptr %.0.i.i.i412, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14
  %i.x = and i64 %i.w, -5
  %.not630 = icmp eq i64 %i.x, 0
  %i.y = zext i1 %.not630 to i64
  %spec.select = add nsw i64 %i.m, %i.y           ; 2 uses
  %i.z = icmp slt i64 %i.l, %spec.select
  br i1 %i.z, label %.lr.ph707.preheader, label %.thread469

.lr.ph707.preheader:                              ; preds = %RANGE_EXCL.exit
  %i.aa = add nsw i64 %i.l, -1
  br label %.lr.ph707

.lr.ph707:                                        ; preds = %.lr.ph707.preheader, %.thread
  %.1264706 = phi i64 [ %.1264., %.thread ], [ %spec.select, %.lr.ph707.preheader ] ; 4 uses
  %.0266705 = phi i64 [ %..0266, %.thread ], [ %i.aa, %.lr.ph707.preheader ] ; 5 uses
  %.0286703 = phi i64 [ %.2288467, %.thread ], [ 4, %.lr.ph707.preheader ] ; 3 uses
  %.unshifted398 = xor i64 %.1264706, %.0266705
  %i.ab = icmp sgt i64 %.unshifted398, -1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph707
  %i.ac = sub i64 %.1264706, %.0266705
  %i.ad = sdiv i64 %i.ac, 2
  %i.ae = add i64 %i.ad, %.0266705
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph707
  %i.af = add i64 %.1264706, %.0266705
  %i.ag = sdiv i64 %i.af, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = phi i64 [ %i.ae, %bb.g ], [ %i.ag, %bb.h ] ; 3 uses
  %i.ai = shl i64 %i.ah, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 4 uses
  %i.ak = tail call i64 @rb_yield(i64 noundef %i.aj) #11 ; 9 uses
  %i.al = trunc i64 %i.ak to i1
  br i1 %i.al, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.am = icmp eq i64 %i.ak, 1
  br i1 %i.am, label %.thread469, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.lobit402 = lshr i64 %i.ak, 63
  %i.an = trunc nuw nsw i64 %.lobit402 to i32
  br label %.thread

bb.l:                                             ; preds = %bb.i
  %i.ao = icmp eq i64 %i.ak, 20
  br i1 %i.ao, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = and i64 %i.ak, -6
  %.not631 = icmp eq i64 %i.ap, 0
  br i1 %.not631, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load i64, ptr @rb_cNumeric, align 8, !tbaa !14
  %i.ar = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.ak, i64 noundef %i.aq) #11
  %.not399 = icmp eq i64 %i.ar, 0
  br i1 %.not399, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = load i64, ptr @rb_eTypeError, align 8, !tbaa !14
  %i.at = tail call i64 @rb_obj_class(i64 noundef %i.ak) #11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.as, ptr noundef nonnull @.str.44, i64 noundef %i.at) #12
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.au = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ak, i64 noundef 135, i32 noundef 1, i64 noundef 1) #11
  %i.av = tail call i32 @rb_cmpint(i64 noundef %i.au, i64 noundef %i.ak, i64 noundef 1) #11 ; 2 uses
  %.not400.not.not = icmp eq i32 %i.av, 0
  %.lobit401 = lshr i32 %i.av, 31
  br i1 %.not400.not.not, label %.thread469, label %.thread

.thread:                                          ; preds = %bb.k, %bb.l, %bb.m, %bb.p
  %.3271468 = phi i32 [ %.lobit401, %bb.p ], [ 0, %bb.m ], [ 1, %bb.l ], [ %i.an, %bb.k ]
  %.2288467 = phi i64 [ %.0286703, %bb.p ], [ %.0286703, %bb.m ], [ %i.aj, %bb.l ], [ %.0286703, %bb.k ] ; 2 uses
end_hunk_0
