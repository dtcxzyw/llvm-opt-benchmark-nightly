inline.NumInlined: 24
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@llvm.memcpy.p0.p0.i64
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @filter_address_match(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -1, 3) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [33 x i8], align 16               ; 6 uses
  %i.b = alloca [33 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  switch i32 %3, label %.loopexit [
    i32 2, label %bb.d
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc zeroext i1 @get_full_ipv4_addr(ptr noundef nonnull %i.a, ptr noundef %1)
  br i1 %i.c, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.d = call fastcc zeroext i1 @get_full_ipv4_addr(ptr noundef nonnull %i.b, ptr noundef %2)
  br i1 %i.d, label %bb.f, label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.e = call fastcc i32 @get_full_ipv6_addr(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.f = call fastcc i32 @get_full_ipv6_addr(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %2)
  %.not28 = icmp eq i32 %i.f, 0
  br i1 %.not28, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #21 ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #21
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = load i8, ptr %2, align 1
  %i.m = icmp eq i8 %i.l, 42
  br i1 %i.m, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not29 = icmp eq i32 %i.h, %i.j
  br i1 %.not29, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.n = icmp eq i32 %3, 2
  %i.o = icmp eq i32 %i.h, 32
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %.lr.ph.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = icmp eq i32 %3, 1
  %i.q = icmp eq i32 %i.h, 8
  %or.cond3 = and i1 %i.p, %i.q
  br i1 %or.cond3, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.i, %bb.j
  %wide.trip.count = and i64 %i.g, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.r = getelementptr i8, ptr %i.b, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %.not30 = icmp eq i8 %i.s, 42
  br i1 %.not30, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.t = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 1
  %.not31 = icmp eq i8 %i.s, %i.u
  br i1 %.not31, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !44

.loopexit:                                        ; preds = %bb.k, %bb.l, %bb.j, %bb.h, %bb.g, %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.a ], [ true, %bb.g ], [ false, %bb.h ], [ false, %bb.c ], [ false, %bb.j ], [ false, %bb.b ], [ false, %bb.k ], [ true, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %.0
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @get_full_ipv4_addr(ptr noundef %0, ptr nofree noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 12 uses
  %i.b = alloca [12 x i8], align 1                ; 12 uses
  %i.c = alloca i32, align 4                      ; 31 uses
  %i.d = alloca i32, align 4                      ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 32, ptr %i.d, align 4
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %strcmpload = load i8, ptr %1, align 1
  %i.f = icmp eq i8 %strcmpload, 0
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #21 ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.222, ptr noundef nonnull %i.d) #19
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 32, ptr %i.d, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i8 0, ptr %i.g, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = load i8, ptr %1, align 1
  %i.m = icmp eq i8 %i.l, 42
  br i1 %i.m, label %.preheader.preheader, label %bb.i

.preheader.preheader:                             ; preds = %bb.h
  store i64 3038287259199220266, ptr %0, align 1
  br label %.loopexit.sink.split

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit111
  %i.o = phi i64 [ %i.n, %bb.i ], [ %i.dv, %.loopexit111 ]
  %i.p = phi i64 [ 0, %bb.i ], [ %i.du, %.loopexit111 ] ; 2 uses
  %.088129261 = phi i32 [ 0, %bb.i ], [ %i.dt, %.loopexit111 ]
  %.086130260 = phi i32 [ 0, %bb.i ], [ %.187, %.loopexit111 ] ; 5 uses
  %.083131259 = phi i32 [ 0, %bb.i ], [ %.7, %.loopexit111 ] ; 24 uses
  %.not187 = icmp eq i64 %i.o, %i.p               ; 2 uses
  br i1 %.not187, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.q = zext i32 %.086130260 to i64
  %i.r = getelementptr i8, ptr %i.a, i64 %i.q
  store i8 0, ptr %i.r, align 1
  %i.s = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #21
  %i.t = icmp eq i64 %i.s, 1
  %i.u = load i8, ptr %i.a, align 1
  %i.v = icmp eq i8 %i.u, 42
  %or.cond = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond, label %.preheader110.preheader, label %bb.l

.preheader110.preheader:                          ; preds = %bb.k
  %i.w = zext nneg i32 %.083131259 to i64
  %i.x = getelementptr i8, ptr %0, i64 %i.w
  store i8 42, ptr %i.x, align 1
  %i.y = zext nneg i32 %.083131259 to i64
  %i.z = getelementptr i8, ptr %0, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 1
  store i8 42, ptr %i.aa, align 1
  %i.ab = add nuw nsw i32 %.083131259, 2
  br label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ac = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.223, ptr noundef nonnull %i.c) #19
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4             ; 2 uses
  %i.af = icmp ult i32 %i.ae, 16
  %.str.224..str.225 = select i1 %i.af, ptr @.str.224, ptr @.str.225
  %i.ag = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.b, i64 noundef 11, i32 noundef 2, i64 noundef 12, ptr noundef nonnull %.str.224..str.225, i32 noundef %i.ae) ; 0 uses
  %i.ah = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #21 ; 10 uses
  %.not136 = icmp eq i64 %i.ah, 0
  br i1 %.not136, label %.critedge, label %iter.check290

iter.check290:                                    ; preds = %bb.m
  %min.iters.check276.a = icmp ult i64 %i.ah, 4
  br i1 %min.iters.check276.a, label %.lr.ph125.preheader, label %vector.scevcheck274

vector.scevcheck274:                              ; preds = %iter.check290
  %i.ai = add i64 %i.ah, -1                       ; 2 uses
  %2 = trunc i64 %i.ai to i32                     ; 2 uses
  %i.aj = icmp eq i32 %2, -1
  %i.ak = xor i32 %.083131259, -1
  %i.al = icmp ult i32 %i.ak, %2
  %i.am = icmp ugt i64 %i.ai, 4294967295
  %i.an = or i1 %i.al, %i.am
  %i.ao = or i1 %i.aj, %i.an
  br i1 %i.ao, label %.lr.ph125.preheader, label %vector.main.loop.iter.check277

vector.main.loop.iter.check277:                   ; preds = %vector.scevcheck274
  %min.iters.check278 = icmp ult i64 %i.ah, 32
  br i1 %min.iters.check278, label %vec.epilog.ph294, label %vector.ph279

vector.ph279:                                     ; preds = %vector.main.loop.iter.check277
  %n.mod.vf280 = and i64 %i.ah, 28
  %n.vec281 = and i64 %i.ah, 8589934560           ; 5 uses
  %i.ap = trunc i64 %n.vec281 to i32
  %i.aq = add i32 %.083131259, %i.ap              ; 2 uses
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph279
  %index283 = phi i64 [ 0, %vector.ph279 ], [ %index.next286, %vector.body282 ] ; 3 uses
  %i.ar = trunc i64 %index283 to i32
  %i.as = add i32 %.083131259, %i.ar
  %i.at = getelementptr i8, ptr %i.b, i64 %index283 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %wide.load284 = load <16 x i8>, ptr %i.at, align 1
  %wide.load285 = load <16 x i8>, ptr %i.au, align 1
  %i.av = zext i32 %i.as to i64
  %i.aw = getelementptr i8, ptr %0, i64 %i.av     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <16 x i8> %wide.load284, ptr %i.aw, align 1
  store <16 x i8> %wide.load285, ptr %i.ax, align 1
  %index.next286 = add nuw i64 %index283, 32      ; 2 uses
  %i.ay = icmp eq i64 %index.next286, %n.vec281
  br i1 %i.ay, label %middle.block287, label %vector.body282, !llvm.loop !45

middle.block287:                                  ; preds = %vector.body282
  %cmp.n288 = icmp eq i64 %i.ah, %n.vec281
  br i1 %cmp.n288, label %.critedge, label %vec.epilog.iter.check292

vec.epilog.iter.check292:                         ; preds = %middle.block287
  %min.epilog.iters.check293 = icmp eq i64 %n.mod.vf280, 0
  br i1 %min.epilog.iters.check293, label %.lr.ph125.preheader, label %vec.epilog.ph294, !prof !48

vec.epilog.ph294:                                 ; preds = %vector.main.loop.iter.check277, %vec.epilog.iter.check292
  %vec.epilog.resume.val289 = phi i64 [ %n.vec281, %vec.epilog.iter.check292 ], [ 0, %vector.main.loop.iter.check277 ]
  %n.vec296 = and i64 %i.ah, 8589934588           ; 4 uses
  %i.az = trunc i64 %n.vec296 to i32
  %i.ba = add i32 %.083131259, %i.az              ; 2 uses
  br label %vec.epilog.vector.body297

vec.epilog.vector.body297:                        ; preds = %vec.epilog.vector.body297, %vec.epilog.ph294
  %index298 = phi i64 [ %vec.epilog.resume.val289, %vec.epilog.ph294 ], [ %index.next300, %vec.epilog.vector.body297 ] ; 3 uses
  %i.bb = trunc i64 %index298 to i32
  %i.bc = add i32 %.083131259, %i.bb
  %i.bd = getelementptr i8, ptr %i.b, i64 %index298
  %wide.load299 = load <4 x i8>, ptr %i.bd, align 1
  %i.be = zext i32 %i.bc to i64
  %i.bf = getelementptr i8, ptr %0, i64 %i.be
  store <4 x i8> %wide.load299, ptr %i.bf, align 1
  %index.next300 = add nuw i64 %index298, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next300, %n.vec296
  br i1 %i.bg, label %vec.epilog.middle.block301, label %vec.epilog.vector.body297, !llvm.loop !49

vec.epilog.middle.block301:                       ; preds = %vec.epilog.vector.body297
  %cmp.n302 = icmp eq i64 %i.ah, %n.vec296
  br i1 %cmp.n302, label %.critedge, label %.lr.ph125.preheader

.lr.ph125.preheader:                              ; preds = %vector.scevcheck274, %iter.check290, %vec.epilog.iter.check292, %vec.epilog.middle.block301
  %indvars.iv144.ph = phi i64 [ 0, %iter.check290 ], [ 0, %vector.scevcheck274 ], [ %n.vec281, %vec.epilog.iter.check292 ], [ %n.vec296, %vec.epilog.middle.block301 ]
  %.285124.ph = phi i32 [ %.083131259, %iter.check290 ], [ %.083131259, %vector.scevcheck274 ], [ %i.aq, %vec.epilog.iter.check292 ], [ %i.ba, %vec.epilog.middle.block301 ]
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %.lr.ph125
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %.lr.ph125 ], [ %indvars.iv144.ph, %.lr.ph125.preheader ] ; 2 uses
  %.285124 = phi i32 [ %i.bl, %.lr.ph125 ], [ %.285124.ph, %.lr.ph125.preheader ] ; 2 uses
  %i.bh = getelementptr i8, ptr %i.b, i64 %indvars.iv144
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i32 %.285124 to i64
  %i.bk = getelementptr i8, ptr %0, i64 %i.bj
  store i8 %i.bi, ptr %i.bk, align 1
  %i.bl = add i32 %.285124, 1                     ; 2 uses
  %indvars.iv.next145 = add i64 %indvars.iv144, 1 ; 2 uses
  %i.bm = and i64 %indvars.iv.next145, 4294967295
  %i.bn = icmp ugt i64 %i.ah, %i.bm
  br i1 %i.bn, label %.lr.ph125, label %.critedge, !llvm.loop !50

bb.n:                                             ; preds = %bb.j
  %i.bo = getelementptr i8, ptr %1, i64 %i.p
  %i.bp = load i8, ptr %i.bo, align 1             ; 3 uses
  %i.bq = icmp eq i8 %i.bp, 46
  br i1 %i.bq, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.br = zext i32 %.086130260 to i64
  %i.bs = getelementptr i8, ptr %i.a, i64 %i.br
  store i8 0, ptr %i.bs, align 1
  %i.bt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #21
  %i.bu = icmp eq i64 %i.bt, 1
  %i.bv = load i8, ptr %i.a, align 1
  %i.bw = icmp eq i8 %i.bv, 42
  %or.cond7 = select i1 %i.bu, i1 %i.bw, i1 false
  br i1 %or.cond7, label %.preheader113.preheader, label %bb.p

.preheader113.preheader:                          ; preds = %bb.o
  %i.bx = zext nneg i32 %.083131259 to i64
  %i.by = getelementptr i8, ptr %0, i64 %i.bx
  store i8 42, ptr %i.by, align 1
  %i.bz = zext nneg i32 %.083131259 to i64
  %i.ca = getelementptr i8, ptr %0, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 1
  store i8 42, ptr %i.cb, align 1
  %i.cc = add nuw nsw i32 %.083131259, 2
  br label %.loopexit111

bb.p:                                             ; preds = %bb.o
  %i.cd = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.223, ptr noundef nonnull %i.c) #19
  %i.ce = icmp eq i32 %i.cd, -1
  br i1 %i.ce, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = load i32, ptr %i.c, align 4             ; 2 uses
  %i.cg = icmp ult i32 %i.cf, 16
  %.str.224..str.225249 = select i1 %i.cg, ptr @.str.224, ptr @.str.225
  %i.ch = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.b, i64 noundef 11, i32 noundef 2, i64 noundef 12, ptr noundef nonnull %.str.224..str.225249, i32 noundef %i.cf) ; 0 uses
  %i.ci = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #21 ; 10 uses
  %.not135 = icmp eq i64 %i.ci, 0
  br i1 %.not135, label %.loopexit111, label %iter.check

