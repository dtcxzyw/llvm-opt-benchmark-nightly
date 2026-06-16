inline.NumInlined: 546
inline.NumDeleted: 69
begin_hunk_0_@range_step:bb.a

bb.be:                                            ; preds = %r_less.exit202
  %i.gh = load i64, ptr %i.c, align 8, !tbaa !13
  %i.gi = and i64 %i.gh, 1040384
  %.not.i.i.i203 = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i.i203, label %bb.bf, label %RANGE_EXCL.exit205

bb.bf:                                            ; preds = %bb.be
  %i.gj = getelementptr i8, ptr %i.c, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !15
  br label %RANGE_EXCL.exit205

RANGE_EXCL.exit205:                               ; preds = %bb.be, %bb.bf
  %.0.i.i.i204 = phi ptr [ %i.gk, %bb.bf ], [ %i.d, %bb.be ]
  %i.gl = getelementptr i8, ptr %.0.i.i.i204, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !11
  %i.gn = and i64 %i.gm, -5
  %.not232 = icmp eq i64 %i.gn, 0
  br i1 %.not232, label %bb.bg, label %r_less.exit198.thread

bb.bg:                                            ; preds = %RANGE_EXCL.exit205
  %i.go = tail call i64 @rb_yield(i64 noundef %i.e) #11 ; 0 uses
  br label %r_less.exit198.thread

r_less.exit202.thread:                            ; preds = %r_less.exit.thread, %r_less.exit202
  %.0.i201223 = phi i32 [ %i.gf, %r_less.exit202 ], [ 2147483647, %r_less.exit.thread ] ; 3 uses
  %i.gp = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.e, i64 noundef 43, i32 noundef 1, i64 noundef %.0156) #11 ; 2 uses
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
  %i.gu = load i64, ptr %i.c, align 8, !tbaa !13
  %i.gv = and i64 %i.gu, 1040384
  %.not.i.i.i208 = icmp eq i64 %i.gv, 0
  br i1 %.not.i.i.i208, label %bb.bj, label %RANGE_EXCL.exit210

bb.bj:                                            ; preds = %bb.bi
  %i.gw = getelementptr i8, ptr %i.c, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !15
  br label %RANGE_EXCL.exit210

RANGE_EXCL.exit210:                               ; preds = %bb.bi, %bb.bj
  %.0.i.i.i209 = phi ptr [ %i.gx, %bb.bj ], [ %i.d, %bb.bi ]
  %i.gy = getelementptr i8, ptr %.0.i.i.i209, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !11
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
  %i.hg = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.3, i64 noundef 43, i32 noundef 1, i64 noundef %.0156) #11
  br label %.preheader235, !llvm.loop !34

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
  %i.ho = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.4, i64 noundef 43, i32 noundef 1, i64 noundef %.0156) #11
  br label %.preheader234, !llvm.loop !35

