Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/lzo1x_compress?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lzogeneric1x_1_compress:bb.a
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = icmp ult i64 %i.s, 4
  br i1 %i.y, label %.thread75, label %bb.g

.thread75:                                        ; preds = %bb.f
  %i.z = load i8, ptr %i.c, align 1
  %i.aa = sext i8 %i.z to i64
  %i.ab = getelementptr i8, ptr %.pre102, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = trunc nuw nsw i64 %i.s to i8
  %i.ae = or i8 %i.ac, %i.ad
  store i8 %i.ae, ptr %i.ab, align 1
  br label %.preheader.preheader

bb.g:                                             ; preds = %bb.f
  %i.af = icmp ult i64 %i.s, 19
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = add i64 %i.s, -18                       ; 2 uses
  %i.ah = getelementptr i8, ptr %.pre102, i64 1   ; 3 uses
  store ptr %i.ah, ptr %i.a, align 8
  store i8 0, ptr %.pre102, align 1
  %i.ai = icmp ugt i64 %i.ag, 255
  br i1 %i.ai, label %.lr.ph85.preheader, label %.thread111

.lr.ph85.preheader:                               ; preds = %bb.h
  %i.aj = add i64 %i.s, -274
  %i.ak = udiv i64 %i.aj, 255                     ; 3 uses
  %i.al = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.ah, i8 0, i64 %i.al, i1 false)
  %i.am = add i64 %i.s, -273
  %.neg = mul i64 %i.ak, -255
  %i.an = add i64 %.neg, %i.am
  %i.ao = getelementptr i8, ptr %.pre102, i64 %i.ak
  %scevgep = getelementptr i8, ptr %i.ao, i64 2
  br label %.thread111

.thread111:                                       ; preds = %bb.h, %.lr.ph85.preheader
  %.lcssa83 = phi ptr [ %i.ah, %bb.h ], [ %scevgep, %.lr.ph85.preheader ] ; 2 uses
  %.060.lcssa = phi i64 [ %i.ag, %bb.h ], [ %i.an, %.lr.ph85.preheader ]
  %i.ap = trunc nuw i64 %.060.lcssa to i8
  %i.aq = getelementptr i8, ptr %.lcssa83, i64 1
  store i8 %i.ap, ptr %.lcssa83, align 1
  br label %.preheader76.preheader

bb.i:                                             ; preds = %bb.g, %bb.e
  %.sink128 = phi i8 [ 17, %bb.e ], [ -3, %bb.g ]
  %i.ar = trunc nuw i64 %i.s to i8
  %i.as = add i8 %.sink128, %i.ar
  %i.at = getelementptr i8, ptr %.pre102, i64 1   ; 2 uses
  store i8 %i.as, ptr %.pre102, align 1
  %i.au = icmp samesign ugt i64 %i.s, 15
  br i1 %i.au, label %.preheader76.preheader, label %.preheader.preheader

.preheader76.preheader:                           ; preds = %.thread111, %bb.i
  %.ph8 = phi ptr [ %i.at, %bb.i ], [ %i.aq, %.thread111 ]
  br label %.preheader76

.preheader76:                                     ; preds = %.preheader76.preheader, %.preheader76
  %i.av = phi i64 [ %i.bb, %.preheader76 ], [ %i.s, %.preheader76.preheader ]
  %i.aw = phi ptr [ %i.az, %.preheader76 ], [ %.ph8, %.preheader76.preheader ] ; 3 uses
  %.061 = phi ptr [ %i.ba, %.preheader76 ], [ %i.v, %.preheader76.preheader ] ; 3 uses
  %.0.copyload5 = load i64, ptr %.061, align 1
  store i64 %.0.copyload5, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %.061, i64 8
  %.0.copyload = load i64, ptr %i.ax, align 1
  %i.ay = getelementptr i8, ptr %i.aw, i64 8
  store i64 %.0.copyload, ptr %i.ay, align 1
  %i.az = getelementptr i8, ptr %i.aw, i64 16     ; 3 uses
  %i.ba = getelementptr i8, ptr %.061, i64 16     ; 2 uses
  %i.bb = add i64 %i.av, -16                      ; 4 uses
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %.preheader76, label %thread-pre-split, !llvm.loop !10

