inline.NumInlined: 99
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_PyUnicode_InsertThousandsGrouping:bb.a
  br label %.peel.begin

bb.c:                                             ; preds = %bb.a
  %i.k = select i1 %.not, i64 %1, i64 0
  store i32 127, ptr %8, align 4, !tbaa !7
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ %i.k, %bb.c ], [ %i.j, %bb.b ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !43
  %i.l = load i8, ptr %6, align 1, !tbaa !15      ; 4 uses
  switch i8 %i.l, label %GroupGenerator_next.exit.peel [
    i8 0, label %GroupGenerator_next.exit.thread
    i8 127, label %GroupGenerator_next.exit.thread
  ]

GroupGenerator_next.exit.peel:                    ; preds = %.peel.begin
  %i.m = icmp slt i8 %i.l, 1
  br i1 %i.m, label %GroupGenerator_next.exit.thread, label %bb.d

bb.d:                                             ; preds = %GroupGenerator_next.exit.peel
  %.0.i.peel = zext nneg i8 %i.l to i64
  %i.n = tail call i64 @llvm.smax.i64(i64 %4, i64 %i.c)
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.0.i.peel) ; 3 uses
  %i.q = sub i64 %i.p, %4
  %i.r = tail call i64 @llvm.smax.i64(i64 %i.q, i64 0) ; 2 uses
  %i.s = icmp slt i64 %4, 0
  %i.t = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.p)
  %i.u = select i1 %i.s, i64 0, i64 %i.t          ; 3 uses
  %i.v = add nuw i64 %i.r, %i.u                   ; 2 uses
  call fastcc void @InsertThousandsGrouping_fill(ptr noundef %0, ptr noundef %i.a, ptr noundef %2, ptr noundef %i.b, i64 noundef %i.u, i64 noundef %i.r, ptr noundef null, i64 noundef %.val, ptr noundef %8, i32 noundef %9)
  %i.w = sub i64 %4, %i.u                         ; 2 uses
  %i.x = sub nsw i64 %i.c, %i.p                   ; 2 uses
  %i.y = icmp slt i64 %i.w, 1
  %i.z = icmp slt i64 %i.x, 1
  %or.cond.peel = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.d, %GroupGenerator_next.exit.thread153
  %.sroa.4.0 = phi i8 [ %.sroa.4.1156, %GroupGenerator_next.exit.thread153 ], [ %i.l, %bb.d ]
  %.sroa.7127.0 = phi i64 [ %.sroa.7127.1157, %GroupGenerator_next.exit.thread153 ], [ 1, %bb.d ] ; 3 uses
  %.0110 = phi i64 [ %i.an, %GroupGenerator_next.exit.thread153 ], [ %i.v, %bb.d ] ; 3 uses
  %.0105 = phi i64 [ %i.ao, %GroupGenerator_next.exit.thread153 ], [ %i.w, %bb.d ] ; 7 uses
  %.pn = phi i64 [ %i.ap, %GroupGenerator_next.exit.thread153 ], [ %i.x, %bb.d ]
  %.0 = sub i64 %.pn, %.val                       ; 4 uses
  %i.aa = getelementptr i8, ptr %6, i64 %.sroa.7127.0
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15  ; 3 uses
  switch i8 %i.ab, label %GroupGenerator_next.exit [
    i8 0, label %GroupGenerator_next.exit.thread153
    i8 127, label %GroupGenerator_next.exit.thread
  ]

GroupGenerator_next.exit:                         ; preds = %.peel.next
  %i.ac = add i64 %.sroa.7127.0, 1
  %i.ad = icmp slt i8 %i.ab, 1
  br i1 %i.ad, label %GroupGenerator_next.exit.thread, label %GroupGenerator_next.exit.thread153

GroupGenerator_next.exit.thread153:               ; preds = %.peel.next, %GroupGenerator_next.exit
  %.sroa.7127.1157 = phi i64 [ %i.ac, %GroupGenerator_next.exit ], [ %.sroa.7127.0, %.peel.next ]
  %.sroa.4.1156 = phi i8 [ %i.ab, %GroupGenerator_next.exit ], [ %.sroa.4.0, %.peel.next ] ; 2 uses
  %.0.i = zext nneg i8 %.sroa.4.1156 to i64
  %i.ae = tail call i64 @llvm.smax.i64(i64 %.0105, i64 %.0)
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 1)
  %i.af = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 %.0.i) ; 3 uses
  %i.ag = sub i64 %i.af, %.0105
  %i.ah = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 0) ; 2 uses
  %i.ai = icmp slt i64 %.0105, 0
  %i.aj = tail call i64 @llvm.smin.i64(i64 %.0105, i64 %i.af)
  %i.ak = select i1 %i.ai, i64 0, i64 %i.aj       ; 3 uses
  %i.al = add i64 %.val, %.0110
  %i.am = add i64 %i.al, %i.ah
  %i.an = add i64 %i.am, %i.ak                    ; 2 uses
  call fastcc void @InsertThousandsGrouping_fill(ptr noundef %0, ptr noundef %i.a, ptr noundef %2, ptr noundef %i.b, i64 noundef %i.ak, i64 noundef %i.ah, ptr noundef %7, i64 noundef %.val, ptr noundef %8, i32 noundef %9)
  %i.ao = sub i64 %.0105, %i.ak                   ; 2 uses
  %i.ap = sub i64 %.0, %i.af                      ; 2 uses
  %i.aq = icmp slt i64 %i.ao, 1
  %i.ar = icmp slt i64 %i.ap, 1
  %or.cond = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond, label %.loopexit, label %.peel.next, !llvm.loop !77