r_less.exit198.thread:                            ; preds = %rb_long2num_inline.exit183, %rb_long2num_inline.exit177, %r_less.exit198, %bb.bb, %bb.bc, %r_less.exit200, %bb.bd, %r_less.exit212, %r_less.exit214, %bb.bn, %RANGE_EXCL.exit180, %RANGE_EXCL.exit174, %.preheader239, %.preheader237, %RANGE_EXCL.exit186, %bb.av, %r_less.exit207, %RANGE_EXCL.exit205, %bb.bg, %bb.ap, %bb.u, %RANGE_EXCL.exit
  %.0 = phi i64 [ %i.bj, %bb.u ], [ %i.bd, %RANGE_EXCL.exit ], [ %2, %.preheader237 ], [ %2, %.preheader239 ], [ %2, %bb.ap ], [ %2, %bb.bg ], [ %2, %RANGE_EXCL.exit205 ], [ %2, %RANGE_EXCL.exit174 ], [ %2, %r_less.exit198 ], [ %2, %bb.av ], [ %2, %r_less.exit207 ], [ %2, %r_less.exit212 ], [ %2, %RANGE_EXCL.exit186 ], [ %2, %RANGE_EXCL.exit180 ], [ %2, %r_less.exit214 ], [ %2, %rb_long2num_inline.exit177 ], [ %2, %bb.bc ], [ %2, %bb.bn ], [ %2, %bb.bd ], [ %2, %r_less.exit200 ], [ %2, %bb.bb ], [ %2, %rb_long2num_inline.exit183 ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @range_percent_step(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !11
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
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15   ; 13 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !13
  %i.i = and i64 %i.h, 1040384
  %.not.i.i.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %RANGE_EXCL.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  br label %RANGE_EXCL.exit

RANGE_EXCL.exit:                                  ; preds = %bb.c, %bb.d
  %.in = phi ptr [ %i.l, %bb.d ], [ %i.j, %bb.c ]
  %.0.i.i.i31 = phi ptr [ %i.k, %bb.d ], [ %i.f, %bb.c ]
  %i.m = load i64, ptr %.in, align 8, !tbaa !11   ; 11 uses
  %i.n = getelementptr i8, ptr %.0.i.i.i31, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  %i.p = and i64 %i.o, -5
  %.not58 = icmp eq i64 %i.p, 0                   ; 2 uses
  %i.q = icmp eq i64 %i.m, 4
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %RANGE_EXCL.exit
  %i.r = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
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
  %.027 = phi i64 [ %i.w, %bb.j ], [ %i.m, %bb.h ] ; 3 uses
  %i.x = trunc i64 %.027 to i1
  br i1 %i.x, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = tail call i32 @rb_big_sign(i64 noundef %.027) #11
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %range_reverse_each_fixnum_section.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.013.i = phi i64 [ %.027, %bb.k ], [ 9223372036854775807, %bb.l ]
  %i.z = ashr i64 %i.g, 1                         ; 2 uses
  %i.aa = ashr i64 %.013.i, 1                     ; 2 uses
  %.not15.i = icmp slt i64 %i.aa, %i.z
  br i1 %.not15.i, label %range_reverse_each_fixnum_section.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.016.i = phi i64 [ %i.ae, %.lr.ph.i ], [ %i.aa, %bb.m ] ; 2 uses
  %i.ab = shl i64 %.016.i, 1
  %i.ac = or disjoint i64 %i.ab, 1
  %i.ad = tail call i64 @rb_yield(i64 noundef %i.ac) #11 ; 0 uses
  %i.ae = add nsw i64 %.016.i, -1                 ; 2 uses
  %.not.i = icmp slt i64 %i.ae, %i.z
  br i1 %.not.i, label %range_reverse_each_fixnum_section.exit, label %.lr.ph.i, !llvm.loop !36

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
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13
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
  %i.av = load i64, ptr %i.au, align 8, !tbaa !13
  %i.aw = and i64 %i.av, 31
  %i.ax = icmp eq i64 %i.aw, 10
  br i1 %i.ax, label %rb_integer_type_p.exit33.thread, label %rb_integer_type_p.exit.thread53

rb_integer_type_p.exit33.thread:                  ; preds = %rb_integer_type_p.exit.thread, %rb_integer_type_p.exit33
  br i1 %.not58, label %bb.q, label %bb.p

bb.p:                                             ; preds = %rb_integer_type_p.exit33.thread
  %i.ay = tail call i64 @rb_int_minus(i64 noundef %i.m, i64 noundef 3) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %rb_integer_type_p.exit33.thread
  %.128 = phi i64 [ %i.ay, %bb.p ], [ %i.m, %rb_integer_type_p.exit33.thread ] ; 8 uses
  %i.az = trunc i64 %.128 to i1                   ; 3 uses
  br i1 %i.az, label %range_reverse_each_positive_bignum_section.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = tail call i32 @rb_big_sign(i64 noundef %.128) #11
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
  %i.bd = tail call i64 @rb_big_cmp(i64 noundef %.0.i35, i64 noundef %.128) #11 ; 2 uses
  %.not6.i.i = icmp eq i64 %i.bd, 3
  br i1 %.not6.i.i, label %range_reverse_each_positive_bignum_section.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %bb.w
  %i.be = phi i64 [ %i.bi, %bb.w ], [ %i.bd, %bb.v ]
  %.07.i.i = phi i64 [ %i.bh, %bb.w ], [ %.128, %bb.v ] ; 2 uses
  %i.bf = tail call i64 @rb_yield(i64 noundef %.07.i.i) #11 ; 0 uses
  %i.bg = icmp eq i64 %i.be, 1
  br i1 %i.bg, label %range_reverse_each_positive_bignum_section.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.bh = tail call i64 @rb_big_minus(i64 noundef %.07.i.i, i64 noundef 3) #11 ; 2 uses
  %i.bi = tail call i64 @rb_big_cmp(i64 noundef %.0.i35, i64 noundef %i.bh) #11 ; 2 uses
  %.not.i8.i = icmp eq i64 %i.bi, 3
  br i1 %.not.i8.i, label %range_reverse_each_positive_bignum_section.exit, label %.lr.ph.i.i, !llvm.loop !37

range_reverse_each_positive_bignum_section.exit:  ; preds = %.lr.ph.i.i, %bb.w, %bb.q, %bb.r, %bb.v
  %brmerge = or i1 %i.ao, %i.t
  %.mux = select i1 %i.t, i64 %i.g, i64 -9223372036854775807
  br i1 %brmerge, label %bb.y, label %bb.x

bb.x:                                             ; preds = %range_reverse_each_positive_bignum_section.exit
  %i.bj = tail call i32 @rb_big_sign(i64 noundef %i.g) #11
  %.not14.i36 = icmp eq i32 %i.bj, 0
  br i1 %.not14.i36, label %bb.y, label %range_reverse_each_fixnum_section.exit44

bb.y:                                             ; preds = %range_reverse_each_positive_bignum_section.exit, %bb.x
  %.012.i37 = phi i64 [ %.mux, %range_reverse_each_positive_bignum_section.exit ], [ -9223372036854775807, %bb.x ]
  br i1 %i.az, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = tail call i32 @rb_big_sign(i64 noundef %.128) #11
  %.not.i.i38 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i38, label %range_reverse_each_fixnum_section.exit44.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.013.i39 = phi i64 [ %.128, %bb.y ], [ 9223372036854775807, %bb.z ]
  %i.bl = ashr i64 %.012.i37, 1                   ; 2 uses
  %i.bm = ashr i64 %.013.i39, 1                   ; 2 uses
  %.not15.i40 = icmp slt i64 %i.bm, %i.bl
  br i1 %.not15.i40, label %range_reverse_each_fixnum_section.exit44, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %bb.aa, %.lr.ph.i41
  %.016.i42 = phi i64 [ %i.bq, %.lr.ph.i41 ], [ %i.bm, %bb.aa ] ; 2 uses
  %i.bn = shl i64 %.016.i42, 1
  %i.bo = or disjoint i64 %i.bn, 1
  %i.bp = tail call i64 @rb_yield(i64 noundef %i.bo) #11 ; 0 uses
  %i.bq = add nsw i64 %.016.i42, -1               ; 2 uses
  %.not.i43 = icmp slt i64 %i.bq, %i.bl
  br i1 %.not.i43, label %range_reverse_each_fixnum_section.exit44, label %.lr.ph.i41, !llvm.loop !36

range_reverse_each_fixnum_section.exit44:         ; preds = %.lr.ph.i41, %bb.x, %bb.aa
  br i1 %i.az, label %bb.ab, label %range_reverse_each_fixnum_section.exit44.thread

range_reverse_each_fixnum_section.exit44.thread:  ; preds = %bb.z, %range_reverse_each_fixnum_section.exit44
  %i.br = tail call i32 @rb_big_sign(i64 noundef %.128) #11
  %.not.i.a = icmp eq i32 %i.br, 0
  br i1 %.not.i.a, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %range_reverse_each_fixnum_section.exit44.thread, %range_reverse_each_fixnum_section.exit44
  %i.bs = tail call i64 @rb_int2big(i64 noundef -4611686018427387905) #11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %range_reverse_each_fixnum_section.exit44.thread
  %.0.i45 = phi i64 [ %i.bs, %bb.ab ], [ %.128, %range_reverse_each_fixnum_section.exit44.thread ] ; 3 uses
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
  br i1 %.not.i.i49, label %range_reverse_each_fixnum_section.exit, label %.lr.ph.i.i47, !llvm.loop !37

rb_integer_type_p.exit.thread53:                  ; preds = %bb.o, %bb.n, %rb_integer_type_p.exit33, %rb_integer_type_p.exit
  %i.ca = tail call i64 @rb_call_super(i32 noundef 0, ptr noundef null) #11
  br label %range_reverse_each_fixnum_section.exit

range_reverse_each_fixnum_section.exit:           ; preds = %bb.ah, %.lr.ph.i.i47, %.lr.ph.i, %bb.ag, %bb.af, %bb.ae, %bb.m, %bb.l, %rb_integer_type_p.exit.thread53, %bb.i, %bb.b
  %.1 = phi i64 [ %i.d, %bb.b ], [ %i.ca, %rb_integer_type_p.exit.thread53 ], [ %0, %bb.i ], [ %0, %.lr.ph.i ], [ %0, %bb.l ], [ %0, %bb.m ], [ %0, %bb.ae ], [ %0, %bb.af ], [ %0, %bb.ag ], [ %0, %.lr.ph.i.i47 ], [ %0, %bb.ah ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @range_bsearch(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 18 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !13
  %i.e = and i64 %i.d, 1040384
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %bb.b, label %RANGE_END.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  br label %RANGE_END.exit

RANGE_END.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ]
  %i.h = getelementptr i8, ptr %.0.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 19 uses
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
  %i.r = load i64, ptr %i.a, align 8, !tbaa !13
  %i.s = and i64 %i.r, 1040384
  %.not.i.i.i411 = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i411, label %bb.f, label %RANGE_EXCL.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.a, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15
  br label %RANGE_EXCL.exit

RANGE_EXCL.exit:                                  ; preds = %bb.e, %bb.f
  %.0.i.i.i412 = phi ptr [ %i.u, %bb.f ], [ %i.b, %bb.e ]
  %i.v = getelementptr i8, ptr %.0.i.i.i412, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11
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
  %.0250705 = phi i64 [ %.2252467, %.thread ], [ 4, %.lr.ph707.preheader ] ; 3 uses
  %.0308703 = phi i64 [ %..0308, %.thread ], [ %i.aa, %.lr.ph707.preheader ] ; 5 uses
  %.1311702 = phi i64 [ %.1311., %.thread ], [ %spec.select, %.lr.ph707.preheader ] ; 4 uses
  %.unshifted398 = xor i64 %.0308703, %.1311702
  %i.ab = icmp sgt i64 %.unshifted398, -1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph707
  %i.ac = sub i64 %.1311702, %.0308703
  %i.ad = sdiv i64 %i.ac, 2
  %i.ae = add i64 %i.ad, %.0308703
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph707
  %i.af = add i64 %.0308703, %.1311702
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
  %i.aq = load i64, ptr @rb_cNumeric, align 8, !tbaa !11
  %i.ar = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.ak, i64 noundef %i.aq) #11
  %.not399 = icmp eq i64 %i.ar, 0
  br i1 %.not399, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
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
  %.2252467 = phi i64 [ %.0250705, %bb.p ], [ %.0250705, %bb.m ], [ %i.aj, %bb.l ], [ %.0250705, %bb.k ] ; 2 uses
  %.3281466 = phi i32 [ %.lobit401, %bb.p ], [ 0, %bb.m ], [ 1, %bb.l ], [ %i.an, %bb.k ]
  %.not403 = icmp eq i32 %.3281466, 0             ; 2 uses
  %.1311. = select i1 %.not403, i64 %.1311702, i64 %i.ah ; 2 uses
  %..0308 = select i1 %.not403, i64 %i.ah, i64 %.0308703 ; 2 uses
  %i.aw = add i64 %..0308, 1
  %i.ax = icmp slt i64 %i.aw, %.1311.
  br i1 %i.ax, label %.lr.ph707, label %.thread469, !llvm.loop !38

bb.q:                                             ; preds = %RANGE_END.exit
  %i.ay = and i64 %i.c, 3
  %i.az = icmp eq i64 %i.ay, 2
  br i1 %i.az, label %RB_FLOAT_TYPE_P.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@range_bsearch:bb.a
    i64 4, label %.thread505
    i64 0, label %.thread505
  ]

is_integer_p.exit.thread:                         ; preds = %rbimpl_intern_const.exit.i, %RB_FLOAT_TYPE_P.exit414.thread478, %rb_integer_type_p.exit.i
  br i1 %i.k, label %is_integer_p.exit436.thread, label %bb.az

bb.az:                                            ; preds = %is_integer_p.exit.thread
  %i.fs = and i64 %i.i, 6
  %i.ft = icmp ne i64 %i.fs, 0
  %i.fu = or i1 %i.bk, %i.ft
  br i1 %i.fu, label %rb_integer_type_p.exit.thread7.i427, label %rb_integer_type_p.exit.i426

rb_integer_type_p.exit.i426:                      ; preds = %bb.az
  %i.fv = inttoptr i64 %i.i to ptr
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !13
  %i.fx = and i64 %i.fw, 31
  %i.fy = icmp eq i64 %i.fx, 10
  br i1 %i.fy, label %is_integer_p.exit436.thread, label %rb_integer_type_p.exit.thread7.i427

rb_integer_type_p.exit.thread7.i427:              ; preds = %rb_integer_type_p.exit.i426, %bb.az
  %.pr.i.i428 = load i64, ptr @is_integer_p.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i429 = icmp eq i64 %.pr.i.i428, 0
  br i1 %.not4.i.i429, label %.lr.ph.i.i434, label %rbimpl_intern_const.exit.i430

.lr.ph.i.i434:                                    ; preds = %rb_integer_type_p.exit.thread7.i427, %.lr.ph.i.i434
  %i.fz = tail call i64 @rb_intern2(ptr noundef nonnull @.str.46, i64 noundef 8) #11 ; 3 uses
  store i64 %i.fz, ptr @is_integer_p.rbimpl_id, align 8, !tbaa !11
  %.not.i.i435 = icmp eq i64 %i.fz, 0
  br i1 %.not.i.i435, label %.lr.ph.i.i434, label %rbimpl_intern_const.exit.i430, !llvm.loop !16

rbimpl_intern_const.exit.i430:                    ; preds = %.lr.ph.i.i434, %rb_integer_type_p.exit.thread7.i427
  %.lcssa.i.i431 = phi i64 [ %.pr.i.i428, %rb_integer_type_p.exit.thread7.i427 ], [ %i.fz, %.lr.ph.i.i434 ]
  %i.ga = tail call i64 @rb_check_funcall(i64 noundef %i.i, i64 noundef %.lcssa.i.i431, i32 noundef 0, ptr noundef null) #11
  switch i64 %i.ga, label %is_integer_p.exit436.thread [
    i64 36, label %is_integer_p.exit436.thread501
    i64 4, label %is_integer_p.exit436.thread501
    i64 0, label %is_integer_p.exit436.thread501
  ]

is_integer_p.exit436.thread:                      ; preds = %rbimpl_intern_const.exit.i430, %is_integer_p.exit.thread, %rb_integer_type_p.exit.i426
  %i.gb = tail call i32 @rb_block_given_p() #11
  %.not389 = icmp eq i32 %i.gb, 0
  br i1 %.not389, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %is_integer_p.exit436.thread
  %i.gc = tail call i64 @rb_frame_this_func() #11
  %i.gd = tail call i64 @rb_id2sym(i64 noundef %i.gc) #11
  %i.ge = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.gd, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  br label %.thread469

bb.bb:                                            ; preds = %is_integer_p.exit436.thread
  %i.gf = load i64, ptr %i.a, align 8, !tbaa !13
  %i.gg = and i64 %i.gf, 1040384
  %.not.i.i.i437 = icmp eq i64 %i.gg, 0
  br i1 %.not.i.i.i437, label %bb.bc, label %RANGE_EXCL.exit439

bb.bc:                                            ; preds = %bb.bb
  %i.gh = getelementptr i8, ptr %i.a, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !15
  br label %RANGE_EXCL.exit439

RANGE_EXCL.exit439:                               ; preds = %bb.bb, %bb.bc
  %.0.i.i.i438 = phi ptr [ %i.gi, %bb.bc ], [ %i.b, %bb.bb ]
  %i.gj = getelementptr i8, ptr %.0.i.i.i438, i64 16
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !11
  %i.gl = and i64 %i.gk, -5
  %i.gm = icmp ne i64 %i.gl, 0
  %i.gn = zext i1 %i.gm to i32
  %i.go = tail call fastcc i64 @bsearch_integer_range(i64 noundef %i.c, i64 noundef %i.i, i32 noundef %i.gn)
  br label %.thread469

is_integer_p.exit436.thread501:                   ; preds = %rbimpl_intern_const.exit.i430, %rbimpl_intern_const.exit.i430, %rbimpl_intern_const.exit.i430
  br i1 %i.j, label %is_integer_p.exit450.thread, label %is_integer_p.exit436.thread501..thread505_crit_edge

is_integer_p.exit436.thread501..thread505_crit_edge: ; preds = %is_integer_p.exit436.thread501
  %.pre = and i64 %i.c, 6
  br label %.thread505

.thread505:                                       ; preds = %is_integer_p.exit436.thread501..thread505_crit_edge, %rbimpl_intern_const.exit.i, %rbimpl_intern_const.exit.i, %rbimpl_intern_const.exit.i
  %.pre-phi = phi i64 [ %.pre, %is_integer_p.exit436.thread501..thread505_crit_edge ], [ %i.fj, %rbimpl_intern_const.exit.i ], [ %i.fj, %rbimpl_intern_const.exit.i ], [ %i.fj, %rbimpl_intern_const.exit.i ]
  %i.gp = icmp ne i64 %.pre-phi, 0
  %i.gq = or i1 %i.ba, %i.gp
  br i1 %i.gq, label %rb_integer_type_p.exit.thread7.i441, label %rb_integer_type_p.exit.i440

rb_integer_type_p.exit.i440:                      ; preds = %.thread505
  %i.gr = inttoptr i64 %i.c to ptr
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !13
  %i.gt = and i64 %i.gs, 31
  %i.gu = icmp eq i64 %i.gt, 10
  br i1 %i.gu, label %is_integer_p.exit450.thread, label %rb_integer_type_p.exit.thread7.i441

rb_integer_type_p.exit.thread7.i441:              ; preds = %rb_integer_type_p.exit.i440, %.thread505
  %.pr.i.i442 = load i64, ptr @is_integer_p.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i443 = icmp eq i64 %.pr.i.i442, 0
  br i1 %.not4.i.i443, label %.lr.ph.i.i448, label %rbimpl_intern_const.exit.i444

.lr.ph.i.i448:                                    ; preds = %rb_integer_type_p.exit.thread7.i441, %.lr.ph.i.i448
  %i.gv = tail call i64 @rb_intern2(ptr noundef nonnull @.str.46, i64 noundef 8) #11 ; 3 uses
  store i64 %i.gv, ptr @is_integer_p.rbimpl_id, align 8, !tbaa !11
  %.not.i.i449 = icmp eq i64 %i.gv, 0
  br i1 %.not.i.i449, label %.lr.ph.i.i448, label %rbimpl_intern_const.exit.i444, !llvm.loop !16

rbimpl_intern_const.exit.i444:                    ; preds = %.lr.ph.i.i448, %rb_integer_type_p.exit.thread7.i441
  %.lcssa.i.i445 = phi i64 [ %.pr.i.i442, %rb_integer_type_p.exit.thread7.i441 ], [ %i.gv, %.lr.ph.i.i448 ]
  %i.gw = tail call i64 @rb_check_funcall(i64 noundef %i.c, i64 noundef %.lcssa.i.i445, i32 noundef 0, ptr noundef null) #11 ; 2 uses
  %i.gx = and i64 %i.gw, -5
  %.not.i446 = icmp eq i64 %i.gx, 0
  br i1 %.not.i446, label %is_integer_p.exit450.thread508, label %is_integer_p.exit450

is_integer_p.exit450:                             ; preds = %rbimpl_intern_const.exit.i444
  %i.gy = icmp ne i64 %i.gw, 36
  %i.gz = icmp eq i64 %i.i, 4
  %or.cond617 = select i1 %i.gy, i1 %i.gz, i1 false
  br i1 %or.cond617, label %bb.bd, label %is_integer_p.exit450.thread508

is_integer_p.exit450.thread:                      ; preds = %is_integer_p.exit436.thread501, %rb_integer_type_p.exit.i440
  %.old616 = icmp eq i64 %i.i, 4
  br i1 %.old616, label %bb.bd, label %is_integer_p.exit450.thread508

bb.bd:                                            ; preds = %is_integer_p.exit450, %is_integer_p.exit450.thread
  %i.ha = tail call i32 @rb_block_given_p() #11
  %.not376 = icmp eq i32 %i.ha, 0
  br i1 %.not376, label %bb.be, label %.preheader

bb.be:                                            ; preds = %bb.bd
  %i.hb = tail call i64 @rb_frame_this_func() #11
  %i.hc = tail call i64 @rb_id2sym(i64 noundef %i.hb) #11
  %i.hd = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.hc, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  br label %.thread469

.preheader:                                       ; preds = %bb.bd, %.thread512.thread
  %.0338 = phi i64 [ %i.iy, %.thread512.thread ], [ 3, %bb.bd ] ; 2 uses
  %.0246 = phi i64 [ %i.he, %.thread512.thread ], [ %i.c, %bb.bd ] ; 4 uses
  %i.he = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.0246, i64 noundef 43, i32 noundef 1, i64 noundef %.0338) #11 ; 8 uses
  %i.hf = tail call i64 @rb_yield(i64 noundef %i.he) #11 ; 9 uses
  %i.hg = trunc i64 %i.hf to i1
  br i1 %i.hg, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %.preheader
  %i.hh = icmp eq i64 %i.hf, 1
  br i1 %i.hh, label %.thread469, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.lobit380 = lshr i64 %i.hf, 63
  %i.hi = trunc nuw nsw i64 %.lobit380 to i32
  br label %.thread512

