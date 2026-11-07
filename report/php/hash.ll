Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/hash?download=true
inline.NumInlined: 125
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@zif_hash_hkdf:bb.a
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !15
  %i.ey = xor i8 %i.ex, 54
  store i8 %i.ey, ptr %i.ew, align 1, !tbaa !15
  %i.ez = add nuw i64 %.07.i.i215, 1              ; 2 uses
  %exitcond.not.i.i216 = icmp eq i64 %i.ez, %i.em
  br i1 %exitcond.not.i.i216, label %php_hash_hmac_prep_key.exit217, label %.lr.ph.i.i214, !llvm.loop !163

php_hash_hmac_prep_key.exit217:                   ; preds = %.lr.ph.i.i214, %middle.block314, %vec.epilog.middle.block327, %bb.ab
  %i.fa = load ptr, ptr %i.ay, align 8, !tbaa !63
  call void %i.fa(ptr noundef %.0.i, ptr noundef null) #16
  %i.fb = load ptr, ptr %i.co, align 8, !tbaa !64
  %i.fc = load i64, ptr %i.ba, align 8, !tbaa !67
  call void %i.fb(ptr noundef %.0.i, ptr noundef %i.bc, i64 noundef %i.fc) #16
  %i.fd = icmp ugt i64 %.0225, 1
  br i1 %i.fd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %php_hash_hmac_prep_key.exit217
  %i.fe = load ptr, ptr %i.co, align 8, !tbaa !64
  %i.ff = load i64, ptr %i.cg, align 8, !tbaa !65
  call void %i.fe(ptr noundef %.0.i, ptr noundef %i.dx, i64 noundef %i.ff) #16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %php_hash_hmac_prep_key.exit217
  %i.fg = load ptr, ptr %i.c, align 8, !tbaa !50  ; 3 uses
  %.not209 = icmp eq ptr %i.fg, null
  br i1 %.not209, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !43 ; 2 uses
  %.not210 = icmp eq i64 %i.fi, 0
  br i1 %.not210, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fj = load ptr, ptr %i.co, align 8, !tbaa !64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  call void %i.fj(ptr noundef %.0.i, ptr noundef nonnull %i.fk, i64 noundef %i.fi) #16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.fl = load ptr, ptr %i.co, align 8, !tbaa !64
  call void %i.fl(ptr noundef %.0.i, ptr noundef nonnull %i.f, i64 noundef 1) #16
  %i.fm = load ptr, ptr %i.cs, align 8, !tbaa !66
  call void %i.fm(ptr noundef %i.dx, ptr noundef %.0.i) #16
  %i.fn = load i64, ptr %i.ba, align 8, !tbaa !67 ; 9 uses
  %.not.i218 = icmp eq i64 %i.fn, 0
  br i1 %.not.i218, label %php_hash_string_xor_char.exit222, label %iter.check290

iter.check290:                                    ; preds = %bb.ag
  %min.iters.check278 = icmp ult i64 %i.fn, 4
  br i1 %min.iters.check278, label %.lr.ph.i219.preheader, label %vector.main.loop.iter.check279

vector.main.loop.iter.check279:                   ; preds = %iter.check290
  %min.iters.check280 = icmp ult i64 %i.fn, 32
  br i1 %min.iters.check280, label %vec.epilog.ph294, label %vector.ph281

vector.ph281:                                     ; preds = %vector.main.loop.iter.check279
  %i.fo = and i64 %i.fn, 28
  %n.vec282 = and i64 %i.fn, -32                  ; 4 uses
  br label %vector.body283

