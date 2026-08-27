Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/namei_msdos?download=true
inline.NumInlined: 62
inline.NumDeleted: 9
begin_hunk_0_@msdos_rename:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.val = load ptr, ptr %i.g, align 32
  %i.em = getelementptr i8, ptr %.val, i64 120
  call void @mutex_unlock(ptr noundef %i.em) #11
  %.not28 = icmp eq i32 %.110013.i, 0
  br i1 %.not28, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.en = call i32 @fat_flush_inodes(ptr noundef %i.f, ptr noundef %1, ptr noundef %3) #11
  br label %bb.ba

bb.ba:                                            ; preds = %.thread, %bb.ay, %bb.az, %bb.a
  %.023 = phi i32 [ -22, %bb.a ], [ %.110013.i, %bb.ay ], [ %i.en, %bb.az ], [ %.0.ph, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret i32 %.023
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_setattr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_update_time(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_fileattr_get(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @fat_build_inode(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 -22, 1) i32 @msdos_format_name(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = icmp eq i8 %i.a, 46
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 40
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 8
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 1
  %i.g = add i32 %1, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0129 = phi i32 [ %i.g, %bb.c ], [ %1, %bb.a ] ; 2 uses
  %.0123 = phi ptr [ %i.f, %bb.c ], [ %0, %bb.a ] ; 3 uses
  %i.h = ptrtoint ptr %2 to i64                   ; 6 uses
  %.not214 = icmp eq i32 %.0129, 0
  br i1 %.not214, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.i = getelementptr i8, ptr %3, i64 34         ; 5 uses
  %i.j = getelementptr i8, ptr %3, i64 40         ; 3 uses
  %i.k = getelementptr i8, ptr %.0123, i64 1      ; 2 uses
  %i.l = load i8, ptr %.0123, align 1
  %.fr.peel = freeze i8 %i.l                      ; 8 uses
  %i.m = add i32 %.0129, -1                       ; 2 uses
  %i.n = load i8, ptr %i.i, align 2               ; 2 uses
  %.not138.peel = icmp eq i8 %i.n, 114
  br i1 %.not138.peel, label %.thread150.peel, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.o = zext i8 %.fr.peel to i32                 ; 2 uses
  %i.p = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @bad_chars, i32 noundef %i.o) #11
  %.not139.peel = icmp eq ptr %i.p, null
  br i1 %.not139.peel, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq i8 %i.n, 115
  br i1 %i.q, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.r = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @bad_if_strict, i32 noundef %i.o) #11
  %.not140.peel = icmp ne ptr %i.r, null
  %i.s = add i8 %.fr.peel, -65
  %or.cond.peel = icmp ult i8 %i.s, 26
  %or.cond284 = or i1 %.not140.peel, %or.cond.peel
  %.old.peel = icmp ult i8 %.fr.peel, 32
  %or.cond285 = or i1 %or.cond284, %.old.peel
  br i1 %or.cond285, label %.loopexit, label %switch.early.test.peel

.thread:                                          ; preds = %bb.f
  %or.cond286 = icmp ult i8 %.fr.peel, 32
  br i1 %or.cond286, label %.loopexit, label %switch.early.test.peel

.thread150.peel:                                  ; preds = %.lr.ph
  %or.cond158.peel = icmp ult i8 %.fr.peel, 32
  br i1 %or.cond158.peel, label %.loopexit, label %switch.early.test.peel

switch.early.test.peel:                           ; preds = %bb.g, %.thread, %.thread150.peel
  switch i8 %.fr.peel, label %bb.h [
    i8 92, label %.loopexit
    i8 58, label %.loopexit
  ]

bb.h:                                             ; preds = %switch.early.test.peel
  %i.t = icmp eq i8 %.fr.peel, -27
  %spec.store.select.peel = select i1 %i.t, i8 5, i8 %.fr.peel ; 6 uses
  %i.u = icmp eq i8 %spec.store.select.peel, 46
  br i1 %i.u, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp ne i8 %spec.store.select.peel, 32   ; 2 uses
  %i.w = load i16, ptr %i.j, align 8
  %i.x = and i16 %i.w, 512
  %i.y = icmp eq i16 %i.x, 0
  %i.z = add i8 %spec.store.select.peel, -97
  %i.aa = icmp ult i8 %i.z, 26
  %or.cond17.peel = and i1 %i.aa, %i.y
  %i.ab = add i8 %spec.store.select.peel, -32
  %i.ac = select i1 %or.cond17.peel, i8 %i.ab, i8 %spec.store.select.peel
  store i8 %i.ac, ptr %2, align 1
  %i.ad = getelementptr i8, ptr %2, i64 1         ; 2 uses
  %.not243 = icmp eq i32 %i.m, 0
  br i1 %.not243, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.i, %bb.m
  %.0181 = phi i1 [ %i.an, %bb.m ], [ %i.v, %bb.i ]
  %.0118180 = phi ptr [ %i.av, %bb.m ], [ %i.ad, %bb.i ] ; 3 uses
  %.1124179 = phi ptr [ %i.ae, %bb.m ], [ %i.k, %bb.i ] ; 3 uses
  %.1130178 = phi i32 [ %i.ag, %bb.m ], [ %i.m, %bb.i ] ; 2 uses
  %i.ae = getelementptr i8, ptr %.1124179, i64 1  ; 2 uses
  %i.af = load i8, ptr %.1124179, align 1
  %.fr = freeze i8 %i.af                          ; 11 uses
  %i.ag = add i32 %.1130178, -1                   ; 3 uses
  %i.ah = load i8, ptr %i.i, align 2              ; 2 uses
  %.not138 = icmp eq i8 %i.ah, 114
  br i1 %.not138, label %.thread150, label %bb.j

bb.j:                                             ; preds = %.peel.next
  %i.ai = zext i8 %.fr to i32                     ; 2 uses
  %i.aj = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @bad_chars, i32 noundef %i.ai) #11
  %.not139 = icmp eq ptr %i.aj, null
  br i1 %.not139, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp eq i8 %i.ah, 115
  br i1 %i.ak, label %bb.l, label %.thread246

bb.l:                                             ; preds = %bb.k
  %i.al = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @bad_if_strict, i32 noundef %i.ai) #11
  %.not140 = icmp ne ptr %i.al, null
  %i.am = add i8 %.fr, -65
  %or.cond = icmp ult i8 %i.am, 26
  %or.cond288 = or i1 %.not140, %or.cond
  %.old = icmp ult i8 %.fr, 32
  %or.cond289 = or i1 %or.cond288, %.old
  br i1 %or.cond289, label %.loopexit, label %switch.early.test