bb.bh:                                            ; preds = %.preheader
  %i.hj = icmp eq i64 %i.hf, 20
  br i1 %i.hj, label %.thread512.thread594, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hk = and i64 %i.hf, -6
  %.not626 = icmp eq i64 %i.hk, 0
  br i1 %.not626, label %.thread512.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hl = load i64, ptr @rb_cNumeric, align 8, !tbaa !11
  %i.hm = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.hf, i64 noundef %i.hl) #11
  %.not377 = icmp eq i64 %i.hm, 0
  br i1 %.not377, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.hn = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.ho = tail call i64 @rb_obj_class(i64 noundef %i.hf) #11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hn, ptr noundef nonnull @.str.44, i64 noundef %i.ho) #12
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.hp = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.hf, i64 noundef 135, i32 noundef 1, i64 noundef 1) #11
  %i.hq = tail call i32 @rb_cmpint(i64 noundef %i.hp, i64 noundef %i.hf, i64 noundef 1) #11 ; 2 uses
  %.not378.not.not = icmp eq i32 %i.hq, 0
  %.lobit379 = lshr i32 %i.hq, 31
  br i1 %.not378.not.not, label %.thread469, label %.thread512

.thread512:                                       ; preds = %bb.bg, %bb.bl
  %.11289517 = phi i32 [ %.lobit379, %bb.bl ], [ %i.hi, %bb.bg ]
  %.not381 = icmp eq i32 %.11289517, 0
  br i1 %.not381, label %.thread512.thread, label %.thread512.thread594