thread-pre-split:                                 ; preds = %.preheader76
  %.not70 = icmp eq i64 %i.bb, 0
  br i1 %.not70, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.thread75, %bb.i, %thread-pre-split
  %.ph = phi i64 [ %i.s, %.thread75 ], [ %i.s, %bb.i ], [ %i.bb, %thread-pre-split ] ; 4 uses
  %.ph7 = phi ptr [ %.pre102, %.thread75 ], [ %i.at, %bb.i ], [ %i.az, %thread-pre-split ] ; 2 uses
  %.263.ph = phi ptr [ %i.v, %.thread75 ], [ %i.v, %bb.i ], [ %i.ba, %thread-pre-split ] ; 2 uses
  %xtraiter = and i64 %.ph, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.bd = phi i64 [ %i.bi, %.preheader.prol ], [ %.ph, %.preheader.preheader ]
  %i.be = phi ptr [ %i.bh, %.preheader.prol ], [ %.ph7, %.preheader.preheader ] ; 2 uses
  %.263.prol = phi ptr [ %i.bf, %.preheader.prol ], [ %.263.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.bf = getelementptr i8, ptr %.263.prol, i64 1 ; 2 uses
  %i.bg = load i8, ptr %.263.prol, align 1
  %i.bh = getelementptr i8, ptr %i.be, i64 1      ; 3 uses
  store ptr %i.bh, ptr %i.a, align 8
  store i8 %i.bg, ptr %i.be, align 1
  %i.bi = add i64 %i.bd, -1                       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !12

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %.ph, %.preheader.preheader ], [ %i.bi, %.preheader.prol ]
  %.unr15 = phi ptr [ %.ph7, %.preheader.preheader ], [ %i.bh, %.preheader.prol ]
  %.263.unr = phi ptr [ %.263.ph, %.preheader.preheader ], [ %i.bf, %.preheader.prol ]
  %i.bj = icmp ult i64 %.ph, 4
  br i1 %i.bj, label %.loopexit.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.bk = phi i64 [ %i.by, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %i.bl = phi ptr [ %i.bx, %.preheader ], [ %.unr15, %.preheader.prol.loopexit ] ; 5 uses
  %.263 = phi ptr [ %i.bv, %.preheader ], [ %.263.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.bm = getelementptr i8, ptr %.263, i64 1
  %i.bn = load i8, ptr %.263, align 1
  %i.bo = getelementptr i8, ptr %i.bl, i64 1      ; 2 uses
  store ptr %i.bo, ptr %i.a, align 8
  store i8 %i.bn, ptr %i.bl, align 1
  %i.bp = getelementptr i8, ptr %.263, i64 2
  %i.bq = load i8, ptr %i.bm, align 1
  %i.br = getelementptr i8, ptr %i.bl, i64 2      ; 2 uses
  store ptr %i.br, ptr %i.a, align 8
  store i8 %i.bq, ptr %i.bo, align 1
  %i.bs = getelementptr i8, ptr %.263, i64 3
  %i.bt = load i8, ptr %i.bp, align 1
  %i.bu = getelementptr i8, ptr %i.bl, i64 3      ; 2 uses
  store ptr %i.bu, ptr %i.a, align 8
  store i8 %i.bt, ptr %i.br, align 1
  %i.bv = getelementptr i8, ptr %.263, i64 4
  %i.bw = load i8, ptr %i.bs, align 1
  %i.bx = getelementptr i8, ptr %i.bl, i64 4      ; 2 uses
  store ptr %i.bx, ptr %i.a, align 8
  store i8 %i.bw, ptr %i.bu, align 1
  %i.by = add i64 %i.bk, -4                       ; 2 uses
  %.not71.3 = icmp eq i64 %i.by, 0
  br i1 %.not71.3, label %.loopexit.loopexit, label %.preheader, !llvm.loop !14

.loopexit.loopexit:                               ; preds = %.preheader, %.preheader.prol.loopexit
  %.pre101 = load ptr, ptr %i.a, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %thread-pre-split, %.thread
  %i.bz = phi ptr [ %.pre101, %.loopexit.loopexit ], [ %i.az, %thread-pre-split ], [ %.pre102, %.thread ] ; 4 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 1
  store i8 17, ptr %i.bz, align 1
  %i.cb = getelementptr i8, ptr %i.bz, i64 2
  store i8 0, ptr %i.ca, align 1
  %i.cc = getelementptr i8, ptr %i.bz, i64 3
  store i8 0, ptr %i.cb, align 1
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %2 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local noundef i32 @lzorle1x_1_compress(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) #0 align 16 prefalign(16) {
bb.a:
  tail call fastcc void @lzogeneric1x_1_compress(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 1) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @lzo1x_1_do_compress(ptr noundef %0, i64 noundef range(i64 21, 0) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i8 noundef zeroext range(i8 0, 2) %6) unnamed_addr #3 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 -20      ; 6 uses
  %i.c = load i64, ptr %3, align 8                ; 3 uses
  %i.d = load ptr, ptr %2, align 8                ; 2 uses
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 4, i64 %i.c)
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 1        ; 2 uses
  %.not4662 = icmp ult ptr %i.g, %i.b
  br i1 %.not4662, label %.lr.ph53.lr.ph, label %._crit_edge54, !prof !15

.lr.ph53.lr.ph:                                   ; preds = %bb.a
  %i.h = icmp ne i8 %6, 0
  %i.i = ptrtoint ptr %0 to i64
  %.not301 = icmp eq i8 %6, 0                     ; 2 uses
  br label %.lr.ph53.outer

.lr.ph53.outer:                                   ; preds = %.lr.ph53.lr.ph, %bb.aj
  %.151.ph = phi ptr [ %i.g, %.lr.ph53.lr.ph ], [ %.5, %bb.aj ]
  %.124550.ph = phi ptr [ %i.d, %.lr.ph53.lr.ph ], [ %.12, %bb.aj ] ; 13 uses
  %.125149.ph = phi ptr [ %0, %.lr.ph53.lr.ph ], [ %.5, %bb.aj ] ; 5 uses
  %.125748.ph = phi i64 [ %i.c, %.lr.ph53.lr.ph ], [ 0, %bb.aj ] ; 4 uses
  %.126047.ph = phi ptr [ null, %.lr.ph53.lr.ph ], [ %.2261, %bb.aj ]
  %i.j = ptrtoint ptr %.125149.ph to i64
  br label %.lr.ph53

.loopexit5:                                       ; preds = %bb.i
  %i.k = sub i64 %i.au, %i.j
  %i.l = ashr i64 %i.k, 5
  %i.m = getelementptr i8, ptr %.151, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  %.not46 = icmp ult ptr %i.n, %i.b
  br i1 %.not46, label %.lr.ph53, label %._crit_edge54, !prof !16

.lr.ph53:                                         ; preds = %.lr.ph53.outer, %.loopexit5
  %.151 = phi ptr [ %i.n, %.loopexit5 ], [ %.151.ph, %.lr.ph53.outer ] ; 11 uses
  %.126047 = phi ptr [ %i.at, %.loopexit5 ], [ %.126047.ph, %.lr.ph53.outer ]
  %.1.val = load i32, ptr %.151, align 1          ; 3 uses
  %i.o = icmp eq i32 %.1.val, 0
  %or.cond = and i1 %i.h, %i.o
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %.lr.ph53
  %.12514988.le60 = ptrtoaddr ptr %.125149.ph to i64
  %i.p = getelementptr i8, ptr %.151, i64 4
  %i.q = getelementptr i8, ptr %.151, i64 2052    ; 2 uses
  %i.r = icmp ult ptr %i.b, %i.q
  %i.s = select i1 %i.r, ptr %i.b, ptr %i.q       ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0276 = phi ptr [ %i.p, %bb.b ], [ %i.t, %bb.d ] ; 6 uses
  %i.t = getelementptr i8, ptr %.0276, i64 32     ; 2 uses
  %.not292 = icmp ugt ptr %i.t, %i.s
  br i1 %.not292, label %.preheader15, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.0.copyload56 = load i64, ptr %.0276, align 1
  %i.u = getelementptr i8, ptr %.0276, i64 8
  %.0.copyload53 = load i64, ptr %i.u, align 1
  %i.v = or i64 %.0.copyload53, %.0.copyload56
  %i.w = getelementptr i8, ptr %.0276, i64 16
  %.0.copyload50 = load i64, ptr %i.w, align 1
  %i.x = or i64 %i.v, %.0.copyload50
  %i.y = getelementptr i8, ptr %.0276, i64 24
  %.0.copyload47 = load i64, ptr %i.y, align 1
  %i.z = or i64 %i.x, %.0.copyload47
  %.not293 = icmp eq i64 %i.z, 0
  br i1 %.not293, label %bb.c, label %.preheader15, !llvm.loop !17

.preheader15:                                     ; preds = %bb.d, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %.preheader15, %bb.f
  %.1277 = phi ptr [ %i.aa, %bb.f ], [ %.0276, %.preheader15 ] ; 4 uses
  %i.aa = getelementptr i8, ptr %.1277, i64 8     ; 2 uses
  %.not294 = icmp ugt ptr %i.aa, %i.s
  br i1 %.not294, label %.loopexit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.0.copyload44 = load i64, ptr %.1277, align 1  ; 2 uses
  %.not295 = icmp eq i64 %.0.copyload44, 0
  br i1 %.not295, label %bb.e, label %bb.g, !llvm.loop !18

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.copyload44, i1 true)
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = getelementptr i8, ptr %.1277, i64 %i.ac
  br label %.loopexit4