iter.check:                                       ; preds = %bb.q
  %min.iters.check = icmp ult i64 %i.ci, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cj = add i64 %i.ci, -1                       ; 2 uses
  %3 = trunc i64 %i.cj to i32                     ; 2 uses
  %i.ck = icmp eq i32 %3, -1
  %i.cl = xor i32 %.083131259, -1
  %i.cm = icmp ult i32 %i.cl, %3
  %i.cn = icmp ugt i64 %i.cj, 4294967295
  %i.co = or i1 %i.cm, %i.cn
  %i.cp = or i1 %i.ck, %i.co
  br i1 %i.cp, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check264 = icmp ult i64 %i.ci, 32
  br i1 %min.iters.check264, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ci, 28
  %n.vec = and i64 %i.ci, 8589934560              ; 5 uses
  %i.cq = trunc i64 %n.vec to i32
  %i.cr = add i32 %.083131259, %i.cq              ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cs = trunc i64 %index to i32
  %i.ct = add i32 %.083131259, %i.cs
  %i.cu = getelementptr i8, ptr %i.b, i64 %index  ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  %wide.load = load <16 x i8>, ptr %i.cu, align 1
  %wide.load265 = load <16 x i8>, ptr %i.cv, align 1
  %i.cw = zext i32 %i.ct to i64
  %i.cx = getelementptr i8, ptr %0, i64 %i.cw     ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  store <16 x i8> %wide.load, ptr %i.cx, align 1
  store <16 x i8> %wide.load265, ptr %i.cy, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %.loopexit111, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec267 = and i64 %i.ci, 8589934588           ; 4 uses
  %i.da = trunc i64 %n.vec267 to i32
  %i.db = add i32 %.083131259, %i.da              ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index268 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next270, %vec.epilog.vector.body ] ; 3 uses
  %i.dc = trunc i64 %index268 to i32
  %i.dd = add i32 %.083131259, %i.dc
  %i.de = getelementptr i8, ptr %i.b, i64 %index268
  %wide.load269 = load <4 x i8>, ptr %i.de, align 1
  %i.df = zext i32 %i.dd to i64
  %i.dg = getelementptr i8, ptr %0, i64 %i.df
  store <4 x i8> %wide.load269, ptr %i.dg, align 1
  %index.next270 = add nuw i64 %index268, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next270, %n.vec267
  br i1 %i.dh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n271 = icmp eq i64 %i.ci, %n.vec267
  br i1 %cmp.n271, label %.loopexit111, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec267, %vec.epilog.middle.block ]
  %.5120.ph = phi i32 [ %.083131259, %iter.check ], [ %.083131259, %vector.scevcheck ], [ %i.cr, %vec.epilog.iter.check ], [ %i.db, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.5120 = phi i32 [ %i.dm, %.lr.ph ], [ %.5120.ph, %.lr.ph.preheader ] ; 2 uses
  %i.di = getelementptr i8, ptr %i.b, i64 %indvars.iv
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i32 %.5120 to i64
  %i.dl = getelementptr i8, ptr %0, i64 %i.dk
  store i8 %i.dj, ptr %i.dl, align 1
  %i.dm = add i32 %.5120, 1                       ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dn = and i64 %indvars.iv.next, 4294967295
  %i.do = icmp ugt i64 %i.ci, %i.dn
  br i1 %i.do, label %.lr.ph, label %.loopexit111, !llvm.loop !53

bb.r:                                             ; preds = %bb.n
  %i.dp = icmp ugt i32 %.086130260, 2
  br i1 %i.dp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i8 %i.bp, ptr %i.a, align 1
  br label %.loopexit111

bb.t:                                             ; preds = %bb.r
  %i.dq = zext nneg i32 %.086130260 to i64
  %i.dr = getelementptr i8, ptr %i.a, i64 %i.dq
  store i8 %i.bp, ptr %i.dr, align 1
  %i.ds = add nuw nsw i32 %.086130260, 1
  br label %.loopexit111

.loopexit111:                                     ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.q, %.preheader113.preheader, %bb.t, %bb.s
  %.187 = phi i32 [ %i.ds, %bb.t ], [ 1, %bb.s ], [ 0, %bb.q ], [ 0, %.preheader113.preheader ], [ 0, %middle.block ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph ]
  %.7 = phi i32 [ %.083131259, %bb.t ], [ %.083131259, %bb.s ], [ %.083131259, %bb.q ], [ %i.cc, %.preheader113.preheader ], [ %i.cr, %middle.block ], [ %i.db, %vec.epilog.middle.block ], [ %i.dm, %.lr.ph ] ; 3 uses
  %i.dt = add i32 %.088129261, 1                  ; 2 uses
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 2 uses
  %i.dw = icmp uge i64 %i.dv, %i.du
  %i.dx = icmp ult i32 %.7, 8
  %or.cond9 = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond9, label %bb.j, label %.critedge

.critedge:                                        ; preds = %.loopexit111, %.lr.ph125, %middle.block287, %vec.epilog.middle.block301, %bb.m, %.preheader110.preheader
  %.083.lcssa = phi i32 [ %i.bl, %.lr.ph125 ], [ %.083131259, %bb.m ], [ %i.ab, %.preheader110.preheader ], [ %i.ba, %vec.epilog.middle.block301 ], [ %i.aq, %middle.block287 ], [ %.7, %.loopexit111 ]
  %i.dy = load i32, ptr %i.d, align 4             ; 3 uses
  %i.dz = icmp ult i32 %i.dy, 4
  br i1 %i.dz, label %bb.u, label %bb.y

bb.u:                                             ; preds = %.critedge
  %.not109.not = icmp eq i32 %i.dy, 0
  br i1 %.not109.not, label %.thread193, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ea = load i8, ptr %0, align 1
  %i.eb = icmp eq i8 %i.ea, 42
  br i1 %i.eb, label %.thread193, label %bb.w

.thread193:                                       ; preds = %bb.v, %bb.u
  store i8 42, ptr %0, align 1
  br label %.thread200

bb.w:                                             ; preds = %bb.v
  %i.ec = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %0, ptr noundef nonnull @.str.225, ptr noundef nonnull %i.c) #19
  %i.ed = icmp eq i32 %i.ec, -1
  br i1 %i.ed, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ee = load i32, ptr %i.d, align 4
  %i.ef = sub i32 4, %i.ee
  %i.eg = shl i32 15, %i.ef
  %i.eh = load i32, ptr %i.c, align 4
  %i.ei = and i32 %i.eh, 15
  %i.ej = and i32 %i.ei, %i.eg                    ; 2 uses
  store i32 %i.ej, ptr %i.c, align 4
  %i.ek = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 4, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.225, i32 noundef %i.ej) ; 0 uses
  %.pre = load i32, ptr %i.d, align 4
  br label %bb.y