.thread512.thread594:                             ; preds = %bb.bh, %.thread512
  %.8258518600 = phi i64 [ 4, %.thread512 ], [ %i.he, %bb.bh ] ; 2 uses
  %i.hr = and i64 %.0246, 1
  %i.hs = and i64 %i.hr, %i.he
  %or.cond619.not = icmp eq i64 %i.hs, 0
  br i1 %or.cond619.not, label %bb.bz, label %bb.bm

bb.bm:                                            ; preds = %.thread512.thread594
  %i.ht = tail call i32 @rb_block_given_p() #11
  %.not382 = icmp eq i32 %i.ht, 0
  br i1 %.not382, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.hu = tail call i64 @rb_frame_this_func() #11
  %i.hv = tail call i64 @rb_id2sym(i64 noundef %i.hu) #11
  %i.hw = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.hv, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  br label %.thread469

bb.bo:                                            ; preds = %bb.bm
  %i.hx = ashr i64 %i.he, 1
  %i.hy = ashr i64 %.0246, 1                      ; 2 uses
  %1 = add nsw i64 %i.hx, 1                       ; 2 uses
  %2 = icmp slt i64 %i.hy, %1
  br i1 %2, label %.lr.ph685.preheader, label %.thread469

.lr.ph685.preheader:                              ; preds = %bb.bo
  %i.hz = add nsw i64 %i.hy, -1
  br label %.lr.ph685