.loopexit4:                                       ; preds = %bb.e, %bb.g
  %.2278 = phi ptr [ %i.ad, %bb.g ], [ %.1277, %bb.e ] ; 3 uses
  %i.ae = icmp ult ptr %.2278, %i.s
  br i1 %i.ae, label %.lr.ph, label %.critedge, !prof !15

.lr.ph:                                           ; preds = %.loopexit4, %bb.h
  %.327918 = phi ptr [ %i.ah, %bb.h ], [ %.2278, %.loopexit4 ] ; 3 uses
  %i.af = load i8, ptr %.327918, align 1
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph
  %i.ah = getelementptr i8, ptr %.327918, i64 1   ; 3 uses
  %i.ai = icmp ult ptr %i.ah, %i.s
  br i1 %i.ai, label %.lr.ph, label %.critedge, !prof !19, !llvm.loop !20

.critedge:                                        ; preds = %.lr.ph, %bb.h, %.loopexit4
  %.3279.lcssa = phi ptr [ %.2278, %.loopexit4 ], [ %i.ah, %bb.h ], [ %.327918, %.lr.ph ]
  %i.aj = ptrtoint ptr %.3279.lcssa to i64
  %i.ak = ptrtoint ptr %.151 to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.am, i32 2051)
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph53
  %i.an = mul i32 %.1.val, 405029533
  %i.ao = lshr i32 %i.an, 19
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr [2 x i8], ptr %4, i64 %i.ap ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr i8, ptr %0, i64 %i.as     ; 3 uses
  %i.au = ptrtoint ptr %.151 to i64               ; 3 uses
  %i.av = sub i64 %i.au, %i.i
  %i.aw = trunc i64 %i.av to i16
  store i16 %i.aw, ptr %i.aq, align 2
  %.val = load i32, ptr %i.at, align 1
  %.not291 = icmp eq i32 %.1.val, %.val
  br i1 %.not291, label %.loopexit16, label %.loopexit5, !prof !21