.thread246:                                       ; preds = %bb.k
  %or.cond290 = icmp ult i8 %.fr, 32
  br i1 %or.cond290, label %.loopexit, label %switch.early.test

.thread150:                                       ; preds = %.peel.next
  %or.cond158 = icmp ult i8 %.fr, 32
  br i1 %or.cond158, label %.loopexit, label %switch.early.test

switch.early.test:                                ; preds = %bb.l, %.thread246, %.thread150
  switch i8 %.fr, label %bb.m [
    i8 92, label %.loopexit
    i8 58, label %.loopexit
    i8 46, label %._crit_edge.loopexit
  ]

bb.m:                                             ; preds = %switch.early.test
  %i.an = icmp ne i8 %.fr, 32                     ; 2 uses
  %i.ao = load i16, ptr %i.j, align 8
  %i.ap = and i16 %i.ao, 512
  %i.aq = icmp eq i16 %i.ap, 0
  %i.ar = add i8 %.fr, -97
  %i.as = icmp ult i8 %i.ar, 26
  %or.cond17 = and i1 %i.as, %i.aq
  %i.at = add i8 %.fr, -32
  %i.au = select i1 %or.cond17, i8 %i.at, i8 %.fr
  store i8 %i.au, ptr %.0118180, align 1
  %i.av = getelementptr i8, ptr %.0118180, i64 1  ; 3 uses
  %i.aw = icmp ne i32 %i.ag, 0
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.ax, %i.h
  %4 = icmp samesign ult i64 %i.ay, 8
  %i.az = select i1 %i.aw, i1 %4, i1 false
  br i1 %i.az, label %.peel.next, label %._crit_edge.loopexit, !llvm.loop !19