.lr.ph685:                                        ; preds = %.lr.ph685.preheader, %.thread526
  %.9259683 = phi i64 [ %.11261532, %.thread526 ], [ %.8258518600, %.lr.ph685.preheader ] ; 3 uses
  %.0340681 = phi i64 [ %..0340, %.thread526 ], [ %i.hz, %.lr.ph685.preheader ] ; 5 uses
  %.0342680 = phi i64 [ %.0342., %.thread526 ], [ %1, %.lr.ph685.preheader ] ; 4 uses
  %.unshifted383 = xor i64 %.0340681, %.0342680
  %i.ia = icmp sgt i64 %.unshifted383, -1
  br i1 %i.ia, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph685
  %i.ib = sub i64 %.0342680, %.0340681
  %i.ic = sdiv i64 %i.ib, 2
  %i.id = add i64 %i.ic, %.0340681
  br label %bb.br

bb.bq:                                            ; preds = %.lr.ph685
  %i.ie = add i64 %.0340681, %.0342680
  %i.if = sdiv i64 %i.ie, 2
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ig = phi i64 [ %i.id, %bb.bp ], [ %i.if, %bb.bq ] ; 3 uses
  %i.ih = shl i64 %i.ig, 1
  %i.ii = or disjoint i64 %i.ih, 1                ; 4 uses
  %i.ij = tail call i64 @rb_yield(i64 noundef %i.ii) #11 ; 9 uses
  %i.ik = trunc i64 %i.ij to i1
  br i1 %i.ik, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.il = icmp eq i64 %i.ij, 1
  br i1 %i.il, label %.thread469, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.lobit387 = lshr i64 %i.ij, 63
  %i.im = trunc nuw nsw i64 %.lobit387 to i32
  br label %.thread526