.loopexit16:                                      ; preds = %bb.i
  %.12514988.le = ptrtoaddr ptr %.125149.ph to i64
  br label %bb.j

bb.j:                                             ; preds = %.loopexit16, %.critedge
  %.1251498841 = phi i64 [ %.12514988.le60, %.critedge ], [ %.12514988.le, %.loopexit16 ] ; 2 uses
  %.pre-phi = phi i64 [ %i.ak, %.critedge ], [ %i.au, %.loopexit16 ] ; 4 uses
  %.2273 = phi i32 [ %spec.store.select, %.critedge ], [ 0, %.loopexit16 ] ; 3 uses
  %.2261 = phi ptr [ %.126047, %.critedge ], [ %i.at, %.loopexit16 ] ; 4 uses
  %i.ax = sub i64 0, %.125748.ph
  %i.ay = getelementptr i8, ptr %.125149.ph, i64 %i.ax ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %.pre-phi, %i.az                ; 11 uses
  %.not296 = icmp eq i64 %i.ba, 0
  br i1 %.not296, label %.loopexit3, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp ult i64 %i.ba, 4
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = load i8, ptr %5, align 1
  %i.bd = sext i8 %i.bc to i64
  %i.be = getelementptr i8, ptr %.124550.ph, i64 %i.bd ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = trunc nuw nsw i64 %i.ba to i8
  %i.bh = or i8 %i.bf, %i.bg
  store i8 %i.bh, ptr %i.be, align 1
  %.0.copyload40 = load i32, ptr %i.ay, align 1
  store i32 %.0.copyload40, ptr %.124550.ph, align 1
  %i.bi = getelementptr i8, ptr %.124550.ph, i64 %i.ba
  br label %.loopexit3