vector.body283:                                   ; preds = %vector.ph281, %vector.body283
  %index284 = phi i64 [ 0, %vector.ph281 ], [ %index.next287, %vector.body283 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index284 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %wide.load285 = load <16 x i8>, ptr %i.fp, align 1, !tbaa !15
  %wide.load286 = load <16 x i8>, ptr %i.fq, align 1, !tbaa !15
  %i.fr = xor <16 x i8> %wide.load285, splat (i8 106)
  %i.fs = xor <16 x i8> %wide.load286, splat (i8 106)
  store <16 x i8> %i.fr, ptr %i.fp, align 1, !tbaa !15
  store <16 x i8> %i.fs, ptr %i.fq, align 1, !tbaa !15
  %index.next287 = add nuw i64 %index284, 32      ; 2 uses
  %i.ft = icmp eq i64 %index.next287, %n.vec282
  br i1 %i.ft, label %middle.block288, label %vector.body283, !llvm.loop !164

middle.block288:                                  ; preds = %vector.body283
  %cmp.n289 = icmp eq i64 %i.fn, %n.vec282
  br i1 %cmp.n289, label %php_hash_string_xor_char.exit222, label %vec.epilog.iter.check291

vec.epilog.iter.check291:                         ; preds = %middle.block288
  %min.epilog.iters.check293 = icmp eq i64 %i.fo, 0
  br i1 %min.epilog.iters.check293, label %.lr.ph.i219.preheader, label %vec.epilog.ph294, !prof !70

vec.epilog.ph294:                                 ; preds = %vector.main.loop.iter.check279, %vec.epilog.iter.check291
  %vec.epilog.resume.val295 = phi i64 [ %n.vec282, %vec.epilog.iter.check291 ], [ 0, %vector.main.loop.iter.check279 ]
  %n.vec296 = and i64 %i.fn, -4                   ; 3 uses
  br label %vec.epilog.vector.body297

vec.epilog.vector.body297:                        ; preds = %vec.epilog.vector.body297, %vec.epilog.ph294
  %index298 = phi i64 [ %vec.epilog.resume.val295, %vec.epilog.ph294 ], [ %index.next300, %vec.epilog.vector.body297 ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index298 ; 2 uses
  %wide.load299 = load <4 x i8>, ptr %i.fu, align 1, !tbaa !15
  %i.fv = xor <4 x i8> %wide.load299, splat (i8 106)
  store <4 x i8> %i.fv, ptr %i.fu, align 1, !tbaa !15
  %index.next300 = add nuw i64 %index298, 4       ; 2 uses
  %i.fw = icmp eq i64 %index.next300, %n.vec296
  br i1 %i.fw, label %vec.epilog.middle.block301, label %vec.epilog.vector.body297, !llvm.loop !165

vec.epilog.middle.block301:                       ; preds = %vec.epilog.vector.body297
  %cmp.n302 = icmp eq i64 %i.fn, %n.vec296
  br i1 %cmp.n302, label %php_hash_string_xor_char.exit222, label %.lr.ph.i219.preheader

.lr.ph.i219.preheader:                            ; preds = %iter.check290, %vec.epilog.iter.check291, %vec.epilog.middle.block301
  %.07.i220.ph = phi i64 [ 0, %iter.check290 ], [ %n.vec282, %vec.epilog.iter.check291 ], [ %n.vec296, %vec.epilog.middle.block301 ]
  br label %.lr.ph.i219

.lr.ph.i219:                                      ; preds = %.lr.ph.i219.preheader, %.lr.ph.i219
  %.07.i220 = phi i64 [ %i.ga, %.lr.ph.i219 ], [ %.07.i220.ph, %.lr.ph.i219.preheader ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.07.i220 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !15
  %i.fz = xor i8 %i.fy, 106
  store i8 %i.fz, ptr %i.fx, align 1, !tbaa !15
  %i.ga = add nuw i64 %.07.i220, 1                ; 2 uses
  %exitcond.not.i221 = icmp eq i64 %i.ga, %i.fn
  br i1 %exitcond.not.i221, label %php_hash_string_xor_char.exit222, label %.lr.ph.i219, !llvm.loop !166

php_hash_string_xor_char.exit222:                 ; preds = %.lr.ph.i219, %middle.block288, %vec.epilog.middle.block301, %bb.ag
  %i.gb = load i64, ptr %i.cg, align 8, !tbaa !65
  %i.gc = load ptr, ptr %i.ay, align 8, !tbaa !63
  call void %i.gc(ptr noundef %.0.i, ptr noundef null) #16, !inline_history !2
  %i.gd = load ptr, ptr %i.co, align 8, !tbaa !64
  %i.ge = load i64, ptr %i.ba, align 8, !tbaa !67
  call void %i.gd(ptr noundef %.0.i, ptr noundef %i.bc, i64 noundef %i.ge) #16, !inline_history !2
  %i.gf = load ptr, ptr %i.co, align 8, !tbaa !64
  call void %i.gf(ptr noundef %.0.i, ptr noundef %i.dx, i64 noundef %i.gb) #16, !inline_history !2
  %i.gg = load ptr, ptr %i.cs, align 8, !tbaa !66
  call void %i.gg(ptr noundef %i.dx, ptr noundef %.0.i) #16, !inline_history !2
  %i.gh = add i64 %.0225, -1
  %i.gi = load i64, ptr %i.cg, align 8, !tbaa !65 ; 3 uses
  %i.gj = mul i64 %i.gi, %i.gh                    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.gj
  %i.gl = icmp eq i64 %.0225, %i.ec
  %i.gm = load i64, ptr %i.e, align 8
  %i.gn = sub i64 %i.gm, %i.gj
  %i.go = select i1 %i.gl, i64 %i.gn, i64 %i.gi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gk, ptr align 1 %i.dx, i64 %i.go, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  %i.gp = add i64 %.0225, 1                       ; 2 uses
  %.not207 = icmp ugt i64 %i.gp, %i.ec
  br i1 %.not207, label %._crit_edge, label %bb.y, !llvm.loop !167

._crit_edge:                                      ; preds = %php_hash_string_xor_char.exit222, %php_hash_string_xor_char.exit
  %i.gq = load i64, ptr %i.ba, align 8, !tbaa !67
  call void @explicit_bzero(ptr noundef %i.bc, i64 noundef %i.gq) #16
  %i.gr = load i64, ptr %i.cg, align 8, !tbaa !65
  call void @explicit_bzero(ptr noundef %i.dx, i64 noundef %i.gr) #16
  %i.gs = load i64, ptr %i.cg, align 8, !tbaa !65
  call void @explicit_bzero(ptr noundef %i.ci, i64 noundef %i.gs) #16
  call void @_efree(ptr noundef %i.bc) #16
  %.val = load i64, ptr %i.ak, align 8, !tbaa !62
  %.not.i223 = icmp eq i64 %.val, 0
  br i1 %.not.i223, label %php_hash_free_context.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  %i.gt = getelementptr inbounds i8, ptr %.0.i, i64 -1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !15
  %i.gv = zext i8 %i.gu to i64
  %i.gw = sub nsw i64 0, %i.gv
  %i.gx = getelementptr inbounds i8, ptr %.0.i, i64 %i.gw
  br label %php_hash_free_context.exit

php_hash_free_context.exit:                       ; preds = %._crit_edge, %bb.ah
  %.sink.i = phi ptr [ %i.gx, %bb.ah ], [ %.0.i, %._crit_edge ]
  call void @_efree(ptr noundef %.sink.i) #16
  call void @_efree(ptr noundef %i.ci) #16
  call void @_efree(ptr noundef %i.dx) #16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.gz = load i64, ptr %i.e, align 8, !tbaa !26
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 %i.gz
  store i8 0, ptr %i.ha, align 1, !tbaa !15
  store ptr %i.ds, ptr %1, align 8, !tbaa !15
  %i.hb = load i32, ptr %i.dt, align 4, !tbaa !15
  %i.hc = and i32 %i.hb, 64
  %.not208 = icmp eq i32 %i.hc, 0
  %i.hd = select i1 %.not208, i32 262, i32 6
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.hd, ptr %i.he, align 8, !tbaa !15
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %php_hash_free_context.exit, %bb.q, %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare void @zend_argument_must_not_be_empty_error(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @zif_hash_pbkdf2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 11 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 9 uses
  %i.h = alloca i8, align 1                       ; 7 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr null, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i64 0, ptr %i.e, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store i64 0, ptr %i.g, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  store i8 0, ptr %i.h, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  store ptr null, ptr %i.i, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !15
  %i.l = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.k, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #16
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.o = call ptr @zend_string_tolower_ex(ptr noundef %i.n, i1 noundef zeroext false) #16 ; 6 uses
  %i.p = call ptr @zend_hash_find(ptr noundef nonnull @php_hash_hashtable, ptr noundef %i.o) #16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %zend_hash_find_ptr.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15, !nonnull !16, !noundef !16
  br label %zend_hash_find_ptr.exit.i

zend_hash_find_ptr.exit.i:                        ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.q, %bb.c ], [ null, %bb.b ] ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !15   ; 2 uses
  %i.t = and i32 %i.s, 64
  %.not.i4.i = icmp eq i32 %i.t, 0
  br i1 %.not.i4.i, label %bb.d, label %php_hash_fetch_ops.exit

bb.d:                                             ; preds = %zend_hash_find_ptr.exit.i
  %i.u = load i32, ptr %i.o, align 4, !tbaa !18   ; 2 uses
  %i.v = icmp ne i32 %i.u, 0
  call void @llvm.assume(i1 %i.v)
  %i.w = add i32 %i.u, -1                         ; 2 uses
  store i32 %i.w, ptr %i.o, align 4, !tbaa !18
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %php_hash_fetch_ops.exit

bb.e:                                             ; preds = %bb.d
  %i.y = and i32 %i.s, 128
  %.not5.i.i = icmp eq i32 %i.y, 0
  br i1 %.not5.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.o) #16
  br label %php_hash_fetch_ops.exit

bb.g:                                             ; preds = %bb.e
  call void @_efree(ptr noundef nonnull %i.o) #16
  br label %php_hash_fetch_ops.exit

php_hash_fetch_ops.exit:                          ; preds = %zend_hash_find_ptr.exit.i, %bb.d, %bb.f, %bb.g
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %php_hash_fetch_ops.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 88
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = and i8 %i.aa, 1
  %.not236 = icmp eq i8 %i.ab, 0
  br i1 %.not236, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %php_hash_fetch_ops.exit
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 1, ptr noundef nonnull @.str.14) #16
  br label %bb.ac

bb.j:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !26
  %i.ad = icmp ugt i64 %i.ac, 2147483643
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 3, ptr noundef nonnull @.str.19) #16
  br label %bb.ac