bb.bu:                                            ; preds = %bb.br
  %i.in = icmp eq i64 %i.ij, 20
  br i1 %i.in, label %.thread526, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.io = and i64 %i.ij, -6
  %.not627 = icmp eq i64 %i.io, 0
  br i1 %.not627, label %.thread526, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ip = load i64, ptr @rb_cNumeric, align 8, !tbaa !11
  %i.iq = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.ij, i64 noundef %i.ip) #11
  %.not384 = icmp eq i64 %i.iq, 0
  br i1 %.not384, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ir = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.is = tail call i64 @rb_obj_class(i64 noundef %i.ij) #11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ir, ptr noundef nonnull @.str.44, i64 noundef %i.is) #12
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.it = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ij, i64 noundef 135, i32 noundef 1, i64 noundef 1) #11
  %i.iu = tail call i32 @rb_cmpint(i64 noundef %i.it, i64 noundef %i.ij, i64 noundef 1) #11 ; 2 uses
  %.not385.not.not = icmp eq i32 %i.iu, 0
  %.lobit386 = lshr i32 %i.iu, 31
  br i1 %.not385.not.not, label %.thread469, label %.thread526

.thread526:                                       ; preds = %bb.bt, %bb.bu, %bb.bv, %bb.by
  %.11261532 = phi i64 [ %.9259683, %bb.by ], [ %.9259683, %bb.bv ], [ %i.ii, %bb.bu ], [ %.9259683, %bb.bt ] ; 2 uses
  %.15293531 = phi i32 [ %.lobit386, %bb.by ], [ 0, %bb.bv ], [ 1, %bb.bu ], [ %i.im, %bb.bt ]
  %.not388 = icmp eq i32 %.15293531, 0            ; 2 uses
  %.0342. = select i1 %.not388, i64 %.0342680, i64 %i.ig ; 2 uses
  %..0340 = select i1 %.not388, i64 %i.ig, i64 %.0340681 ; 2 uses
  %i.iv = add i64 %..0340, 1
  %i.iw = icmp slt i64 %i.iv, %.0342.
  br i1 %i.iw, label %.lr.ph685, label %.thread469, !llvm.loop !43

bb.bz:                                            ; preds = %.thread512.thread594
  %i.ix = tail call fastcc i64 @bsearch_integer_range(i64 noundef %.0246, i64 noundef %i.he, i32 noundef 0)
  br label %.thread469

.thread512.thread:                                ; preds = %bb.bi, %.thread512
  %i.iy = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.0338, i64 noundef 42, i32 noundef 1, i64 noundef 5) #11
  br label %.preheader

is_integer_p.exit450.thread508:                   ; preds = %rbimpl_intern_const.exit.i444, %is_integer_p.exit450.thread, %is_integer_p.exit450
  %i.iz = icmp eq i64 %i.c, 4
  br i1 %i.iz, label %bb.ca, label %is_integer_p.exit461.thread549

bb.ca:                                            ; preds = %is_integer_p.exit450.thread508
  br i1 %i.k, label %is_integer_p.exit461.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ja = and i64 %i.i, 6
  %i.jb = icmp ne i64 %i.ja, 0
  %i.jc = or i1 %i.bk, %i.jb
  br i1 %i.jc, label %rb_integer_type_p.exit.thread7.i452, label %rb_integer_type_p.exit.i451

rb_integer_type_p.exit.i451:                      ; preds = %bb.cb
  %i.jd = inttoptr i64 %i.i to ptr
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !13
  %i.jf = and i64 %i.je, 31
  %i.jg = icmp eq i64 %i.jf, 10
  br i1 %i.jg, label %is_integer_p.exit461.thread, label %rb_integer_type_p.exit.thread7.i452

rb_integer_type_p.exit.thread7.i452:              ; preds = %rb_integer_type_p.exit.i451, %bb.cb
  %.pr.i.i453 = load i64, ptr @is_integer_p.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i454 = icmp eq i64 %.pr.i.i453, 0
  br i1 %.not4.i.i454, label %.lr.ph.i.i459, label %rbimpl_intern_const.exit.i455

.lr.ph.i.i459:                                    ; preds = %rb_integer_type_p.exit.thread7.i452, %.lr.ph.i.i459
  %i.jh = tail call i64 @rb_intern2(ptr noundef nonnull @.str.46, i64 noundef 8) #11 ; 3 uses
  store i64 %i.jh, ptr @is_integer_p.rbimpl_id, align 8, !tbaa !11
  %.not.i.i460 = icmp eq i64 %i.jh, 0
  br i1 %.not.i.i460, label %.lr.ph.i.i459, label %rbimpl_intern_const.exit.i455, !llvm.loop !16

rbimpl_intern_const.exit.i455:                    ; preds = %.lr.ph.i.i459, %rb_integer_type_p.exit.thread7.i452
  %.lcssa.i.i456 = phi i64 [ %.pr.i.i453, %rb_integer_type_p.exit.thread7.i452 ], [ %i.jh, %.lr.ph.i.i459 ]
  %i.ji = tail call i64 @rb_check_funcall(i64 noundef %i.i, i64 noundef %.lcssa.i.i456, i32 noundef 0, ptr noundef null) #11
  switch i64 %i.ji, label %is_integer_p.exit461.thread [
    i64 36, label %is_integer_p.exit461.thread549
    i64 4, label %is_integer_p.exit461.thread549
    i64 0, label %is_integer_p.exit461.thread549
  ]

is_integer_p.exit461.thread:                      ; preds = %rbimpl_intern_const.exit.i455, %bb.ca, %rb_integer_type_p.exit.i451
  %i.jj = tail call i32 @rb_block_given_p() #11
  %.not365 = icmp eq i32 %i.jj, 0
  br i1 %.not365, label %bb.cc, label %.preheader643

bb.cc:                                            ; preds = %is_integer_p.exit461.thread
  %i.jk = tail call i64 @rb_frame_this_func() #11
  %i.jl = tail call i64 @rb_id2sym(i64 noundef %i.jk) #11
  %i.jm = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.jl, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  br label %.thread469