bb.m:                                             ; preds = %bb.k
  %i.bj = icmp ult i64 %i.ba, 17
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = trunc nuw nsw i64 %i.ba to i8
  %i.bl = add nsw i8 %i.bk, -3
  %i.bm = getelementptr i8, ptr %.124550.ph, i64 1 ; 2 uses
  store i8 %i.bl, ptr %.124550.ph, align 1
  %.0.copyload36 = load i64, ptr %i.ay, align 1
  store i64 %.0.copyload36, ptr %i.bm, align 1
  %i.bn = getelementptr i8, ptr %i.ay, i64 8
  %.0.copyload32 = load i64, ptr %i.bn, align 1
  %i.bo = getelementptr i8, ptr %.124550.ph, i64 9
  store i64 %.0.copyload32, ptr %i.bo, align 1
  %i.bp = getelementptr i8, ptr %i.bm, i64 %i.ba
  br label %.loopexit3

bb.o:                                             ; preds = %bb.m
  %i.bq = icmp ult i64 %i.ba, 19
  %i.br = getelementptr i8, ptr %.124550.ph, i64 1 ; 4 uses
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = trunc nuw nsw i64 %i.ba to i8
  %i.bt = add nsw i8 %i.bs, -3
  store i8 %i.bt, ptr %.124550.ph, align 1
  br label %.preheader14

bb.q:                                             ; preds = %bb.o
  %i.bu = add i64 %i.ba, -18                      ; 2 uses
  store i8 0, ptr %.124550.ph, align 1
  %i.bv = icmp ugt i64 %i.bu, 255
  br i1 %i.bv, label %.lr.ph24.preheader, label %._crit_edge, !prof !22