._crit_edge.loopexit:                             ; preds = %switch.early.test, %bb.m
  %.0118.lcssa.ph = phi ptr [ %i.av, %bb.m ], [ %.0118180, %switch.early.test ]
  %.0.lcssa.ph = phi i1 [ %i.an, %bb.m ], [ %.0181, %switch.early.test ]
  %i.ba = add i32 %.1130178, -2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %.1124179.lcssa234 = phi ptr [ %.0123, %bb.i ], [ %.1124179, %._crit_edge.loopexit ]
  %.1130178.lcssa233 = phi i32 [ -1, %bb.i ], [ %i.ba, %._crit_edge.loopexit ]
  %.lcssa232 = phi ptr [ %i.k, %bb.i ], [ %i.ae, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa230 = phi i32 [ 0, %bb.i ], [ %i.ag, %._crit_edge.loopexit ] ; 4 uses
  %.0118.lcssa = phi ptr [ %i.ad, %bb.i ], [ %.0118.lcssa.ph, %._crit_edge.loopexit ] ; 6 uses
  %.0.lcssa = phi i1 [ %i.v, %bb.i ], [ %.0.lcssa.ph, %._crit_edge.loopexit ]
  %.1117 = phi i8 [ %spec.store.select.peel, %bb.i ], [ %.fr, %._crit_edge.loopexit ] ; 2 uses
  br i1 %.0.lcssa, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %._crit_edge
  %i.bb = load i8, ptr %i.i, align 2
  %i.bc = icmp eq i8 %i.bb, 115
  %i.bd = icmp ne i32 %.lcssa230, 0
  %or.cond19 = and i1 %i.bd, %i.bc
  %i.be = icmp ne i8 %.1117, 46
  %or.cond22 = and i1 %i.be, %or.cond19
  br i1 %or.cond22, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr i8, ptr %.1124179.lcssa234, i64 2
  %i.bg = load i8, ptr %.lcssa232, align 1
  %.not142 = icmp eq i8 %i.bg, 46
  br i1 %.not142, label %.critedge.preheader, label %.loopexit

bb.p:                                             ; preds = %bb.n
  %.not143194 = icmp eq i8 %.1117, 46
  br i1 %.not143194, label %.critedge.preheader, label %.lr.ph198.preheader

.lr.ph198.preheader:                              ; preds = %bb.p
  %.not144308 = icmp eq i32 %.lcssa230, 0
  br i1 %.not144308, label %.critedge.thread, label %.lr.ph311

.critedge.preheader:                              ; preds = %.lr.ph311, %bb.o, %bb.p
  %.4133.lcssa = phi i32 [ %.lcssa230, %bb.p ], [ %.1130178.lcssa233, %bb.o ], [ %i.bm, %.lr.ph311 ] ; 3 uses
  %.4127.lcssa = phi ptr [ %.lcssa232, %bb.p ], [ %i.bf, %bb.o ], [ %i.bn, %.lr.ph311 ]
  %i.bh = ptrtoint ptr %.0118.lcssa to i64        ; 2 uses
  %i.bi = sub i64 %i.bh, %i.h                     ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 8
  br i1 %i.bj, label %.critedge.preheader216, label %.preheader

.critedge.preheader216:                           ; preds = %.critedge.preheader
  %i.bk = add i64 %i.h, 8
  %i.bl = sub i64 %i.bk, %i.bh                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0118.lcssa, i8 32, i64 %i.bl, i1 false)
  %scevgep = getelementptr i8, ptr %.0118.lcssa, i64 %i.bl
  br label %.preheader

.lr.ph198:                                        ; preds = %.lr.ph311
  %.not144 = icmp eq i32 %i.bm, 0
  br i1 %.not144, label %.critedge.thread, label %.lr.ph311, !llvm.loop !22

.lr.ph311:                                        ; preds = %.lr.ph198.preheader, %.lr.ph198
  %.4133195310 = phi i32 [ %i.bm, %.lr.ph198 ], [ %.lcssa230, %.lr.ph198.preheader ]
  %.4127196309 = phi ptr [ %i.bn, %.lr.ph198 ], [ %.lcssa232, %.lr.ph198.preheader ] ; 2 uses
  %i.bm = add i32 %.4133195310, -1                ; 3 uses
  %i.bn = getelementptr i8, ptr %.4127196309, i64 1 ; 2 uses
  %i.bo = load i8, ptr %.4127196309, align 1
  %.not143 = icmp eq i8 %i.bo, 46
  br i1 %.not143, label %.critedge.preheader, label %.lr.ph198, !llvm.loop !22