GroupGenerator_next.exit.thread:                  ; preds = %.peel.next, %GroupGenerator_next.exit, %.peel.begin, %GroupGenerator_next.exit.peel, %.peel.begin
  %.0110.lcssa = phi i64 [ 0, %.peel.begin ], [ 0, %GroupGenerator_next.exit.peel ], [ 0, %.peel.begin ], [ %.0110, %GroupGenerator_next.exit ], [ %.0110, %.peel.next ]
  %.not122.lcssa = phi i1 [ true, %.peel.begin ], [ true, %GroupGenerator_next.exit.peel ], [ true, %.peel.begin ], [ false, %GroupGenerator_next.exit ], [ false, %.peel.next ] ; 2 uses
  %.0105.lcssa = phi i64 [ %4, %.peel.begin ], [ %4, %GroupGenerator_next.exit.peel ], [ %4, %.peel.begin ], [ %.0105, %GroupGenerator_next.exit ], [ %.0105, %.peel.next ] ; 3 uses
  %.0.lcssa = phi i64 [ %i.c, %.peel.begin ], [ %i.c, %GroupGenerator_next.exit.peel ], [ %i.c, %.peel.begin ], [ %.0, %GroupGenerator_next.exit ], [ %.0, %.peel.next ]
  %i.as = tail call i64 @llvm.smax.i64(i64 %.0105.lcssa, i64 %.0.lcssa)
  %spec.select126 = tail call i64 @llvm.smax.i64(i64 %i.as, i64 1)
  %i.at = sub i64 %spec.select126, %.0105.lcssa
  %i.au = tail call i64 @llvm.smax.i64(i64 %i.at, i64 0) ; 2 uses
  %i.av = tail call i64 @llvm.smax.i64(i64 %.0105.lcssa, i64 0) ; 2 uses
  %spec.select164 = select i1 %.not122.lcssa, i64 0, i64 %.val
  %i.aw = add i64 %spec.select164, %.0110.lcssa
  %i.ax = add i64 %i.aw, %i.au
  %i.ay = add i64 %i.ax, %i.av
  %i.az = select i1 %.not122.lcssa, ptr null, ptr %7
  call fastcc void @InsertThousandsGrouping_fill(ptr noundef %0, ptr noundef %i.a, ptr noundef %2, ptr noundef %i.b, i64 noundef %i.av, i64 noundef %i.au, ptr noundef %i.az, i64 noundef %.val, ptr noundef %8, i32 noundef %9)
  br label %.loopexit

.loopexit:                                        ; preds = %GroupGenerator_next.exit.thread153, %bb.d, %GroupGenerator_next.exit.thread
  %.2 = phi i64 [ %i.ay, %GroupGenerator_next.exit.thread ], [ %i.v, %bb.d ], [ %i.an, %GroupGenerator_next.exit.thread153 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @InsertThousandsGrouping_fill(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr nofree noundef captures(none) %8, i32 noundef range(i32 0, 2) %9) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %8, align 4, !tbaa !7
  %i.b = icmp eq i32 %i.a, 127
  %i.c = icmp ne ptr %6, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %_PyUnicode_Fill.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %6, i64 32
  %.val = load i32, ptr %i.d, align 8             ; 2 uses
  %i.e = and i32 %.val, 64
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.d:                                             ; preds = %bb.c
  %i.f = lshr i32 %.val, 2
  %i.g = and i32 %i.f, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.g, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.g, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %switch.select6.i, %bb.d ], [ 127, %bb.c ]
  store i32 %.0.i, ptr %8, align 4, !tbaa !7
  br label %_PyUnicode_Fill.exit

bb.e:                                             ; preds = %bb.a
  %.not52 = icmp eq ptr %6, null
  %.not54 = icmp eq i32 %9, 0                     ; 2 uses
  br i1 %.not52, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not54, label %.thread, label %.thread78

.thread:                                          ; preds = %bb.f
  %i.h = load i64, ptr %1, align 8, !tbaa !43
  %i.i = sub i64 %i.h, %7                         ; 2 uses
  store i64 %i.i, ptr %1, align 8, !tbaa !43
  %i.j = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.j, i64 noundef %i.i, ptr noundef nonnull %6, i64 noundef 0, i64 noundef %7) #10
  br label %bb.h