.lr.ph24.preheader:                               ; preds = %bb.q
  %7 = add i64 %.125748.ph, -274
  %i.bw = add i64 %7, %.pre-phi
  %i.bx = sub i64 %i.bw, %.1251498841
  %i.by = udiv i64 %i.bx, 255                     ; 4 uses
  %i.bz = add nuw nsw i64 %i.by, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.br, i8 0, i64 %i.bz, i1 false)
  %scevgep89.a = getelementptr i8, ptr %i.br, i64 %i.by
  %8 = add i64 %.125748.ph, -273
  %i.ca = add i64 %8, %.pre-phi
  %i.cb = sub i64 %i.ca, %.1251498841
  %.neg = mul i64 %i.by, -255
  %i.cc = add i64 %.neg, %i.cb
  %scevgep90.a = getelementptr i8, ptr %.124550.ph, i64 2
  %scevgep91 = getelementptr i8, ptr %scevgep90.a, i64 %i.by
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph24.preheader, %bb.q
  %.0280.lcssa = phi i64 [ %i.bu, %bb.q ], [ %i.cc, %.lr.ph24.preheader ]
  %.1245.pn.lcssa = phi ptr [ %.124550.ph, %bb.q ], [ %scevgep89.a, %.lr.ph24.preheader ]
  %.2246.lcssa = phi ptr [ %i.br, %bb.q ], [ %scevgep91, %.lr.ph24.preheader ]
  %i.cd = trunc nuw i64 %.0280.lcssa to i8
  %i.ce = getelementptr i8, ptr %.1245.pn.lcssa, i64 2
  store i8 %i.cd, ptr %.2246.lcssa, align 1
  br label %.preheader14

.preheader14:                                     ; preds = %._crit_edge, %bb.p
  %.4248.ph = phi ptr [ %i.br, %bb.p ], [ %i.ce, %._crit_edge ]
  br label %bb.r

bb.r:                                             ; preds = %.preheader14, %bb.r
  %.0262 = phi i64 [ %i.cj, %bb.r ], [ %i.ba, %.preheader14 ]
  %.2252 = phi ptr [ %i.ci, %bb.r ], [ %i.ay, %.preheader14 ] ; 3 uses
  %.4248 = phi ptr [ %i.ch, %bb.r ], [ %.4248.ph, %.preheader14 ] ; 3 uses
  %.0.copyload25 = load i64, ptr %.2252, align 1
  store i64 %.0.copyload25, ptr %.4248, align 1
  %i.cf = getelementptr i8, ptr %.2252, i64 8
  %.0.copyload21 = load i64, ptr %i.cf, align 1
  %i.cg = getelementptr i8, ptr %.4248, i64 8
  store i64 %.0.copyload21, ptr %i.cg, align 1
  %i.ch = getelementptr i8, ptr %.4248, i64 16    ; 3 uses
  %i.ci = getelementptr i8, ptr %.2252, i64 16    ; 2 uses
  %i.cj = add i64 %.0262, -16                     ; 4 uses
  %i.ck = icmp ugt i64 %i.cj, 15
  br i1 %i.ck, label %bb.r, label %bb.s, !llvm.loop !23

bb.s:                                             ; preds = %bb.r
  %.not297 = icmp eq i64 %i.cj, 0
  br i1 %.not297, label %.loopexit3, label %.preheader2

.preheader2:                                      ; preds = %bb.s, %.preheader2
  %.1263 = phi i64 [ %i.co, %.preheader2 ], [ %i.cj, %bb.s ]
  %.3253 = phi ptr [ %i.cl, %.preheader2 ], [ %i.ci, %bb.s ] ; 2 uses
  %.5249 = phi ptr [ %i.cn, %.preheader2 ], [ %i.ch, %bb.s ] ; 2 uses
  %i.cl = getelementptr i8, ptr %.3253, i64 1
  %i.cm = load i8, ptr %.3253, align 1
  %i.cn = getelementptr i8, ptr %.5249, i64 1     ; 2 uses
  store i8 %i.cm, ptr %.5249, align 1
  %i.co = add i64 %.1263, -1                      ; 2 uses
  %.not298 = icmp eq i64 %i.co, 0
  br i1 %.not298, label %.loopexit3, label %.preheader2, !llvm.loop !24

.loopexit3:                                       ; preds = %.preheader2, %bb.l, %bb.s, %bb.n, %bb.j
  %.6 = phi ptr [ %i.bi, %bb.l ], [ %i.bp, %bb.n ], [ %.124550.ph, %bb.j ], [ %i.ch, %bb.s ], [ %i.cn, %.preheader2 ] ; 17 uses
  %.not299 = icmp eq i32 %.2273, 0
  br i1 %.not299, label %bb.u, label %bb.t, !prof !21