bb.l:                                             ; preds = %bb.j
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !26
  %i.af = icmp slt i64 %i.ae, 1
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 4, ptr noundef nonnull @.str.20) #16
  br label %bb.ac

bb.n:                                             ; preds = %bb.l
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !26
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 5, ptr noundef nonnull @.str.15) #16
  br label %bb.ac

bb.p:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 96 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !62 ; 4 uses
  %.not.i = icmp eq i64 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 80
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !24 ; 2 uses
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = add i64 %i.al, %i.aj
  %i.an = call noalias ptr @_ecalloc(i64 noundef 1, i64 noundef %i.am) #20 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = add i64 %i.aj, -1
  %i.aq = and i64 %i.ap, %i.ao
  %i.ar = sub i64 %i.aj, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar ; 2 uses
  %i.at = trunc i64 %i.ar to i8
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !15
  br label %php_hash_alloc_context.exit

bb.r:                                             ; preds = %bb.p
  %i.av = call noalias ptr @_ecalloc(i64 noundef 1, i64 noundef %i.al) #20
  br label %php_hash_alloc_context.exit

php_hash_alloc_context.exit:                      ; preds = %bb.q, %bb.r
  %.0.i = phi ptr [ %i.as, %bb.q ], [ %i.av, %bb.r ] ; 23 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 6 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !63
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !71
  call void %i.ax(ptr noundef %.0.i, ptr noundef %i.ay) #16
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72 ; 12 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !67
  %i.bb = call noalias ptr @_emalloc(i64 noundef %i.ba) #19 ; 13 uses
  %i.bc = load i64, ptr %i.az, align 8, !tbaa !67
  %i.bd = call noalias ptr @_emalloc(i64 noundef %i.bc) #19 ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64 ; 10 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !65
  %i.bg = call noalias ptr @_emalloc(i64 noundef %i.bf) #19 ; 12 uses
  %i.bh = load i64, ptr %i.be, align 8, !tbaa !65
  %i.bi = call noalias ptr @_emalloc(i64 noundef %i.bh) #19 ; 6 uses
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  %i.bk = load i64, ptr %i.f, align 8, !tbaa !26  ; 3 uses
  %i.bl = load i64, ptr %i.az, align 8, !tbaa !67
  call void @llvm.memset.p0.i64(ptr align 1 %i.bb, i8 0, i64 %i.bl, i1 false)
  %i.bm = load i64, ptr %i.az, align 8, !tbaa !67
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %php_hash_alloc_context.exit
  %i.bo = load ptr, ptr %i.aw, align 8, !tbaa !63
  call void %i.bo(ptr noundef %.0.i, ptr noundef null) #16, !inline_history !1
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !64
  call void %i.bq(ptr noundef %.0.i, ptr noundef %i.bj, i64 noundef %i.bk) #16, !inline_history !1
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !66
  call void %i.bs(ptr noundef %i.bb, ptr noundef %.0.i) #16, !inline_history !1
  br label %bb.u