.thread78:                                        ; preds = %bb.f
  %i.k = load ptr, ptr %0, align 8, !tbaa !34
  %i.l = load i64, ptr %1, align 8, !tbaa !43
  tail call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.k, i64 noundef %i.l, ptr noundef nonnull %6, i64 noundef 0, i64 noundef %7) #10
  %i.m = load i64, ptr %1, align 8, !tbaa !43
  %i.n = add i64 %i.m, %7                         ; 2 uses
  store i64 %i.n, ptr %1, align 8, !tbaa !43
  br label %.thread96

bb.g:                                             ; preds = %bb.e
  br i1 %.not54, label %bb.h, label %..critedge57_crit_edge

..critedge57_crit_edge:                           ; preds = %bb.g
  %.pre = load i64, ptr %1, align 8, !tbaa !43
  br label %.thread96

bb.h:                                             ; preds = %bb.g, %.thread
  %i.o = load i64, ptr %1, align 8, !tbaa !43
  %i.p = sub i64 %i.o, %4
  store i64 %i.p, ptr %1, align 8, !tbaa !43
  %i.q = load i64, ptr %3, align 8, !tbaa !43
  %i.r = sub i64 %i.q, %4                         ; 2 uses
  store i64 %i.r, ptr %3, align 8, !tbaa !43
  %i.s = load ptr, ptr %0, align 8, !tbaa !34
  %i.t = load i64, ptr %1, align 8, !tbaa !43
  tail call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.s, i64 noundef %i.t, ptr noundef %2, i64 noundef %i.r, i64 noundef %4) #10
  %.not55 = icmp eq i64 %5, 0
  br i1 %.not55, label %_PyUnicode_Fill.exit, label %bb.i

.thread96:                                        ; preds = %.thread78, %..critedge57_crit_edge
  %i.u = phi i64 [ %.pre, %..critedge57_crit_edge ], [ %i.n, %.thread78 ]
  %i.v = load ptr, ptr %0, align 8, !tbaa !34
  %i.w = load i64, ptr %3, align 8, !tbaa !43
  tail call void @_PyUnicode_FastCopyCharacters(ptr noundef %i.v, i64 noundef %i.u, ptr noundef %2, i64 noundef %i.w, i64 noundef %4) #10
  %i.x = load i64, ptr %1, align 8, !tbaa !43
  %i.y = add i64 %i.x, %4
  store i64 %i.y, ptr %1, align 8, !tbaa !43
  %i.z = load i64, ptr %3, align 8, !tbaa !43
  %i.aa = add i64 %i.z, %4
  store i64 %i.aa, ptr %3, align 8, !tbaa !43
  %.not5598 = icmp eq i64 %5, 0
  br i1 %.not5598, label %_PyUnicode_Fill.exit, label %.critedge59

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %1, align 8, !tbaa !43    ; 6 uses
  %i.ac = sub i64 %i.ab, %5                       ; 4 uses
  store i64 %i.ac, ptr %1, align 8, !tbaa !43
  %i.ad = load ptr, ptr %0, align 8, !tbaa !34    ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8            ; 3 uses
  %i.ag = lshr i32 %i.af, 2
  %i.ah = and i32 %i.ag, 7
  %i.ai = and i32 %i.af, 32
  %.not.i60 = icmp eq i32 %i.ai, 0
  br i1 %.not.i60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = and i32 %i.af, 64
  %.not.i.i = icmp eq i32 %i.aj, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.ad, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.ad, i64 56
  %.val4.i = load ptr, ptr %i.ak, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.j, %bb.k
  %.0.i61 = phi ptr [ %.0.i.i, %bb.j ], [ %.val4.i, %bb.k ] ; 7 uses
  %.0.i61128 = ptrtoint ptr %.0.i61 to i64        ; 2 uses
  switch i32 %i.ah, label %bb.o [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 4, label %bb.n
  ]

bb.l:                                             ; preds = %_PyUnicode_DATA.exit
  %i.al = getelementptr i8, ptr %.0.i61, i64 %i.ac
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.al, i8 48, i64 range(i64 1, 0) %5, i1 false)
  br label %_PyUnicode_Fill.exit

bb.m:                                             ; preds = %_PyUnicode_DATA.exit
  %i.am = getelementptr [2 x i8], ptr %.0.i61, i64 %i.ac ; 6 uses
  %i.an = getelementptr [2 x i8], ptr %.0.i61, i64 %i.ab ; 2 uses
  %i.ao = icmp ult ptr %i.am, %i.an
  br i1 %i.ao, label %iter.check158, label %_PyUnicode_Fill.exit