bb.t:                                             ; preds = %.loopexit3
  %i.cp = zext nneg i32 %.2273 to i64
  %i.cq = getelementptr i8, ptr %.151, i64 %i.cp
  %i.cr = add nsw i32 %.2273, -4                  ; 2 uses
  %i.cs = shl i32 %i.cr, 21
  %i.ct = and i32 %i.cr, 7
  %i.cu = or disjoint i32 %i.cs, %i.ct
  %i.cv = or i32 %i.cu, 16776216
  store i32 %i.cv, ptr %.6, align 1
  %i.cw = getelementptr i8, ptr %.6, i64 4
  br label %bb.aj

bb.u:                                             ; preds = %.loopexit3
  %i.cx = getelementptr i8, ptr %.151, i64 4
  %.0.copyload15 = load i64, ptr %i.cx, align 1   ; 2 uses
  %i.cy = getelementptr i8, ptr %.2261, i64 4
  %.0.copyload12 = load i64, ptr %i.cy, align 1   ; 2 uses
  %i.cz = xor i64 %.0.copyload12, %.0.copyload15
  %i.da = icmp eq i64 %.0.copyload15, %.0.copyload12
  br i1 %i.da, label %.preheader, label %bb.w, !prof !25

.preheader:                                       ; preds = %bb.u, %bb.v
  %.0264 = phi i64 [ %i.db, %bb.v ], [ 4, %bb.u ]
  %i.db = add i64 %.0264, 8                       ; 5 uses
  %i.dc = getelementptr i8, ptr %.151, i64 %i.db  ; 2 uses
  %.not300 = icmp ult ptr %i.dc, %i.b
  br i1 %.not300, label %bb.v, label %.loopexit, !prof !21

bb.v:                                             ; preds = %.preheader
  %.0.copyload9 = load i64, ptr %i.dc, align 1    ; 2 uses
  %i.dd = getelementptr i8, ptr %.2261, i64 %i.db
  %.0.copyload = load i64, ptr %i.dd, align 1     ; 2 uses
  %i.de = icmp eq i64 %.0.copyload9, %.0.copyload
  br i1 %i.de, label %.preheader, label %.loopexit1, !llvm.loop !26

.loopexit1:                                       ; preds = %bb.v
  %i.df = xor i64 %.0.copyload, %.0.copyload9
  br label %bb.w

bb.w:                                             ; preds = %.loopexit1, %bb.u
  %.0270 = phi i64 [ %i.cz, %bb.u ], [ %i.df, %.loopexit1 ]
  %.1265 = phi i64 [ 4, %bb.u ], [ %i.db, %.loopexit1 ]
  %i.dg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0270, i1 true)
  %i.dh = lshr i64 %i.dg, 3
  %i.di = add i64 %i.dh, %.1265
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.w
  %.2266 = phi i64 [ %i.di, %bb.w ], [ %i.db, %.preheader ] ; 13 uses
  %i.dj = ptrtoint ptr %.2261 to i64
  %i.dk = sub i64 %.pre-phi, %i.dj                ; 7 uses
  %i.dl = getelementptr i8, ptr %.151, i64 %.2266 ; 5 uses
  %i.dm = icmp ult i64 %.2266, 9
  %i.dn = icmp ult i64 %i.dk, 2049
  %or.cond4 = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %or.cond4, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.loopexit
  %i.do = add nsw i64 %i.dk, -1                   ; 2 uses
  %i.dp = shl nuw nsw i64 %.2266, 5
  %i.dq = add nuw nsw i64 %i.dp, 224
  %i.dr = shl nsw i64 %i.do, 2
  %i.ds = and i64 %i.dr, 28
  %i.dt = or disjoint i64 %i.dq, %i.ds
  %i.du = trunc i64 %i.dt to i8
  %i.dv = getelementptr i8, ptr %.6, i64 1
  store i8 %i.du, ptr %.6, align 1
  %i.dw = lshr i64 %i.do, 3
  %i.dx = trunc i64 %i.dw to i8
  %i.dy = getelementptr i8, ptr %.6, i64 2
  store i8 %i.dx, ptr %i.dv, align 1
  br label %bb.aj