bb.t:                                             ; preds = %php_hash_alloc_context.exit
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.bj, i64 %i.bk, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bt = load i64, ptr %i.az, align 8, !tbaa !67 ; 9 uses
  %.not.i.i238 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i238, label %php_hash_string_xor_char.exit, label %iter.check

iter.check:                                       ; preds = %bb.u
  %min.iters.check = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check273 = icmp ult i64 %i.bt, 32
  br i1 %min.iters.check273, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bu = and i64 %i.bt, 28
  %n.vec = and i64 %i.bt, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.bv, align 1, !tbaa !15
  %wide.load274.a = load <16 x i8>, ptr %i.bw, align 1, !tbaa !15
  %i.bx = xor <16 x i8> %wide.load, splat (i8 54)
  %i.by = xor <16 x i8> %wide.load274.a, splat (i8 54)
  store <16 x i8> %i.bx, ptr %i.bv, align 1, !tbaa !15
  store <16 x i8> %i.by, ptr %i.bw, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %php_hash_hmac_prep_key.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec275 = and i64 %i.bt, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index276 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next278, %vec.epilog.vector.body ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index276 ; 2 uses
  %wide.load277 = load <4 x i8>, ptr %i.ca, align 1, !tbaa !15
  %i.cb = xor <4 x i8> %wide.load277, splat (i8 54)
  store <4 x i8> %i.cb, ptr %i.ca, align 1, !tbaa !15
  %index.next278 = add nuw i64 %index276, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next278, %n.vec275
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !169

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n279 = icmp eq i64 %i.bt, %n.vec275
  br i1 %cmp.n279, label %php_hash_hmac_prep_key.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec275, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi i64 [ %i.cg, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.07.i.i ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !15
  %i.cf = xor i8 %i.ce, 54
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !15
  %i.cg = add nuw i64 %.07.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cg, %i.bt
  br i1 %exitcond.not.i.i, label %php_hash_hmac_prep_key.exit, label %.lr.ph.i.i, !llvm.loop !170

php_hash_hmac_prep_key.exit:                      ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pr = load i64, ptr %i.az, align 8, !tbaa !67  ; 9 uses
  %.not.i239 = icmp eq i64 %.pr, 0
  br i1 %.not.i239, label %php_hash_string_xor_char.exit, label %iter.check292

iter.check292:                                    ; preds = %php_hash_hmac_prep_key.exit
  %min.iters.check280 = icmp ult i64 %.pr, 4
  br i1 %min.iters.check280, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check281

vector.main.loop.iter.check281:                   ; preds = %iter.check292
  %min.iters.check282 = icmp ult i64 %.pr, 32
  br i1 %min.iters.check282, label %vec.epilog.ph296, label %vector.ph283

vector.ph283:                                     ; preds = %vector.main.loop.iter.check281
  %i.ch = and i64 %.pr, 28
  %n.vec284 = and i64 %.pr, -32                   ; 4 uses
  br label %vector.body285

vector.body285:                                   ; preds = %vector.ph283, %vector.body285
  %index286 = phi i64 [ 0, %vector.ph283 ], [ %index.next289, %vector.body285 ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index286 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load287 = load <16 x i8>, ptr %i.ci, align 1, !tbaa !15
  %wide.load288 = load <16 x i8>, ptr %i.cj, align 1, !tbaa !15
  %i.ck = xor <16 x i8> %wide.load287, splat (i8 106)
  %i.cl = xor <16 x i8> %wide.load288, splat (i8 106)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bd, i64 %index286 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <16 x i8> %i.ck, ptr %i.cm, align 1, !tbaa !15
  store <16 x i8> %i.cl, ptr %i.cn, align 1, !tbaa !15
  %index.next289 = add nuw i64 %index286, 32      ; 2 uses
  %i.co = icmp eq i64 %index.next289, %n.vec284
  br i1 %i.co, label %middle.block290, label %vector.body285, !llvm.loop !171

middle.block290:                                  ; preds = %vector.body285
  %cmp.n291 = icmp eq i64 %.pr, %n.vec284
  br i1 %cmp.n291, label %php_hash_string_xor_char.exit, label %vec.epilog.iter.check293

vec.epilog.iter.check293:                         ; preds = %middle.block290
  %min.epilog.iters.check295 = icmp eq i64 %i.ch, 0
  br i1 %min.epilog.iters.check295, label %.lr.ph.i.preheader, label %vec.epilog.ph296, !prof !70

vec.epilog.ph296:                                 ; preds = %vector.main.loop.iter.check281, %vec.epilog.iter.check293
  %vec.epilog.resume.val297 = phi i64 [ %n.vec284, %vec.epilog.iter.check293 ], [ 0, %vector.main.loop.iter.check281 ]
  %n.vec298 = and i64 %.pr, -4                    ; 3 uses
  br label %vec.epilog.vector.body299

vec.epilog.vector.body299:                        ; preds = %vec.epilog.vector.body299, %vec.epilog.ph296
  %index300 = phi i64 [ %vec.epilog.resume.val297, %vec.epilog.ph296 ], [ %index.next302, %vec.epilog.vector.body299 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index300
  %wide.load301 = load <4 x i8>, ptr %i.cp, align 1, !tbaa !15
  %i.cq = xor <4 x i8> %wide.load301, splat (i8 106)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bd, i64 %index300
  store <4 x i8> %i.cq, ptr %i.cr, align 1, !tbaa !15
  %index.next302 = add nuw i64 %index300, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next302, %n.vec298
  br i1 %i.cs, label %vec.epilog.middle.block303, label %vec.epilog.vector.body299, !llvm.loop !172

vec.epilog.middle.block303:                       ; preds = %vec.epilog.vector.body299
  %cmp.n304 = icmp eq i64 %.pr, %n.vec298
  br i1 %cmp.n304, label %php_hash_string_xor_char.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check292, %vec.epilog.iter.check293, %vec.epilog.middle.block303
  %.07.i.ph = phi i64 [ 0, %iter.check292 ], [ %n.vec284, %vec.epilog.iter.check293 ], [ %n.vec298, %vec.epilog.middle.block303 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i = phi i64 [ %i.cx, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.07.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !15
  %i.cv = xor i8 %i.cu, 106
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.07.i
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !15
  %i.cx = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cx, %.pr
  br i1 %exitcond.not.i, label %php_hash_string_xor_char.exit, label %.lr.ph.i, !llvm.loop !173

php_hash_string_xor_char.exit:                    ; preds = %.lr.ph.i, %middle.block290, %vec.epilog.middle.block303, %bb.u, %php_hash_hmac_prep_key.exit
  %i.cy = load i64, ptr %i.e, align 8, !tbaa !26  ; 3 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %php_hash_string_xor_char.exit
  %i.da = load i64, ptr %i.be, align 8, !tbaa !65 ; 3 uses
  store i64 %i.da, ptr %i.e, align 8, !tbaa !26
  %2 = load i8, ptr %i.h, align 1, !tbaa !46, !range !55, !noundef !16
  %i.db = trunc nuw i8 %2 to i1
  br i1 %i.db, label %.thread, label %.thread271

.thread271:                                       ; preds = %bb.v
  %i.dc = shl nsw i64 %i.da, 1                    ; 2 uses
  store i64 %i.dc, ptr %i.e, align 8, !tbaa !26
  br label %bb.x

bb.w:                                             ; preds = %php_hash_string_xor_char.exit
  %.pr248 = load i8, ptr %i.h, align 1, !tbaa !46
  %.pre254 = trunc nuw i8 %.pr248 to i1
  br i1 %.pre254, label %.thread, label %bb.x

bb.x:                                             ; preds = %.thread271, %bb.w
  %i.dd = phi i64 [ %i.dc, %.thread271 ], [ %i.cy, %bb.w ]
  %i.de = sitofp i64 %i.dd to float
  %i.df = fpext nnan ninf float %i.de to double
  %i.dg = fmul nnan double %i.df, 5.000000e-01
  %i.dh = call double @llvm.ceil.f64(double %i.dg)
  %i.di = fptosi double %i.dh to i64
  br label %.thread

.thread:                                          ; preds = %bb.v, %bb.x, %bb.w
  %.0 = phi i64 [ %i.cy, %bb.w ], [ %i.di, %bb.x ], [ %i.da, %bb.v ] ; 6 uses
  %i.dj = sitofp i64 %.0 to float
  %i.dk = load i64, ptr %i.be, align 8, !tbaa !65 ; 2 uses
  %i.dl = uitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dj, %i.dl
  %i.dn = call float @llvm.ceil.f32(float %i.dm)
  %i.do = fptosi float %i.dn to i64               ; 3 uses
  %i.dp = call noalias ptr @_safe_emalloc(i64 noundef %i.do, i64 noundef %i.dk, i64 noundef 0) #16 ; 6 uses
  %i.dq = load i64, ptr %i.g, align 8, !tbaa !26
  %i.dr = call noalias ptr @_safe_emalloc(i64 noundef %i.dq, i64 noundef 1, i64 noundef 4) #16 ; 5 uses
  %i.ds = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.dt = load i64, ptr %i.g, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr align 1 %i.ds, i64 %i.dt, i1 false)
  %.not237249 = icmp slt i64 %i.do, 1
  br i1 %.not237249, label %._crit_edge253, label %.lr.ph252

.lr.ph252:                                        ; preds = %.thread
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 8 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph252, %._crit_edge
  %.0230250 = phi i64 [ 1, %.lr.ph252 ], [ %i.gj, %._crit_edge ] ; 7 uses
  %i.dw = lshr i64 %.0230250, 24
  %i.dx = trunc i64 %i.dw to i8
  %i.dy = load i64, ptr %i.g, align 8, !tbaa !26  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dy ; 4 uses
  store i8 %i.dx, ptr %i.dz, align 1, !tbaa !15
  %i.ea = lshr i64 %.0230250, 16
  %i.eb = trunc i64 %i.ea to i8
  %i.ec = getelementptr i8, ptr %i.dz, i64 1
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !15
  %i.ed = lshr i64 %.0230250, 8
  %i.ee = trunc i64 %i.ed to i8
  %i.ef = getelementptr i8, ptr %i.dz, i64 2
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !15
  %i.eg = trunc i64 %.0230250 to i8
  %i.eh = getelementptr i8, ptr %i.dz, i64 3
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !15
  %i.ei = add nsw i64 %i.dy, 4
  %i.ej = load ptr, ptr %i.aw, align 8, !tbaa !63
  call void %i.ej(ptr noundef %.0.i, ptr noundef null) #16, !inline_history !2
  %i.ek = load ptr, ptr %i.du, align 8, !tbaa !64
  %i.el = load i64, ptr %i.az, align 8, !tbaa !67
  call void %i.ek(ptr noundef %.0.i, ptr noundef %i.bb, i64 noundef %i.el) #16, !inline_history !2
  %i.em = load ptr, ptr %i.du, align 8, !tbaa !64
  call void %i.em(ptr noundef %.0.i, ptr noundef %i.dr, i64 noundef %i.ei) #16, !inline_history !2
  %i.en = load ptr, ptr %i.dv, align 8, !tbaa !66
  call void %i.en(ptr noundef %i.bg, ptr noundef %.0.i) #16, !inline_history !2
  %i.eo = load i64, ptr %i.be, align 8, !tbaa !65
  %i.ep = load ptr, ptr %i.aw, align 8, !tbaa !63
  call void %i.ep(ptr noundef %.0.i, ptr noundef null) #16, !inline_history !2
  %i.eq = load ptr, ptr %i.du, align 8, !tbaa !64
  %i.er = load i64, ptr %i.az, align 8, !tbaa !67
  call void %i.eq(ptr noundef %.0.i, ptr noundef %i.bd, i64 noundef %i.er) #16, !inline_history !2
  %i.es = load ptr, ptr %i.du, align 8, !tbaa !64
  call void %i.es(ptr noundef %.0.i, ptr noundef %i.bg, i64 noundef %i.eo) #16, !inline_history !2
  %i.et = load ptr, ptr %i.dv, align 8, !tbaa !66
  call void %i.et(ptr noundef %i.bg, ptr noundef %.0.i) #16, !inline_history !2
  %i.eu = load i64, ptr %i.be, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bg, i64 %i.eu, i1 false)
  %i.ev = load i64, ptr %i.d, align 8, !tbaa !26
  %i.ew = icmp sgt i64 %i.ev, 1
  br i1 %i.ew, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.y, %php_hash_string_xor.exit
  %.0229248 = phi i64 [ %i.gc, %php_hash_string_xor.exit ], [ 1, %bb.y ]
  %i.ex = load i64, ptr %i.be, align 8, !tbaa !65
  %i.ey = load ptr, ptr %i.aw, align 8, !tbaa !63
  call void %i.ey(ptr noundef %.0.i, ptr noundef null) #16, !inline_history !2
  %i.ez = load ptr, ptr %i.du, align 8, !tbaa !64
  %i.fa = load i64, ptr %i.az, align 8, !tbaa !67
  call void %i.ez(ptr noundef %.0.i, ptr noundef %i.bb, i64 noundef %i.fa) #16, !inline_history !2
  %i.fb = load ptr, ptr %i.du, align 8, !tbaa !64
  call void %i.fb(ptr noundef %.0.i, ptr noundef %i.bg, i64 noundef %i.ex) #16, !inline_history !2
  %i.fc = load ptr, ptr %i.dv, align 8, !tbaa !66
  call void %i.fc(ptr noundef %i.bg, ptr noundef %.0.i) #16, !inline_history !2
  %i.fd = load i64, ptr %i.be, align 8, !tbaa !65
  %i.fe = load ptr, ptr %i.aw, align 8, !tbaa !63
  call void %i.fe(ptr noundef %.0.i, ptr noundef null) #16, !inline_history !2
  %i.ff = load ptr, ptr %i.du, align 8, !tbaa !64
  %i.fg = load i64, ptr %i.az, align 8, !tbaa !67
  call void %i.ff(ptr noundef %.0.i, ptr noundef %i.bd, i64 noundef %i.fg) #16, !inline_history !2
  %i.fh = load ptr, ptr %i.du, align 8, !tbaa !64
  call void %i.fh(ptr noundef %.0.i, ptr noundef %i.bg, i64 noundef %i.fd) #16, !inline_history !2
  %i.fi = load ptr, ptr %i.dv, align 8, !tbaa !66
  call void %i.fi(ptr noundef %i.bg, ptr noundef %.0.i) #16, !inline_history !2
  %i.fj = load i64, ptr %i.be, align 8, !tbaa !65 ; 9 uses
  %.not.i240 = icmp eq i64 %i.fj, 0
  br i1 %.not.i240, label %php_hash_string_xor.exit, label %iter.check320

iter.check320:                                    ; preds = %.lr.ph
  %min.iters.check306 = icmp ult i64 %i.fj, 4
  br i1 %min.iters.check306, label %.lr.ph.i241.preheader, label %vector.main.loop.iter.check307

vector.main.loop.iter.check307:                   ; preds = %iter.check320
  %min.iters.check308 = icmp ult i64 %i.fj, 32
  br i1 %min.iters.check308, label %vec.epilog.ph324, label %vector.ph309

vector.ph309:                                     ; preds = %vector.main.loop.iter.check307
  %i.fk = and i64 %i.fj, 28
  %n.vec310 = and i64 %i.fj, -32                  ; 4 uses
  br label %vector.body311

vector.body311:                                   ; preds = %vector.ph309, %vector.body311
  %index312 = phi i64 [ 0, %vector.ph309 ], [ %index.next317, %vector.body311 ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index312 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %wide.load313.a = load <16 x i8>, ptr %i.fl, align 1, !tbaa !15
  %wide.load314 = load <16 x i8>, ptr %i.fm, align 1, !tbaa !15
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index312 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load315 = load <16 x i8>, ptr %i.fn, align 1, !tbaa !15
  %wide.load316 = load <16 x i8>, ptr %i.fo, align 1, !tbaa !15
  %i.fp = xor <16 x i8> %wide.load315, %wide.load313.a
  %i.fq = xor <16 x i8> %wide.load316, %wide.load314
  store <16 x i8> %i.fp, ptr %i.fl, align 1, !tbaa !15
  store <16 x i8> %i.fq, ptr %i.fm, align 1, !tbaa !15
  %index.next317 = add nuw i64 %index312, 32      ; 2 uses
  %i.fr = icmp eq i64 %index.next317, %n.vec310
  br i1 %i.fr, label %middle.block318, label %vector.body311, !llvm.loop !174

middle.block318:                                  ; preds = %vector.body311
  %cmp.n319 = icmp eq i64 %i.fj, %n.vec310
  br i1 %cmp.n319, label %php_hash_string_xor.exit, label %vec.epilog.iter.check321

vec.epilog.iter.check321:                         ; preds = %middle.block318
  %min.epilog.iters.check323 = icmp eq i64 %i.fk, 0
  br i1 %min.epilog.iters.check323, label %.lr.ph.i241.preheader, label %vec.epilog.ph324, !prof !70

vec.epilog.ph324:                                 ; preds = %vector.main.loop.iter.check307, %vec.epilog.iter.check321
  %vec.epilog.resume.val325 = phi i64 [ %n.vec310, %vec.epilog.iter.check321 ], [ 0, %vector.main.loop.iter.check307 ]
  %n.vec326 = and i64 %i.fj, -4                   ; 3 uses
  br label %vec.epilog.vector.body327

vec.epilog.vector.body327:                        ; preds = %vec.epilog.vector.body327, %vec.epilog.ph324
  %index328 = phi i64 [ %vec.epilog.resume.val325, %vec.epilog.ph324 ], [ %index.next331, %vec.epilog.vector.body327 ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index328 ; 2 uses
  %wide.load329 = load <4 x i8>, ptr %i.fs, align 1, !tbaa !15
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index328
  %wide.load330 = load <4 x i8>, ptr %i.ft, align 1, !tbaa !15
  %i.fu = xor <4 x i8> %wide.load330, %wide.load329
  store <4 x i8> %i.fu, ptr %i.fs, align 1, !tbaa !15
  %index.next331 = add nuw i64 %index328, 4       ; 2 uses
  %i.fv = icmp eq i64 %index.next331, %n.vec326
  br i1 %i.fv, label %vec.epilog.middle.block332, label %vec.epilog.vector.body327, !llvm.loop !175

vec.epilog.middle.block332:                       ; preds = %vec.epilog.vector.body327
  %cmp.n333 = icmp eq i64 %i.fj, %n.vec326
  br i1 %cmp.n333, label %php_hash_string_xor.exit, label %.lr.ph.i241.preheader

.lr.ph.i241.preheader:                            ; preds = %iter.check320, %vec.epilog.iter.check321, %vec.epilog.middle.block332
  %.08.i.ph = phi i64 [ 0, %iter.check320 ], [ %n.vec310, %vec.epilog.iter.check321 ], [ %n.vec326, %vec.epilog.middle.block332 ]
  br label %.lr.ph.i241

.lr.ph.i241:                                      ; preds = %.lr.ph.i241.preheader, %.lr.ph.i241
  %.08.i = phi i64 [ %i.gb, %.lr.ph.i241 ], [ %.08.i.ph, %.lr.ph.i241.preheader ] ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.08.i ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !15
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.08.i
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !15
  %i.ga = xor i8 %i.fz, %i.fx
  store i8 %i.ga, ptr %i.fw, align 1, !tbaa !15
  %i.gb = add nuw i64 %.08.i, 1                   ; 2 uses
  %exitcond.not.i242 = icmp eq i64 %i.gb, %i.fj
  br i1 %exitcond.not.i242, label %php_hash_string_xor.exit, label %.lr.ph.i241, !llvm.loop !176

php_hash_string_xor.exit:                         ; preds = %.lr.ph.i241, %middle.block318, %vec.epilog.middle.block332, %.lr.ph
  %i.gc = add nuw nsw i64 %.0229248, 1            ; 2 uses
  %i.gd = load i64, ptr %i.d, align 8, !tbaa !26
  %i.ge = icmp slt i64 %i.gc, %i.gd
  br i1 %i.ge, label %.lr.ph, label %._crit_edge, !llvm.loop !177

._crit_edge:                                      ; preds = %php_hash_string_xor.exit, %bb.y
  %i.gf = add nsw i64 %.0230250, -1
  %i.gg = load i64, ptr %i.be, align 8, !tbaa !65 ; 2 uses
  %i.gh = mul i64 %i.gg, %i.gf
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.gh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gi, ptr align 1 %i.bi, i64 %i.gg, i1 false)
  %i.gj = add nuw i64 %.0230250, 1
  %exitcond.not = icmp eq i64 %.0230250, %i.do
  br i1 %exitcond.not, label %._crit_edge253, label %bb.y, !llvm.loop !178

._crit_edge253:                                   ; preds = %._crit_edge, %.thread
  %i.gk = load i64, ptr %i.az, align 8, !tbaa !67
  call void @explicit_bzero(ptr noundef %i.bb, i64 noundef %i.gk) #16
  %i.gl = load i64, ptr %i.az, align 8, !tbaa !67
  call void @explicit_bzero(ptr noundef %i.bd, i64 noundef %i.gl) #16
end_hunk_0