iter.check158:                                    ; preds = %bb.m
  %i.ap = shl i64 %i.ab, 1                        ; 2 uses
  %i.aq = add i64 %i.ap, %.0.i61128               ; 2 uses
  %i.ar = add i64 %i.aq, 2
  %i.as = shl i64 %5, 1                           ; 2 uses
  %i.at = sub i64 %i.ar, %i.as
  %umax142 = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %i.aq)
  %i.au = add i64 %umax142, %i.as
  %i.av = xor i64 %.0.i61128, -1
  %i.aw = add i64 %i.au, %i.av
  %i.ax = sub i64 %i.aw, %i.ap                    ; 3 uses
  %i.ay = lshr i64 %i.ax, 1
  %i.az = add nuw i64 %i.ay, 1                    ; 5 uses
  %min.iters.check144.a = icmp ult i64 %i.ax, 6
  br i1 %min.iters.check144.a, label %.lr.ph30.i.preheader, label %vector.main.loop.iter.check145

vector.main.loop.iter.check145:                   ; preds = %iter.check158
  %min.iters.check146 = icmp ult i64 %i.ax, 30
  br i1 %min.iters.check146, label %vec.epilog.ph162, label %vector.ph147

vector.ph147:                                     ; preds = %vector.main.loop.iter.check145
  %n.mod.vf148 = and i64 %i.az, 12
  %n.vec149 = and i64 %i.az, -16                  ; 4 uses
  %i.ba = shl i64 %n.vec149, 1
  %i.bb = getelementptr i8, ptr %i.am, i64 %i.ba
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph147
  %index151 = phi i64 [ 0, %vector.ph147 ], [ %index.next153, %vector.body150 ] ; 2 uses
  %i.bc = shl i64 %index151, 1
  %next.gep152 = getelementptr i8, ptr %i.am, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep152, i64 16
  store <8 x i16> splat (i16 48), ptr %next.gep152, align 2, !tbaa !47
  store <8 x i16> splat (i16 48), ptr %i.bd, align 2, !tbaa !47
  %index.next153 = add nuw i64 %index151, 16      ; 2 uses
  %i.be = icmp eq i64 %index.next153, %n.vec149
  br i1 %i.be, label %middle.block154, label %vector.body150, !llvm.loop !79

middle.block154:                                  ; preds = %vector.body150
  %cmp.n155 = icmp eq i64 %i.az, %n.vec149
  br i1 %cmp.n155, label %_PyUnicode_Fill.exit, label %vec.epilog.iter.check160

vec.epilog.iter.check160:                         ; preds = %middle.block154
  %min.epilog.iters.check161 = icmp eq i64 %n.mod.vf148, 0
  br i1 %min.epilog.iters.check161, label %.lr.ph30.i.preheader, label %vec.epilog.ph162, !prof !82

vec.epilog.ph162:                                 ; preds = %vector.main.loop.iter.check145, %vec.epilog.iter.check160
  %vec.epilog.resume.val156 = phi i64 [ %n.vec149, %vec.epilog.iter.check160 ], [ 0, %vector.main.loop.iter.check145 ]
  %n.vec164 = and i64 %i.az, -4                   ; 3 uses
  %i.bf = shl i64 %n.vec164, 1
  %i.bg = getelementptr i8, ptr %i.am, i64 %i.bf
  br label %vec.epilog.vector.body165

vec.epilog.vector.body165:                        ; preds = %vec.epilog.vector.body165, %vec.epilog.ph162
  %index166 = phi i64 [ %vec.epilog.resume.val156, %vec.epilog.ph162 ], [ %index.next168, %vec.epilog.vector.body165 ] ; 2 uses
  %i.bh = shl i64 %index166, 1
  %next.gep167 = getelementptr i8, ptr %i.am, i64 %i.bh
  store <4 x i16> splat (i16 48), ptr %next.gep167, align 2, !tbaa !47
  %index.next168 = add nuw i64 %index166, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next168, %n.vec164
  br i1 %i.bi, label %vec.epilog.middle.block169, label %vec.epilog.vector.body165, !llvm.loop !83