bb.y:                                             ; preds = %.loopexit
  %i.dz = icmp ult i64 %i.dk, 16385
  br i1 %i.dz, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.ea = add nsw i64 %i.dk, -1                   ; 2 uses
  %i.eb = icmp ult i64 %.2266, 34
  br i1 %i.eb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ec = trunc nuw nsw i64 %.2266 to i8
  %i.ed = add nsw i8 %i.ec, -2
  %i.ee = or i8 %i.ed, 32
  %i.ef = getelementptr i8, ptr %.6, i64 1
  store i8 %i.ee, ptr %.6, align 1
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.eg = add i64 %.2266, -33                     ; 2 uses
  store i8 32, ptr %.6, align 1
  %.737 = getelementptr i8, ptr %.6, i64 1        ; 3 uses
  %i.eh = icmp ugt i64 %i.eg, 255
  br i1 %i.eh, label %.lr.ph41.preheader, label %._crit_edge42, !prof !22

.lr.ph41.preheader:                               ; preds = %bb.ab
  %i.ei = add i64 %.2266, -289
  %i.ej = udiv i64 %i.ei, 255                     ; 4 uses
  %i.ek = add nuw nsw i64 %i.ej, 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %.737, i8 0, i64 %i.ek, i1 false)
  %scevgep97.a = getelementptr i8, ptr %.737, i64 %i.ej
  %i.el = add i64 %.2266, -288
  %.neg116 = mul i64 %i.ej, -255
  %i.em = add i64 %.neg116, %i.el
  %scevgep98.a = getelementptr i8, ptr %.6, i64 2
  %scevgep99 = getelementptr i8, ptr %scevgep98.a, i64 %i.ej
  br label %._crit_edge42

._crit_edge42:                                    ; preds = %.lr.ph41.preheader, %bb.ab
  %.3267.lcssa = phi i64 [ %i.eg, %bb.ab ], [ %i.em, %.lr.ph41.preheader ]
  %.6.pn302.lcssa = phi ptr [ %.6, %bb.ab ], [ %scevgep97.a, %.lr.ph41.preheader ]
  %.7.lcssa = phi ptr [ %.737, %bb.ab ], [ %scevgep99, %.lr.ph41.preheader ]
  %i.en = trunc nuw i64 %.3267.lcssa to i8
  %i.eo = getelementptr i8, ptr %.6.pn302.lcssa, i64 2
  store i8 %i.en, ptr %.7.lcssa, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge42, %bb.aa
  %.8 = phi ptr [ %i.ef, %bb.aa ], [ %i.eo, %._crit_edge42 ] ; 3 uses
  %.tr303 = trunc i64 %i.ea to i8
  %i.ep = shl i8 %.tr303, 2
  %i.eq = getelementptr i8, ptr %.8, i64 1
  store i8 %i.ep, ptr %.8, align 1
  %i.er = lshr i64 %i.ea, 6
  %i.es = trunc i64 %i.er to i8
  %i.et = getelementptr i8, ptr %.8, i64 2
  store i8 %i.es, ptr %i.eq, align 1
  br label %bb.aj

bb.ad:                                            ; preds = %bb.y
  %i.eu = add i64 %i.dk, -16384                   ; 3 uses
  %i.ev = icmp ult i64 %.2266, 10
  br i1 %i.ev, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ew = lshr i64 %i.eu, 11
  %i.ex = and i64 %i.ew, 8
  %i.ey = add nuw nsw i64 %.2266, 254
  %i.ez = or i64 %i.ey, %i.ex
  %i.fa = trunc i64 %i.ez to i8
  %i.fb = or i8 %i.fa, 16
  %i.fc = getelementptr i8, ptr %.6, i64 1
end_hunk_0