bb.y:                                             ; preds = %.critedge, %bb.x
  %.pre-phi.in = phi i32 [ %i.dy, %.critedge ], [ %.pre, %bb.x ] ; 3 uses
  %i.el = icmp ult i32 %.pre-phi.in, 8
  br i1 %i.el, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %.not109.1 = icmp samesign ugt i32 %.pre-phi.in, 4
  br i1 %.not109.1, label %bb.aa, label %.thread200

bb.aa:                                            ; preds = %bb.z
  %i.em = getelementptr i8, ptr %0, i64 1         ; 3 uses
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = icmp eq i8 %i.en, 42
  br i1 %i.eo, label %.thread200, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ep = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.em, ptr noundef nonnull @.str.225, ptr noundef nonnull %i.c) #19
  %i.eq = icmp eq i32 %i.ep, -1
  br i1 %i.eq, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.er = load i32, ptr %i.d, align 4
  %i.es = sub i32 8, %i.er
  %i.et = shl i32 15, %i.es
  %i.eu = load i32, ptr %i.c, align 4
  %i.ev = and i32 %i.eu, 15
  %i.ew = and i32 %i.ev, %i.et                    ; 2 uses
  store i32 %i.ew, ptr %i.c, align 4
  %i.ex = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.em, i64 noundef 4, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.225, i32 noundef %i.ew) ; 0 uses
  %.pre156 = load i32, ptr %i.d, align 4
  br label %bb.ad

.thread200:                                       ; preds = %.thread193, %bb.aa, %bb.z
  %i.ey = getelementptr i8, ptr %0, i64 1
  store i8 42, ptr %i.ey, align 1
  br label %.thread207

bb.ad:                                            ; preds = %bb.ac, %bb.y
  %.pre-phi164.in = phi i32 [ %.pre-phi.in, %bb.y ], [ %.pre156, %bb.ac ] ; 3 uses
  %i.ez = icmp ult i32 %.pre-phi164.in, 12
  br i1 %i.ez, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %.not109.2 = icmp samesign ugt i32 %.pre-phi164.in, 8
  br i1 %.not109.2, label %bb.af, label %.thread207

bb.af:                                            ; preds = %bb.ae
  %i.fa = getelementptr i8, ptr %0, i64 2         ; 3 uses
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = icmp eq i8 %i.fb, 42
  br i1 %i.fc, label %.thread207, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fd = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.fa, ptr noundef nonnull @.str.225, ptr noundef nonnull %i.c) #19
end_hunk_0