vec.epilog.middle.block169:                       ; preds = %vec.epilog.vector.body165
  %cmp.n170 = icmp eq i64 %i.az, %n.vec164
  br i1 %cmp.n170, label %_PyUnicode_Fill.exit, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %iter.check158, %vec.epilog.iter.check160, %vec.epilog.middle.block169
  %.029.i.ph = phi ptr [ %i.am, %iter.check158 ], [ %i.bb, %vec.epilog.iter.check160 ], [ %i.bg, %vec.epilog.middle.block169 ]
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.029.i = phi ptr [ %i.bj, %.lr.ph30.i ], [ %.029.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  store i16 48, ptr %.029.i, align 2, !tbaa !47
  %i.bj = getelementptr i8, ptr %.029.i, i64 2    ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %i.an
  br i1 %i.bk, label %.lr.ph30.i, label %_PyUnicode_Fill.exit, !llvm.loop !84

bb.n:                                             ; preds = %_PyUnicode_DATA.exit
  %i.bl = getelementptr [4 x i8], ptr %.0.i61, i64 %i.ac ; 4 uses
  %i.bm = getelementptr [4 x i8], ptr %.0.i61, i64 %i.ab ; 2 uses
  %i.bn = icmp ult ptr %i.bl, %i.bm
  br i1 %i.bn, label %.lr.ph.i.preheader, label %_PyUnicode_Fill.exit

.lr.ph.i.preheader:                               ; preds = %bb.n
  %10 = ptrtoint ptr %.0.i61 to i64               ; 3 uses
  %i.bo = shl i64 %i.ab, 2                        ; 2 uses
  %11 = shl i64 %5, 2
  %12 = sub i64 %10, %11
  %13 = add i64 %12, %i.bo
  %i.bp = add i64 %13, 4
  %i.bq = add i64 %i.bo, %10
  %14 = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %i.bq)
  %15 = shl i64 %5, 2
  %16 = shl i64 %i.ab, 2
  %i.br = add i64 %16, %10
  %17 = sub i64 %14, %i.br
  %i.bs = add i64 %17, %15
  %18 = add i64 %i.bs, -1                         ; 2 uses
  %i.bt = lshr i64 %18, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check131 = icmp ult i64 %18, 28
  br i1 %min.iters.check131, label %.lr.ph.i.preheader172, label %vector.ph132

vector.ph132:                                     ; preds = %.lr.ph.i.preheader
  %n.vec134 = and i64 %i.bu, 9223372036854775800  ; 3 uses
  %i.bv = shl i64 %n.vec134, 2
  %i.bw = getelementptr i8, ptr %i.bl, i64 %i.bv
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph132
  %index136 = phi i64 [ 0, %vector.ph132 ], [ %index.next138, %vector.body135 ] ; 2 uses
  %i.bx = shl i64 %index136, 2
  %next.gep137 = getelementptr i8, ptr %i.bl, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep137, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep137, align 4, !tbaa !7
  store <4 x i32> splat (i32 48), ptr %i.by, align 4, !tbaa !7
  %index.next138 = add nuw i64 %index136, 8       ; 2 uses
  %i.bz = icmp eq i64 %index.next138, %n.vec134
  br i1 %i.bz, label %middle.block139, label %vector.body135, !llvm.loop !85

middle.block139:                                  ; preds = %vector.body135
  %cmp.n140 = icmp eq i64 %i.bu, %n.vec134
  br i1 %cmp.n140, label %_PyUnicode_Fill.exit, label %.lr.ph.i.preheader172

.lr.ph.i.preheader172:                            ; preds = %.lr.ph.i.preheader, %middle.block139
  %.02628.i.ph = phi ptr [ %i.bl, %.lr.ph.i.preheader ], [ %i.bw, %middle.block139 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader172, %.lr.ph.i
  %.02628.i = phi ptr [ %i.ca, %.lr.ph.i ], [ %.02628.i.ph, %.lr.ph.i.preheader172 ] ; 2 uses
  store i32 48, ptr %.02628.i, align 4, !tbaa !7
  %i.ca = getelementptr i8, ptr %.02628.i, i64 4  ; 2 uses
  %i.cb = icmp ult ptr %i.ca, %i.bm
  br i1 %i.cb, label %.lr.ph.i, label %_PyUnicode_Fill.exit, !llvm.loop !86

bb.o:                                             ; preds = %_PyUnicode_DATA.exit
  unreachable

.critedge59:                                      ; preds = %.thread96
  %i.cc = load ptr, ptr %0, align 8, !tbaa !34    ; 3 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 32
  %i.ce = load i32, ptr %i.cd, align 8            ; 3 uses
  %i.cf = lshr i32 %i.ce, 2
  %i.cg = and i32 %i.cf, 7
  %i.ch = and i32 %i.ce, 32
  %.not.i63 = icmp eq i32 %i.ch, 0
  br i1 %.not.i63, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge59
  %i.ci = and i32 %i.ce, 64
  %.not.i.i64 = icmp eq i32 %i.ci, 0
  %.0.v.i.i65 = select i1 %.not.i.i64, i64 56, i64 40
  %.0.i.i66 = getelementptr i8, ptr %i.cc, i64 %.0.v.i.i65
  br label %_PyUnicode_DATA.exit69

bb.q:                                             ; preds = %.critedge59
  %i.cj = getelementptr i8, ptr %i.cc, i64 56
  %.val4.i68 = load ptr, ptr %i.cj, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit69

_PyUnicode_DATA.exit69:                           ; preds = %bb.p, %bb.q
  %.0.i67 = phi ptr [ %.0.i.i66, %bb.p ], [ %.val4.i68, %bb.q ] ; 5 uses
  %.0.i67106 = ptrtoint ptr %.0.i67 to i64        ; 2 uses
  %i.ck = load i64, ptr %1, align 8, !tbaa !43    ; 13 uses
  switch i32 %i.cg, label %bb.u [
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 4, label %bb.t
  ]

bb.r:                                             ; preds = %_PyUnicode_DATA.exit69
  %i.cl = getelementptr i8, ptr %.0.i67, i64 %i.ck
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cl, i8 48, i64 range(i64 1, 0) %5, i1 false)
  %.pre85 = load i64, ptr %1, align 8, !tbaa !43
  br label %_PyUnicode_Fill.exit74