.preheader:                                       ; preds = %.critedge.preheader216, %.critedge.preheader
  %.pre-phi237 = phi i64 [ 8, %.critedge.preheader216 ], [ %i.bi, %.critedge.preheader ]
  %.1119.lcssa = phi ptr [ %scevgep, %.critedge.preheader216 ], [ %.0118.lcssa, %.critedge.preheader ] ; 2 uses
  %i.bp = icmp sgt i32 %.4133.lcssa, 0
  %i.bq = icmp samesign ult i64 %.pre-phi237, 11
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %i.br, label %.lr.ph208, label %.loopexit159.thread

.lr.ph208:                                        ; preds = %.preheader, %bb.v
  %.1207 = phi i1 [ %i.cd, %bb.v ], [ true, %.preheader ]
  %.2120206 = phi ptr [ %.3121, %bb.v ], [ %.1119.lcssa, %.preheader ] ; 3 uses
  %.5128205 = phi ptr [ %i.bs, %bb.v ], [ %.4127.lcssa, %.preheader ] ; 2 uses
  %.6204 = phi i32 [ %i.bu, %bb.v ], [ %.4133.lcssa, %.preheader ] ; 2 uses
  %i.bs = getelementptr i8, ptr %.5128205, i64 1
  %i.bt = load i8, ptr %.5128205, align 1
  %.fr157 = freeze i8 %i.bt                       ; 8 uses
  %i.bu = add nsw i32 %.6204, -1                  ; 2 uses
  %i.bv = load i8, ptr %i.i, align 2              ; 2 uses
  %.not145 = icmp eq i8 %i.bv, 114
  br i1 %.not145, label %.thread155, label %bb.q

bb.q:                                             ; preds = %.lr.ph208
  %i.bw = zext i8 %.fr157 to i32                  ; 2 uses
  %i.bx = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @bad_chars, i32 noundef %i.bw) #11
  %.not146 = icmp eq ptr %i.bx, null
  br i1 %.not146, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.by = icmp eq i8 %i.bv, 115
  br i1 %i.by, label %bb.s, label %.thread155

bb.s:                                             ; preds = %bb.r
  %i.bz = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @bad_if_strict, i32 noundef %i.bw) #11
  %.not147 = icmp eq ptr %i.bz, null
  br i1 %.not147, label %.thread155, label %.loopexit

.thread155:                                       ; preds = %.lr.ph208, %bb.s, %bb.r
  %i.ca = phi i1 [ false, %bb.r ], [ true, %bb.s ], [ false, %.lr.ph208 ] ; 2 uses
  %i.cb = icmp ult i8 %.fr157, 32
  br i1 %i.cb, label %.loopexit, label %switch.early.test149

switch.early.test149:                             ; preds = %.thread155
  switch i8 %.fr157, label %bb.u [
    i8 92, label %.loopexit
    i8 58, label %.loopexit
    i8 46, label %bb.t
  ]

bb.t:                                             ; preds = %switch.early.test149
  br i1 %i.ca, label %.loopexit, label %.loopexit159

bb.u:                                             ; preds = %switch.early.test149
  %i.cc = add i8 %.fr157, -65
  %or.cond31 = icmp ult i8 %i.cc, 26
  %brmerge.not = and i1 %or.cond31, %i.ca
  br i1 %brmerge.not, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = icmp ne i8 %.fr157, 32                  ; 2 uses
  %i.ce = load i16, ptr %i.j, align 8
  %i.cf = and i16 %i.ce, 512
  %i.cg = icmp eq i16 %i.cf, 0
  %i.ch = add i8 %.fr157, -97
  %i.ci = icmp ult i8 %i.ch, 26
  %or.cond37 = and i1 %i.ci, %i.cg
  %i.cj = add nsw i8 %.fr157, -32
  %storemerge = select i1 %or.cond37, i8 %i.cj, i8 %.fr157
  %.3121 = getelementptr i8, ptr %.2120206, i64 1 ; 3 uses
  store i8 %storemerge, ptr %.2120206, align 1
  %i.ck = icmp samesign ugt i32 %.6204, 1
  %i.cl = ptrtoint ptr %.3121 to i64
  %i.cm = sub i64 %i.cl, %i.h
  %i.cn = icmp slt i64 %i.cm, 11
  %i.co = select i1 %i.ck, i1 %i.cn, i1 false
  br i1 %i.co, label %.lr.ph208, label %.loopexit159, !llvm.loop !23