.preheader643:                                    ; preds = %is_integer_p.exit461.thread, %.thread553.thread607
  %.0331 = phi i64 [ %i.lh, %.thread553.thread607 ], [ -1, %is_integer_p.exit461.thread ] ; 2 uses
  %.15265 = phi i64 [ %.17267559613, %.thread553.thread607 ], [ 4, %is_integer_p.exit461.thread ] ; 3 uses
  %.0248 = phi i64 [ %i.jn, %.thread553.thread607 ], [ %i.i, %is_integer_p.exit461.thread ] ; 4 uses
  %i.jn = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.0248, i64 noundef 43, i32 noundef 1, i64 noundef %.0331) #11 ; 8 uses
  %i.jo = tail call i64 @rb_yield(i64 noundef %i.jn) #11 ; 9 uses
  %i.jp = trunc i64 %i.jo to i1
  br i1 %i.jp, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %.preheader643
  %i.jq = icmp eq i64 %i.jo, 1
  br i1 %i.jq, label %.thread469, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.lobit368 = lshr i64 %i.jo, 63
  %i.jr = trunc nuw nsw i64 %.lobit368 to i32
  br label %.thread553

bb.cf:                                            ; preds = %.preheader643
  %i.js = icmp eq i64 %i.jo, 20
  br i1 %i.js, label %.thread553.thread607, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jt = and i64 %i.jo, -6
  %.not624 = icmp eq i64 %i.jt, 0
  br i1 %.not624, label %.thread553.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ju = load i64, ptr @rb_cNumeric, align 8, !tbaa !11
  %i.jv = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.jo, i64 noundef %i.ju) #11
  %.not366 = icmp eq i64 %i.jv, 0
  br i1 %.not366, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.jw = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.jx = tail call i64 @rb_obj_class(i64 noundef %i.jo) #11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.jw, ptr noundef nonnull @.str.44, i64 noundef %i.jx) #12
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.jy = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.jo, i64 noundef 135, i32 noundef 1, i64 noundef 1) #11
  %i.jz = tail call i32 @rb_cmpint(i64 noundef %i.jy, i64 noundef %i.jo, i64 noundef 1) #11 ; 2 uses
  %.not367.not.not = icmp eq i32 %i.jz, 0
  %.lobit = lshr i32 %i.jz, 31
  br i1 %.not367.not.not, label %.thread469, label %.thread553

.thread553:                                       ; preds = %bb.ce, %bb.cj
  %.22300558 = phi i32 [ %.lobit, %bb.cj ], [ %i.jr, %bb.ce ]
  %.not369 = icmp eq i32 %.22300558, 0
  br i1 %.not369, label %.thread553.thread, label %.thread553.thread607

.thread553.thread:                                ; preds = %bb.cg, %.thread553
  %i.ka = and i64 %.0248, 1
  %i.kb = and i64 %i.ka, %i.jn
  %or.cond621.not = icmp eq i64 %i.kb, 0
  br i1 %or.cond621.not, label %bb.cx, label %bb.ck

bb.ck:                                            ; preds = %.thread553.thread
  %i.kc = tail call i32 @rb_block_given_p() #11
  %.not370 = icmp eq i32 %i.kc, 0
  br i1 %.not370, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.kd = tail call i64 @rb_frame_this_func() #11
  %i.ke = tail call i64 @rb_id2sym(i64 noundef %i.kd) #11
  %i.kf = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.ke, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  br label %.thread469

bb.cm:                                            ; preds = %bb.ck
  %i.kg = ashr i64 %.0248, 1
  %i.kh = ashr i64 %i.jn, 1                       ; 2 uses
  %3 = add nsw i64 %i.kg, 1                       ; 2 uses
  %4 = icmp slt i64 %i.kh, %3
  br i1 %4, label %.lr.ph.preheader, label %.thread469

.lr.ph.preheader:                                 ; preds = %bb.cm
  %i.ki = add nsw i64 %i.kh, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread567
  %.18268674 = phi i64 [ %.20270573, %.thread567 ], [ %.15265, %.lr.ph.preheader ] ; 3 uses
  %.0274673 = phi i64 [ %.0274., %.thread567 ], [ %3, %.lr.ph.preheader ] ; 4 uses
  %.0276672 = phi i64 [ %..0276, %.thread567 ], [ %i.ki, %.lr.ph.preheader ] ; 5 uses
  %.unshifted = xor i64 %.0274673, %.0276672
  %i.kj = icmp sgt i64 %.unshifted, -1
  br i1 %i.kj, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph
  %i.kk = sub i64 %.0274673, %.0276672
  %i.kl = sdiv i64 %i.kk, 2
  %i.km = add i64 %i.kl, %.0276672
  br label %bb.cp

bb.co:                                            ; preds = %.lr.ph
  %i.kn = add i64 %.0274673, %.0276672
  %i.ko = sdiv i64 %i.kn, 2
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.kp = phi i64 [ %i.km, %bb.cn ], [ %i.ko, %bb.co ] ; 3 uses
  %i.kq = shl i64 %i.kp, 1
  %i.kr = or disjoint i64 %i.kq, 1                ; 4 uses
  %i.ks = tail call i64 @rb_yield(i64 noundef %i.kr) #11 ; 9 uses
  %i.kt = trunc i64 %i.ks to i1
  br i1 %i.kt, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.ku = icmp eq i64 %i.ks, 1
  br i1 %i.ku, label %.thread469, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.lobit374 = lshr i64 %i.ks, 63
  %i.kv = trunc nuw nsw i64 %.lobit374 to i32
  br label %.thread567

bb.cs:                                            ; preds = %bb.cp
  %i.kw = icmp eq i64 %i.ks, 20
  br i1 %i.kw, label %.thread567, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.kx = and i64 %i.ks, -6
  %.not625 = icmp eq i64 %i.kx, 0
  br i1 %.not625, label %.thread567, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ky = load i64, ptr @rb_cNumeric, align 8, !tbaa !11
  %i.kz = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.ks, i64 noundef %i.ky) #11
  %.not371 = icmp eq i64 %i.kz, 0
  br i1 %.not371, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.la = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.lb = tail call i64 @rb_obj_class(i64 noundef %i.ks) #11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.la, ptr noundef nonnull @.str.44, i64 noundef %i.lb) #12
  unreachable