bb.s:                                             ; preds = %_PyUnicode_DATA.exit69
  %i.cm = getelementptr [2 x i8], ptr %.0.i67, i64 %i.ck ; 7 uses
  %i.cn = getelementptr [2 x i8], ptr %i.cm, i64 %5 ; 2 uses
  %i.co = icmp ult ptr %i.cm, %i.cn
  br i1 %i.co, label %iter.check, label %_PyUnicode_Fill.exit74

iter.check:                                       ; preds = %bb.s
  %i.cp = shl i64 %i.ck, 1                        ; 2 uses
  %i.cq = add i64 %i.cp, %.0.i67106               ; 2 uses
  %i.cr = shl i64 %5, 1
  %i.cs = add i64 %i.cq, %i.cr
  %i.ct = add i64 %i.cq, 2
  %umax107 = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 %i.ct)
  %i.cu = xor i64 %.0.i67106, -1
  %i.cv = add i64 %umax107, %i.cu
  %i.cw = sub i64 %i.cv, %i.cp                    ; 3 uses
  %i.cx = lshr i64 %i.cw, 1
  %i.cy = add nuw i64 %i.cx, 1                    ; 5 uses
  %min.iters.check109.a = icmp ult i64 %i.cw, 6
  br i1 %min.iters.check109.a, label %.lr.ph30.i72.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check110 = icmp ult i64 %i.cw, 30
  br i1 %min.iters.check110, label %vec.epilog.ph, label %vector.ph111

vector.ph111:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf112 = and i64 %i.cy, 12
  %n.vec113 = and i64 %i.cy, -16                  ; 4 uses
  %i.cz = shl i64 %n.vec113, 1
  %i.da = getelementptr i8, ptr %i.cm, i64 %i.cz
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph111
  %index115 = phi i64 [ 0, %vector.ph111 ], [ %index.next117, %vector.body114 ] ; 2 uses
  %i.db = shl i64 %index115, 1
  %next.gep116 = getelementptr i8, ptr %i.cm, i64 %i.db ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep116, i64 16
  store <8 x i16> splat (i16 48), ptr %next.gep116, align 2, !tbaa !47
  store <8 x i16> splat (i16 48), ptr %i.dc, align 2, !tbaa !47
  %index.next117 = add nuw i64 %index115, 16      ; 2 uses
  %i.dd = icmp eq i64 %index.next117, %n.vec113
  br i1 %i.dd, label %middle.block118, label %vector.body114, !llvm.loop !87

middle.block118:                                  ; preds = %vector.body114
  %cmp.n119 = icmp eq i64 %i.cy, %n.vec113
  br i1 %cmp.n119, label %_PyUnicode_Fill.exit74, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block118
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf112, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i72.preheader, label %vec.epilog.ph, !prof !82

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec113, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %i.cy, -4                   ; 3 uses
  %i.de = shl i64 %n.vec122, 1
  %i.df = getelementptr i8, ptr %i.cm, i64 %i.de
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %i.dg = shl i64 %index123, 1
  %next.gep124 = getelementptr i8, ptr %i.cm, i64 %i.dg
  store <4 x i16> splat (i16 48), ptr %next.gep124, align 2, !tbaa !47
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next125, %n.vec122
  br i1 %i.dh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n126 = icmp eq i64 %i.cy, %n.vec122
  br i1 %cmp.n126, label %_PyUnicode_Fill.exit74, label %.lr.ph30.i72.preheader

.lr.ph30.i72.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i73.ph = phi ptr [ %i.cm, %iter.check ], [ %i.da, %vec.epilog.iter.check ], [ %i.df, %vec.epilog.middle.block ]
  br label %.lr.ph30.i72

.lr.ph30.i72:                                     ; preds = %.lr.ph30.i72.preheader, %.lr.ph30.i72
  %.029.i73 = phi ptr [ %i.di, %.lr.ph30.i72 ], [ %.029.i73.ph, %.lr.ph30.i72.preheader ] ; 2 uses
  store i16 48, ptr %.029.i73, align 2, !tbaa !47
  %i.di = getelementptr i8, ptr %.029.i73, i64 2  ; 2 uses
  %i.dj = icmp ult ptr %i.di, %i.cn
  br i1 %i.dj, label %.lr.ph30.i72, label %_PyUnicode_Fill.exit74, !llvm.loop !89