.loopexit159:                                     ; preds = %bb.v, %bb.t
  %.2120167 = phi ptr [ %.2120206, %bb.t ], [ %.3121, %bb.v ]
  %.1164 = phi i1 [ %.1207, %bb.t ], [ %i.cd, %bb.v ]
  br i1 %.1164, label %.loopexit159.thread, label %.loopexit

.loopexit159.thread:                              ; preds = %.preheader, %.loopexit159
  %.7265 = phi i32 [ %i.bu, %.loopexit159 ], [ %.4133.lcssa, %.preheader ]
  %.2120167264 = phi ptr [ %.2120167, %.loopexit159 ], [ %.1119.lcssa, %.preheader ]
  %i.cp = load i8, ptr %i.i, align 2
  %i.cq = icmp eq i8 %i.cp, 115
  %i.cr = icmp ne i32 %.7265, 0
  %or.cond39 = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %or.cond39, label %.loopexit, label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph198, %.lr.ph198.preheader, %.loopexit159.thread
  %.4 = phi ptr [ %.2120167264, %.loopexit159.thread ], [ %.0118.lcssa, %.lr.ph198.preheader ], [ %.0118.lcssa, %.lr.ph198 ] ; 2 uses
  %i.cs = ptrtoint ptr %.4 to i64                 ; 2 uses
  %i.ct = sub i64 %i.cs, %i.h
  %i.cu = icmp slt i64 %i.ct, 11
  br i1 %i.cu, label %.lr.ph213.preheader, label %.loopexit

.lr.ph213.preheader:                              ; preds = %.critedge.thread
  %i.cv = add i64 %i.h, 11
  %i.cw = sub i64 %i.cv, %i.cs
  tail call void @llvm.memset.p0.i64(ptr align 1 %.4, i8 32, i64 %i.cw, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.thread150, %bb.l, %bb.j, %.thread246, %switch.early.test, %switch.early.test, %bb.u, %switch.early.test149, %switch.early.test149, %.thread155, %bb.s, %bb.q, %.thread, %bb.h, %bb.e, %bb.g, %.thread150.peel, %switch.early.test.peel, %switch.early.test.peel, %.lr.ph213.preheader, %bb.d, %.critedge.thread, %.loopexit159.thread, %.loopexit159, %bb.t, %bb.o, %._crit_edge, %bb.b
  %.0122 = phi i32 [ -22, %bb.b ], [ -22, %bb.t ], [ 0, %.critedge.thread ], [ -22, %bb.e ], [ -22, %.loopexit159 ], [ -22, %._crit_edge ], [ -22, %bb.o ], [ -22, %.loopexit159.thread ], [ -22, %bb.d ], [ 0, %.lr.ph213.preheader ], [ -22, %switch.early.test.peel ], [ -22, %switch.early.test.peel ], [ -22, %.thread150.peel ], [ -22, %.thread ], [ -22, %bb.g ], [ -22, %bb.h ], [ -22, %bb.u ], [ -22, %bb.q ], [ -22, %bb.s ], [ -22, %.thread155 ], [ -22, %switch.early.test149 ], [ -22, %switch.early.test149 ], [ -22, %switch.early.test ], [ -22, %switch.early.test ], [ -22, %.thread246 ], [ -22, %bb.j ], [ -22, %bb.l ], [ -22, %.thread150 ]
  ret i32 %.0122
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local { i64, i64 } @current_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @msdos_add_entry(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, -2147483648) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %7 = alloca %struct.msdos_dir_entry, align 4    ; 13 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 40         ; 2 uses
end_hunk_0