bb.cw:                                            ; preds = %bb.cu
  %i.lc = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ks, i64 noundef 135, i32 noundef 1, i64 noundef 1) #11
  %i.ld = tail call i32 @rb_cmpint(i64 noundef %i.lc, i64 noundef %i.ks, i64 noundef 1) #11 ; 2 uses
  %.not372.not.not = icmp eq i32 %i.ld, 0
  %.lobit373 = lshr i32 %i.ld, 31
  br i1 %.not372.not.not, label %.thread469, label %.thread567

.thread567:                                       ; preds = %bb.cr, %bb.cs, %bb.ct, %bb.cw
  %.20270573 = phi i64 [ %.18268674, %bb.cw ], [ %.18268674, %bb.ct ], [ %i.kr, %bb.cs ], [ %.18268674, %bb.cr ] ; 2 uses
  %.26304572 = phi i32 [ %.lobit373, %bb.cw ], [ 0, %bb.ct ], [ 1, %bb.cs ], [ %i.kv, %bb.cr ]
  %.not375 = icmp eq i32 %.26304572, 0            ; 2 uses
  %..0276 = select i1 %.not375, i64 %i.kp, i64 %.0276672 ; 2 uses
  %.0274. = select i1 %.not375, i64 %.0274673, i64 %i.kp ; 2 uses
  %i.le = add i64 %..0276, 1
  %i.lf = icmp slt i64 %i.le, %.0274.
  br i1 %i.lf, label %.lr.ph, label %.thread469, !llvm.loop !44

bb.cx:                                            ; preds = %.thread553.thread
  %i.lg = tail call fastcc i64 @bsearch_integer_range(i64 noundef %i.jn, i64 noundef %.0248, i32 noundef 0)
  br label %.thread469

.thread553.thread607:                             ; preds = %bb.cf, %.thread553
  %.17267559613 = phi i64 [ %.15265, %.thread553 ], [ %i.jn, %bb.cf ]
  %i.lh = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.0331, i64 noundef 42, i32 noundef 1, i64 noundef 5) #11
  br label %.preheader643

is_integer_p.exit461.thread549:                   ; preds = %rbimpl_intern_const.exit.i455, %rbimpl_intern_const.exit.i455, %rbimpl_intern_const.exit.i455, %is_integer_p.exit450.thread508
  %i.li = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.lj = tail call ptr @rb_obj_classname(i64 noundef %i.c) #11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.li, ptr noundef nonnull @.str.45, ptr noundef %i.lj) #12
  unreachable

.thread469:                                       ; preds = %bb.cd, %bb.cj, %.thread567, %bb.cw, %bb.cq, %bb.bf, %bb.bl, %.thread526, %bb.by, %bb.bs, %.thread481, %bb.ax, %bb.ar, %.thread, %bb.p, %bb.j, %bb.cm, %bb.bo, %RANGE_EXCL.exit422, %RANGE_EXCL.exit, %bb.cl, %bb.cx, %bb.bn, %bb.bz, %bb.cc, %bb.be, %bb.ab, %bb.d, %RANGE_EXCL.exit439, %bb.ba
  %.34 = phi i64 [ %i.hd, %bb.be ], [ %i.hw, %bb.bn ], [ %.15265, %bb.cm ], [ %i.go, %RANGE_EXCL.exit439 ], [ %i.ge, %bb.ba ], [ %i.lg, %bb.cx ], [ %i.q, %bb.d ], [ %i.kf, %bb.cl ], [ %i.df, %bb.ab ], [ 4, %RANGE_EXCL.exit422 ], [ %.8258518600, %bb.bo ], [ %i.jm, %bb.cc ], [ %i.he, %bb.bf ], [ %i.ix, %bb.bz ], [ %i.kr, %bb.cw ], [ %i.ii, %bb.bs ], [ %.0.i423, %bb.ar ], [ 4, %RANGE_EXCL.exit ], [ %i.aj, %bb.j ], [ %i.aj, %bb.p ], [ %.2252467, %.thread ], [ %.0.i423, %bb.ax ], [ %.5255487, %.thread481 ], [ %.11261532, %.thread526 ], [ %i.ii, %bb.by ], [ %i.he, %bb.bl ], [ %.20270573, %.thread567 ], [ %i.kr, %bb.cq ], [ %i.jn, %bb.cj ], [ %i.jn, %bb.cd ]
  ret i64 %.34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @range_begin(i64 noundef %0) #4 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @range_end(i64 noundef %0) #4 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = and i64 %i.b, 1040384
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 16
  br label %RANGE_END.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  br label %RANGE_END.exit

RANGE_END.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = getelementptr i8, ptr %.0.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  ret i64 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @range_first(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = inttoptr i64 %2 to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = icmp eq i64 %i.d, 4
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr @rb_eRangeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.48) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %0, 0
  br i1 %i.g, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp slt i32 %0, 1
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %1, align 8, !tbaa !11     ; 4 uses
  %i.j = icmp eq i32 %0, 1
  br i1 %i.j, label %rb_scan_args_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 1) #12
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.e
  store i64 %i.i, ptr %i.a, align 16, !tbaa !11
  %i.k = trunc i64 %i.i to i1
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rb_scan_args_set.exit
  %i.l = ashr i64 %i.i, 1
  br label %rb_num2long_inline.exit

bb.h:                                             ; preds = %rb_scan_args_set.exit
  %i.m = tail call i64 @rb_num2long(i64 noundef %i.i) #11
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ %i.l, %bb.g ], [ %i.m, %bb.h ]
  %i.n = tail call i64 @rb_ary_new_capa(i64 noundef %.0.i) #11
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !11
  %i.p = ptrtoint ptr %i.a to i64
  %i.q = call i64 @rb_block_call(i64 noundef %2, i64 noundef 3089, i32 noundef 0, ptr noundef null, ptr noundef nonnull @first_i, i64 noundef %i.p) #11 ; 0 uses
  %i.r = load i64, ptr %i.o, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %rb_num2long_inline.exit
  %.0 = phi i64 [ %i.r, %rb_num2long_inline.exit ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @range_last(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 10 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = and i64 %i.b, 1040384
  %.not.i.i.i = icmp eq i64 %i.c, 0               ; 3 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 16
  br label %RANGE_END.exit

end_hunk_1