bb.t:                                             ; preds = %_PyUnicode_DATA.exit69
  %i.dk = getelementptr [4 x i8], ptr %.0.i67, i64 %i.ck ; 5 uses
  %i.dl = getelementptr [4 x i8], ptr %i.dk, i64 %5 ; 2 uses
  %i.dm = icmp ult ptr %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph.i70.preheader, label %_PyUnicode_Fill.exit74

.lr.ph.i70.preheader:                             ; preds = %bb.t
  %19 = ptrtoint ptr %.0.i67 to i64               ; 2 uses
  %i.dn = shl i64 %i.ck, 2
  %20 = shl i64 %5, 2
  %21 = add i64 %i.dn, %19                        ; 2 uses
  %i.do = add i64 %21, %20
  %i.dp = add i64 %21, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.do, i64 %i.dp)
  %22 = shl i64 %i.ck, 2
  %i.dq = add i64 %22, %19
  %23 = xor i64 %i.dq, -1
  %24 = add i64 %umax, %23                        ; 2 uses
  %i.dr = lshr i64 %24, 2
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %24, 28
  br i1 %min.iters.check, label %.lr.ph.i70.preheader174, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i70.preheader
  %n.vec = and i64 %i.ds, 9223372036854775800     ; 3 uses
  %i.dt = shl i64 %n.vec, 2
  %i.du = getelementptr i8, ptr %i.dk, i64 %i.dt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dk, i64 %i.dv ; 2 uses
  %i.dw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> splat (i32 48), ptr %i.dw, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ds, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit74, label %.lr.ph.i70.preheader174

.lr.ph.i70.preheader174:                          ; preds = %.lr.ph.i70.preheader, %middle.block
  %.02628.i71.ph = phi ptr [ %i.dk, %.lr.ph.i70.preheader ], [ %i.du, %middle.block ]
  br label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %.lr.ph.i70.preheader174, %.lr.ph.i70
  %.02628.i71 = phi ptr [ %i.dy, %.lr.ph.i70 ], [ %.02628.i71.ph, %.lr.ph.i70.preheader174 ] ; 2 uses
  store i32 48, ptr %.02628.i71, align 4, !tbaa !7
  %i.dy = getelementptr i8, ptr %.02628.i71, i64 4 ; 2 uses
  %i.dz = icmp ult ptr %i.dy, %i.dl
  br i1 %i.dz, label %.lr.ph.i70, label %_PyUnicode_Fill.exit74, !llvm.loop !91

bb.u:                                             ; preds = %_PyUnicode_DATA.exit69
  unreachable

_PyUnicode_Fill.exit74:                           ; preds = %.lr.ph.i70, %.lr.ph30.i72, %middle.block, %middle.block118, %vec.epilog.middle.block, %bb.r, %bb.s, %bb.t
  %i.ea = phi i64 [ %i.ck, %middle.block118 ], [ %i.ck, %bb.t ], [ %.pre85, %bb.r ], [ %i.ck, %bb.s ], [ %i.ck, %middle.block ], [ %i.ck, %vec.epilog.middle.block ], [ %i.ck, %.lr.ph30.i72 ], [ %i.ck, %.lr.ph.i70 ]
  %i.eb = add i64 %i.ea, %5
  store i64 %i.eb, ptr %1, align 8, !tbaa !43
  br label %_PyUnicode_Fill.exit

_PyUnicode_Fill.exit:                             ; preds = %.lr.ph.i, %.lr.ph30.i, %middle.block139, %middle.block154, %vec.epilog.middle.block169, %.thread96, %bb.n, %bb.m, %bb.l, %_PyUnicode_Fill.exit74, %bb.b, %PyUnicode_MAX_CHAR_VALUE.exit, %bb.h
  ret void
}

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

declare double @PyFloat_AsDouble(ptr noundef) local_unnamed_addr #2

declare ptr @PyOS_double_to_string(double noundef, i8 noundef signext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @_PyUnicodeWriter_WriteASCIIString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @_PyUnicode_FromASCII(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @parse_number(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, 2) %1, i64 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 7                          ; 3 uses
  %i.e = and i32 %i.b, 32
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 64
  %.not.i.i = icmp eq i32 %i.f, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 9 uses
  %i.h = icmp slt i64 %1, %2
  br i1 %i.h, label %.lr.ph, label %.critedge33.thread

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit
  switch i32 %i.d, label %PyUnicode_READ.exit [
    i32 1, label %PyUnicode_READ.exit.us
    i32 2, label %PyUnicode_READ.exit.us45
  ]

PyUnicode_READ.exit.us:                           ; preds = %.lr.ph, %bb.d
  %.041.us = phi i64 [ %i.o, %bb.d ], [ %1, %.lr.ph ] ; 3 uses
  %i.i = getelementptr i8, ptr %.0.i, i64 %.041.us
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = and i32 %i.m, 4
  %.not.us = icmp eq i32 %i.n, 0
  br i1 %.not.us, label %.critedge, label %bb.d

bb.d:                                             ; preds = %PyUnicode_READ.exit.us
  %i.o = add nuw i64 %.041.us, 1                  ; 2 uses
  %exitcond80.not = icmp eq i64 %i.o, %2
  br i1 %exitcond80.not, label %.critedge33.thread, label %PyUnicode_READ.exit.us, !llvm.loop !92

PyUnicode_READ.exit.us45:                         ; preds = %.lr.ph, %bb.e
  %.041.us44 = phi i64 [ %i.w, %bb.e ], [ %1, %.lr.ph ] ; 3 uses
  %i.p = getelementptr [2 x i8], ptr %.0.i, i64 %.041.us44
  %i.q = load i16, ptr %i.p, align 2, !tbaa !47
  %i.r = and i16 %i.q, 255
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = and i32 %i.u, 4
  %.not.us47 = icmp eq i32 %i.v, 0
  br i1 %.not.us47, label %.critedge, label %bb.e

bb.e:                                             ; preds = %PyUnicode_READ.exit.us45
  %i.w = add nuw i64 %.041.us44, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %2
  br i1 %exitcond.not, label %.critedge33.thread, label %PyUnicode_READ.exit.us45, !llvm.loop !92

.critedge33.thread:                               ; preds = %bb.e, %bb.d, %bb.f, %_PyUnicode_DATA.exit
  %.0.lcssa = phi i64 [ %1, %_PyUnicode_DATA.exit ], [ %2, %bb.d ], [ %2, %bb.f ], [ %2, %bb.e ]
  store i32 0, ptr %5, align 4, !tbaa !7
  br label %bb.j

PyUnicode_READ.exit:                              ; preds = %.lr.ph, %bb.f
  %.041 = phi i64 [ %i.ae, %bb.f ], [ %1, %.lr.ph ] ; 3 uses
  %i.x = getelementptr [4 x i8], ptr %.0.i, i64 %.041
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = and i32 %i.y, 255
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = and i32 %i.ac, 4
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %PyUnicode_READ.exit
  %i.ae = add nuw i64 %.041, 1                    ; 2 uses
  %exitcond81.not = icmp eq i64 %i.ae, %2
  br i1 %exitcond81.not, label %.critedge33.thread, label %PyUnicode_READ.exit, !llvm.loop !92

.critedge:                                        ; preds = %PyUnicode_READ.exit.us45, %PyUnicode_READ.exit.us, %PyUnicode_READ.exit
  %.us-phi = phi i64 [ %.041.us, %PyUnicode_READ.exit.us ], [ %.041, %PyUnicode_READ.exit ], [ %.041.us44, %PyUnicode_READ.exit.us45 ] ; 4 uses
  switch i32 %i.d, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %.critedge
  %i.af = getelementptr i8, ptr %.0.i, i64 %.us-phi
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15
  %i.ah = zext i8 %i.ag to i32
  br label %.critedge33

bb.h:                                             ; preds = %.critedge
  %i.ai = getelementptr [2 x i8], ptr %.0.i, i64 %.us-phi
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !47
  %i.ak = zext i16 %i.aj to i32
  br label %.critedge33

bb.i:                                             ; preds = %.critedge
  %i.al = getelementptr [4 x i8], ptr %.0.i, i64 %.us-phi
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7
  br label %.critedge33

.critedge33:                                      ; preds = %bb.i, %bb.h, %bb.g
  %.0.i35 = phi i32 [ %i.ah, %bb.g ], [ %i.ak, %bb.h ], [ %i.am, %bb.i ]
  %.0.i35.fr = freeze i32 %.0.i35
  %i.an = icmp eq i32 %.0.i35.fr, 46              ; 2 uses
  %i.ao = zext i1 %i.an to i32
  store i32 %i.ao, ptr %5, align 4, !tbaa !7
  %i.ap = zext i1 %i.an to i64
  %spec.select = add nuw nsw i64 %.us-phi, %i.ap
  br label %bb.j

bb.j:                                             ; preds = %.critedge33, %.critedge33.thread
  %i.aq = phi i64 [ %.0.lcssa, %.critedge33.thread ], [ %spec.select, %.critedge33 ] ; 6 uses
  %i.ar = icmp slt i64 %i.aq, %2
  br i1 %i.ar, label %.lr.ph53, label %.critedge2

.lr.ph53:                                         ; preds = %bb.j
  switch i32 %i.d, label %PyUnicode_READ.exit38 [
    i32 1, label %PyUnicode_READ.exit38.us
    i32 2, label %PyUnicode_READ.exit38.us60
  ]

PyUnicode_READ.exit38.us:                         ; preds = %.lr.ph53, %bb.k
  %.252.us = phi i64 [ %i.ay, %bb.k ], [ %i.aq, %.lr.ph53 ] ; 3 uses
  %i.as = getelementptr i8, ptr %.0.i, i64 %.252.us
  %i.at = load i8, ptr %i.as, align 1, !tbaa !15
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.au
end_hunk_0
