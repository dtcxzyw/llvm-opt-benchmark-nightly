inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@PyUnicode_New:bb.a
  %i.af = or disjoint i32 %.046, %i.ae
  store i32 %i.af, ptr %i.ac, align 8
  br i1 %i.b, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_PyObject_Init.exit
  %i.ag = getelementptr i8, ptr %i.y, i64 %0
  store i8 0, ptr %i.ag, align 1, !tbaa !205
  br label %bb.u

bb.p:                                             ; preds = %_PyObject_Init.exit
  br i1 %i.g, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr i8, ptr %i.z, i64 %0
  store i8 0, ptr %i.ah, align 1, !tbaa !205
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  br i1 %i.h, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ai = getelementptr [2 x i8], ptr %i.z, i64 %0
  store i16 0, ptr %i.ai, align 2, !tbaa !208
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.aj = getelementptr [4 x i8], ptr %i.z, i64 %0
  store i32 0, ptr %i.aj, align 4, !tbaa !7
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.f, %bb.h, %bb.j, %bb.l, %bb.q, %bb.t, %bb.s, %bb.o
  %.1 = phi ptr [ %i.r, %bb.o ], [ null, %bb.h ], [ %i.n, %bb.j ], [ %i.t, %bb.l ], [ null, %bb.f ], [ %i.r, %bb.q ], [ %i.r, %bb.t ], [ %i.r, %bb.s ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ]
  ret ptr %.1
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_Malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_PyUnicode_FastCopyCharacters(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call fastcc i32 @_copy_characters(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @_copy_characters(ptr nofree noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %ucs1lib_find_max_char.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 32
  %i.c = load i32, ptr %i.b, align 8              ; 10 uses
  %i.d = lshr i32 %i.c, 2
  %i.e = and i32 %i.d, 7                          ; 6 uses
  %i.f = and i32 %i.c, 32
  %.not.i = icmp eq i32 %i.f, 0                   ; 7 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.c, 64
  %.not.i.i = icmp eq i32 %i.g, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %2, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %2, i64 56
  %.val4.i = load ptr, ptr %i.h, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %.0.i.i, %bb.c ], [ %.val4.i, %bb.d ] ; 6 uses
  %i.i = getelementptr i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8              ; 11 uses
  %i.k = lshr i32 %i.j, 2
  %i.l = and i32 %i.k, 7                          ; 6 uses
  %i.m = and i32 %i.j, 32
  %.not.i265 = icmp eq i32 %i.m, 0                ; 7 uses
  br i1 %.not.i265, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  %i.n = and i32 %i.j, 64
  %.not.i.i266 = icmp eq i32 %i.n, 0
  %.0.v.i.i267 = select i1 %.not.i.i266, i64 56, i64 40
  %.0.i.i268 = getelementptr i8, ptr %0, i64 %.0.v.i.i267
  br label %_PyUnicode_DATA.exit271

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.o = getelementptr i8, ptr %0, i64 56
  %.val4.i270 = load ptr, ptr %i.o, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit271

_PyUnicode_DATA.exit271:                          ; preds = %bb.e, %bb.f
  %.0.i269 = phi ptr [ %.0.i.i268, %bb.e ], [ %.val4.i270, %bb.f ] ; 4 uses
  %i.p = icmp eq i32 %i.e, %i.l
  br i1 %i.p, label %bb.g, label %bb.m

bb.g:                                             ; preds = %_PyUnicode_DATA.exit271
  %.not259 = icmp eq i32 %5, 0
  %i.q = and i32 %i.c, 64
  %.not260 = icmp ne i32 %i.q, 0
  %or.cond427.not494 = or i1 %.not259, %.not260
  %i.r = and i32 %i.j, 64
  %.not261 = icmp eq i32 %i.r, 0
  %or.cond428 = or i1 %or.cond427.not494, %.not261
  br i1 %or.cond428, label %ucs1lib_find_max_char.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %.0.i, i64 %4      ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.thread31.i, %bb.h
  %.021.i = phi ptr [ %.0.i, %bb.h ], [ %i.aa, %.thread31.i ] ; 4 uses
  %i.t = icmp ult ptr %.021.i, %i.s
  br i1 %i.t, label %bb.j, label %ucs1lib_find_max_char.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.u = ptrtoint ptr %.021.i to i64
  %i.v = and i64 %i.u, 7
  %.not.i272 = icmp eq i64 %i.v, 0
  br i1 %.not.i272, label %.preheader.i, label %.thread31.i

.preheader.i:                                     ; preds = %bb.j, %bb.k
  %.019.i = phi ptr [ %i.w, %bb.k ], [ %.021.i, %bb.j ] ; 4 uses
  %i.w = getelementptr i8, ptr %.019.i, i64 8     ; 2 uses
  %.not26.i = icmp ugt ptr %i.w, %i.s
  br i1 %.not26.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader.i
  %i.x = load i64, ptr %.019.i, align 8, !tbaa !193
  %i.y = and i64 %i.x, -9187201950435737472
  %.not27.i = icmp eq i64 %i.y, 0
  br i1 %.not27.i, label %.preheader.i, label %ucs1lib_find_max_char.exit, !llvm.loop !220

bb.l:                                             ; preds = %.preheader.i
  %i.z = icmp eq ptr %.019.i, %i.s
  br i1 %i.z, label %ucs1lib_find_max_char.exit.thread, label %.thread31.i

.thread31.i:                                      ; preds = %bb.l, %bb.j
  %.223.i = phi ptr [ %.021.i, %bb.j ], [ %.019.i, %bb.l ] ; 2 uses
  %i.aa = getelementptr i8, ptr %.223.i, i64 1
  %i.ab = load i8, ptr %.223.i, align 1, !tbaa !205
  %.not28.i = icmp sgt i8 %i.ab, -1
  br i1 %.not28.i, label %bb.i, label %ucs1lib_find_max_char.exit, !llvm.loop !221

ucs1lib_find_max_char.exit.thread:                ; preds = %bb.i, %bb.l, %bb.g
  %i.ac = zext nneg i32 %i.e to i64               ; 3 uses
  %i.ad = mul i64 %1, %i.ac
  %i.ae = getelementptr i8, ptr %.0.i269, i64 %i.ad
  %i.af = mul i64 %3, %i.ac
  %i.ag = getelementptr i8, ptr %.0.i, i64 %i.af
  %i.ah = mul i64 %4, %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.ag, i64 %i.ah, i1 false)
  br label %ucs1lib_find_max_char.exit

bb.m:                                             ; preds = %_PyUnicode_DATA.exit271
  %i.ai = icmp eq i32 %i.e, 1                     ; 2 uses
  %i.aj = icmp eq i32 %i.l, 2                     ; 3 uses
  %or.cond = and i1 %i.ai, %i.aj
  br i1 %or.cond, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i265, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = and i32 %i.j, 64
  %.not.i.i275 = icmp eq i32 %i.ak, 0
  %.0.v.i.i276 = select i1 %.not.i.i275, i64 56, i64 40
  %.0.i.i277 = getelementptr i8, ptr %0, i64 %.0.v.i.i276
  br label %_PyUnicode_DATA.exit280

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr i8, ptr %0, i64 56
  %.val4.i279 = load ptr, ptr %i.al, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit280

_PyUnicode_DATA.exit280:                          ; preds = %bb.o, %bb.p
  %.0.i278 = phi ptr [ %.0.i.i277, %bb.o ], [ %.val4.i279, %bb.p ]
  %i.am = getelementptr [2 x i8], ptr %.0.i278, i64 %1 ; 2 uses
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_PyUnicode_DATA.exit280
  %i.an = and i32 %i.c, 64
  %.not.i.i283 = icmp eq i32 %i.an, 0
  %.0.v.i.i284 = select i1 %.not.i.i283, i64 56, i64 40
  %.0.i.i285 = getelementptr i8, ptr %2, i64 %.0.v.i.i284
  br label %_PyUnicode_DATA.exit296

bb.r:                                             ; preds = %_PyUnicode_DATA.exit280
  %i.ao = getelementptr i8, ptr %2, i64 56
  %.val4.i287 = load ptr, ptr %i.ao, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit296

_PyUnicode_DATA.exit296:                          ; preds = %bb.q, %bb.r
  %.0.i.i285.pn = phi ptr [ %.0.i.i285, %bb.q ], [ %.val4.i287, %bb.r ] ; 2 uses
  %.0.i.i285.pn700 = ptrtoaddr ptr %.0.i.i285.pn to i64 ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.i.i285.pn, i64 %3 ; 5 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 %4     ; 2 uses
  %i.ar = and i64 %4, -4
  %i.as = getelementptr i8, ptr %i.ap, i64 %i.ar  ; 2 uses
  %i.at = icmp ult ptr %i.ap, %i.as
  br i1 %i.at, label %.lr.ph488, label %.preheader

.preheader:                                       ; preds = %.lr.ph488, %_PyUnicode_DATA.exit296
  %.0231.lcssa = phi ptr [ %i.ap, %_PyUnicode_DATA.exit296 ], [ %i.cg, %.lr.ph488 ] ; 10 uses
  %.0229.lcssa = phi ptr [ %i.am, %_PyUnicode_DATA.exit296 ], [ %i.ch, %.lr.ph488 ] ; 8 uses
  %.0231.lcssa701 = ptrtoaddr ptr %.0231.lcssa to i64 ; 3 uses
  %i.au = icmp ult ptr %.0231.lcssa, %i.aq
  br i1 %i.au, label %iter.check726, label %ucs1lib_find_max_char.exit

iter.check726:                                    ; preds = %.preheader
  %i.av = add i64 %4, %3
  %i.aw = add i64 %i.av, %.0.i.i285.pn700
  %i.ax = sub i64 %i.aw, %.0231.lcssa701          ; 7 uses
  %min.iters.check708 = icmp ult i64 %i.ax, 4
  br i1 %min.iters.check708, label %.lr.ph493.preheader, label %vector.memcheck699

vector.memcheck699:                               ; preds = %iter.check726
  %i.ay = add i64 %4, %3
  %i.az = add i64 %i.ay, %.0.i.i285.pn700         ; 2 uses
  %i.ba = sub i64 %i.az, %.0231.lcssa701
  %i.bb = shl i64 %i.ba, 1
  %scevgep702 = getelementptr i8, ptr %.0229.lcssa, i64 %i.bb
  %i.bc = sub i64 %i.az, %.0231.lcssa701
  %scevgep703 = getelementptr i8, ptr %.0231.lcssa, i64 %i.bc
  %bound0704 = icmp ult ptr %.0229.lcssa, %scevgep703
  %bound1705 = icmp ult ptr %.0231.lcssa, %scevgep702
  %found.conflict706 = and i1 %bound0704, %bound1705
  br i1 %found.conflict706, label %.lr.ph493.preheader, label %vector.main.loop.iter.check709

vector.main.loop.iter.check709:                   ; preds = %vector.memcheck699
  %min.iters.check710 = icmp ult i64 %i.ax, 16
  br i1 %min.iters.check710, label %vec.epilog.ph730, label %vector.ph711

vector.ph711:                                     ; preds = %vector.main.loop.iter.check709
  %n.mod.vf712 = and i64 %i.ax, 12
  %n.vec713 = and i64 %i.ax, -16                  ; 5 uses
  %i.bd = shl i64 %n.vec713, 1
  %i.be = getelementptr i8, ptr %.0229.lcssa, i64 %i.bd
  %i.bf = getelementptr i8, ptr %.0231.lcssa, i64 %n.vec713
  br label %vector.body714

vector.body714:                                   ; preds = %vector.body714, %vector.ph711
  %index715 = phi i64 [ 0, %vector.ph711 ], [ %index.next720, %vector.body714 ] ; 3 uses
  %i.bg = shl i64 %index715, 1
  %next.gep716 = getelementptr i8, ptr %.0229.lcssa, i64 %i.bg ; 2 uses
  %next.gep717 = getelementptr i8, ptr %.0231.lcssa, i64 %index715 ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep717, i64 8
  %wide.load718 = load <8 x i8>, ptr %next.gep717, align 1, !tbaa !205, !alias.scope !222
  %wide.load719 = load <8 x i8>, ptr %i.bh, align 1, !tbaa !205, !alias.scope !222
  %i.bi = zext <8 x i8> %wide.load718 to <8 x i16>
  %i.bj = zext <8 x i8> %wide.load719 to <8 x i16>
  %i.bk = getelementptr i8, ptr %next.gep716, i64 16
  store <8 x i16> %i.bi, ptr %next.gep716, align 2, !tbaa !208, !alias.scope !225, !noalias !222
  store <8 x i16> %i.bj, ptr %i.bk, align 2, !tbaa !208, !alias.scope !225, !noalias !222
  %index.next720 = add nuw i64 %index715, 16      ; 2 uses
  %i.bl = icmp eq i64 %index.next720, %n.vec713
  br i1 %i.bl, label %middle.block721, label %vector.body714, !llvm.loop !227

middle.block721:                                  ; preds = %vector.body714
  %cmp.n722 = icmp eq i64 %i.ax, %n.vec713
  br i1 %cmp.n722, label %ucs1lib_find_max_char.exit, label %vec.epilog.iter.check728

vec.epilog.iter.check728:                         ; preds = %middle.block721
  %min.epilog.iters.check729 = icmp eq i64 %n.mod.vf712, 0
  br i1 %min.epilog.iters.check729, label %.lr.ph493.preheader, label %vec.epilog.ph730, !prof !228

vec.epilog.ph730:                                 ; preds = %vector.main.loop.iter.check709, %vec.epilog.iter.check728
  %vec.epilog.resume.val723 = phi i64 [ %n.vec713, %vec.epilog.iter.check728 ], [ 0, %vector.main.loop.iter.check709 ]
  %n.vec732 = and i64 %i.ax, -4                   ; 4 uses
  %i.bm = shl i64 %n.vec732, 1
  %i.bn = getelementptr i8, ptr %.0229.lcssa, i64 %i.bm
  %i.bo = getelementptr i8, ptr %.0231.lcssa, i64 %n.vec732
  br label %vec.epilog.vector.body733

vec.epilog.vector.body733:                        ; preds = %vec.epilog.vector.body733, %vec.epilog.ph730
  %index734 = phi i64 [ %vec.epilog.resume.val723, %vec.epilog.ph730 ], [ %index.next738, %vec.epilog.vector.body733 ] ; 3 uses
  %i.bp = shl i64 %index734, 1
  %next.gep735 = getelementptr i8, ptr %.0229.lcssa, i64 %i.bp
  %next.gep736 = getelementptr i8, ptr %.0231.lcssa, i64 %index734
  %wide.load737 = load <4 x i8>, ptr %next.gep736, align 1, !tbaa !205, !alias.scope !222
  %i.bq = zext <4 x i8> %wide.load737 to <4 x i16>
  store <4 x i16> %i.bq, ptr %next.gep735, align 2, !tbaa !208, !alias.scope !225, !noalias !222
  %index.next738 = add nuw i64 %index734, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next738, %n.vec732
  br i1 %i.br, label %vec.epilog.middle.block739, label %vec.epilog.vector.body733, !llvm.loop !229

vec.epilog.middle.block739:                       ; preds = %vec.epilog.vector.body733
  %cmp.n740 = icmp eq i64 %i.ax, %n.vec732
  br i1 %cmp.n740, label %ucs1lib_find_max_char.exit, label %.lr.ph493.preheader

.lr.ph493.preheader:                              ; preds = %vector.memcheck699, %iter.check726, %vec.epilog.iter.check728, %vec.epilog.middle.block739
  %.1230492.ph = phi ptr [ %.0229.lcssa, %iter.check726 ], [ %.0229.lcssa, %vector.memcheck699 ], [ %i.be, %vec.epilog.iter.check728 ], [ %i.bn, %vec.epilog.middle.block739 ]
  %.1232491.ph = phi ptr [ %.0231.lcssa, %iter.check726 ], [ %.0231.lcssa, %vector.memcheck699 ], [ %i.bf, %vec.epilog.iter.check728 ], [ %i.bo, %vec.epilog.middle.block739 ]
  br label %.lr.ph493

.lr.ph488:                                        ; preds = %_PyUnicode_DATA.exit296, %.lr.ph488
  %.0229487 = phi ptr [ %i.ch, %.lr.ph488 ], [ %i.am, %_PyUnicode_DATA.exit296 ] ; 5 uses
  %.0231486 = phi ptr [ %i.cg, %.lr.ph488 ], [ %i.ap, %_PyUnicode_DATA.exit296 ] ; 5 uses
  %i.bs = load i8, ptr %.0231486, align 1, !tbaa !205
  %i.bt = zext i8 %i.bs to i16
  store i16 %i.bt, ptr %.0229487, align 2, !tbaa !208
  %i.bu = getelementptr i8, ptr %.0231486, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !205
  %i.bw = zext i8 %i.bv to i16
  %i.bx = getelementptr i8, ptr %.0229487, i64 2
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !208
  %i.by = getelementptr i8, ptr %.0231486, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !205
  %i.ca = zext i8 %i.bz to i16
  %i.cb = getelementptr i8, ptr %.0229487, i64 4
  store i16 %i.ca, ptr %i.cb, align 2, !tbaa !208
  %i.cc = getelementptr i8, ptr %.0231486, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !205
  %i.ce = zext i8 %i.cd to i16
  %i.cf = getelementptr i8, ptr %.0229487, i64 6
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !208
  %i.cg = getelementptr i8, ptr %.0231486, i64 4  ; 3 uses
  %i.ch = getelementptr i8, ptr %.0229487, i64 8  ; 2 uses
  %i.ci = icmp ult ptr %i.cg, %i.as
  br i1 %i.ci, label %.lr.ph488, label %.preheader, !llvm.loop !230

.lr.ph493:                                        ; preds = %.lr.ph493.preheader, %.lr.ph493
  %.1230492 = phi ptr [ %i.cm, %.lr.ph493 ], [ %.1230492.ph, %.lr.ph493.preheader ] ; 2 uses
  %.1232491 = phi ptr [ %i.cj, %.lr.ph493 ], [ %.1232491.ph, %.lr.ph493.preheader ] ; 2 uses
  %i.cj = getelementptr i8, ptr %.1232491, i64 1  ; 2 uses
  %i.ck = load i8, ptr %.1232491, align 1, !tbaa !205
  %i.cl = zext i8 %i.ck to i16
  %i.cm = getelementptr i8, ptr %.1230492, i64 2
  store i16 %i.cl, ptr %.1230492, align 2, !tbaa !208
  %i.cn = icmp ult ptr %i.cj, %i.aq
  br i1 %i.cn, label %.lr.ph493, label %ucs1lib_find_max_char.exit, !llvm.loop !231

bb.s:                                             ; preds = %bb.m
  %i.co = icmp eq i32 %i.l, 4                     ; 2 uses
  %or.cond4 = and i1 %i.ai, %i.co
  br i1 %or.cond4, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  br i1 %.not.i265, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = and i32 %i.j, 64
  %.not.i.i299 = icmp eq i32 %i.cp, 0
  %.0.v.i.i300 = select i1 %.not.i.i299, i64 56, i64 40
  %.0.i.i301 = getelementptr i8, ptr %0, i64 %.0.v.i.i300
  br label %_PyUnicode_DATA.exit304

bb.v:                                             ; preds = %bb.t
  %i.cq = getelementptr i8, ptr %0, i64 56
  %.val4.i303 = load ptr, ptr %i.cq, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit304

_PyUnicode_DATA.exit304:                          ; preds = %bb.u, %bb.v
  %.0.i302 = phi ptr [ %.0.i.i301, %bb.u ], [ %.val4.i303, %bb.v ]
  %i.cr = getelementptr [4 x i8], ptr %.0.i302, i64 %1 ; 2 uses
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_PyUnicode_DATA.exit304
  %i.cs = and i32 %i.c, 64
  %.not.i.i307 = icmp eq i32 %i.cs, 0
  %.0.v.i.i308 = select i1 %.not.i.i307, i64 56, i64 40
  %.0.i.i309 = getelementptr i8, ptr %2, i64 %.0.v.i.i308
  br label %_PyUnicode_DATA.exit320

bb.x:                                             ; preds = %_PyUnicode_DATA.exit304
  %i.ct = getelementptr i8, ptr %2, i64 56
  %.val4.i311 = load ptr, ptr %i.ct, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit320

_PyUnicode_DATA.exit320:                          ; preds = %bb.w, %bb.x
  %.0.i.i309.pn = phi ptr [ %.0.i.i309, %bb.w ], [ %.val4.i311, %bb.x ] ; 2 uses
  %.0.i.i309.pn676 = ptrtoaddr ptr %.0.i.i309.pn to i64 ; 2 uses
  %i.cu = getelementptr i8, ptr %.0.i.i309.pn, i64 %3 ; 5 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 %4     ; 2 uses
  %i.cw = and i64 %4, -4
  %i.cx = getelementptr i8, ptr %i.cu, i64 %i.cw  ; 2 uses
  %i.cy = icmp ult ptr %i.cu, %i.cx
  br i1 %i.cy, label %.lr.ph480, label %.preheader431

.preheader431:                                    ; preds = %.lr.ph480, %_PyUnicode_DATA.exit320
  %.0239.lcssa = phi ptr [ %i.cu, %_PyUnicode_DATA.exit320 ], [ %i.ef, %.lr.ph480 ] ; 8 uses
  %.0233.lcssa = phi ptr [ %i.cr, %_PyUnicode_DATA.exit320 ], [ %i.eg, %.lr.ph480 ] ; 6 uses
  %.0239.lcssa677 = ptrtoaddr ptr %.0239.lcssa to i64 ; 3 uses
  %i.cz = icmp ult ptr %.0239.lcssa, %i.cv
  br i1 %i.cz, label %.lr.ph485.preheader, label %ucs1lib_find_max_char.exit

.lr.ph485.preheader:                              ; preds = %.preheader431
  %i.da = add i64 %4, %3
  %i.db = add i64 %i.da, %.0.i.i309.pn676
  %i.dc = sub i64 %i.db, %.0239.lcssa677          ; 3 uses
  %min.iters.check684 = icmp ult i64 %i.dc, 32
  br i1 %min.iters.check684, label %.lr.ph485.preheader747, label %vector.memcheck675

vector.memcheck675:                               ; preds = %.lr.ph485.preheader
  %i.dd = add i64 %4, %3
  %i.de = add i64 %i.dd, %.0.i.i309.pn676         ; 2 uses
  %i.df = sub i64 %i.de, %.0239.lcssa677
  %i.dg = shl i64 %i.df, 2
  %scevgep678 = getelementptr i8, ptr %.0233.lcssa, i64 %i.dg
  %i.dh = sub i64 %i.de, %.0239.lcssa677
  %scevgep679 = getelementptr i8, ptr %.0239.lcssa, i64 %i.dh
  %bound0680 = icmp ult ptr %.0233.lcssa, %scevgep679
  %bound1681 = icmp ult ptr %.0239.lcssa, %scevgep678
  %found.conflict682 = and i1 %bound0680, %bound1681
  br i1 %found.conflict682, label %.lr.ph485.preheader747, label %vector.ph685

vector.ph685:                                     ; preds = %vector.memcheck675
  %n.vec687 = and i64 %i.dc, -8                   ; 4 uses
  %i.di = shl i64 %n.vec687, 2
  %i.dj = getelementptr i8, ptr %.0233.lcssa, i64 %i.di
  %i.dk = getelementptr i8, ptr %.0239.lcssa, i64 %n.vec687
  br label %vector.body688

vector.body688:                                   ; preds = %vector.body688, %vector.ph685
  %index689 = phi i64 [ 0, %vector.ph685 ], [ %index.next694, %vector.body688 ] ; 3 uses
  %i.dl = shl i64 %index689, 2
  %next.gep690 = getelementptr i8, ptr %.0233.lcssa, i64 %i.dl ; 2 uses
  %next.gep691 = getelementptr i8, ptr %.0239.lcssa, i64 %index689 ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep691, i64 4
  %wide.load692 = load <4 x i8>, ptr %next.gep691, align 1, !tbaa !205, !alias.scope !232
  %wide.load693 = load <4 x i8>, ptr %i.dm, align 1, !tbaa !205, !alias.scope !232
  %i.dn = zext <4 x i8> %wide.load692 to <4 x i32>
  %i.do = zext <4 x i8> %wide.load693 to <4 x i32>
  %i.dp = getelementptr i8, ptr %next.gep690, i64 16
  store <4 x i32> %i.dn, ptr %next.gep690, align 4, !tbaa !7, !alias.scope !235, !noalias !232
  store <4 x i32> %i.do, ptr %i.dp, align 4, !tbaa !7, !alias.scope !235, !noalias !232
  %index.next694 = add nuw i64 %index689, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next694, %n.vec687
  br i1 %i.dq, label %middle.block695, label %vector.body688, !llvm.loop !237

middle.block695:                                  ; preds = %vector.body688
  %cmp.n696 = icmp eq i64 %i.dc, %n.vec687
  br i1 %cmp.n696, label %ucs1lib_find_max_char.exit, label %.lr.ph485.preheader747

.lr.ph485.preheader747:                           ; preds = %vector.memcheck675, %.lr.ph485.preheader, %middle.block695
  %.1234484.ph = phi ptr [ %.0233.lcssa, %vector.memcheck675 ], [ %.0233.lcssa, %.lr.ph485.preheader ], [ %i.dj, %middle.block695 ]
  %.1240483.ph = phi ptr [ %.0239.lcssa, %vector.memcheck675 ], [ %.0239.lcssa, %.lr.ph485.preheader ], [ %i.dk, %middle.block695 ]
  br label %.lr.ph485

.lr.ph480:                                        ; preds = %_PyUnicode_DATA.exit320, %.lr.ph480
  %.0233479 = phi ptr [ %i.eg, %.lr.ph480 ], [ %i.cr, %_PyUnicode_DATA.exit320 ] ; 5 uses
  %.0239478 = phi ptr [ %i.ef, %.lr.ph480 ], [ %i.cu, %_PyUnicode_DATA.exit320 ] ; 5 uses
  %i.dr = load i8, ptr %.0239478, align 1, !tbaa !205
  %i.ds = zext i8 %i.dr to i32
  store i32 %i.ds, ptr %.0233479, align 4, !tbaa !7
  %i.dt = getelementptr i8, ptr %.0239478, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !205
  %i.dv = zext i8 %i.du to i32
  %i.dw = getelementptr i8, ptr %.0233479, i64 4
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !7
  %i.dx = getelementptr i8, ptr %.0239478, i64 2
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !205
  %i.dz = zext i8 %i.dy to i32
  %i.ea = getelementptr i8, ptr %.0233479, i64 8
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !7
  %i.eb = getelementptr i8, ptr %.0239478, i64 3
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !205
  %i.ed = zext i8 %i.ec to i32
  %i.ee = getelementptr i8, ptr %.0233479, i64 12
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !7
  %i.ef = getelementptr i8, ptr %.0239478, i64 4  ; 3 uses
  %i.eg = getelementptr i8, ptr %.0233479, i64 16 ; 2 uses
  %i.eh = icmp ult ptr %i.ef, %i.cx
  br i1 %i.eh, label %.lr.ph480, label %.preheader431, !llvm.loop !238

.lr.ph485:                                        ; preds = %.lr.ph485.preheader747, %.lr.ph485
  %.1234484 = phi ptr [ %i.el, %.lr.ph485 ], [ %.1234484.ph, %.lr.ph485.preheader747 ] ; 2 uses
  %.1240483 = phi ptr [ %i.ei, %.lr.ph485 ], [ %.1240483.ph, %.lr.ph485.preheader747 ] ; 2 uses
  %i.ei = getelementptr i8, ptr %.1240483, i64 1  ; 2 uses
  %i.ej = load i8, ptr %.1240483, align 1, !tbaa !205
  %i.ek = zext i8 %i.ej to i32
  %i.el = getelementptr i8, ptr %.1234484, i64 4
  store i32 %i.ek, ptr %.1234484, align 4, !tbaa !7
  %i.em = icmp ult ptr %i.ei, %i.cv
  br i1 %i.em, label %.lr.ph485, label %ucs1lib_find_max_char.exit, !llvm.loop !239

bb.y:                                             ; preds = %bb.s
  %i.en = icmp eq i32 %i.e, 2                     ; 2 uses
  %or.cond6 = and i1 %i.en, %i.co
  br i1 %or.cond6, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  br i1 %.not.i265, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eo = and i32 %i.j, 64
  %.not.i.i323 = icmp eq i32 %i.eo, 0
  %.0.v.i.i324 = select i1 %.not.i.i323, i64 56, i64 40
  %.0.i.i325 = getelementptr i8, ptr %0, i64 %.0.v.i.i324
  br label %_PyUnicode_DATA.exit328

bb.ab:                                            ; preds = %bb.z
  %i.ep = getelementptr i8, ptr %0, i64 56
  %.val4.i327 = load ptr, ptr %i.ep, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit328

_PyUnicode_DATA.exit328:                          ; preds = %bb.aa, %bb.ab
  %.0.i326 = phi ptr [ %.0.i.i325, %bb.aa ], [ %.val4.i327, %bb.ab ]
  %i.eq = getelementptr [4 x i8], ptr %.0.i326, i64 %1 ; 2 uses
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_PyUnicode_DATA.exit328
  %i.er = and i32 %i.c, 64
  %.not.i.i331 = icmp eq i32 %i.er, 0
  %.0.v.i.i332 = select i1 %.not.i.i331, i64 56, i64 40
  %.0.i.i333 = getelementptr i8, ptr %2, i64 %.0.v.i.i332
  br label %_PyUnicode_DATA.exit344

bb.ad:                                            ; preds = %_PyUnicode_DATA.exit328
  %i.es = getelementptr i8, ptr %2, i64 56
  %.val4.i335 = load ptr, ptr %i.es, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit344

_PyUnicode_DATA.exit344:                          ; preds = %bb.ac, %bb.ad
  %.0.i.i333.pn = phi ptr [ %.0.i.i333, %bb.ac ], [ %.val4.i335, %bb.ad ] ; 2 uses
  %.0.i.i333.pn656 = ptrtoaddr ptr %.0.i.i333.pn to i64
  %i.et = getelementptr [2 x i8], ptr %.0.i.i333.pn, i64 %3 ; 5 uses
  %i.eu = getelementptr [2 x i8], ptr %i.et, i64 %4 ; 2 uses
  %.idx552 = shl i64 %4, 1                        ; 2 uses
  %i.ev = ashr exact i64 %.idx552, 1
  %i.ew = and i64 %i.ev, -4
  %i.ex = getelementptr [2 x i8], ptr %i.et, i64 %i.ew ; 2 uses
  %i.ey = icmp ult ptr %i.et, %i.ex
  br i1 %i.ey, label %.lr.ph472, label %.preheader433

.preheader433:                                    ; preds = %.lr.ph472, %_PyUnicode_DATA.exit344
  %.0243.lcssa = phi ptr [ %i.et, %_PyUnicode_DATA.exit344 ], [ %i.fv, %.lr.ph472 ] ; 5 uses
  %.0241.lcssa = phi ptr [ %i.eq, %_PyUnicode_DATA.exit344 ], [ %i.fw, %.lr.ph472 ] ; 3 uses
  %i.ez = icmp ult ptr %.0243.lcssa, %i.eu
  br i1 %i.ez, label %.lr.ph477.preheader, label %ucs1lib_find_max_char.exit

.lr.ph477.preheader:                              ; preds = %.preheader433
  %.0243.lcssa657 = ptrtoaddr ptr %.0243.lcssa to i64 ; 2 uses
  %i.fa = add i64 %.idx552, %.0.i.i333.pn656
  %i.fb = shl i64 %3, 1
  %i.fc = add i64 %i.fa, %i.fb
  %i.fd = add i64 %.0243.lcssa657, 2
  %umax658 = tail call i64 @llvm.umax.i64(i64 %i.fc, i64 %i.fd)
  %i.fe = xor i64 %.0243.lcssa657, -1
  %i.ff = add i64 %umax658, %i.fe                 ; 2 uses
  %i.fg = lshr i64 %i.ff, 1
  %i.fh = add nuw i64 %i.fg, 1                    ; 2 uses
  %min.iters.check660 = icmp ult i64 %i.ff, 14
  br i1 %min.iters.check660, label %.lr.ph477.preheader751, label %vector.ph661

vector.ph661:                                     ; preds = %.lr.ph477.preheader
  %n.vec663 = and i64 %i.fh, -8                   ; 4 uses
  %i.fi = shl i64 %n.vec663, 2
  %i.fj = getelementptr i8, ptr %.0241.lcssa, i64 %i.fi
  %i.fk = shl i64 %n.vec663, 1
  %i.fl = getelementptr i8, ptr %.0243.lcssa, i64 %i.fk
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph661
  %index665 = phi i64 [ 0, %vector.ph661 ], [ %index.next670, %vector.body664 ] ; 3 uses
  %i.fm = shl i64 %index665, 2
  %next.gep666 = getelementptr i8, ptr %.0241.lcssa, i64 %i.fm ; 2 uses
  %i.fn = shl i64 %index665, 1
  %next.gep667 = getelementptr i8, ptr %.0243.lcssa, i64 %i.fn ; 2 uses
  %i.fo = getelementptr i8, ptr %next.gep667, i64 8
  %wide.load668 = load <4 x i16>, ptr %next.gep667, align 2, !tbaa !208
  %wide.load669 = load <4 x i16>, ptr %i.fo, align 2, !tbaa !208
  %i.fp = zext <4 x i16> %wide.load668 to <4 x i32>
  %i.fq = zext <4 x i16> %wide.load669 to <4 x i32>
  %i.fr = getelementptr i8, ptr %next.gep666, i64 16
  store <4 x i32> %i.fp, ptr %next.gep666, align 4, !tbaa !7
  store <4 x i32> %i.fq, ptr %i.fr, align 4, !tbaa !7
  %index.next670 = add nuw i64 %index665, 8       ; 2 uses
  %i.fs = icmp eq i64 %index.next670, %n.vec663
  br i1 %i.fs, label %middle.block671, label %vector.body664, !llvm.loop !240

middle.block671:                                  ; preds = %vector.body664
  %cmp.n672 = icmp eq i64 %i.fh, %n.vec663
  br i1 %cmp.n672, label %ucs1lib_find_max_char.exit, label %.lr.ph477.preheader751

.lr.ph477.preheader751:                           ; preds = %.lr.ph477.preheader, %middle.block671
  %.1242476.ph = phi ptr [ %.0241.lcssa, %.lr.ph477.preheader ], [ %i.fj, %middle.block671 ]
  %.1244475.ph = phi ptr [ %.0243.lcssa, %.lr.ph477.preheader ], [ %i.fl, %middle.block671 ]
  br label %.lr.ph477

.lr.ph472:                                        ; preds = %_PyUnicode_DATA.exit344, %.lr.ph472
  %.0241471 = phi ptr [ %i.fw, %.lr.ph472 ], [ %i.eq, %_PyUnicode_DATA.exit344 ] ; 2 uses
  %.0243470 = phi ptr [ %i.fv, %.lr.ph472 ], [ %i.et, %_PyUnicode_DATA.exit344 ] ; 2 uses
  %i.ft = load <4 x i16>, ptr %.0243470, align 2, !tbaa !208
  %i.fu = zext <4 x i16> %i.ft to <4 x i32>
  store <4 x i32> %i.fu, ptr %.0241471, align 4, !tbaa !7
  %i.fv = getelementptr i8, ptr %.0243470, i64 8  ; 3 uses
  %i.fw = getelementptr i8, ptr %.0241471, i64 16 ; 2 uses
  %i.fx = icmp ult ptr %i.fv, %i.ex
  br i1 %i.fx, label %.lr.ph472, label %.preheader433, !llvm.loop !241

.lr.ph477:                                        ; preds = %.lr.ph477.preheader751, %.lr.ph477
  %.1242476 = phi ptr [ %i.gb, %.lr.ph477 ], [ %.1242476.ph, %.lr.ph477.preheader751 ] ; 2 uses
  %.1244475 = phi ptr [ %i.fy, %.lr.ph477 ], [ %.1244475.ph, %.lr.ph477.preheader751 ] ; 2 uses
  %i.fy = getelementptr i8, ptr %.1244475, i64 2  ; 2 uses
  %i.fz = load i16, ptr %.1244475, align 2, !tbaa !208
  %i.ga = zext i16 %i.fz to i32
  %i.gb = getelementptr i8, ptr %.1242476, i64 4
  store i32 %i.ga, ptr %.1242476, align 4, !tbaa !7
  %i.gc = icmp ult ptr %i.fy, %i.eu
  br i1 %i.gc, label %.lr.ph477, label %ucs1lib_find_max_char.exit, !llvm.loop !242

bb.ae:                                            ; preds = %bb.y
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.af, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.af:                                            ; preds = %bb.ae
  %i.gd = icmp eq i32 %i.l, 1                     ; 2 uses
  %or.cond8 = and i1 %i.en, %i.gd
  br i1 %or.cond8, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  br i1 %.not.i265, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ge = and i32 %i.j, 64
  %.not.i.i347 = icmp eq i32 %i.ge, 0
  %.0.v.i.i348 = select i1 %.not.i.i347, i64 56, i64 40
  %.0.i.i349 = getelementptr i8, ptr %0, i64 %.0.v.i.i348
  br label %_PyUnicode_DATA.exit352

bb.ai:                                            ; preds = %bb.ag
  %i.gf = getelementptr i8, ptr %0, i64 56
  %.val4.i351 = load ptr, ptr %i.gf, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit352

_PyUnicode_DATA.exit352:                          ; preds = %bb.ah, %bb.ai
  %.0.i350 = phi ptr [ %.0.i.i349, %bb.ah ], [ %.val4.i351, %bb.ai ]
  %i.gg = getelementptr i8, ptr %.0.i350, i64 %1  ; 2 uses
  br i1 %.not.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_PyUnicode_DATA.exit352
  %i.gh = and i32 %i.c, 64
  %.not.i.i355 = icmp eq i32 %i.gh, 0
  %.0.v.i.i356 = select i1 %.not.i.i355, i64 56, i64 40
  %.0.i.i357 = getelementptr i8, ptr %2, i64 %.0.v.i.i356
  br label %_PyUnicode_DATA.exit368

bb.ak:                                            ; preds = %_PyUnicode_DATA.exit352
  %i.gi = getelementptr i8, ptr %2, i64 56
  %.val4.i359 = load ptr, ptr %i.gi, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit368

_PyUnicode_DATA.exit368:                          ; preds = %bb.aj, %bb.ak
  %.0.i.i357.pn = phi ptr [ %.0.i.i357, %bb.aj ], [ %.val4.i359, %bb.ak ] ; 2 uses
  %.0.i.i357.pn620 = ptrtoaddr ptr %.0.i.i357.pn to i64 ; 2 uses
  %i.gj = getelementptr [2 x i8], ptr %.0.i.i357.pn, i64 %3 ; 5 uses
  %i.gk = getelementptr [2 x i8], ptr %i.gj, i64 %4 ; 2 uses
  %.idx551 = shl i64 %4, 1                        ; 3 uses
  %i.gl = ashr exact i64 %.idx551, 1
  %i.gm = and i64 %i.gl, -4
  %i.gn = getelementptr [2 x i8], ptr %i.gj, i64 %i.gm ; 2 uses
  %i.go = icmp ult ptr %i.gj, %i.gn
  br i1 %i.go, label %.lr.ph464, label %.preheader435

.preheader435:                                    ; preds = %.lr.ph464, %_PyUnicode_DATA.exit368
  %.0251.lcssa = phi ptr [ %i.gj, %_PyUnicode_DATA.exit368 ], [ %i.il, %.lr.ph464 ] ; 10 uses
  %.0249.lcssa = phi ptr [ %i.gg, %_PyUnicode_DATA.exit368 ], [ %i.im, %.lr.ph464 ] ; 8 uses
  %.0251.lcssa621 = ptrtoaddr ptr %.0251.lcssa to i64 ; 4 uses
  %i.gp = icmp ult ptr %.0251.lcssa, %i.gk
  br i1 %i.gp, label %iter.check, label %ucs1lib_find_max_char.exit

iter.check:                                       ; preds = %.preheader435
  %i.gq = add i64 %.idx551, %.0.i.i357.pn620
  %i.gr = shl i64 %3, 1
  %i.gs = add i64 %i.gq, %i.gr
  %i.gt = add i64 %.0251.lcssa621, 2
  %umax628 = tail call i64 @llvm.umax.i64(i64 %i.gs, i64 %i.gt)
  %i.gu = xor i64 %.0251.lcssa621, -1
  %i.gv = add i64 %umax628, %i.gu                 ; 3 uses
  %i.gw = lshr i64 %i.gv, 1
  %i.gx = add nuw i64 %i.gw, 1                    ; 5 uses
  %min.iters.check630 = icmp ult i64 %i.gv, 6
  br i1 %min.iters.check630, label %.lr.ph469.preheader, label %vector.memcheck619

vector.memcheck619:                               ; preds = %iter.check
  %i.gy = add i64 %.idx551, %.0.i.i357.pn620
  %i.gz = shl i64 %3, 1
  %i.ha = add i64 %i.gy, %i.gz
  %i.hb = add i64 %.0251.lcssa621, 2
  %umax622 = tail call i64 @llvm.umax.i64(i64 %i.ha, i64 %i.hb)
  %i.hc = xor i64 %.0251.lcssa621, -1
  %i.hd = add i64 %umax622, %i.hc                 ; 2 uses
  %i.he = lshr i64 %i.hd, 1
  %i.hf = getelementptr i8, ptr %.0249.lcssa, i64 %i.he
  %scevgep623 = getelementptr i8, ptr %i.hf, i64 1
  %i.hg = and i64 %i.hd, -2
  %i.hh = getelementptr i8, ptr %.0251.lcssa, i64 %i.hg
  %scevgep624 = getelementptr i8, ptr %i.hh, i64 2
  %bound0625 = icmp ult ptr %.0249.lcssa, %scevgep624
  %bound1626 = icmp ult ptr %.0251.lcssa, %scevgep623
  %found.conflict627 = and i1 %bound0625, %bound1626
  br i1 %found.conflict627, label %.lr.ph469.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck619
  %min.iters.check631 = icmp ult i64 %i.gv, 30
  br i1 %min.iters.check631, label %vec.epilog.ph, label %vector.ph632

vector.ph632:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf633 = and i64 %i.gx, 12
  %n.vec634 = and i64 %i.gx, -16                  ; 5 uses
  %i.hi = getelementptr i8, ptr %.0249.lcssa, i64 %n.vec634
  %i.hj = shl i64 %n.vec634, 1
  %i.hk = getelementptr i8, ptr %.0251.lcssa, i64 %i.hj
  br label %vector.body635

vector.body635:                                   ; preds = %vector.body635, %vector.ph632
  %index636 = phi i64 [ 0, %vector.ph632 ], [ %index.next641, %vector.body635 ] ; 3 uses
  %next.gep637 = getelementptr i8, ptr %.0249.lcssa, i64 %index636 ; 2 uses
  %i.hl = shl i64 %index636, 1
  %next.gep638 = getelementptr i8, ptr %.0251.lcssa, i64 %i.hl ; 2 uses
  %i.hm = getelementptr i8, ptr %next.gep638, i64 16
  %wide.load639 = load <8 x i16>, ptr %next.gep638, align 2, !tbaa !208, !alias.scope !243
  %wide.load640 = load <8 x i16>, ptr %i.hm, align 2, !tbaa !208, !alias.scope !243
  %i.hn = trunc <8 x i16> %wide.load639 to <8 x i8>
  %i.ho = trunc <8 x i16> %wide.load640 to <8 x i8>
  %i.hp = getelementptr i8, ptr %next.gep637, i64 8
  store <8 x i8> %i.hn, ptr %next.gep637, align 1, !tbaa !205, !alias.scope !246, !noalias !243
  store <8 x i8> %i.ho, ptr %i.hp, align 1, !tbaa !205, !alias.scope !246, !noalias !243
  %index.next641 = add nuw i64 %index636, 16      ; 2 uses
  %i.hq = icmp eq i64 %index.next641, %n.vec634
  br i1 %i.hq, label %middle.block642, label %vector.body635, !llvm.loop !248

middle.block642:                                  ; preds = %vector.body635
  %cmp.n643 = icmp eq i64 %i.gx, %n.vec634
  br i1 %cmp.n643, label %ucs1lib_find_max_char.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block642
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf633, 0
  br i1 %min.epilog.iters.check, label %.lr.ph469.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec634, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec647 = and i64 %i.gx, -4                   ; 4 uses
  %i.hr = getelementptr i8, ptr %.0249.lcssa, i64 %n.vec647
  %i.hs = shl i64 %n.vec647, 1
  %i.ht = getelementptr i8, ptr %.0251.lcssa, i64 %i.hs
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index648 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next652, %vec.epilog.vector.body ] ; 3 uses
  %next.gep649 = getelementptr i8, ptr %.0249.lcssa, i64 %index648
  %i.hu = shl i64 %index648, 1
  %next.gep650 = getelementptr i8, ptr %.0251.lcssa, i64 %i.hu
  %wide.load651 = load <4 x i16>, ptr %next.gep650, align 2, !tbaa !208, !alias.scope !243
  %i.hv = trunc <4 x i16> %wide.load651 to <4 x i8>
  store <4 x i8> %i.hv, ptr %next.gep649, align 1, !tbaa !205, !alias.scope !246, !noalias !243
  %index.next652 = add nuw i64 %index648, 4       ; 2 uses
  %i.hw = icmp eq i64 %index.next652, %n.vec647
  br i1 %i.hw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !249

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n653 = icmp eq i64 %i.gx, %n.vec647
  br i1 %cmp.n653, label %ucs1lib_find_max_char.exit, label %.lr.ph469.preheader

.lr.ph469.preheader:                              ; preds = %vector.memcheck619, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1250468.ph = phi ptr [ %.0249.lcssa, %iter.check ], [ %.0249.lcssa, %vector.memcheck619 ], [ %i.hi, %vec.epilog.iter.check ], [ %i.hr, %vec.epilog.middle.block ]
  %.1252467.ph = phi ptr [ %.0251.lcssa, %iter.check ], [ %.0251.lcssa, %vector.memcheck619 ], [ %i.hk, %vec.epilog.iter.check ], [ %i.ht, %vec.epilog.middle.block ]
  br label %.lr.ph469

.lr.ph464:                                        ; preds = %_PyUnicode_DATA.exit368, %.lr.ph464
  %.0249463 = phi ptr [ %i.im, %.lr.ph464 ], [ %i.gg, %_PyUnicode_DATA.exit368 ] ; 5 uses
  %.0251462 = phi ptr [ %i.il, %.lr.ph464 ], [ %i.gj, %_PyUnicode_DATA.exit368 ] ; 5 uses
  %i.hx = load i16, ptr %.0251462, align 2, !tbaa !208
  %i.hy = trunc i16 %i.hx to i8
  store i8 %i.hy, ptr %.0249463, align 1, !tbaa !205
  %i.hz = getelementptr i8, ptr %.0251462, i64 2
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !208
  %i.ib = trunc i16 %i.ia to i8
  %i.ic = getelementptr i8, ptr %.0249463, i64 1
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !205
  %i.id = getelementptr i8, ptr %.0251462, i64 4
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !208
  %i.if = trunc i16 %i.ie to i8
  %i.ig = getelementptr i8, ptr %.0249463, i64 2
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !205
  %i.ih = getelementptr i8, ptr %.0251462, i64 6
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !208
  %i.ij = trunc i16 %i.ii to i8
  %i.ik = getelementptr i8, ptr %.0249463, i64 3
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !205
  %i.il = getelementptr i8, ptr %.0251462, i64 8  ; 3 uses
  %i.im = getelementptr i8, ptr %.0249463, i64 4  ; 2 uses
  %i.in = icmp ult ptr %i.il, %i.gn
  br i1 %i.in, label %.lr.ph464, label %.preheader435, !llvm.loop !250

.lr.ph469:                                        ; preds = %.lr.ph469.preheader, %.lr.ph469
  %.1250468 = phi ptr [ %i.ir, %.lr.ph469 ], [ %.1250468.ph, %.lr.ph469.preheader ] ; 2 uses
  %.1252467 = phi ptr [ %i.io, %.lr.ph469 ], [ %.1252467.ph, %.lr.ph469.preheader ] ; 2 uses
  %i.io = getelementptr i8, ptr %.1252467, i64 2  ; 2 uses
  %i.ip = load i16, ptr %.1252467, align 2, !tbaa !208
  %i.iq = trunc i16 %i.ip to i8
  %i.ir = getelementptr i8, ptr %.1250468, i64 1
  store i8 %i.iq, ptr %.1250468, align 1, !tbaa !205
  %i.is = icmp ult ptr %i.io, %i.gk
  br i1 %i.is, label %.lr.ph469, label %ucs1lib_find_max_char.exit, !llvm.loop !251

bb.al:                                            ; preds = %bb.af
  %i.it = icmp eq i32 %i.e, 4                     ; 2 uses
  %or.cond10 = and i1 %i.it, %i.gd
  br i1 %or.cond10, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  br i1 %.not.i265, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iu = and i32 %i.j, 64
  %.not.i.i371 = icmp eq i32 %i.iu, 0
  %.0.v.i.i372 = select i1 %.not.i.i371, i64 56, i64 40
  %.0.i.i373 = getelementptr i8, ptr %0, i64 %.0.v.i.i372
  br label %_PyUnicode_DATA.exit376

bb.ao:                                            ; preds = %bb.am
  %i.iv = getelementptr i8, ptr %0, i64 56
  %.val4.i375 = load ptr, ptr %i.iv, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit376

_PyUnicode_DATA.exit376:                          ; preds = %bb.an, %bb.ao
  %.0.i374 = phi ptr [ %.0.i.i373, %bb.an ], [ %.val4.i375, %bb.ao ]
  %i.iw = getelementptr i8, ptr %.0.i374, i64 %1  ; 2 uses
  br i1 %.not.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_PyUnicode_DATA.exit376
  %i.ix = and i32 %i.c, 64
  %.not.i.i379 = icmp eq i32 %i.ix, 0
  %.0.v.i.i380 = select i1 %.not.i.i379, i64 56, i64 40
  %.0.i.i381 = getelementptr i8, ptr %2, i64 %.0.v.i.i380
  br label %_PyUnicode_DATA.exit392

bb.aq:                                            ; preds = %_PyUnicode_DATA.exit376
  %i.iy = getelementptr i8, ptr %2, i64 56
  %.val4.i383 = load ptr, ptr %i.iy, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit392

_PyUnicode_DATA.exit392:                          ; preds = %bb.ap, %bb.aq
  %.0.i.i381.pn = phi ptr [ %.0.i.i381, %bb.ap ], [ %.val4.i383, %bb.aq ] ; 2 uses
  %.0.i.i381.pn598 = ptrtoaddr ptr %.0.i.i381.pn to i64 ; 2 uses
  %i.iz = getelementptr [4 x i8], ptr %.0.i.i381.pn, i64 %3 ; 5 uses
  %i.ja = getelementptr [4 x i8], ptr %i.iz, i64 %4 ; 2 uses
  %.idx550 = shl i64 %4, 2                        ; 3 uses
  %i.jb = ashr exact i64 %.idx550, 2
  %i.jc = and i64 %i.jb, -4
  %i.jd = getelementptr [4 x i8], ptr %i.iz, i64 %i.jc ; 2 uses
  %i.je = icmp ult ptr %i.iz, %i.jd
  br i1 %i.je, label %.lr.ph456, label %.preheader437

.preheader437:                                    ; preds = %.lr.ph456, %_PyUnicode_DATA.exit392
  %.0247.lcssa = phi ptr [ %i.iw, %_PyUnicode_DATA.exit392 ], [ %i.kw, %.lr.ph456 ] ; 6 uses
  %.0245.lcssa = phi ptr [ %i.iz, %_PyUnicode_DATA.exit392 ], [ %i.kv, %.lr.ph456 ] ; 8 uses
  %.0245.lcssa599 = ptrtoaddr ptr %.0245.lcssa to i64 ; 4 uses
  %i.jf = icmp ult ptr %.0245.lcssa, %i.ja
  br i1 %i.jf, label %.lr.ph461.preheader, label %ucs1lib_find_max_char.exit

.lr.ph461.preheader:                              ; preds = %.preheader437
  %i.jg = add i64 %.idx550, %.0.i.i381.pn598
  %i.jh = shl i64 %3, 2
  %i.ji = add i64 %i.jg, %i.jh
  %i.jj = add i64 %.0245.lcssa599, 4
  %umax602 = tail call i64 @llvm.umax.i64(i64 %i.ji, i64 %i.jj)
  %i.jk = xor i64 %.0245.lcssa599, -1
  %i.jl = add i64 %umax602, %i.jk                 ; 2 uses
  %i.jm = lshr i64 %i.jl, 2
  %i.jn = add nuw nsw i64 %i.jm, 1                ; 2 uses
  %min.iters.check604 = icmp ult i64 %i.jl, 188
  br i1 %min.iters.check604, label %.lr.ph461.preheader758, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph461.preheader
  %i.jo = add i64 %.idx550, %.0.i.i381.pn598
  %i.jp = shl i64 %3, 2
  %i.jq = add i64 %i.jo, %i.jp
  %i.jr = add i64 %.0245.lcssa599, 4
  %umax600 = tail call i64 @llvm.umax.i64(i64 %i.jq, i64 %i.jr)
  %i.js = xor i64 %.0245.lcssa599, -1
  %i.jt = add i64 %umax600, %i.js                 ; 2 uses
  %i.ju = lshr i64 %i.jt, 2
  %i.jv = getelementptr i8, ptr %.0247.lcssa, i64 %i.ju
  %scevgep = getelementptr i8, ptr %i.jv, i64 1
  %i.jw = and i64 %i.jt, -4
  %i.jx = getelementptr i8, ptr %.0245.lcssa, i64 %i.jw
  %scevgep601 = getelementptr i8, ptr %i.jx, i64 4
  %bound0 = icmp ult ptr %.0247.lcssa, %scevgep601
  %bound1 = icmp ult ptr %.0245.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph461.preheader758, label %vector.ph605

vector.ph605:                                     ; preds = %vector.memcheck
  %n.vec607 = and i64 %i.jn, 9223372036854775800  ; 4 uses
  %i.jy = shl i64 %n.vec607, 2
  %i.jz = getelementptr i8, ptr %.0245.lcssa, i64 %i.jy
  %i.ka = getelementptr i8, ptr %.0247.lcssa, i64 %n.vec607
  br label %vector.body608

vector.body608:                                   ; preds = %vector.body608, %vector.ph605
  %index609 = phi i64 [ 0, %vector.ph605 ], [ %index.next614, %vector.body608 ] ; 3 uses
  %i.kb = shl i64 %index609, 2
  %next.gep610 = getelementptr i8, ptr %.0245.lcssa, i64 %i.kb ; 2 uses
  %next.gep611 = getelementptr i8, ptr %.0247.lcssa, i64 %index609 ; 2 uses
  %i.kc = getelementptr i8, ptr %next.gep610, i64 16
  %wide.load612 = load <4 x i32>, ptr %next.gep610, align 4, !tbaa !7, !alias.scope !252
  %wide.load613 = load <4 x i32>, ptr %i.kc, align 4, !tbaa !7, !alias.scope !252
  %i.kd = trunc <4 x i32> %wide.load612 to <4 x i8>
  %i.ke = trunc <4 x i32> %wide.load613 to <4 x i8>
  %i.kf = getelementptr i8, ptr %next.gep611, i64 4
  store <4 x i8> %i.kd, ptr %next.gep611, align 1, !tbaa !205, !alias.scope !255, !noalias !252
  store <4 x i8> %i.ke, ptr %i.kf, align 1, !tbaa !205, !alias.scope !255, !noalias !252
  %index.next614 = add nuw i64 %index609, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next614, %n.vec607
  br i1 %i.kg, label %middle.block615, label %vector.body608, !llvm.loop !257

middle.block615:                                  ; preds = %vector.body608
  %cmp.n616 = icmp eq i64 %i.jn, %n.vec607
  br i1 %cmp.n616, label %ucs1lib_find_max_char.exit, label %.lr.ph461.preheader758

.lr.ph461.preheader758:                           ; preds = %vector.memcheck, %.lr.ph461.preheader, %middle.block615
  %.1246460.ph = phi ptr [ %.0245.lcssa, %vector.memcheck ], [ %.0245.lcssa, %.lr.ph461.preheader ], [ %i.jz, %middle.block615 ]
  %.1248459.ph = phi ptr [ %.0247.lcssa, %vector.memcheck ], [ %.0247.lcssa, %.lr.ph461.preheader ], [ %i.ka, %middle.block615 ]
  br label %.lr.ph461

.lr.ph456:                                        ; preds = %_PyUnicode_DATA.exit392, %.lr.ph456
  %.0245455 = phi ptr [ %i.kv, %.lr.ph456 ], [ %i.iz, %_PyUnicode_DATA.exit392 ] ; 5 uses
  %.0247454 = phi ptr [ %i.kw, %.lr.ph456 ], [ %i.iw, %_PyUnicode_DATA.exit392 ] ; 5 uses
  %i.kh = load i32, ptr %.0245455, align 4, !tbaa !7
  %i.ki = trunc i32 %i.kh to i8
  store i8 %i.ki, ptr %.0247454, align 1, !tbaa !205
  %i.kj = getelementptr i8, ptr %.0245455, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !7
  %i.kl = trunc i32 %i.kk to i8
  %i.km = getelementptr i8, ptr %.0247454, i64 1
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !205
  %i.kn = getelementptr i8, ptr %.0245455, i64 8
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !7
  %i.kp = trunc i32 %i.ko to i8
  %i.kq = getelementptr i8, ptr %.0247454, i64 2
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !205
  %i.kr = getelementptr i8, ptr %.0245455, i64 12
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !7
  %i.kt = trunc i32 %i.ks to i8
  %i.ku = getelementptr i8, ptr %.0247454, i64 3
  store i8 %i.kt, ptr %i.ku, align 1, !tbaa !205
  %i.kv = getelementptr i8, ptr %.0245455, i64 16 ; 3 uses
  %i.kw = getelementptr i8, ptr %.0247454, i64 4  ; 2 uses
  %i.kx = icmp ult ptr %i.kv, %i.jd
  br i1 %i.kx, label %.lr.ph456, label %.preheader437, !llvm.loop !258

.lr.ph461:                                        ; preds = %.lr.ph461.preheader758, %.lr.ph461
  %.1246460 = phi ptr [ %i.ky, %.lr.ph461 ], [ %.1246460.ph, %.lr.ph461.preheader758 ] ; 2 uses
  %.1248459 = phi ptr [ %i.lb, %.lr.ph461 ], [ %.1248459.ph, %.lr.ph461.preheader758 ] ; 2 uses
  %i.ky = getelementptr i8, ptr %.1246460, i64 4  ; 2 uses
  %i.kz = load i32, ptr %.1246460, align 4, !tbaa !7
  %i.la = trunc i32 %i.kz to i8
  %i.lb = getelementptr i8, ptr %.1248459, i64 1
  store i8 %i.la, ptr %.1248459, align 1, !tbaa !205
  %i.lc = icmp ult ptr %i.ky, %i.ja
  br i1 %i.lc, label %.lr.ph461, label %ucs1lib_find_max_char.exit, !llvm.loop !259

bb.ar:                                            ; preds = %bb.al
  tail call void @llvm.assume(i1 %i.it)
  tail call void @llvm.assume(i1 %i.aj)
  br i1 %.not.i265, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ld = and i32 %i.j, 64
  %.not.i.i395 = icmp eq i32 %i.ld, 0
  %.0.v.i.i396 = select i1 %.not.i.i395, i64 56, i64 40
  %.0.i.i397 = getelementptr i8, ptr %0, i64 %.0.v.i.i396
  br label %_PyUnicode_DATA.exit400

bb.at:                                            ; preds = %bb.ar
  %i.le = getelementptr i8, ptr %0, i64 56
  %.val4.i399 = load ptr, ptr %i.le, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit400

_PyUnicode_DATA.exit400:                          ; preds = %bb.as, %bb.at
  %.0.i398 = phi ptr [ %.0.i.i397, %bb.as ], [ %.val4.i399, %bb.at ]
  %i.lf = getelementptr [2 x i8], ptr %.0.i398, i64 %1 ; 2 uses
  br i1 %.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_PyUnicode_DATA.exit400
  %i.lg = and i32 %i.c, 64
  %.not.i.i403 = icmp eq i32 %i.lg, 0
  %.0.v.i.i404 = select i1 %.not.i.i403, i64 56, i64 40
  %.0.i.i405 = getelementptr i8, ptr %2, i64 %.0.v.i.i404
  br label %_PyUnicode_DATA.exit416

bb.av:                                            ; preds = %_PyUnicode_DATA.exit400
  %i.lh = getelementptr i8, ptr %2, i64 56
  %.val4.i407 = load ptr, ptr %i.lh, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit416

_PyUnicode_DATA.exit416:                          ; preds = %bb.au, %bb.av
  %.0.i.i405.pn = phi ptr [ %.0.i.i405, %bb.au ], [ %.val4.i407, %bb.av ] ; 2 uses
  %.0.i.i405.pn593 = ptrtoaddr ptr %.0.i.i405.pn to i64
  %i.li = getelementptr [4 x i8], ptr %.0.i.i405.pn, i64 %3 ; 5 uses
  %i.lj = getelementptr [4 x i8], ptr %i.li, i64 %4 ; 2 uses
  %.idx = shl i64 %4, 2                           ; 2 uses
  %i.lk = ashr exact i64 %.idx, 2
  %i.ll = and i64 %i.lk, -4
  %i.lm = getelementptr [4 x i8], ptr %i.li, i64 %i.ll ; 2 uses
  %i.ln = icmp ult ptr %i.li, %i.lm
  br i1 %i.ln, label %.lr.ph448, label %.preheader439

.preheader439:                                    ; preds = %.lr.ph448, %_PyUnicode_DATA.exit416
  %.0237.lcssa = phi ptr [ %i.lf, %_PyUnicode_DATA.exit416 ], [ %i.ml, %.lr.ph448 ] ; 3 uses
  %.0235.lcssa = phi ptr [ %i.li, %_PyUnicode_DATA.exit416 ], [ %i.mk, %.lr.ph448 ] ; 5 uses
  %i.lo = icmp ult ptr %.0235.lcssa, %i.lj
  br i1 %i.lo, label %.lr.ph453.preheader, label %ucs1lib_find_max_char.exit

.lr.ph453.preheader:                              ; preds = %.preheader439
  %.0235.lcssa594 = ptrtoaddr ptr %.0235.lcssa to i64 ; 2 uses
  %i.lp = add i64 %.idx, %.0.i.i405.pn593
  %i.lq = shl i64 %3, 2
  %i.lr = add i64 %i.lp, %i.lq
  %i.ls = add i64 %.0235.lcssa594, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.lr, i64 %i.ls)
  %i.lt = xor i64 %.0235.lcssa594, -1
  %i.lu = add i64 %umax, %i.lt                    ; 2 uses
  %i.lv = lshr i64 %i.lu, 2
  %i.lw = add nuw nsw i64 %i.lv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.lu, 28
  br i1 %min.iters.check, label %.lr.ph453.preheader762, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph453.preheader
  %n.vec = and i64 %i.lw, 9223372036854775800     ; 4 uses
  %i.lx = shl i64 %n.vec, 2
  %i.ly = getelementptr i8, ptr %.0235.lcssa, i64 %i.lx
  %i.lz = shl nuw i64 %n.vec, 1
  %i.ma = getelementptr i8, ptr %.0237.lcssa, i64 %i.lz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0235.lcssa, i64 %i.mb ; 2 uses
  %i.mc = shl i64 %index, 1
  %next.gep595 = getelementptr i8, ptr %.0237.lcssa, i64 %i.mc ; 2 uses
  %i.md = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load596 = load <4 x i32>, ptr %i.md, align 4, !tbaa !7
  %i.me = trunc <4 x i32> %wide.load to <4 x i16>
  %i.mf = trunc <4 x i32> %wide.load596 to <4 x i16>
  %i.mg = getelementptr i8, ptr %next.gep595, i64 8
  store <4 x i16> %i.me, ptr %next.gep595, align 2, !tbaa !208
  store <4 x i16> %i.mf, ptr %i.mg, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mh = icmp eq i64 %index.next, %n.vec
  br i1 %i.mh, label %middle.block, label %vector.body, !llvm.loop !260

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lw, %n.vec
  br i1 %cmp.n, label %ucs1lib_find_max_char.exit, label %.lr.ph453.preheader762

.lr.ph453.preheader762:                           ; preds = %.lr.ph453.preheader, %middle.block
  %.1236452.ph = phi ptr [ %.0235.lcssa, %.lr.ph453.preheader ], [ %i.ly, %middle.block ]
  %.1238451.ph = phi ptr [ %.0237.lcssa, %.lr.ph453.preheader ], [ %i.ma, %middle.block ]
  br label %.lr.ph453

.lr.ph448:                                        ; preds = %_PyUnicode_DATA.exit416, %.lr.ph448
  %.0235447 = phi ptr [ %i.mk, %.lr.ph448 ], [ %i.li, %_PyUnicode_DATA.exit416 ] ; 2 uses
  %.0237446 = phi ptr [ %i.ml, %.lr.ph448 ], [ %i.lf, %_PyUnicode_DATA.exit416 ] ; 2 uses
  %i.mi = load <4 x i32>, ptr %.0235447, align 4, !tbaa !7
  %i.mj = trunc <4 x i32> %i.mi to <4 x i16>
  store <4 x i16> %i.mj, ptr %.0237446, align 2, !tbaa !208
  %i.mk = getelementptr i8, ptr %.0235447, i64 16 ; 3 uses
  %i.ml = getelementptr i8, ptr %.0237446, i64 8  ; 2 uses
  %i.mm = icmp ult ptr %i.mk, %i.lm
  br i1 %i.mm, label %.lr.ph448, label %.preheader439, !llvm.loop !261

.lr.ph453:                                        ; preds = %.lr.ph453.preheader762, %.lr.ph453
  %.1236452 = phi ptr [ %i.mn, %.lr.ph453 ], [ %.1236452.ph, %.lr.ph453.preheader762 ] ; 2 uses
  %.1238451 = phi ptr [ %i.mq, %.lr.ph453 ], [ %.1238451.ph, %.lr.ph453.preheader762 ] ; 2 uses
  %i.mn = getelementptr i8, ptr %.1236452, i64 4  ; 2 uses
  %i.mo = load i32, ptr %.1236452, align 4, !tbaa !7
  %i.mp = trunc i32 %i.mo to i16
  %i.mq = getelementptr i8, ptr %.1238451, i64 2
  store i16 %i.mp, ptr %.1238451, align 2, !tbaa !208
  %i.mr = icmp ult ptr %i.mn, %i.lj
  br i1 %i.mr, label %.lr.ph453, label %ucs1lib_find_max_char.exit, !llvm.loop !262

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.ae
  %i.ms = and i32 %i.j, 64
  %.not.i417 = icmp eq i32 %i.ms, 0
  %switch.select.i = select i1 %i.aj, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.l, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  %.0.i418 = select i1 %.not.i417, i32 %switch.select6.i, i32 127
  %.not258443 = icmp sgt i64 %4, 0
  br i1 %.not258443, label %.lr.ph, label %ucs1lib_find_max_char.exit

.lr.ph:                                           ; preds = %PyUnicode_MAX_CHAR_VALUE.exit, %PyUnicode_WRITE.exit
  %.0444 = phi i64 [ %i.nj, %PyUnicode_WRITE.exit ], [ 0, %PyUnicode_MAX_CHAR_VALUE.exit ] ; 3 uses
  %i.mt = add i64 %.0444, %3                      ; 3 uses
  switch i32 %i.e, label %bb.ay [
    i32 1, label %bb.aw
    i32 2, label %bb.ax
  ]

bb.aw:                                            ; preds = %.lr.ph
  %i.mu = getelementptr i8, ptr %.0.i, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !205
  %i.mw = zext i8 %i.mv to i32
  br label %PyUnicode_READ.exit

bb.ax:                                            ; preds = %.lr.ph
  %i.mx = getelementptr [2 x i8], ptr %.0.i, i64 %i.mt
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !208
  %i.mz = zext i16 %i.my to i32
  br label %PyUnicode_READ.exit

bb.ay:                                            ; preds = %.lr.ph
  %i.na = getelementptr [4 x i8], ptr %.0.i, i64 %i.mt
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.aw, %bb.ax, %bb.ay
  %.0.i419 = phi i32 [ %i.mw, %bb.aw ], [ %i.mz, %bb.ax ], [ %i.nb, %bb.ay ] ; 4 uses
  %i.nc = icmp ugt i32 %.0.i419, %.0.i418
  br i1 %i.nc, label %ucs1lib_find_max_char.exit, label %bb.az

bb.az:                                            ; preds = %PyUnicode_READ.exit
  %i.nd = add i64 %.0444, %1                      ; 3 uses
  switch i32 %i.l, label %bb.bc [
    i32 1, label %bb.ba
    i32 2, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.ne = trunc i32 %.0.i419 to i8
  %i.nf = getelementptr i8, ptr %.0.i269, i64 %i.nd
  store i8 %i.ne, ptr %i.nf, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit

bb.bb:                                            ; preds = %bb.az
  %i.ng = trunc i32 %.0.i419 to i16
  %i.nh = getelementptr [2 x i8], ptr %.0.i269, i64 %i.nd
  store i16 %i.ng, ptr %i.nh, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit

bb.bc:                                            ; preds = %bb.az
  %i.ni = getelementptr [4 x i8], ptr %.0.i269, i64 %i.nd
  store i32 %.0.i419, ptr %i.ni, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit

PyUnicode_WRITE.exit:                             ; preds = %bb.ba, %bb.bb, %bb.bc
  %i.nj = add nuw nsw i64 %.0444, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.nj, %4
  br i1 %exitcond.not, label %ucs1lib_find_max_char.exit, label %.lr.ph, !llvm.loop !263

ucs1lib_find_max_char.exit:                       ; preds = %PyUnicode_READ.exit, %PyUnicode_WRITE.exit, %.lr.ph453, %.lr.ph461, %.lr.ph469, %.lr.ph477, %.lr.ph485, %.lr.ph493, %.thread31.i, %bb.k, %middle.block, %middle.block615, %middle.block642, %vec.epilog.middle.block, %middle.block671, %middle.block695, %middle.block721, %vec.epilog.middle.block739, %PyUnicode_MAX_CHAR_VALUE.exit, %.preheader439, %.preheader437, %.preheader435, %.preheader433, %.preheader431, %.preheader, %ucs1lib_find_max_char.exit.thread, %bb.a
  %.2 = phi i32 [ 0, %.preheader439 ], [ 0, %PyUnicode_MAX_CHAR_VALUE.exit ], [ 0, %bb.a ], [ 0, %ucs1lib_find_max_char.exit.thread ], [ 0, %.preheader437 ], [ 0, %.preheader435 ], [ 0, %.preheader433 ], [ 0, %.preheader431 ], [ 0, %.preheader ], [ 0, %middle.block695 ], [ 0, %middle.block671 ], [ 0, %middle.block642 ], [ 0, %middle.block615 ], [ 0, %middle.block ], [ 0, %.lr.ph461 ], [ 0, %.lr.ph453 ], [ 0, %middle.block721 ], [ -1, %bb.k ], [ 0, %vec.epilog.middle.block739 ], [ -1, %.thread31.i ], [ 0, %.lr.ph493 ], [ 0, %.lr.ph485 ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph477 ], [ 0, %.lr.ph469 ], [ -1, %PyUnicode_READ.exit ], [ 0, %PyUnicode_WRITE.exit ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local i64 @PyUnicode_CopyCharacters(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val37 = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val37, i64 168
  %.val39 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val39, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !197
  %i.e = getelementptr i8, ptr %.val, i64 168
  %.val38 = load i64, ptr %i.e, align 8, !tbaa !198
  %i.f = and i64 %.val38, 268435456
  %.not34 = icmp eq i64 %i.f, 0
  br i1 %.not34, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 1531) #33
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %2, i64 16
  %.val45 = load i64, ptr %i.g, align 8, !tbaa !207 ; 2 uses
  %i.h = icmp ugt i64 %3, %.val45
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.28) #33
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val44 = load i64, ptr %i.j, align 8, !tbaa !207 ; 3 uses
  %i.k = icmp ugt i64 %1, %.val44
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.28) #33
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.m = icmp slt i64 %4, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.29) #33
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.o = sub i64 %.val45, %3
end_hunk_0
begin_hunk_1_@PyUnicode_Resize:bb.a
; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @unicode_resize(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !194    ; 15 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 3 uses
  %.val34 = load i64, ptr %i.b, align 8, !tbaa !207
  %i.c = icmp eq i64 %.val34, %1
  br i1 %i.c, label %Py_DECREF.exit32, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %0, align 8, !tbaa !194
  %i.e = load i32, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %.not.i31 = icmp sgt i32 %i.e, -1
  br i1 %.not.i31, label %bb.d, label %Py_DECREF.exit32

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !205
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %Py_DECREF.exit32

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #33
  br label %Py_DECREF.exit32

bb.f:                                             ; preds = %bb.b
  %.val7.i = load i32, ptr %i.a, align 8, !tbaa !205
  %.not.i35 = icmp eq i32 %.val7.i, 1
  br i1 %.not.i35, label %bb.g, label %_PyUnicode_IsModifiable.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr i8, ptr %i.a, i64 24
  %.val8.i = load i64, ptr %i.h, align 8, !tbaa !217
  %.not4.i = icmp eq i64 %.val8.i, -1
  br i1 %.not4.i, label %bb.h, label %_PyUnicode_IsModifiable.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  %.val.i = load i32, ptr %i.i, align 8           ; 3 uses
  %i.j = and i32 %.val.i, 3
  %.not5.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i, label %_PyUnicode_IsModifiable.exit, label %_PyUnicode_IsModifiable.exit.thread

_PyUnicode_IsModifiable.exit:                     ; preds = %bb.h
  %i.k = getelementptr i8, ptr %i.a, i64 8
  %.val9.i = load ptr, ptr %i.k, align 8, !tbaa !197
  %.not10.i.not = icmp eq ptr %.val9.i, @PyUnicode_Type
  br i1 %.not10.i.not, label %bb.m, label %_PyUnicode_IsModifiable.exit.thread

_PyUnicode_IsModifiable.exit.thread:              ; preds = %bb.h, %bb.g, %bb.f, %_PyUnicode_IsModifiable.exit
  %i.l = getelementptr i8, ptr %i.a, i64 32
  %.val14.i = load i32, ptr %i.l, align 8         ; 2 uses
  %i.m = and i32 %.val14.i, 64
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %bb.i, label %PyUnicode_MAX_CHAR_VALUE.exit.i

bb.i:                                             ; preds = %_PyUnicode_IsModifiable.exit.thread
  %i.n = lshr i32 %.val14.i, 2
  %i.o = and i32 %i.n, 7                          ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %i.o, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 65535, i32 1114111
  %switch.selectcmp5.i.i = icmp eq i32 %i.o, 1
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 255, i32 %switch.select.i.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit.i

PyUnicode_MAX_CHAR_VALUE.exit.i:                  ; preds = %bb.i, %_PyUnicode_IsModifiable.exit.thread
  %.0.i.i = phi i32 [ %switch.select6.i.i, %bb.i ], [ 127, %_PyUnicode_IsModifiable.exit.thread ]
  %i.p = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef %.0.i.i) ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %Py_DECREF.exit32, label %bb.j

bb.j:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i
  %.val13.i = load i64, ptr %i.b, align 8, !tbaa !207
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %1, i64 %.val13.i)
  %i.r = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.p, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef %spec.select.i, i32 noundef 0) ; 0 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !194    ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !194
  %i.t = load i32, ptr %i.s, align 8, !tbaa !205  ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit32

bb.k:                                             ; preds = %bb.j
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !205
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.l, label %Py_DECREF.exit32

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #33
  br label %Py_DECREF.exit32

bb.m:                                             ; preds = %_PyUnicode_IsModifiable.exit
  %i.w = and i32 %.val.i, 32
  %.not30 = icmp eq i32 %i.w, 0
  br i1 %.not30, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = tail call ptr @_PyUnicode_ResizeCompact(ptr noundef nonnull %i.a, i64 noundef %1) ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %Py_DECREF.exit32, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.x, ptr %0, align 8, !tbaa !194
  br label %Py_DECREF.exit32

bb.p:                                             ; preds = %bb.m
  %i.z = getelementptr i8, ptr %i.a, i64 56       ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !205 ; 3 uses
  %i.ab = lshr exact i32 %.val.i, 2
  %i.ac = and i32 %i.ab, 7
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = getelementptr i8, ptr %i.a, i64 48      ; 2 uses
  %.val.i.i = load ptr, ptr %i.ae, align 8, !tbaa !203 ; 3 uses
  %i.af = udiv i64 9223372036854775807, %i.ad
  %.not.i36 = icmp slt i64 %1, %i.af
  br i1 %.not.i36, label %bb.q, label %.sink.split.i

bb.q:                                             ; preds = %bb.p
  %.not39.i = icmp eq ptr %.val.i.i, %i.aa
  %i.ag = add i64 %1, 1
  %i.ah = mul i64 %i.ag, %i.ad                    ; 2 uses
  br i1 %.not39.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not4.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not4.i.i, label %_PyUnicode_HAS_UTF8_MEMORY.exit.thread.i, label %_PyUnicode_HAS_UTF8_MEMORY.exit.i

_PyUnicode_HAS_UTF8_MEMORY.exit.i:                ; preds = %bb.r
  tail call void @PyMem_Free(ptr noundef nonnull %.val.i.i) #33
  %i.ai = getelementptr i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  br label %_PyUnicode_HAS_UTF8_MEMORY.exit.thread.i

_PyUnicode_HAS_UTF8_MEMORY.exit.thread.i:         ; preds = %_PyUnicode_HAS_UTF8_MEMORY.exit.i, %bb.r
  %i.aj = tail call ptr @PyObject_Realloc(ptr noundef %i.aa, i64 noundef %i.ah) #33 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.sink.split.i, label %bb.s

.thread.i:                                        ; preds = %bb.q
  %i.al = tail call ptr @PyObject_Realloc(ptr noundef %i.aa, i64 noundef %i.ah) #33 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.sink.split.i, label %.thread38.i

.thread38.i:                                      ; preds = %.thread.i
  store ptr %i.al, ptr %i.z, align 8, !tbaa !205
  %i.an = getelementptr i8, ptr %i.a, i64 40
  store i64 %1, ptr %i.an, align 8, !tbaa !206
  store ptr %i.al, ptr %i.ae, align 8, !tbaa !203
  br label %bb.t

bb.s:                                             ; preds = %_PyUnicode_HAS_UTF8_MEMORY.exit.thread.i
  store ptr %i.aj, ptr %i.z, align 8, !tbaa !205
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread38.i
  %i.ao = phi ptr [ %i.al, %.thread38.i ], [ %i.aj, %bb.s ] ; 3 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !207
  %i.ap = load i32, ptr %i.i, align 8
  %i.aq = lshr i32 %i.ap, 2
  %i.ar = and i32 %i.aq, 7
  switch i32 %i.ar, label %bb.w [
    i32 1, label %bb.u
    i32 2, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr i8, ptr %i.ao, i64 %1
  store i8 0, ptr %i.as, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit.i

bb.v:                                             ; preds = %bb.t
  %i.at = getelementptr [2 x i8], ptr %i.ao, i64 %1
  store i16 0, ptr %i.at, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit.i

bb.w:                                             ; preds = %bb.t
  %i.au = getelementptr [4 x i8], ptr %i.ao, i64 %1
  store i32 0, ptr %i.au, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit.i

PyUnicode_WRITE.exit.i:                           ; preds = %bb.w, %bb.v, %bb.u
  %i.av = icmp sgt i64 %1, 2305843009213693950
  br i1 %i.av, label %.sink.split.i, label %Py_DECREF.exit32

.sink.split.i:                                    ; preds = %PyUnicode_WRITE.exit.i, %.thread.i, %_PyUnicode_HAS_UTF8_MEMORY.exit.thread.i, %bb.p
  %i.aw = tail call ptr @PyErr_NoMemory() #33     ; 0 uses
  br label %Py_DECREF.exit32

Py_DECREF.exit32:                                 ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i, %.sink.split.i, %PyUnicode_WRITE.exit.i, %bb.l, %bb.k, %bb.j, %bb.e, %bb.d, %bb.c, %bb.o, %bb.n, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ -1, %bb.n ], [ -1, %.sink.split.i ], [ 0, %bb.l ], [ 0, %bb.e ], [ 0, %bb.o ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %PyUnicode_WRITE.exit.i ], [ -1, %PyUnicode_MAX_CHAR_VALUE.exit.i ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_FromWideChar(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 1900) #33
  br label %get_latin1_char.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, -1
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 @wcslen(ptr noundef %0) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.019 = phi i64 [ %i.d, %bb.d ], [ %1, %bb.c ]  ; 4 uses
  switch i64 %.019, label %bb.j [
    i64 0, label %get_latin1_char.exit
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.e = load i32, ptr %0, align 4, !tbaa !7      ; 3 uses
  %i.f = icmp ult i32 %i.e, 256
  br i1 %i.f, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.g = trunc nuw i32 %i.e to i8                 ; 2 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = zext nneg i32 %i.e to i64
  %i.j = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.i
  br label %get_latin1_char.exit

bb.i:                                             ; preds = %bb.g
  %i.k = and i8 %i.g, 127
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.l
  br label %get_latin1_char.exit

bb.j:                                             ; preds = %bb.e, %bb.f
  %i.n = getelementptr [4 x i8], ptr %0, i64 %.019 ; 6 uses
  %i.o = icmp ult ptr %0, %i.n
  br i1 %i.o, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.031 = phi i32 [ %.1, %bb.l ], [ 0, %bb.j ]
  %i.p = phi i32 [ %i.u, %bb.l ], [ 0, %bb.j ]    ; 2 uses
  %.01315.i = phi ptr [ %i.r, %bb.l ], [ %0, %bb.j ] ; 2 uses
  %i.q = load i32, ptr %.01315.i, align 4, !tbaa !7 ; 5 uses
  %i.r = getelementptr i8, ptr %.01315.i, i64 4   ; 2 uses
  %i.s = icmp ugt i32 %i.q, %i.p
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.t = icmp ugt i32 %i.q, 1114111
  br i1 %i.t, label %find_maxchar_surrogates.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %.1 = phi i32 [ %i.q, %bb.k ], [ %.031, %.lr.ph.i ] ; 2 uses
  %i.u = phi i32 [ %i.q, %bb.k ], [ %i.p, %.lr.ph.i ]
  %i.v = icmp ult ptr %i.r, %i.n
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !llvm.loop !264

find_maxchar_surrogates.exit:                     ; preds = %bb.k
  %i.w = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  %i.x = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.w, ptr noundef nonnull @.str.125, i32 noundef %i.q, i32 noundef 1114111) #33 ; 0 uses
  br label %get_latin1_char.exit

.loopexit:                                        ; preds = %bb.l, %bb.j
  %.2.ph = phi i32 [ 0, %bb.j ], [ %.1, %bb.l ]
  %i.y = tail call ptr @PyUnicode_New(i64 noundef %.019, i32 noundef %.2.ph) ; 16 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %get_latin1_char.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.z = getelementptr i8, ptr %i.y, i64 32       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 3 uses
  %i.ab = lshr i32 %i.aa, 2
  %i.ac = and i32 %i.ab, 7
  %i.ad = and i32 %i.aa, 32
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = and i32 %i.aa, 64
  %.not.i.i = icmp eq i32 %i.ae, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.y, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.o:                                             ; preds = %bb.m
  %i.af = getelementptr i8, ptr %i.y, i64 56
  %.val4.i = load ptr, ptr %i.af, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.n, %bb.o
  %.0.i23 = phi ptr [ %.0.i.i, %bb.n ], [ %.val4.i, %bb.o ] ; 5 uses
  %.idx57.i = shl i64 %.019, 2                    ; 6 uses
  switch i32 %i.ac, label %bb.s [
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 4, label %bb.r
  ]

bb.p:                                             ; preds = %_PyUnicode_DATA.exit
  %i.ag = ashr exact i64 %.idx57.i, 2
  %i.ah = and i64 %i.ag, -4
  %i.ai = getelementptr [4 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.aj = icmp ult ptr %0, %i.ai
  br i1 %i.aj, label %.lr.ph68.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph68.i, %bb.p
  %.051.lcssa.i = phi ptr [ %0, %bb.p ], [ %i.bw, %.lr.ph68.i ] ; 8 uses
  %.0.lcssa.i = phi ptr [ %.0.i23, %bb.p ], [ %i.bx, %.lr.ph68.i ] ; 6 uses
  %.051.lcssa.i83 = ptrtoaddr ptr %.051.lcssa.i to i64 ; 4 uses
  %i.ak = icmp ult ptr %.051.lcssa.i, %i.n
  br i1 %i.ak, label %.lr.ph73.i.preheader, label %unicode_write_widechar.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %i.al = add i64 %.idx57.i, %2
  %i.am = add i64 %.051.lcssa.i83, 4
  %umax86 = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.am)
  %i.an = xor i64 %.051.lcssa.i83, -1
  %i.ao = add i64 %umax86, %i.an                  ; 2 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check88 = icmp ult i64 %i.ao, 156
  br i1 %min.iters.check88, label %.lr.ph73.i.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph73.i.preheader
  %i.ar = add i64 %.idx57.i, %2
  %i.as = add i64 %.051.lcssa.i83, 4
  %umax84 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.as)
  %i.at = xor i64 %.051.lcssa.i83, -1
  %i.au = add i64 %umax84, %i.at                  ; 2 uses
  %i.av = lshr i64 %i.au, 2
  %i.aw = getelementptr i8, ptr %.0.lcssa.i, i64 %i.av
  %scevgep = getelementptr i8, ptr %i.aw, i64 1
  %i.ax = and i64 %i.au, -4
  %i.ay = getelementptr i8, ptr %.051.lcssa.i, i64 %i.ax
  %scevgep85 = getelementptr i8, ptr %i.ay, i64 4
  %bound0 = icmp ult ptr %.0.lcssa.i, %scevgep85
  %bound1 = icmp ult ptr %.051.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.i.preheader103, label %vector.ph89

vector.ph89:                                      ; preds = %vector.memcheck
  %n.vec91 = and i64 %i.aq, 9223372036854775800   ; 4 uses
  %i.az = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec91
  %i.ba = shl i64 %n.vec91, 2
  %i.bb = getelementptr i8, ptr %.051.lcssa.i, i64 %i.ba
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph89
  %index93 = phi i64 [ 0, %vector.ph89 ], [ %index.next98, %vector.body92 ] ; 3 uses
  %next.gep94 = getelementptr i8, ptr %.0.lcssa.i, i64 %index93 ; 2 uses
  %i.bc = shl i64 %index93, 2
  %next.gep95 = getelementptr i8, ptr %.051.lcssa.i, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load96 = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !7, !alias.scope !265
  %wide.load97 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !7, !alias.scope !265
  %i.be = trunc <4 x i32> %wide.load96 to <4 x i8>
  %i.bf = trunc <4 x i32> %wide.load97 to <4 x i8>
  %i.bg = getelementptr i8, ptr %next.gep94, i64 4
  store <4 x i8> %i.be, ptr %next.gep94, align 1, !tbaa !205, !alias.scope !268, !noalias !265
  store <4 x i8> %i.bf, ptr %i.bg, align 1, !tbaa !205, !alias.scope !268, !noalias !265
  %index.next98 = add nuw i64 %index93, 8         ; 2 uses
  %i.bh = icmp eq i64 %index.next98, %n.vec91
  br i1 %i.bh, label %middle.block99, label %vector.body92, !llvm.loop !270

middle.block99:                                   ; preds = %vector.body92
  %cmp.n100 = icmp eq i64 %i.aq, %n.vec91
  br i1 %cmp.n100, label %unicode_write_widechar.exit, label %.lr.ph73.i.preheader103

.lr.ph73.i.preheader103:                          ; preds = %vector.memcheck, %.lr.ph73.i.preheader, %middle.block99
  %.172.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck ], [ %.0.lcssa.i, %.lr.ph73.i.preheader ], [ %i.az, %middle.block99 ]
  %.15271.i.ph = phi ptr [ %.051.lcssa.i, %vector.memcheck ], [ %.051.lcssa.i, %.lr.ph73.i.preheader ], [ %i.bb, %middle.block99 ]
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %bb.p, %.lr.ph68.i
  %.067.i = phi ptr [ %i.bx, %.lr.ph68.i ], [ %.0.i23, %bb.p ] ; 5 uses
  %.05166.i = phi ptr [ %i.bw, %.lr.ph68.i ], [ %0, %bb.p ] ; 5 uses
  %i.bi = load i32, ptr %.05166.i, align 4, !tbaa !7
  %i.bj = trunc i32 %i.bi to i8
  store i8 %i.bj, ptr %.067.i, align 1, !tbaa !205
  %i.bk = getelementptr i8, ptr %.05166.i, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !7
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr i8, ptr %.067.i, i64 1
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !205
  %i.bo = getelementptr i8, ptr %.05166.i, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr i8, ptr %.067.i, i64 2
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !205
  %i.bs = getelementptr i8, ptr %.05166.i, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr i8, ptr %.067.i, i64 3
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !205
  %i.bw = getelementptr i8, ptr %.05166.i, i64 16 ; 3 uses
  %i.bx = getelementptr i8, ptr %.067.i, i64 4    ; 2 uses
  %i.by = icmp ult ptr %i.bw, %i.ai
  br i1 %i.by, label %.lr.ph68.i, label %.preheader.i, !llvm.loop !271

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader103, %.lr.ph73.i
  %.172.i = phi ptr [ %i.cc, %.lr.ph73.i ], [ %.172.i.ph, %.lr.ph73.i.preheader103 ] ; 2 uses
  %.15271.i = phi ptr [ %i.bz, %.lr.ph73.i ], [ %.15271.i.ph, %.lr.ph73.i.preheader103 ] ; 2 uses
  %i.bz = getelementptr i8, ptr %.15271.i, i64 4  ; 2 uses
  %i.ca = load i32, ptr %.15271.i, align 4, !tbaa !7
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = getelementptr i8, ptr %.172.i, i64 1
  store i8 %i.cb, ptr %.172.i, align 1, !tbaa !205
  %i.cd = icmp ult ptr %i.bz, %i.n
  br i1 %i.cd, label %.lr.ph73.i, label %unicode_write_widechar.exit, !llvm.loop !272

bb.q:                                             ; preds = %_PyUnicode_DATA.exit
  %i.ce = ashr exact i64 %.idx57.i, 2
  %i.cf = and i64 %i.ce, -4
  %i.cg = getelementptr [4 x i8], ptr %0, i64 %i.cf ; 2 uses
  %i.ch = icmp ult ptr %0, %i.cg
  br i1 %i.ch, label %.lr.ph.i24, label %.preheader58.i

.preheader58.i:                                   ; preds = %.lr.ph.i24, %bb.q
  %.055.lcssa.i = phi ptr [ %0, %bb.q ], [ %i.dc, %.lr.ph.i24 ] ; 5 uses
  %.053.lcssa.i = phi ptr [ %.0.i23, %bb.q ], [ %i.dd, %.lr.ph.i24 ] ; 3 uses
  %i.ci = icmp ult ptr %.055.lcssa.i, %i.n
  br i1 %i.ci, label %.lr.ph65.i.preheader, label %unicode_write_widechar.exit

.lr.ph65.i.preheader:                             ; preds = %.preheader58.i
  %.055.lcssa.i79 = ptrtoaddr ptr %.055.lcssa.i to i64 ; 2 uses
  %i.cj = add i64 %.idx57.i, %2
  %i.ck = add i64 %.055.lcssa.i79, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 %i.ck)
  %i.cl = xor i64 %.055.lcssa.i79, -1
  %i.cm = add i64 %umax, %i.cl                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 2
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cm, 28
  br i1 %min.iters.check, label %.lr.ph65.i.preheader105, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.i.preheader
  %n.vec = and i64 %i.co, 9223372036854775800     ; 4 uses
  %i.cp = shl nuw i64 %n.vec, 1
  %i.cq = getelementptr i8, ptr %.053.lcssa.i, i64 %i.cp
  %i.cr = shl i64 %n.vec, 2
  %i.cs = getelementptr i8, ptr %.055.lcssa.i, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.053.lcssa.i, i64 %i.ct ; 2 uses
  %i.cu = shl i64 %index, 2
  %next.gep80 = getelementptr i8, ptr %.055.lcssa.i, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep80, align 4, !tbaa !7
  %wide.load81 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !7
  %i.cw = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cx = trunc <4 x i32> %wide.load81 to <4 x i16>
  %i.cy = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.cw, ptr %next.gep, align 2, !tbaa !208
  store <4 x i16> %i.cx, ptr %i.cy, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !273

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %unicode_write_widechar.exit, label %.lr.ph65.i.preheader105

.lr.ph65.i.preheader105:                          ; preds = %.lr.ph65.i.preheader, %middle.block
  %.15464.i.ph = phi ptr [ %.053.lcssa.i, %.lr.ph65.i.preheader ], [ %i.cq, %middle.block ]
  %.15663.i.ph = phi ptr [ %.055.lcssa.i, %.lr.ph65.i.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph65.i

.lr.ph.i24:                                       ; preds = %bb.q, %.lr.ph.i24
  %.05361.i = phi ptr [ %i.dd, %.lr.ph.i24 ], [ %.0.i23, %bb.q ] ; 2 uses
  %.05560.i = phi ptr [ %i.dc, %.lr.ph.i24 ], [ %0, %bb.q ] ; 2 uses
  %i.da = load <4 x i32>, ptr %.05560.i, align 4, !tbaa !7
  %i.db = trunc <4 x i32> %i.da to <4 x i16>
  store <4 x i16> %i.db, ptr %.05361.i, align 2, !tbaa !208
  %i.dc = getelementptr i8, ptr %.05560.i, i64 16 ; 3 uses
  %i.dd = getelementptr i8, ptr %.05361.i, i64 8  ; 2 uses
  %i.de = icmp ult ptr %i.dc, %i.cg
  br i1 %i.de, label %.lr.ph.i24, label %.preheader58.i, !llvm.loop !274

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader105, %.lr.ph65.i
  %.15464.i = phi ptr [ %i.di, %.lr.ph65.i ], [ %.15464.i.ph, %.lr.ph65.i.preheader105 ] ; 2 uses
  %.15663.i = phi ptr [ %i.df, %.lr.ph65.i ], [ %.15663.i.ph, %.lr.ph65.i.preheader105 ] ; 2 uses
  %i.df = getelementptr i8, ptr %.15663.i, i64 4  ; 2 uses
  %i.dg = load i32, ptr %.15663.i, align 4, !tbaa !7
  %i.dh = trunc i32 %i.dg to i16
  %i.di = getelementptr i8, ptr %.15464.i, i64 2
  store i16 %i.dh, ptr %.15464.i, align 2, !tbaa !208
  %i.dj = icmp ult ptr %i.df, %i.n
  br i1 %i.dj, label %.lr.ph65.i, label %unicode_write_widechar.exit, !llvm.loop !275

bb.r:                                             ; preds = %_PyUnicode_DATA.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i23, ptr readonly align 4 %0, i64 %.idx57.i, i1 false)
  br label %unicode_write_widechar.exit

bb.s:                                             ; preds = %_PyUnicode_DATA.exit
  unreachable

unicode_write_widechar.exit:                      ; preds = %.lr.ph65.i, %.lr.ph73.i, %middle.block, %middle.block99, %.preheader.i, %.preheader58.i, %bb.r
  %i.dk = getelementptr i8, ptr %i.y, i64 16
  %.val.i25 = load i64, ptr %i.dk, align 8, !tbaa !207
  switch i64 %.val.i25, label %get_latin1_char.exit [
    i64 0, label %bb.t
    i64 1, label %bb.w
  ]

bb.t:                                             ; preds = %unicode_write_widechar.exit
  %.not26.i = icmp eq ptr %i.y, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %.not26.i, label %get_latin1_char.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = load i32, ptr %i.y, align 8, !tbaa !205 ; 2 uses
  %.not.i27.i = icmp sgt i32 %i.dl, -1
  br i1 %.not.i27.i, label %bb.v, label %get_latin1_char.exit

bb.v:                                             ; preds = %bb.u
  %i.dm = add nsw i32 %i.dl, -1                   ; 2 uses
  store i32 %i.dm, ptr %i.y, align 8, !tbaa !205
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %Py_DECREF.exit28.sink.split.i, label %get_latin1_char.exit

bb.w:                                             ; preds = %unicode_write_widechar.exit
  %i.do = load i32, ptr %i.z, align 8             ; 3 uses
  %i.dp = and i32 %i.do, 28
  %.not25.i = icmp eq i32 %i.dp, 4
  br i1 %.not25.i, label %bb.x, label %get_latin1_char.exit

bb.x:                                             ; preds = %bb.w
  %i.dq = and i32 %i.do, 32
  %.not.i30.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i30.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dr = and i32 %i.do, 64
  %.not.i.i.i = icmp eq i32 %i.dr, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.y, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ds = getelementptr i8, ptr %i.y, i64 56
  %.val4.i.i = load ptr, ptr %i.ds, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.z, %bb.y
  %.0.i.i26 = phi ptr [ %.0.i.i.i, %bb.y ], [ %.val4.i.i, %bb.z ]
  %i.dt = load i8, ptr %.0.i.i26, align 1, !tbaa !205 ; 3 uses
  %i.du = zext nneg i8 %i.dt to i64
  %i.dv = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.du
  %i.dw = and i8 %i.dt, 127
  %i.dx = zext nneg i8 %i.dw to i64
  %i.dy = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.dx
  %i.dz = icmp slt i8 %i.dt, 0
  %i.ea = select i1 %i.dz, ptr %i.dy, ptr %i.dv   ; 5 uses
  %.not.i27 = icmp eq ptr %i.y, %i.ea
  br i1 %.not.i27, label %get_latin1_char.exit, label %bb.aa

bb.aa:                                            ; preds = %_PyUnicode_DATA.exit.i
  %i.eb = load i32, ptr %i.y, align 8, !tbaa !205 ; 2 uses
  %.not.i.i28 = icmp sgt i32 %i.eb, -1
  br i1 %.not.i.i28, label %bb.ab, label %get_latin1_char.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ec = add nsw i32 %i.eb, -1                   ; 2 uses
  store i32 %i.ec, ptr %i.y, align 8, !tbaa !205
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %Py_DECREF.exit28.sink.split.i, label %get_latin1_char.exit

Py_DECREF.exit28.sink.split.i:                    ; preds = %bb.ab, %bb.v
  %.1.ph.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.v ], [ %i.ea, %bb.ab ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.y) #33
  br label %get_latin1_char.exit

get_latin1_char.exit:                             ; preds = %Py_DECREF.exit28.sink.split.i, %bb.ab, %bb.aa, %_PyUnicode_DATA.exit.i, %bb.w, %bb.v, %bb.u, %bb.t, %unicode_write_widechar.exit, %find_maxchar_surrogates.exit, %bb.i, %bb.h, %bb.e, %.loopexit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.loopexit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.e ], [ null, %find_maxchar_surrogates.exit ], [ %i.m, %bb.i ], [ %i.j, %bb.h ], [ %i.y, %unicode_write_widechar.exit ], [ %i.ea, %bb.aa ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.v ], [ %i.y, %bb.w ], [ %i.ea, %_PyUnicode_DATA.exit.i ], [ %i.ea, %bb.ab ], [ %.1.ph.i, %Py_DECREF.exit28.sink.split.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyUnicodeWriter_WriteWideChar(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @wcslen(ptr noundef %1) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.024 = phi i64 [ %i.b, %bb.b ], [ %2, %bb.a ]  ; 6 uses
  %i.c = icmp eq i64 %.024, 0
  br i1 %i.c, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr [4 x i8], ptr %1, i64 %.024 ; 6 uses
  %i.e = icmp ult ptr %1, %i.d
  br i1 %i.e, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.034 = phi i32 [ %.135, %bb.f ], [ 0, %bb.d ]
  %i.f = phi i32 [ %i.k, %bb.f ], [ 0, %bb.d ]    ; 2 uses
  %.01315.i = phi ptr [ %i.h, %bb.f ], [ %1, %bb.d ] ; 2 uses
  %i.g = load i32, ptr %.01315.i, align 4, !tbaa !7 ; 5 uses
  %i.h = getelementptr i8, ptr %.01315.i, i64 4   ; 2 uses
  %i.i = icmp ugt i32 %i.g, %i.f
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.j = icmp ugt i32 %i.g, 1114111
  br i1 %i.j, label %find_maxchar_surrogates.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.135 = phi i32 [ %i.g, %bb.e ], [ %.034, %.lr.ph.i ] ; 4 uses
  %i.k = phi i32 [ %i.g, %bb.e ], [ %i.f, %.lr.ph.i ]
  %i.l = icmp ult ptr %i.h, %i.d
  br i1 %i.l, label %.lr.ph.i, label %bb.g, !llvm.loop !264

find_maxchar_surrogates.exit:                     ; preds = %bb.e
  %i.m = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  %i.n = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.m, ptr noundef nonnull @.str.125, i32 noundef %i.g, i32 noundef 1114111) #33 ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %0, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !276
  %.not = icmp ugt i32 %.135, %i.p
  br i1 %.not, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.d, %bb.g
  %.2.ph41 = phi i32 [ %.135, %bb.g ], [ 0, %bb.d ]
  %i.q = getelementptr i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !278
  %i.s = getelementptr i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !279  ; 2 uses
  %i.u = sub i64 %i.r, %i.t
  %.not27 = icmp sgt i64 %.024, %i.u
  br i1 %.not27, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g, %.thread
  %.2.ph42 = phi i32 [ %.2.ph41, %.thread ], [ %.135, %bb.g ]
  %i.v = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %.024, i32 noundef %.2.ph42) #33
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.m, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.h
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !279
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.thread
  %i.x = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.t, %.thread ]
  %i.y = getelementptr i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !280  ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !281
  %i.ac = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ad = sext i32 %i.z to i64
  %i.ae = mul i64 %i.x, %i.ad
  %i.af = getelementptr i8, ptr %i.ab, i64 %i.ae  ; 5 uses
  %.idx57.i = shl i64 %.024, 2                    ; 6 uses
  switch i32 %i.z, label %bb.l [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 4, label %bb.k
  ]

bb.i:                                             ; preds = %.critedge
  %i.ag = ashr exact i64 %.idx57.i, 2
  %i.ah = and i64 %i.ag, -4
  %i.ai = getelementptr [4 x i8], ptr %1, i64 %i.ah ; 2 uses
  %i.aj = icmp ult ptr %1, %i.ai
  br i1 %i.aj, label %.lr.ph68.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph68.i, %bb.i
  %.051.lcssa.i = phi ptr [ %1, %bb.i ], [ %i.bw, %.lr.ph68.i ] ; 8 uses
  %.0.lcssa.i = phi ptr [ %i.af, %bb.i ], [ %i.bx, %.lr.ph68.i ] ; 6 uses
  %.051.lcssa.i83 = ptrtoaddr ptr %.051.lcssa.i to i64 ; 4 uses
  %i.ak = icmp ult ptr %.051.lcssa.i, %i.d
  br i1 %i.ak, label %.lr.ph73.i.preheader, label %unicode_write_widechar.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %i.al = add i64 %.idx57.i, %3
  %i.am = add i64 %.051.lcssa.i83, 4
  %umax86 = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.am)
  %i.an = xor i64 %.051.lcssa.i83, -1
  %i.ao = add i64 %umax86, %i.an                  ; 2 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check88 = icmp ult i64 %i.ao, 156
  br i1 %min.iters.check88, label %.lr.ph73.i.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph73.i.preheader
  %i.ar = add i64 %.idx57.i, %3
  %i.as = add i64 %.051.lcssa.i83, 4
  %umax84 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.as)
  %i.at = xor i64 %.051.lcssa.i83, -1
  %i.au = add i64 %umax84, %i.at                  ; 2 uses
  %i.av = lshr i64 %i.au, 2
  %i.aw = getelementptr i8, ptr %.0.lcssa.i, i64 %i.av
  %scevgep = getelementptr i8, ptr %i.aw, i64 1
  %i.ax = and i64 %i.au, -4
  %i.ay = getelementptr i8, ptr %.051.lcssa.i, i64 %i.ax
  %scevgep85 = getelementptr i8, ptr %i.ay, i64 4
  %bound0 = icmp ult ptr %.0.lcssa.i, %scevgep85
  %bound1 = icmp ult ptr %.051.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.i.preheader103, label %vector.ph89

vector.ph89:                                      ; preds = %vector.memcheck
  %n.vec91 = and i64 %i.aq, 9223372036854775800   ; 4 uses
  %i.az = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec91
  %i.ba = shl i64 %n.vec91, 2
  %i.bb = getelementptr i8, ptr %.051.lcssa.i, i64 %i.ba
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph89
  %index93 = phi i64 [ 0, %vector.ph89 ], [ %index.next98, %vector.body92 ] ; 3 uses
  %next.gep94 = getelementptr i8, ptr %.0.lcssa.i, i64 %index93 ; 2 uses
  %i.bc = shl i64 %index93, 2
  %next.gep95 = getelementptr i8, ptr %.051.lcssa.i, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load96 = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !7, !alias.scope !282
  %wide.load97 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !7, !alias.scope !282
  %i.be = trunc <4 x i32> %wide.load96 to <4 x i8>
  %i.bf = trunc <4 x i32> %wide.load97 to <4 x i8>
  %i.bg = getelementptr i8, ptr %next.gep94, i64 4
  store <4 x i8> %i.be, ptr %next.gep94, align 1, !tbaa !205, !alias.scope !285, !noalias !282
  store <4 x i8> %i.bf, ptr %i.bg, align 1, !tbaa !205, !alias.scope !285, !noalias !282
  %index.next98 = add nuw i64 %index93, 8         ; 2 uses
  %i.bh = icmp eq i64 %index.next98, %n.vec91
  br i1 %i.bh, label %middle.block99, label %vector.body92, !llvm.loop !287

middle.block99:                                   ; preds = %vector.body92
  %cmp.n100 = icmp eq i64 %i.aq, %n.vec91
  br i1 %cmp.n100, label %unicode_write_widechar.exit, label %.lr.ph73.i.preheader103

.lr.ph73.i.preheader103:                          ; preds = %vector.memcheck, %.lr.ph73.i.preheader, %middle.block99
  %.172.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck ], [ %.0.lcssa.i, %.lr.ph73.i.preheader ], [ %i.az, %middle.block99 ]
  %.15271.i.ph = phi ptr [ %.051.lcssa.i, %vector.memcheck ], [ %.051.lcssa.i, %.lr.ph73.i.preheader ], [ %i.bb, %middle.block99 ]
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %bb.i, %.lr.ph68.i
  %.067.i = phi ptr [ %i.bx, %.lr.ph68.i ], [ %i.af, %bb.i ] ; 5 uses
  %.05166.i = phi ptr [ %i.bw, %.lr.ph68.i ], [ %1, %bb.i ] ; 5 uses
  %i.bi = load i32, ptr %.05166.i, align 4, !tbaa !7
  %i.bj = trunc i32 %i.bi to i8
  store i8 %i.bj, ptr %.067.i, align 1, !tbaa !205
  %i.bk = getelementptr i8, ptr %.05166.i, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !7
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr i8, ptr %.067.i, i64 1
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !205
  %i.bo = getelementptr i8, ptr %.05166.i, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr i8, ptr %.067.i, i64 2
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !205
  %i.bs = getelementptr i8, ptr %.05166.i, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr i8, ptr %.067.i, i64 3
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !205
  %i.bw = getelementptr i8, ptr %.05166.i, i64 16 ; 3 uses
  %i.bx = getelementptr i8, ptr %.067.i, i64 4    ; 2 uses
  %i.by = icmp ult ptr %i.bw, %i.ai
  br i1 %i.by, label %.lr.ph68.i, label %.preheader.i, !llvm.loop !271

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader103, %.lr.ph73.i
  %.172.i = phi ptr [ %i.cc, %.lr.ph73.i ], [ %.172.i.ph, %.lr.ph73.i.preheader103 ] ; 2 uses
  %.15271.i = phi ptr [ %i.bz, %.lr.ph73.i ], [ %.15271.i.ph, %.lr.ph73.i.preheader103 ] ; 2 uses
  %i.bz = getelementptr i8, ptr %.15271.i, i64 4  ; 2 uses
  %i.ca = load i32, ptr %.15271.i, align 4, !tbaa !7
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = getelementptr i8, ptr %.172.i, i64 1
  store i8 %i.cb, ptr %.172.i, align 1, !tbaa !205
  %i.cd = icmp ult ptr %i.bz, %i.d
  br i1 %i.cd, label %.lr.ph73.i, label %unicode_write_widechar.exit, !llvm.loop !288

bb.j:                                             ; preds = %.critedge
  %i.ce = ashr exact i64 %.idx57.i, 2
  %i.cf = and i64 %i.ce, -4
  %i.cg = getelementptr [4 x i8], ptr %1, i64 %i.cf ; 2 uses
  %i.ch = icmp ult ptr %1, %i.cg
  br i1 %i.ch, label %.lr.ph.i28, label %.preheader58.i

.preheader58.i:                                   ; preds = %.lr.ph.i28, %bb.j
  %.055.lcssa.i = phi ptr [ %1, %bb.j ], [ %i.dc, %.lr.ph.i28 ] ; 5 uses
  %.053.lcssa.i = phi ptr [ %i.af, %bb.j ], [ %i.dd, %.lr.ph.i28 ] ; 3 uses
  %i.ci = icmp ult ptr %.055.lcssa.i, %i.d
  br i1 %i.ci, label %.lr.ph65.i.preheader, label %unicode_write_widechar.exit

.lr.ph65.i.preheader:                             ; preds = %.preheader58.i
  %.055.lcssa.i79 = ptrtoaddr ptr %.055.lcssa.i to i64 ; 2 uses
  %i.cj = add i64 %.idx57.i, %3
  %i.ck = add i64 %.055.lcssa.i79, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 %i.ck)
  %i.cl = xor i64 %.055.lcssa.i79, -1
  %i.cm = add i64 %umax, %i.cl                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 2
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cm, 28
  br i1 %min.iters.check, label %.lr.ph65.i.preheader105, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.i.preheader
  %n.vec = and i64 %i.co, 9223372036854775800     ; 4 uses
  %i.cp = shl nuw i64 %n.vec, 1
  %i.cq = getelementptr i8, ptr %.053.lcssa.i, i64 %i.cp
  %i.cr = shl i64 %n.vec, 2
  %i.cs = getelementptr i8, ptr %.055.lcssa.i, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.053.lcssa.i, i64 %i.ct ; 2 uses
  %i.cu = shl i64 %index, 2
  %next.gep80 = getelementptr i8, ptr %.055.lcssa.i, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep80, align 4, !tbaa !7
  %wide.load81 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !7
  %i.cw = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cx = trunc <4 x i32> %wide.load81 to <4 x i16>
  %i.cy = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.cw, ptr %next.gep, align 2, !tbaa !208
  store <4 x i16> %i.cx, ptr %i.cy, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !289

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %unicode_write_widechar.exit, label %.lr.ph65.i.preheader105

.lr.ph65.i.preheader105:                          ; preds = %.lr.ph65.i.preheader, %middle.block
  %.15464.i.ph = phi ptr [ %.053.lcssa.i, %.lr.ph65.i.preheader ], [ %i.cq, %middle.block ]
  %.15663.i.ph = phi ptr [ %.055.lcssa.i, %.lr.ph65.i.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph65.i

.lr.ph.i28:                                       ; preds = %bb.j, %.lr.ph.i28
  %.05361.i = phi ptr [ %i.dd, %.lr.ph.i28 ], [ %i.af, %bb.j ] ; 2 uses
  %.05560.i = phi ptr [ %i.dc, %.lr.ph.i28 ], [ %1, %bb.j ] ; 2 uses
  %i.da = load <4 x i32>, ptr %.05560.i, align 4, !tbaa !7
  %i.db = trunc <4 x i32> %i.da to <4 x i16>
  store <4 x i16> %i.db, ptr %.05361.i, align 2, !tbaa !208
  %i.dc = getelementptr i8, ptr %.05560.i, i64 16 ; 3 uses
  %i.dd = getelementptr i8, ptr %.05361.i, i64 8  ; 2 uses
  %i.de = icmp ult ptr %i.dc, %i.cg
  br i1 %i.de, label %.lr.ph.i28, label %.preheader58.i, !llvm.loop !274

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader105, %.lr.ph65.i
  %.15464.i = phi ptr [ %i.di, %.lr.ph65.i ], [ %.15464.i.ph, %.lr.ph65.i.preheader105 ] ; 2 uses
  %.15663.i = phi ptr [ %i.df, %.lr.ph65.i ], [ %.15663.i.ph, %.lr.ph65.i.preheader105 ] ; 2 uses
  %i.df = getelementptr i8, ptr %.15663.i, i64 4  ; 2 uses
  %i.dg = load i32, ptr %.15663.i, align 4, !tbaa !7
  %i.dh = trunc i32 %i.dg to i16
  %i.di = getelementptr i8, ptr %.15464.i, i64 2
  store i16 %i.dh, ptr %.15464.i, align 2, !tbaa !208
  %i.dj = icmp ult ptr %i.df, %i.d
  br i1 %i.dj, label %.lr.ph65.i, label %unicode_write_widechar.exit, !llvm.loop !290

bb.k:                                             ; preds = %.critedge
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr readonly align 4 %1, i64 %.idx57.i, i1 false)
  br label %unicode_write_widechar.exit

bb.l:                                             ; preds = %.critedge
  unreachable

unicode_write_widechar.exit:                      ; preds = %.lr.ph65.i, %.lr.ph73.i, %middle.block, %middle.block99, %.preheader.i, %.preheader58.i, %bb.k
  %i.dk = load i64, ptr %i.ac, align 8, !tbaa !279
  %i.dl = add i64 %i.dk, %.024
  store i64 %i.dl, ptr %i.ac, align 8, !tbaa !279
  br label %bb.m

bb.m:                                             ; preds = %unicode_write_widechar.exit, %bb.h, %find_maxchar_surrogates.exit, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ 0, %unicode_write_widechar.exit ], [ -1, %find_maxchar_surrogates.exit ], [ -1, %bb.h ]
  ret i32 %.1
}

declare i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_FromStringAndSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.32) #33
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call fastcc ptr @unicode_decode_utf8(ptr noundef nonnull %0, i64 noundef %1, i32 noundef 1, ptr noundef null, ptr noundef null), !inline_history !291
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %.not7 = icmp eq i64 %1, 0
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.33) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.d ], [ null, %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeUTF8Stateful(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %2, null
  %i.a = zext i1 %.not to i32
  %i.b = tail call fastcc ptr @unicode_decode_utf8(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, ptr noundef %2, ptr noundef %3)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_FromString(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #34 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.34) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @unicode_decode_utf8(ptr noundef nonnull %0, i64 noundef %i.a, i32 noundef 1, ptr noundef null, ptr noundef null), !inline_history !291
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyUnicode_FromId(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.b = cmpxchg ptr %i.a, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef %i.a) #33
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 6 uses
  %i.f = getelementptr i8, ptr %i.e, i64 11872    ; 4 uses
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = load atomic i64, ptr %i.g seq_cst, align 8 ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_PyMutex_Unlock.exit

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  %i.j = getelementptr i8, ptr %i.e, i64 7376
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !292  ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 10704    ; 4 uses
  %i.m = cmpxchg ptr %i.l, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.n = extractvalue { i8, i1 } %i.m, 1
  br i1 %i.n, label %_PyMutex_Lock.exit49, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @PyMutex_Lock(ptr noundef %i.l) #33
  br label %_PyMutex_Lock.exit49

_PyMutex_Lock.exit49:                             ; preds = %bb.c, %bb.d
  %i.o = load atomic i64, ptr %i.g seq_cst, align 8 ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_PyMutex_Lock.exit49
  %i.q = getelementptr i8, ptr %i.k, i64 10712    ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !293  ; 3 uses
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !293
  store atomic i64 %i.r, ptr %i.g seq_cst, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_PyMutex_Lock.exit49
  %.042 = phi i64 [ %i.r, %bb.e ], [ %i.o, %_PyMutex_Lock.exit49 ] ; 2 uses
  %i.t = cmpxchg ptr %i.l, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.u = extractvalue { i8, i1 } %i.t, 1
  br i1 %i.u, label %_PyMutex_Unlock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @PyMutex_Unlock(ptr noundef %i.l) #33
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %bb.g, %bb.f, %_PyMutex_Lock.exit
  %.1 = phi i64 [ %i.h, %_PyMutex_Lock.exit ], [ %.042, %bb.f ], [ %.042, %bb.g ] ; 5 uses
  %i.v = load i64, ptr %i.f, align 8, !tbaa !294
  %i.w = icmp slt i64 %.1, %i.v
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_PyMutex_Unlock.exit
  %i.x = getelementptr i8, ptr %i.e, i64 11880
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !295
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !194 ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h, %_PyMutex_Unlock.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !296   ; 2 uses
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #34
  %i.ad = tail call fastcc ptr @unicode_decode_utf8(ptr noundef nonnull %i.ab, i64 noundef %i.ac, i32 noundef 1, ptr noundef null, ptr noundef null), !inline_history !291 ; 2 uses
  %.not46 = icmp eq ptr %i.ad, null
  br i1 %.not46, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call fastcc ptr @intern_common(ptr noundef nonnull readonly %i.e, ptr noundef nonnull %i.ad, i1 noundef zeroext true) ; 2 uses
  %i.af = load i64, ptr %i.f, align 8, !tbaa !294
  %.not47 = icmp slt i64 %.1, %i.af
  br i1 %.not47, label %._crit_edge, label %bb.k

._crit_edge:                                      ; preds = %bb.j
  %.phi.trans.insert = getelementptr i8, ptr %i.e, i64 11880
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !295
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ag = shl i64 %.1, 1
  %i.ah = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 16) ; 3 uses
  %i.ai = getelementptr i8, ptr %i.e, i64 11880   ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !295
  %i.ak = shl i64 %i.ah, 3
  %i.al = tail call ptr @PyMem_Realloc(ptr noundef %i.aj, i64 noundef %i.ak) #33 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.k
  %i.an = load i64, ptr %i.f, align 8, !tbaa !294 ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.al, i64 %i.an
  %i.ap = sub i64 %i.ah, %i.an
  %i.aq = shl i64 %i.ap, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.aq, i1 false)
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !295
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !294
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = tail call ptr @PyErr_NoMemory() #33     ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge, %.thread
  %i.as = phi ptr [ %.pre, %._crit_edge ], [ %i.al, %.thread ]
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %.1
  store ptr %i.ae, ptr %i.at, align 8, !tbaa !194
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.i, %bb.h, %bb.m
  %.2 = phi ptr [ null, %bb.i ], [ %i.ae, %bb.m ], [ null, %bb.l ], [ %i.aa, %bb.h ]
  %i.au = cmpxchg ptr %i.a, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.av = extractvalue { i8, i1 } %i.au, 1
  br i1 %i.av, label %_PyMutex_Unlock.exit50, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @PyMutex_Unlock(ptr noundef %i.a) #33
  br label %_PyMutex_Unlock.exit50

_PyMutex_Unlock.exit50:                           ; preds = %bb.n, %bb.o
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local void @_PyUnicode_InternImmortal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !194
  %i.b = tail call fastcc ptr @intern_common(ptr noundef %0, ptr noundef %i.a, i1 noundef zeroext true)
  store ptr %i.b, ptr %1, align 8, !tbaa !194
  ret void
}

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define hidden ptr @_PyUnicode_FromASCII(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !205     ; 3 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i8 %i.b to i64
  %i.e = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.d
  br label %get_latin1_char.exit

bb.d:                                             ; preds = %bb.b
  %i.f = and i8 %i.b, 127
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.g
  br label %get_latin1_char.exit

bb.e:                                             ; preds = %bb.a
  %i.i = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef 127) ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %get_latin1_char.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %.val.i = load i32, ptr %i.j, align 8           ; 2 uses
  %i.k = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.l, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.i, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.i, i64 56
  %.val4.i = load ptr, ptr %i.m, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %.0.i.i, %bb.g ], [ %.val4.i, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i, ptr align 1 %0, i64 %1, i1 false)
  br label %get_latin1_char.exit

get_latin1_char.exit:                             ; preds = %bb.d, %bb.c, %bb.e, %_PyUnicode_DATA.exit
  %.0 = phi ptr [ null, %bb.e ], [ %i.i, %_PyUnicode_DATA.exit ], [ %i.e, %bb.c ], [ %i.h, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyUnicodeWriter_WriteUCS4(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.35) #33
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr [4 x i8], ptr %1, i64 %2   ; 6 uses
  %.idx88 = shl i64 %2, 2                         ; 5 uses
  %i.e = ashr exact i64 %.idx88, 2
  %i.f = and i64 %i.e, -4
  %i.g = getelementptr [4 x i8], ptr %1, i64 %i.f ; 6 uses
  %i.h = icmp ult ptr %1, %i.g                    ; 3 uses
  br i1 %i.h, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %bb.h, %bb.g, %bb.d
  %.034.lcssa.i = phi ptr [ %1, %bb.d ], [ %i.r, %bb.f ], [ %i.v, %bb.h ], [ %i.t, %bb.g ] ; 2 uses
  %.029.lcssa.i = phi i32 [ -128, %bb.d ], [ %.0294982.i, %bb.f ], [ -65536, %bb.h ], [ -256, %bb.g ]
  %.026.lcssa.i = phi i32 [ 127, %bb.d ], [ %.0265081.i, %bb.f ], [ 65535, %bb.h ], [ 255, %bb.g ] ; 2 uses
  %i.i = icmp ult ptr %.034.lcssa.i, %i.d
  br i1 %i.i, label %.lr.ph55.split.us.i, label %ucs4lib_find_max_char.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.02650.i = phi i32 [ %.0265081.i, %bb.f ], [ 127, %bb.d ]
  %.02949.i = phi i32 [ %.0294982.i, %bb.f ], [ -128, %bb.d ] ; 3 uses
  %.03448.i = phi ptr [ %i.r, %bb.f ], [ %1, %bb.d ] ; 5 uses
  %i.j = load <4 x i32>, ptr %.03448.i, align 4, !tbaa !7
  %i.k = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.j) ; 4 uses
  %i.l = and i32 %i.k, %.02949.i
  %.not37.i = icmp eq i32 %i.l, 0
  br i1 %.not37.i, label %bb.f, label %bb.e

.lr.ph.i.jt4294967040:                            ; preds = %bb.g
  %i.m = load <4 x i32>, ptr %i.t, align 4, !tbaa !7
  %i.n = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.m) ; 2 uses
  %.not37.i.jt4294967040 = icmp ult i32 %i.n, 256
  br i1 %.not37.i.jt4294967040, label %bb.f, label %.lr.ph.jt4294901760.i

.lr.ph.i.jt4294901760:                            ; preds = %bb.h
  %i.o = load <4 x i32>, ptr %i.v, align 4, !tbaa !7
  %i.p = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.o)
  %.not37.i.jt4294901760 = icmp ult i32 %i.p, 65536
  br i1 %.not37.i.jt4294901760, label %bb.f, label %ucs4lib_find_max_char.exit

.lr.ph.jt4294901760.i:                            ; preds = %.lr.ph.i.jt4294967040, %.lr.ph.jt4294967040.i, %bb.e
  %i.q = phi i32 [ %i.k, %.lr.ph.jt4294967040.i ], [ %i.k, %bb.e ], [ %i.n, %.lr.ph.i.jt4294967040 ]
  %.03448.i129 = phi ptr [ %.03448.i, %.lr.ph.jt4294967040.i ], [ %.03448.i, %bb.e ], [ %i.t, %.lr.ph.i.jt4294967040 ]
  %.not37.jt4294901760.i = icmp ult i32 %i.q, 65536
  br i1 %.not37.jt4294901760.i, label %bb.h, label %ucs4lib_find_max_char.exit

.lr.ph.jt4294967040.i:                            ; preds = %bb.e
  %.not37.jt4294967040.i = icmp ult i32 %i.k, 256
  br i1 %.not37.jt4294967040.i, label %bb.g, label %.lr.ph.jt4294901760.i

bb.e:                                             ; preds = %.lr.ph.i
  switch i32 %.02949.i, label %.lr.ph.jt4294901760.i [
    i32 -65536, label %ucs4lib_find_max_char.exit
    i32 -128, label %.lr.ph.jt4294967040.i
  ], !llvm.loop !298

bb.f:                                             ; preds = %.lr.ph.i.jt4294967040, %.lr.ph.i.jt4294901760, %.lr.ph.i
  %.03448.i128 = phi ptr [ %i.t, %.lr.ph.i.jt4294967040 ], [ %i.v, %.lr.ph.i.jt4294901760 ], [ %.03448.i, %.lr.ph.i ]
  %.0294982.i = phi i32 [ -256, %.lr.ph.i.jt4294967040 ], [ -65536, %.lr.ph.i.jt4294901760 ], [ %.02949.i, %.lr.ph.i ] ; 2 uses
  %.0265081.i = phi i32 [ 255, %.lr.ph.i.jt4294967040 ], [ 65535, %.lr.ph.i.jt4294901760 ], [ %.02650.i, %.lr.ph.i ] ; 2 uses
  %i.r = getelementptr i8, ptr %.03448.i128, i64 16 ; 3 uses
  %i.s = icmp ult ptr %i.r, %i.g
  br i1 %i.s, label %.lr.ph.i, label %.preheader.i

bb.g:                                             ; preds = %.lr.ph.jt4294967040.i
  %i.t = getelementptr i8, ptr %.03448.i, i64 16  ; 5 uses
  %i.u = icmp ult ptr %i.t, %i.g
  br i1 %i.u, label %.lr.ph.i.jt4294967040, label %.preheader.i

bb.h:                                             ; preds = %.lr.ph.jt4294901760.i
  %i.v = getelementptr i8, ptr %.03448.i129, i64 16 ; 4 uses
  %i.w = icmp ult ptr %i.v, %i.g
  br i1 %i.w, label %.lr.ph.i.jt4294901760, label %.preheader.i

.outer.i:                                         ; preds = %bb.j, %.lr.ph55.split.us.i
  %.us-phi.i = phi i32 [ %.332.ph68.i, %.lr.ph55.split.us.i ], [ %.433.us.i, %bb.j ]
  %.us-phi60.i = phi i32 [ %.3.ph69.i, %.lr.ph55.split.us.i ], [ %.4.us.i, %bb.j ] ; 2 uses
  %i.x = getelementptr i8, ptr %.236.ph67.i, i64 4 ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.d
  br i1 %i.y, label %.lr.ph55.split.us.i, label %ucs4lib_find_max_char.exit, !llvm.loop !299

.lr.ph55.split.us.i:                              ; preds = %.preheader.i, %.outer.i
  %.3.ph69.i = phi i32 [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ]
  %.332.ph68.i = phi i32 [ %.us-phi.i, %.outer.i ], [ %.029.lcssa.i, %.preheader.i ] ; 3 uses
  %.236.ph67.i = phi ptr [ %i.x, %.outer.i ], [ %.034.lcssa.i, %.preheader.i ] ; 2 uses
  %i.z = load i32, ptr %.236.ph67.i, align 4, !tbaa !7 ; 2 uses
  %i.aa = and i32 %i.z, %.332.ph68.i
  %.not.us62.i = icmp eq i32 %i.aa, 0
  br i1 %.not.us62.i, label %.outer.i, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.lr.ph55.split.us.i, %bb.j
  %.33253.us63.i = phi i32 [ %.433.us.i, %bb.j ], [ %.332.ph68.i, %.lr.ph55.split.us.i ]
  switch i32 %.33253.us63.i, label %bb.i [
    i32 -65536, label %ucs4lib_find_max_char.exit
    i32 -128, label %bb.j
  ]

bb.i:                                             ; preds = %.lr.ph64.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph64.i
  %.433.us.i = phi i32 [ -65536, %bb.i ], [ -256, %.lr.ph64.i ] ; 3 uses
  %.4.us.i = phi i32 [ 65535, %bb.i ], [ 255, %.lr.ph64.i ]
  %i.ab = and i32 %.433.us.i, %i.z
  %.not.us.i = icmp eq i32 %i.ab, 0
  br i1 %.not.us.i, label %.outer.i, label %.lr.ph64.i

ucs4lib_find_max_char.exit:                       ; preds = %.lr.ph.jt4294901760.i, %bb.e, %.lr.ph.i.jt4294901760, %.outer.i, %.lr.ph64.i, %.preheader.i
  %.2.i = phi i32 [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ], [ 1114111, %.lr.ph64.i ], [ 1114111, %.lr.ph.i.jt4294901760 ], [ 1114111, %bb.e ], [ 1114111, %.lr.ph.jt4294901760.i ] ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !276
  %.not = icmp ugt i32 %.2.i, %i.ad
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %ucs4lib_find_max_char.exit
  %i.ae = getelementptr i8, ptr %0, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !278
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !279 ; 2 uses
  %i.ai = sub i64 %i.af, %i.ah
  %.not86 = icmp sgt i64 %2, %i.ai
  br i1 %.not86, label %bb.l, label %.critedge

bb.l:                                             ; preds = %ucs4lib_find_max_char.exit, %bb.k
  %i.aj = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %2, i32 noundef %.2.i) #33
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.p, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.l
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !279
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.k
  %i.al = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.ah, %bb.k ]
  %i.am = getelementptr i8, ptr %0, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !280 ; 2 uses
  %i.ao = getelementptr i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !281
  %i.aq = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ar = sext i32 %i.an to i64
  %i.as = mul i64 %i.al, %i.ar
  %i.at = getelementptr i8, ptr %i.ap, i64 %i.as  ; 5 uses
  switch i32 %i.an, label %bb.o [
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

bb.m:                                             ; preds = %.critedge
  br i1 %i.h, label %.lr.ph101, label %.preheader

.preheader:                                       ; preds = %.lr.ph101, %bb.m
  %.082.lcssa = phi ptr [ %1, %bb.m ], [ %i.cg, %.lr.ph101 ] ; 8 uses
  %.076.lcssa = phi ptr [ %i.at, %bb.m ], [ %i.ch, %.lr.ph101 ] ; 6 uses
  %.082.lcssa146 = ptrtoaddr ptr %.082.lcssa to i64 ; 4 uses
  %i.au = icmp ult ptr %.082.lcssa, %i.d
  br i1 %i.au, label %.lr.ph106.preheader, label %.loopexit

.lr.ph106.preheader:                              ; preds = %.preheader
  %i.av = add i64 %.idx88, %3
  %i.aw = add i64 %.082.lcssa146, 4
  %umax149 = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %i.aw)
  %i.ax = xor i64 %.082.lcssa146, -1
  %i.ay = add i64 %umax149, %i.ax                 ; 2 uses
  %i.az = lshr i64 %i.ay, 2
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check151 = icmp ult i64 %i.ay, 156
  br i1 %min.iters.check151, label %.lr.ph106.preheader166, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph106.preheader
  %i.bb = add i64 %.idx88, %3
  %i.bc = add i64 %.082.lcssa146, 4
  %umax147 = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.bc)
  %i.bd = xor i64 %.082.lcssa146, -1
  %i.be = add i64 %umax147, %i.bd                 ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = getelementptr i8, ptr %.076.lcssa, i64 %i.bf
  %scevgep = getelementptr i8, ptr %i.bg, i64 1
  %i.bh = and i64 %i.be, -4
  %i.bi = getelementptr i8, ptr %.082.lcssa, i64 %i.bh
  %scevgep148 = getelementptr i8, ptr %i.bi, i64 4
  %bound0 = icmp ult ptr %.076.lcssa, %scevgep148
  %bound1 = icmp ult ptr %.082.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph106.preheader166, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck
  %n.vec154 = and i64 %i.ba, 9223372036854775800  ; 4 uses
  %i.bj = getelementptr i8, ptr %.076.lcssa, i64 %n.vec154
  %i.bk = shl i64 %n.vec154, 2
  %i.bl = getelementptr i8, ptr %.082.lcssa, i64 %i.bk
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph152
  %index156 = phi i64 [ 0, %vector.ph152 ], [ %index.next161, %vector.body155 ] ; 3 uses
  %next.gep157 = getelementptr i8, ptr %.076.lcssa, i64 %index156 ; 2 uses
  %i.bm = shl i64 %index156, 2
  %next.gep158 = getelementptr i8, ptr %.082.lcssa, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load159 = load <4 x i32>, ptr %next.gep158, align 4, !tbaa !7, !alias.scope !300
  %wide.load160 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !7, !alias.scope !300
  %i.bo = trunc <4 x i32> %wide.load159 to <4 x i8>
  %i.bp = trunc <4 x i32> %wide.load160 to <4 x i8>
  %i.bq = getelementptr i8, ptr %next.gep157, i64 4
  store <4 x i8> %i.bo, ptr %next.gep157, align 1, !tbaa !205, !alias.scope !303, !noalias !300
  store <4 x i8> %i.bp, ptr %i.bq, align 1, !tbaa !205, !alias.scope !303, !noalias !300
  %index.next161 = add nuw i64 %index156, 8       ; 2 uses
  %i.br = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.br, label %middle.block162, label %vector.body155, !llvm.loop !305

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %i.ba, %n.vec154
  br i1 %cmp.n163, label %.loopexit, label %.lr.ph106.preheader166

.lr.ph106.preheader166:                           ; preds = %vector.memcheck, %.lr.ph106.preheader, %middle.block162
  %.177105.ph = phi ptr [ %.076.lcssa, %vector.memcheck ], [ %.076.lcssa, %.lr.ph106.preheader ], [ %i.bj, %middle.block162 ]
  %.183104.ph = phi ptr [ %.082.lcssa, %vector.memcheck ], [ %.082.lcssa, %.lr.ph106.preheader ], [ %i.bl, %middle.block162 ]
  br label %.lr.ph106

.lr.ph101:                                        ; preds = %bb.m, %.lr.ph101
  %.076100 = phi ptr [ %i.ch, %.lr.ph101 ], [ %i.at, %bb.m ] ; 5 uses
  %.08299 = phi ptr [ %i.cg, %.lr.ph101 ], [ %1, %bb.m ] ; 5 uses
  %i.bs = load i32, ptr %.08299, align 4, !tbaa !7
  %i.bt = trunc i32 %i.bs to i8
  store i8 %i.bt, ptr %.076100, align 1, !tbaa !205
  %i.bu = getelementptr i8, ptr %.08299, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr i8, ptr %.076100, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !205
  %i.by = getelementptr i8, ptr %.08299, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !7
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr i8, ptr %.076100, i64 2
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !205
  %i.cc = getelementptr i8, ptr %.08299, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr i8, ptr %.076100, i64 3
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !205
  %i.cg = getelementptr i8, ptr %.08299, i64 16   ; 3 uses
  %i.ch = getelementptr i8, ptr %.076100, i64 4   ; 2 uses
  %i.ci = icmp ult ptr %i.cg, %i.g
  br i1 %i.ci, label %.lr.ph101, label %.preheader, !llvm.loop !306

.lr.ph106:                                        ; preds = %.lr.ph106.preheader166, %.lr.ph106
  %.177105 = phi ptr [ %i.cm, %.lr.ph106 ], [ %.177105.ph, %.lr.ph106.preheader166 ] ; 2 uses
  %.183104 = phi ptr [ %i.cj, %.lr.ph106 ], [ %.183104.ph, %.lr.ph106.preheader166 ] ; 2 uses
  %i.cj = getelementptr i8, ptr %.183104, i64 4   ; 2 uses
  %i.ck = load i32, ptr %.183104, align 4, !tbaa !7
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr i8, ptr %.177105, i64 1
  store i8 %i.cl, ptr %.177105, align 1, !tbaa !205
  %i.cn = icmp ult ptr %i.cj, %i.d
  br i1 %i.cn, label %.lr.ph106, label %.loopexit, !llvm.loop !307

bb.n:                                             ; preds = %.critedge
  br i1 %i.h, label %.lr.ph, label %.preheader89

.preheader89:                                     ; preds = %.lr.ph, %bb.n
  %.080.lcssa = phi ptr [ %i.at, %bb.n ], [ %i.dj, %.lr.ph ] ; 3 uses
  %.078.lcssa = phi ptr [ %1, %bb.n ], [ %i.di, %.lr.ph ] ; 5 uses
  %i.co = icmp ult ptr %.078.lcssa, %i.d
  br i1 %i.co, label %.lr.ph98.preheader, label %.loopexit

.lr.ph98.preheader:                               ; preds = %.preheader89
  %.078.lcssa142 = ptrtoaddr ptr %.078.lcssa to i64 ; 2 uses
  %i.cp = add i64 %.idx88, %3
  %i.cq = add i64 %.078.lcssa142, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 %i.cq)
  %i.cr = xor i64 %.078.lcssa142, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = lshr i64 %i.cs, 2
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cs, 28
  br i1 %min.iters.check, label %.lr.ph98.preheader168, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph98.preheader
  %n.vec = and i64 %i.cu, 9223372036854775800     ; 4 uses
  %i.cv = shl i64 %n.vec, 2
  %i.cw = getelementptr i8, ptr %.078.lcssa, i64 %i.cv
  %i.cx = shl nuw i64 %n.vec, 1
  %i.cy = getelementptr i8, ptr %.080.lcssa, i64 %i.cx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cz = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.078.lcssa, i64 %i.cz ; 2 uses
  %i.da = shl i64 %index, 1
  %next.gep143 = getelementptr i8, ptr %.080.lcssa, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load144 = load <4 x i32>, ptr %i.db, align 4, !tbaa !7
  %i.dc = trunc <4 x i32> %wide.load to <4 x i16>
  %i.dd = trunc <4 x i32> %wide.load144 to <4 x i16>
  %i.de = getelementptr i8, ptr %next.gep143, i64 8
  store <4 x i16> %i.dc, ptr %next.gep143, align 2, !tbaa !208
  store <4 x i16> %i.dd, ptr %i.de, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph98.preheader168

.lr.ph98.preheader168:                            ; preds = %.lr.ph98.preheader, %middle.block
  %.17997.ph = phi ptr [ %.078.lcssa, %.lr.ph98.preheader ], [ %i.cw, %middle.block ]
  %.18196.ph = phi ptr [ %.080.lcssa, %.lr.ph98.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph98

.lr.ph:                                           ; preds = %bb.n, %.lr.ph
  %.07894 = phi ptr [ %i.di, %.lr.ph ], [ %1, %bb.n ] ; 2 uses
  %.08093 = phi ptr [ %i.dj, %.lr.ph ], [ %i.at, %bb.n ] ; 2 uses
  %i.dg = load <4 x i32>, ptr %.07894, align 4, !tbaa !7
  %i.dh = trunc <4 x i32> %i.dg to <4 x i16>
  store <4 x i16> %i.dh, ptr %.08093, align 2, !tbaa !208
  %i.di = getelementptr i8, ptr %.07894, i64 16   ; 3 uses
  %i.dj = getelementptr i8, ptr %.08093, i64 8    ; 2 uses
  %i.dk = icmp ult ptr %i.di, %i.g
  br i1 %i.dk, label %.lr.ph, label %.preheader89, !llvm.loop !309

.lr.ph98:                                         ; preds = %.lr.ph98.preheader168, %.lr.ph98
  %.17997 = phi ptr [ %i.dl, %.lr.ph98 ], [ %.17997.ph, %.lr.ph98.preheader168 ] ; 2 uses
  %.18196 = phi ptr [ %i.do, %.lr.ph98 ], [ %.18196.ph, %.lr.ph98.preheader168 ] ; 2 uses
  %i.dl = getelementptr i8, ptr %.17997, i64 4    ; 2 uses
  %i.dm = load i32, ptr %.17997, align 4, !tbaa !7
  %i.dn = trunc i32 %i.dm to i16
  %i.do = getelementptr i8, ptr %.18196, i64 2
  store i16 %i.dn, ptr %.18196, align 2, !tbaa !208
  %i.dp = icmp ult ptr %i.dl, %i.d
  br i1 %i.dp, label %.lr.ph98, label %.loopexit, !llvm.loop !310

bb.o:                                             ; preds = %.critedge
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 4 %1, i64 %.idx88, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph98, %.lr.ph106, %middle.block, %middle.block162, %.preheader89, %.preheader, %bb.o
  %i.dq = load i64, ptr %i.aq, align 8, !tbaa !279
  %i.dr = add i64 %i.dq, %2
  store i64 %i.dr, ptr %i.aq, align 8, !tbaa !279
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.l, %bb.c, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ], [ 0, %.loopexit ], [ -1, %bb.l ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_FromKindAndData(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.35) #33
  br label %_PyUnicode_FromUCS1.exit

bb.c:                                             ; preds = %bb.a
  switch i32 %0, label %bb.r [
    i32 1, label %bb.d
    i32 2, label %bb.p
    i32 4, label %bb.q
  ]

bb.d:                                             ; preds = %bb.c
  switch i64 %2, label %bb.h [
    i64 0, label %_PyUnicode_FromUCS1.exit
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.c = load i8, ptr %1, align 1, !tbaa !205     ; 3 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = zext nneg i8 %i.c to i64
  %i.f = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.e
  br label %_PyUnicode_FromUCS1.exit

bb.g:                                             ; preds = %bb.e
  %i.g = and i8 %i.c, 127
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.h
  br label %_PyUnicode_FromUCS1.exit

bb.h:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %1, i64 %2         ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.thread31.i.i, %bb.h
  %.021.i.i = phi ptr [ %1, %bb.h ], [ %i.r, %.thread31.i.i ] ; 4 uses
  %i.k = icmp ult ptr %.021.i.i, %i.j
  br i1 %i.k, label %bb.j, label %ucs1lib_find_max_char.exit.i

bb.j:                                             ; preds = %bb.i
  %i.l = ptrtoint ptr %.021.i.i to i64
  %i.m = and i64 %i.l, 7
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %.thread31.i.i

.preheader.i.i:                                   ; preds = %bb.j, %bb.k
  %.019.i.i = phi ptr [ %i.n, %bb.k ], [ %.021.i.i, %bb.j ] ; 4 uses
  %i.n = getelementptr i8, ptr %.019.i.i, i64 8   ; 2 uses
  %.not26.i.i = icmp ugt ptr %i.n, %i.j
  br i1 %.not26.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader.i.i
  %i.o = load i64, ptr %.019.i.i, align 8, !tbaa !193
  %i.p = and i64 %i.o, -9187201950435737472
  %.not27.i.i = icmp eq i64 %i.p, 0
  br i1 %.not27.i.i, label %.preheader.i.i, label %ucs1lib_find_max_char.exit.i, !llvm.loop !220

bb.l:                                             ; preds = %.preheader.i.i
  %i.q = icmp eq ptr %.019.i.i, %i.j
  br i1 %i.q, label %ucs1lib_find_max_char.exit.i, label %.thread31.i.i

.thread31.i.i:                                    ; preds = %bb.l, %bb.j
  %.223.i.i = phi ptr [ %.021.i.i, %bb.j ], [ %.019.i.i, %bb.l ] ; 2 uses
  %i.r = getelementptr i8, ptr %.223.i.i, i64 1
  %i.s = load i8, ptr %.223.i.i, align 1, !tbaa !205
  %.not28.i.i = icmp sgt i8 %i.s, -1
  br i1 %.not28.i.i, label %bb.i, label %ucs1lib_find_max_char.exit.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i:                     ; preds = %.thread31.i.i, %bb.l, %bb.i, %bb.k
  %.5.i.i = phi i32 [ 255, %bb.k ], [ 127, %bb.l ], [ 127, %bb.i ], [ 255, %.thread31.i.i ]
  %i.t = tail call ptr @PyUnicode_New(i64 noundef %2, i32 noundef %.5.i.i), !inline_history !311 ; 5 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_PyUnicode_FromUCS1.exit, label %bb.m

bb.m:                                             ; preds = %ucs1lib_find_max_char.exit.i
  %i.u = getelementptr i8, ptr %i.t, i64 32
  %.val.i.i = load i32, ptr %i.u, align 8         ; 2 uses
  %i.v = and i32 %.val.i.i, 32
  %.not.i15.i = icmp eq i32 %i.v, 0
  br i1 %.not.i15.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = and i32 %.val.i.i, 64
  %.not.i.i.i = icmp eq i32 %i.w, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.t, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.o:                                             ; preds = %bb.m
  %i.x = getelementptr i8, ptr %i.t, i64 56
  %.val4.i.i = load ptr, ptr %i.x, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.o, %bb.n
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.n ], [ %.val4.i.i, %bb.o ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr align 1 %1, i64 %2, i1 false)
  br label %_PyUnicode_FromUCS1.exit

bb.p:                                             ; preds = %bb.c
  %i.y = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef %1, i64 noundef %2)
  br label %_PyUnicode_FromUCS1.exit

bb.q:                                             ; preds = %bb.c
  %i.z = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %1, i64 noundef %2)
  br label %_PyUnicode_FromUCS1.exit

bb.r:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.aa, ptr noundef nonnull @.str.36) #33
  br label %_PyUnicode_FromUCS1.exit

_PyUnicode_FromUCS1.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %ucs1lib_find_max_char.exit.i, %bb.g, %bb.f, %bb.d, %bb.r, %bb.q, %bb.p, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.r ], [ %i.z, %bb.q ], [ %i.y, %bb.p ], [ null, %ucs1lib_find_max_char.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.d ], [ %i.t, %_PyUnicode_DATA.exit.i ], [ %i.f, %bb.f ], [ %i.i, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_PyUnicode_FromUCS2(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %2 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  switch i64 %1, label %bb.n [
    i64 0, label %unicode_char.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 2, !tbaa !208    ; 5 uses
  %i.b = zext i16 %i.a to i32                     ; 2 uses
  %i.c = icmp ult i16 %i.a, 256
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = trunc nuw i16 %i.a to i8                 ; 2 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = zext nneg i16 %i.a to i64
  %i.g = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.f
  br label %unicode_char.exit

bb.e:                                             ; preds = %bb.c
  %i.h = and i8 %i.d, 127
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.i
  br label %unicode_char.exit

bb.f:                                             ; preds = %bb.b
  %i.k = tail call ptr @PyUnicode_New(i64 noundef 1, i32 noundef %i.b), !inline_history !312 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %unicode_char.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.k, i64 32
  %i.n = load i32, ptr %i.m, align 8              ; 4 uses
  %i.o = and i32 %i.n, 28
  %i.p = icmp eq i32 %i.o, 8
  %i.q = and i32 %i.n, 32
  %.not.i.i = icmp eq i32 %i.q, 0                 ; 2 uses
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = and i32 %i.n, 64
  %.not.i.i.i = icmp eq i32 %i.r, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.k, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.j:                                             ; preds = %bb.h
  %i.s = getelementptr i8, ptr %i.k, i64 56
  %.val4.i.i = load ptr, ptr %i.s, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.i ], [ %.val4.i.i, %bb.j ]
  store i16 %i.a, ptr %.0.i.i, align 2, !tbaa !208
  br label %unicode_char.exit

bb.k:                                             ; preds = %bb.g
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = and i32 %i.n, 64
  %.not.i.i14.i = icmp eq i32 %i.t, 0
  %.0.v.i.i15.i = select i1 %.not.i.i14.i, i64 56, i64 40
  %.0.i.i16.i = getelementptr i8, ptr %i.k, i64 %.0.v.i.i15.i
  br label %_PyUnicode_DATA.exit19.i

bb.m:                                             ; preds = %bb.k
  %i.u = getelementptr i8, ptr %i.k, i64 56
  %.val4.i18.i = load ptr, ptr %i.u, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit19.i

_PyUnicode_DATA.exit19.i:                         ; preds = %bb.m, %bb.l
  %.0.i17.i = phi ptr [ %.0.i.i16.i, %bb.l ], [ %.val4.i18.i, %bb.m ]
  store i32 %i.b, ptr %.0.i17.i, align 4, !tbaa !7
  br label %unicode_char.exit

bb.n:                                             ; preds = %bb.a
  %i.v = getelementptr [2 x i8], ptr %0, i64 %1   ; 4 uses
  %.idx54 = shl i64 %1, 1                         ; 4 uses
  %i.w = ashr exact i64 %.idx54, 1
  %i.x = and i64 %i.w, -4
  %i.y = getelementptr [2 x i8], ptr %0, i64 %i.x ; 5 uses
  %i.z = icmp ult ptr %0, %i.y                    ; 2 uses
  br i1 %i.z, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit.i, %.loopexit.i.jt4294967040, %.loopexit.i.jt4294901760, %bb.n
  %.034.lcssa.i = phi ptr [ %0, %bb.n ], [ %i.aj, %.loopexit.i.jt4294901760 ], [ %i.al, %.loopexit.i.jt4294967040 ], [ %i.ah, %.loopexit.i ] ; 2 uses
  %.029.lcssa.i = phi i32 [ -128, %bb.n ], [ -65536, %.loopexit.i.jt4294901760 ], [ -256, %.loopexit.i.jt4294967040 ], [ %.0294982.i, %.loopexit.i ]
  %.026.lcssa.i = phi i32 [ 127, %bb.n ], [ 65535, %.loopexit.i.jt4294901760 ], [ 255, %.loopexit.i.jt4294967040 ], [ %.0265081.i, %.loopexit.i ] ; 2 uses
  %i.aa = icmp ult ptr %.034.lcssa.i, %i.v
  br i1 %i.aa, label %.lr.ph55.split.us.i, label %ucs2lib_find_max_char.exit

.lr.ph.i:                                         ; preds = %bb.n, %.loopexit.i
  %.02650.i = phi i32 [ %.0265081.i, %.loopexit.i ], [ 127, %bb.n ]
  %.02949.i = phi i32 [ %.0294982.i, %.loopexit.i ], [ -128, %bb.n ] ; 3 uses
  %.03448.i = phi ptr [ %i.ah, %.loopexit.i ], [ %0, %bb.n ] ; 4 uses
  %i.ab = load <4 x i16>, ptr %.03448.i, align 2, !tbaa !208
  %i.ac = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.ab) ; 2 uses
  %i.ad = zext i16 %i.ac to i32
  %i.ae = and i32 %.02949.i, %i.ad
  %.not37.i = icmp eq i32 %i.ae, 0
  br i1 %.not37.i, label %.loopexit.i, label %bb.o

.lr.ph.i.jt4294967040:                            ; preds = %.loopexit.i.jt4294967040
  %i.af = load <4 x i16>, ptr %i.al, align 2, !tbaa !208
  %i.ag = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.af)
  %.not37.i.jt4294967040 = icmp ult i16 %i.ag, 256
  br i1 %.not37.i.jt4294967040, label %.loopexit.i, label %ucs2lib_find_max_char.exit

.lr.ph.jt4294967040.i:                            ; preds = %bb.o
  %.not37.jt4294967040.i = icmp ult i16 %i.ac, 256
  br i1 %.not37.jt4294967040.i, label %.loopexit.i.jt4294967040, label %ucs2lib_find_max_char.exit

bb.o:                                             ; preds = %.lr.ph.i
  switch i32 %.02949.i, label %.loopexit.i.jt4294901760 [
    i32 -256, label %ucs2lib_find_max_char.exit
    i32 -128, label %.lr.ph.jt4294967040.i
  ], !llvm.loop !313

.loopexit.i:                                      ; preds = %.loopexit.i.jt4294901760, %.lr.ph.i.jt4294967040, %.lr.ph.i
  %.03448.i82 = phi ptr [ %.03448.i, %.lr.ph.i ], [ %i.al, %.lr.ph.i.jt4294967040 ], [ %i.aj, %.loopexit.i.jt4294901760 ]
  %.0294982.i = phi i32 [ %.02949.i, %.lr.ph.i ], [ -256, %.lr.ph.i.jt4294967040 ], [ -65536, %.loopexit.i.jt4294901760 ] ; 2 uses
  %.0265081.i = phi i32 [ %.02650.i, %.lr.ph.i ], [ 255, %.lr.ph.i.jt4294967040 ], [ 65535, %.loopexit.i.jt4294901760 ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.03448.i82, i64 8 ; 3 uses
  %i.ai = icmp ult ptr %i.ah, %i.y
  br i1 %i.ai, label %.lr.ph.i, label %.preheader.i

.loopexit.i.jt4294901760:                         ; preds = %bb.o
  %i.aj = getelementptr i8, ptr %.03448.i, i64 8  ; 3 uses
  %i.ak = icmp ult ptr %i.aj, %i.y
  br i1 %i.ak, label %.loopexit.i, label %.preheader.i

.loopexit.i.jt4294967040:                         ; preds = %.lr.ph.jt4294967040.i
  %i.al = getelementptr i8, ptr %.03448.i, i64 8  ; 4 uses
  %i.am = icmp ult ptr %i.al, %i.y
  br i1 %i.am, label %.lr.ph.i.jt4294967040, label %.preheader.i

.outer.i:                                         ; preds = %bb.q, %.lr.ph55.split.us.i
  %.us-phi.i = phi i32 [ %.332.ph68.i, %.lr.ph55.split.us.i ], [ %.433.us.i, %bb.q ]
  %.us-phi60.i = phi i32 [ %.3.ph69.i, %.lr.ph55.split.us.i ], [ %.4.us.i, %bb.q ] ; 2 uses
  %i.an = getelementptr i8, ptr %.236.ph67.i, i64 2 ; 2 uses
  %i.ao = icmp ult ptr %i.an, %i.v
  br i1 %i.ao, label %.lr.ph55.split.us.i, label %ucs2lib_find_max_char.exit, !llvm.loop !314

.lr.ph55.split.us.i:                              ; preds = %.preheader.i, %.outer.i
  %.3.ph69.i = phi i32 [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ]
  %.332.ph68.i = phi i32 [ %.us-phi.i, %.outer.i ], [ %.029.lcssa.i, %.preheader.i ] ; 3 uses
  %.236.ph67.i = phi ptr [ %i.an, %.outer.i ], [ %.034.lcssa.i, %.preheader.i ] ; 2 uses
  %i.ap = load i16, ptr %.236.ph67.i, align 2, !tbaa !208
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = and i32 %.332.ph68.i, %i.aq
  %.not.us62.i = icmp eq i32 %i.ar, 0
  br i1 %.not.us62.i, label %.outer.i, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.lr.ph55.split.us.i, %bb.q
  %.33253.us63.i = phi i32 [ %.433.us.i, %bb.q ], [ %.332.ph68.i, %.lr.ph55.split.us.i ]
  switch i32 %.33253.us63.i, label %bb.p [
    i32 -256, label %ucs2lib_find_max_char.exit
    i32 -128, label %bb.q
  ]

bb.p:                                             ; preds = %.lr.ph64.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph64.i
  %.433.us.i = phi i32 [ -65536, %bb.p ], [ -256, %.lr.ph64.i ] ; 3 uses
  %.4.us.i = phi i32 [ 65535, %bb.p ], [ 255, %.lr.ph64.i ]
  %i.as = and i32 %.433.us.i, %i.aq
  %.not.us.i = icmp eq i32 %i.as, 0
  br i1 %.not.us.i, label %.outer.i, label %.lr.ph64.i

ucs2lib_find_max_char.exit:                       ; preds = %.lr.ph.jt4294967040.i, %bb.o, %.lr.ph.i.jt4294967040, %.outer.i, %.lr.ph64.i, %.preheader.i
  %.2.i = phi i32 [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ], [ 65535, %.lr.ph64.i ], [ 65535, %.lr.ph.i.jt4294967040 ], [ 65535, %bb.o ], [ 65535, %.lr.ph.jt4294967040.i ]
  %i.at = and i32 %.2.i, 65535                    ; 2 uses
  %i.au = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef %i.at) ; 11 uses
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %unicode_char.exit, label %bb.r

bb.r:                                             ; preds = %ucs2lib_find_max_char.exit
  %i.av = icmp samesign ugt i32 %i.at, 255
  %i.aw = getelementptr i8, ptr %i.au, i64 32
  %.val.i = load i32, ptr %i.aw, align 8          ; 3 uses
  %i.ax = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.ax, 0                  ; 2 uses
  br i1 %i.av, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = and i32 %.val.i, 64
  %.not.i.i43 = icmp eq i32 %i.ay, 0
  %.0.v.i.i = select i1 %.not.i.i43, i64 56, i64 40
  %.0.i.i44 = getelementptr i8, ptr %i.au, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.u:                                             ; preds = %bb.s
  %i.az = getelementptr i8, ptr %i.au, i64 56
  %.val4.i = load ptr, ptr %i.az, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.t, %bb.u
  %.0.i45 = phi ptr [ %.0.i.i44, %bb.t ], [ %.val4.i, %bb.u ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0.i45, ptr align 2 %0, i64 %.idx54, i1 false)
  br label %unicode_char.exit

bb.v:                                             ; preds = %bb.r
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = and i32 %.val.i, 64
  %.not.i.i48 = icmp eq i32 %i.ba, 0
  %.0.v.i.i49 = select i1 %.not.i.i48, i64 56, i64 40
  %.0.i.i50 = getelementptr i8, ptr %i.au, i64 %.0.v.i.i49
  br label %_PyUnicode_DATA.exit53

bb.x:                                             ; preds = %bb.v
  %i.bb = getelementptr i8, ptr %i.au, i64 56
  %.val4.i52 = load ptr, ptr %i.bb, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit53

_PyUnicode_DATA.exit53:                           ; preds = %bb.w, %bb.x
  %.0.i51 = phi ptr [ %.0.i.i50, %bb.w ], [ %.val4.i52, %bb.x ] ; 2 uses
  br i1 %i.z, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %_PyUnicode_DATA.exit53
  %.039.lcssa = phi ptr [ %0, %_PyUnicode_DATA.exit53 ], [ %i.cu, %.lr.ph ] ; 10 uses
  %.038.lcssa = phi ptr [ %.0.i51, %_PyUnicode_DATA.exit53 ], [ %i.cv, %.lr.ph ] ; 8 uses
  %.039.lcssa93 = ptrtoaddr ptr %.039.lcssa to i64 ; 4 uses
  %i.bc = icmp ult ptr %.039.lcssa, %i.v
  br i1 %i.bc, label %iter.check, label %unicode_char.exit

iter.check:                                       ; preds = %.preheader
  %i.bd = add i64 %.idx54, %2
  %i.be = add i64 %.039.lcssa93, 2
  %umax95 = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.be)
  %i.bf = xor i64 %.039.lcssa93, -1
  %i.bg = add i64 %umax95, %i.bf                  ; 3 uses
  %i.bh = lshr i64 %i.bg, 1
  %i.bi = add nuw i64 %i.bh, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bg, 6
  br i1 %min.iters.check, label %.lr.ph62.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bj = add i64 %.idx54, %2
  %i.bk = add i64 %.039.lcssa93, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bk)
  %i.bl = xor i64 %.039.lcssa93, -1
  %i.bm = add i64 %umax, %i.bl                    ; 2 uses
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = getelementptr i8, ptr %.038.lcssa, i64 %i.bn
  %scevgep = getelementptr i8, ptr %i.bo, i64 1
  %i.bp = and i64 %i.bm, -2
  %i.bq = getelementptr i8, ptr %.039.lcssa, i64 %i.bp
  %scevgep94 = getelementptr i8, ptr %i.bq, i64 2
  %bound0 = icmp ult ptr %.038.lcssa, %scevgep94
  %bound1 = icmp ult ptr %.039.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph62.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check96 = icmp ult i64 %i.bg, 30
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bi, 12
  %n.vec = and i64 %i.bi, -16                     ; 5 uses
  %i.br = getelementptr i8, ptr %.038.lcssa, i64 %n.vec
  %i.bs = shl i64 %n.vec, 1
  %i.bt = getelementptr i8, ptr %.039.lcssa, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.038.lcssa, i64 %index ; 2 uses
  %i.bu = shl i64 %index, 1
  %next.gep97 = getelementptr i8, ptr %.039.lcssa, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep97, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep97, align 2, !tbaa !208, !alias.scope !315
  %wide.load98 = load <8 x i16>, ptr %i.bv, align 2, !tbaa !208, !alias.scope !315
  %i.bw = trunc <8 x i16> %wide.load to <8 x i8>
  %i.bx = trunc <8 x i16> %wide.load98 to <8 x i8>
  %i.by = getelementptr i8, ptr %next.gep, i64 8
  store <8 x i8> %i.bw, ptr %next.gep, align 1, !tbaa !205, !alias.scope !318, !noalias !315
  store <8 x i8> %i.bx, ptr %i.by, align 1, !tbaa !205, !alias.scope !318, !noalias !315
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !320

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %unicode_char.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph62.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec101 = and i64 %i.bi, -4                   ; 4 uses
  %i.ca = getelementptr i8, ptr %.038.lcssa, i64 %n.vec101
  %i.cb = shl i64 %n.vec101, 1
  %i.cc = getelementptr i8, ptr %.039.lcssa, i64 %i.cb
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 3 uses
  %next.gep103 = getelementptr i8, ptr %.038.lcssa, i64 %index102
  %i.cd = shl i64 %index102, 1
  %next.gep104 = getelementptr i8, ptr %.039.lcssa, i64 %i.cd
  %wide.load105 = load <4 x i16>, ptr %next.gep104, align 2, !tbaa !208, !alias.scope !315
  %i.ce = trunc <4 x i16> %wide.load105 to <4 x i8>
  store <4 x i8> %i.ce, ptr %next.gep103, align 1, !tbaa !205, !alias.scope !318, !noalias !315
  %index.next106 = add nuw i64 %index102, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next106, %n.vec101
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !321

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.bi, %n.vec101
  br i1 %cmp.n107, label %unicode_char.exit, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.161.ph = phi ptr [ %.038.lcssa, %iter.check ], [ %.038.lcssa, %vector.memcheck ], [ %i.br, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  %.14060.ph = phi ptr [ %.039.lcssa, %iter.check ], [ %.039.lcssa, %vector.memcheck ], [ %i.bt, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.middle.block ]
  br label %.lr.ph62

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit53, %.lr.ph
  %.03858 = phi ptr [ %i.cv, %.lr.ph ], [ %.0.i51, %_PyUnicode_DATA.exit53 ] ; 5 uses
  %.03957 = phi ptr [ %i.cu, %.lr.ph ], [ %0, %_PyUnicode_DATA.exit53 ] ; 5 uses
  %i.cg = load i16, ptr %.03957, align 2, !tbaa !208
  %i.ch = trunc i16 %i.cg to i8
  store i8 %i.ch, ptr %.03858, align 1, !tbaa !205
  %i.ci = getelementptr i8, ptr %.03957, i64 2
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !208
  %i.ck = trunc i16 %i.cj to i8
  %i.cl = getelementptr i8, ptr %.03858, i64 1
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !205
  %i.cm = getelementptr i8, ptr %.03957, i64 4
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !208
  %i.co = trunc i16 %i.cn to i8
  %i.cp = getelementptr i8, ptr %.03858, i64 2
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !205
  %i.cq = getelementptr i8, ptr %.03957, i64 6
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !208
  %i.cs = trunc i16 %i.cr to i8
  %i.ct = getelementptr i8, ptr %.03858, i64 3
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !205
  %i.cu = getelementptr i8, ptr %.03957, i64 8    ; 3 uses
  %i.cv = getelementptr i8, ptr %.03858, i64 4    ; 2 uses
  %i.cw = icmp ult ptr %i.cu, %i.y
  br i1 %i.cw, label %.lr.ph, label %.preheader, !llvm.loop !322

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %.lr.ph62
  %.161 = phi ptr [ %i.da, %.lr.ph62 ], [ %.161.ph, %.lr.ph62.preheader ] ; 2 uses
  %.14060 = phi ptr [ %i.cx, %.lr.ph62 ], [ %.14060.ph, %.lr.ph62.preheader ] ; 2 uses
  %i.cx = getelementptr i8, ptr %.14060, i64 2    ; 2 uses
  %i.cy = load i16, ptr %.14060, align 2, !tbaa !208
  %i.cz = trunc i16 %i.cy to i8
  %i.da = getelementptr i8, ptr %.161, i64 1
  store i8 %i.cz, ptr %.161, align 1, !tbaa !205
  %i.db = icmp ult ptr %i.cx, %i.v
  br i1 %i.db, label %.lr.ph62, label %unicode_char.exit, !llvm.loop !323

unicode_char.exit:                                ; preds = %.lr.ph62, %middle.block, %vec.epilog.middle.block, %.preheader, %_PyUnicode_DATA.exit19.i, %_PyUnicode_DATA.exit.i, %bb.f, %bb.e, %bb.d, %bb.a, %_PyUnicode_DATA.exit, %ucs2lib_find_max_char.exit
  %.0 = phi ptr [ %i.au, %_PyUnicode_DATA.exit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ null, %ucs2lib_find_max_char.exit ], [ %i.j, %bb.e ], [ %i.k, %_PyUnicode_DATA.exit.i ], [ null, %bb.f ], [ %i.k, %_PyUnicode_DATA.exit19.i ], [ %i.g, %bb.d ], [ %i.au, %.preheader ], [ %i.au, %middle.block ], [ %i.au, %vec.epilog.middle.block ], [ %i.au, %.lr.ph62 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_PyUnicode_FromUCS4(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %2 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  switch i64 %1, label %bb.n [
    i64 0, label %unicode_char.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !7      ; 6 uses
  %i.b = icmp ult i32 %i.a, 256
  br i1 %i.b, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw i32 %i.a to i8                 ; 2 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i32 %i.a to i64
  %i.f = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.e
  br label %unicode_char.exit

bb.e:                                             ; preds = %bb.c
  %i.g = and i8 %i.c, 127
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.h
  br label %unicode_char.exit

bb.f:                                             ; preds = %bb.b
  %i.j = tail call ptr @PyUnicode_New(i64 noundef 1, i32 noundef %i.a), !inline_history !312 ; 8 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %unicode_char.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.j, i64 32
  %i.m = load i32, ptr %i.l, align 8              ; 5 uses
  %i.n = and i32 %i.m, 28
  %i.o = icmp eq i32 %i.n, 8
  br i1 %i.o, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.p = trunc i32 %i.a to i16
  %i.q = and i32 %i.m, 32
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = and i32 %i.m, 64
  %.not.i.i.i = icmp eq i32 %i.r, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.j, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.j:                                             ; preds = %bb.h
  %i.s = getelementptr i8, ptr %i.j, i64 56
  %.val4.i.i = load ptr, ptr %i.s, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.i ], [ %.val4.i.i, %bb.j ]
  store i16 %i.p, ptr %.0.i.i, align 2, !tbaa !208
  br label %unicode_char.exit

bb.k:                                             ; preds = %bb.g
  %i.t = and i32 %i.m, 32
  %.not.i13.i = icmp eq i32 %i.t, 0
  br i1 %.not.i13.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = and i32 %i.m, 64
  %.not.i.i14.i = icmp eq i32 %i.u, 0
  %.0.v.i.i15.i = select i1 %.not.i.i14.i, i64 56, i64 40
  %.0.i.i16.i = getelementptr i8, ptr %i.j, i64 %.0.v.i.i15.i
  br label %_PyUnicode_DATA.exit19.i

bb.m:                                             ; preds = %bb.k
  %i.v = getelementptr i8, ptr %i.j, i64 56
  %.val4.i18.i = load ptr, ptr %i.v, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit19.i

_PyUnicode_DATA.exit19.i:                         ; preds = %bb.m, %bb.l
  %.0.i17.i = phi ptr [ %.0.i.i16.i, %bb.l ], [ %.val4.i18.i, %bb.m ]
  store i32 %i.a, ptr %.0.i17.i, align 4, !tbaa !7
  br label %unicode_char.exit

bb.n:                                             ; preds = %bb.a
  %i.w = getelementptr [4 x i8], ptr %0, i64 %1   ; 6 uses
  %.idx93 = shl i64 %1, 2                         ; 5 uses
  %i.x = ashr exact i64 %.idx93, 2
  %i.y = and i64 %i.x, -4
  %i.z = getelementptr [4 x i8], ptr %0, i64 %i.y ; 6 uses
  %i.aa = icmp ult ptr %0, %i.z                   ; 3 uses
  br i1 %i.aa, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p, %bb.r, %bb.q, %bb.n
  %.034.lcssa.i = phi ptr [ %0, %bb.n ], [ %i.ak, %bb.p ], [ %i.ao, %bb.r ], [ %i.am, %bb.q ] ; 2 uses
  %.029.lcssa.i = phi i32 [ -128, %bb.n ], [ %.0294982.i, %bb.p ], [ -65536, %bb.r ], [ -256, %bb.q ]
  %.026.lcssa.i = phi i32 [ 127, %bb.n ], [ %.0265081.i, %bb.p ], [ 65535, %bb.r ], [ 255, %bb.q ] ; 2 uses
  %i.ab = icmp ult ptr %.034.lcssa.i, %i.w
  br i1 %i.ab, label %.lr.ph55.split.us.i, label %ucs4lib_find_max_char.exit

.lr.ph.i:                                         ; preds = %bb.n, %bb.p
  %.02650.i = phi i32 [ %.0265081.i, %bb.p ], [ 127, %bb.n ]
  %.02949.i = phi i32 [ %.0294982.i, %bb.p ], [ -128, %bb.n ] ; 3 uses
  %.03448.i = phi ptr [ %i.ak, %bb.p ], [ %0, %bb.n ] ; 5 uses
  %i.ac = load <4 x i32>, ptr %.03448.i, align 4, !tbaa !7
  %i.ad = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ac) ; 4 uses
  %i.ae = and i32 %i.ad, %.02949.i
  %.not37.i = icmp eq i32 %i.ae, 0
  br i1 %.not37.i, label %bb.p, label %bb.o

.lr.ph.i.jt4294967040:                            ; preds = %bb.q
  %i.af = load <4 x i32>, ptr %i.am, align 4, !tbaa !7
  %i.ag = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.af) ; 2 uses
  %.not37.i.jt4294967040 = icmp ult i32 %i.ag, 256
  br i1 %.not37.i.jt4294967040, label %bb.p, label %.lr.ph.jt4294901760.i

.lr.ph.i.jt4294901760:                            ; preds = %bb.r
  %i.ah = load <4 x i32>, ptr %i.ao, align 4, !tbaa !7
  %i.ai = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ah)
  %.not37.i.jt4294901760 = icmp ult i32 %i.ai, 65536
  br i1 %.not37.i.jt4294901760, label %bb.p, label %ucs4lib_find_max_char.exit

.lr.ph.jt4294901760.i:                            ; preds = %.lr.ph.i.jt4294967040, %.lr.ph.jt4294967040.i, %bb.o
  %i.aj = phi i32 [ %i.ad, %.lr.ph.jt4294967040.i ], [ %i.ad, %bb.o ], [ %i.ag, %.lr.ph.i.jt4294967040 ]
  %.03448.i138 = phi ptr [ %.03448.i, %.lr.ph.jt4294967040.i ], [ %.03448.i, %bb.o ], [ %i.am, %.lr.ph.i.jt4294967040 ]
  %.not37.jt4294901760.i = icmp ult i32 %i.aj, 65536
  br i1 %.not37.jt4294901760.i, label %bb.r, label %ucs4lib_find_max_char.exit

.lr.ph.jt4294967040.i:                            ; preds = %bb.o
  %.not37.jt4294967040.i = icmp ult i32 %i.ad, 256
  br i1 %.not37.jt4294967040.i, label %bb.q, label %.lr.ph.jt4294901760.i

bb.o:                                             ; preds = %.lr.ph.i
  switch i32 %.02949.i, label %.lr.ph.jt4294901760.i [
    i32 -65536, label %ucs4lib_find_max_char.exit
    i32 -128, label %.lr.ph.jt4294967040.i
  ], !llvm.loop !298

bb.p:                                             ; preds = %.lr.ph.i.jt4294967040, %.lr.ph.i.jt4294901760, %.lr.ph.i
  %.03448.i137 = phi ptr [ %i.am, %.lr.ph.i.jt4294967040 ], [ %i.ao, %.lr.ph.i.jt4294901760 ], [ %.03448.i, %.lr.ph.i ]
  %.0294982.i = phi i32 [ -256, %.lr.ph.i.jt4294967040 ], [ -65536, %.lr.ph.i.jt4294901760 ], [ %.02949.i, %.lr.ph.i ] ; 2 uses
  %.0265081.i = phi i32 [ 255, %.lr.ph.i.jt4294967040 ], [ 65535, %.lr.ph.i.jt4294901760 ], [ %.02650.i, %.lr.ph.i ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.03448.i137, i64 16 ; 3 uses
  %i.al = icmp ult ptr %i.ak, %i.z
  br i1 %i.al, label %.lr.ph.i, label %.preheader.i

bb.q:                                             ; preds = %.lr.ph.jt4294967040.i
  %i.am = getelementptr i8, ptr %.03448.i, i64 16 ; 5 uses
  %i.an = icmp ult ptr %i.am, %i.z
  br i1 %i.an, label %.lr.ph.i.jt4294967040, label %.preheader.i

bb.r:                                             ; preds = %.lr.ph.jt4294901760.i
  %i.ao = getelementptr i8, ptr %.03448.i138, i64 16 ; 4 uses
  %i.ap = icmp ult ptr %i.ao, %i.z
  br i1 %i.ap, label %.lr.ph.i.jt4294901760, label %.preheader.i

.outer.i:                                         ; preds = %bb.t, %.lr.ph55.split.us.i
  %.us-phi.i = phi i32 [ %.332.ph68.i, %.lr.ph55.split.us.i ], [ %.433.us.i, %bb.t ]
  %.us-phi60.i = phi i32 [ %.3.ph69.i, %.lr.ph55.split.us.i ], [ %.4.us.i, %bb.t ] ; 2 uses
  %i.aq = getelementptr i8, ptr %.236.ph67.i, i64 4 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.w
  br i1 %i.ar, label %.lr.ph55.split.us.i, label %ucs4lib_find_max_char.exit, !llvm.loop !299

.lr.ph55.split.us.i:                              ; preds = %.preheader.i, %.outer.i
  %.3.ph69.i = phi i32 [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ]
  %.332.ph68.i = phi i32 [ %.us-phi.i, %.outer.i ], [ %.029.lcssa.i, %.preheader.i ] ; 3 uses
  %.236.ph67.i = phi ptr [ %i.aq, %.outer.i ], [ %.034.lcssa.i, %.preheader.i ] ; 2 uses
  %i.as = load i32, ptr %.236.ph67.i, align 4, !tbaa !7 ; 2 uses
  %i.at = and i32 %i.as, %.332.ph68.i
  %.not.us62.i = icmp eq i32 %i.at, 0
  br i1 %.not.us62.i, label %.outer.i, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.lr.ph55.split.us.i, %bb.t
  %.33253.us63.i = phi i32 [ %.433.us.i, %bb.t ], [ %.332.ph68.i, %.lr.ph55.split.us.i ]
  switch i32 %.33253.us63.i, label %bb.s [
    i32 -65536, label %ucs4lib_find_max_char.exit
    i32 -128, label %bb.t
  ]

bb.s:                                             ; preds = %.lr.ph64.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph64.i
  %.433.us.i = phi i32 [ -65536, %bb.s ], [ -256, %.lr.ph64.i ] ; 3 uses
  %.4.us.i = phi i32 [ 65535, %bb.s ], [ 255, %.lr.ph64.i ]
  %i.au = and i32 %.433.us.i, %i.as
  %.not.us.i = icmp eq i32 %i.au, 0
  br i1 %.not.us.i, label %.outer.i, label %.lr.ph64.i

ucs4lib_find_max_char.exit:                       ; preds = %.lr.ph.jt4294901760.i, %bb.o, %.lr.ph.i.jt4294901760, %.outer.i, %.lr.ph64.i, %.preheader.i
  %.2.i = phi i32 [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ], [ 1114111, %.lr.ph64.i ], [ 1114111, %.lr.ph.i.jt4294901760 ], [ 1114111, %bb.o ], [ 1114111, %.lr.ph.jt4294901760.i ] ; 3 uses
  %i.av = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef %.2.i) ; 16 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %unicode_char.exit, label %bb.u

bb.u:                                             ; preds = %ucs4lib_find_max_char.exit
  %i.aw = icmp ult i32 %.2.i, 256
  br i1 %i.aw, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ax = getelementptr i8, ptr %i.av, i64 32
  %.val.i = load i32, ptr %i.ax, align 8          ; 2 uses
  %i.ay = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.az = and i32 %.val.i, 64
  %.not.i.i74 = icmp eq i32 %i.az, 0
  %.0.v.i.i = select i1 %.not.i.i74, i64 56, i64 40
  %.0.i.i75 = getelementptr i8, ptr %i.av, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.x:                                             ; preds = %bb.v
  %i.ba = getelementptr i8, ptr %i.av, i64 56
  %.val4.i = load ptr, ptr %i.ba, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.w, %bb.x
  %.0.i76 = phi ptr [ %.0.i.i75, %bb.w ], [ %.val4.i, %bb.x ] ; 2 uses
  br i1 %i.aa, label %.lr.ph106, label %.preheader

.preheader:                                       ; preds = %.lr.ph106, %_PyUnicode_DATA.exit
  %.068.lcssa = phi ptr [ %0, %_PyUnicode_DATA.exit ], [ %i.cn, %.lr.ph106 ] ; 8 uses
  %.063.lcssa = phi ptr [ %.0.i76, %_PyUnicode_DATA.exit ], [ %i.co, %.lr.ph106 ] ; 6 uses
  %.068.lcssa155 = ptrtoaddr ptr %.068.lcssa to i64 ; 4 uses
  %i.bb = icmp ult ptr %.068.lcssa, %i.w
  br i1 %i.bb, label %.lr.ph111.preheader, label %unicode_char.exit

.lr.ph111.preheader:                              ; preds = %.preheader
  %i.bc = add i64 %.idx93, %2
  %i.bd = add i64 %.068.lcssa155, 4
  %umax158 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.bd)
  %i.be = xor i64 %.068.lcssa155, -1
  %i.bf = add i64 %umax158, %i.be                 ; 2 uses
  %i.bg = lshr i64 %i.bf, 2
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check160 = icmp ult i64 %i.bf, 156
  br i1 %min.iters.check160, label %.lr.ph111.preheader175, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph111.preheader
  %i.bi = add i64 %.idx93, %2
  %i.bj = add i64 %.068.lcssa155, 4
  %umax156 = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 %i.bj)
  %i.bk = xor i64 %.068.lcssa155, -1
  %i.bl = add i64 %umax156, %i.bk                 ; 2 uses
  %i.bm = lshr i64 %i.bl, 2
  %i.bn = getelementptr i8, ptr %.063.lcssa, i64 %i.bm
  %scevgep = getelementptr i8, ptr %i.bn, i64 1
  %i.bo = and i64 %i.bl, -4
  %i.bp = getelementptr i8, ptr %.068.lcssa, i64 %i.bo
  %scevgep157 = getelementptr i8, ptr %i.bp, i64 4
  %bound0 = icmp ult ptr %.063.lcssa, %scevgep157
  %bound1 = icmp ult ptr %.068.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph111.preheader175, label %vector.ph161

vector.ph161:                                     ; preds = %vector.memcheck
  %n.vec163 = and i64 %i.bh, 9223372036854775800  ; 4 uses
  %i.bq = getelementptr i8, ptr %.063.lcssa, i64 %n.vec163
  %i.br = shl i64 %n.vec163, 2
  %i.bs = getelementptr i8, ptr %.068.lcssa, i64 %i.br
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph161
  %index165 = phi i64 [ 0, %vector.ph161 ], [ %index.next170, %vector.body164 ] ; 3 uses
  %next.gep166 = getelementptr i8, ptr %.063.lcssa, i64 %index165 ; 2 uses
  %i.bt = shl i64 %index165, 2
  %next.gep167 = getelementptr i8, ptr %.068.lcssa, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep167, i64 16
  %wide.load168 = load <4 x i32>, ptr %next.gep167, align 4, !tbaa !7, !alias.scope !324
  %wide.load169 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !7, !alias.scope !324
  %i.bv = trunc <4 x i32> %wide.load168 to <4 x i8>
  %i.bw = trunc <4 x i32> %wide.load169 to <4 x i8>
  %i.bx = getelementptr i8, ptr %next.gep166, i64 4
  store <4 x i8> %i.bv, ptr %next.gep166, align 1, !tbaa !205, !alias.scope !327, !noalias !324
  store <4 x i8> %i.bw, ptr %i.bx, align 1, !tbaa !205, !alias.scope !327, !noalias !324
  %index.next170 = add nuw i64 %index165, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next170, %n.vec163
  br i1 %i.by, label %middle.block171, label %vector.body164, !llvm.loop !329

middle.block171:                                  ; preds = %vector.body164
  %cmp.n172 = icmp eq i64 %i.bh, %n.vec163
  br i1 %cmp.n172, label %unicode_char.exit, label %.lr.ph111.preheader175

.lr.ph111.preheader175:                           ; preds = %vector.memcheck, %.lr.ph111.preheader, %middle.block171
  %.1110.ph = phi ptr [ %.063.lcssa, %vector.memcheck ], [ %.063.lcssa, %.lr.ph111.preheader ], [ %i.bq, %middle.block171 ]
  %.169109.ph = phi ptr [ %.068.lcssa, %vector.memcheck ], [ %.068.lcssa, %.lr.ph111.preheader ], [ %i.bs, %middle.block171 ]
  br label %.lr.ph111

.lr.ph106:                                        ; preds = %_PyUnicode_DATA.exit, %.lr.ph106
  %.063105 = phi ptr [ %i.co, %.lr.ph106 ], [ %.0.i76, %_PyUnicode_DATA.exit ] ; 5 uses
  %.068104 = phi ptr [ %i.cn, %.lr.ph106 ], [ %0, %_PyUnicode_DATA.exit ] ; 5 uses
  %i.bz = load i32, ptr %.068104, align 4, !tbaa !7
  %i.ca = trunc i32 %i.bz to i8
  store i8 %i.ca, ptr %.063105, align 1, !tbaa !205
  %i.cb = getelementptr i8, ptr %.068104, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr i8, ptr %.063105, i64 1
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !205
  %i.cf = getelementptr i8, ptr %.068104, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr i8, ptr %.063105, i64 2
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !205
  %i.cj = getelementptr i8, ptr %.068104, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !7
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr i8, ptr %.063105, i64 3
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !205
  %i.cn = getelementptr i8, ptr %.068104, i64 16  ; 3 uses
  %i.co = getelementptr i8, ptr %.063105, i64 4   ; 2 uses
  %i.cp = icmp ult ptr %i.cn, %i.z
  br i1 %i.cp, label %.lr.ph106, label %.preheader, !llvm.loop !330

.lr.ph111:                                        ; preds = %.lr.ph111.preheader175, %.lr.ph111
  %.1110 = phi ptr [ %i.ct, %.lr.ph111 ], [ %.1110.ph, %.lr.ph111.preheader175 ] ; 2 uses
  %.169109 = phi ptr [ %i.cq, %.lr.ph111 ], [ %.169109.ph, %.lr.ph111.preheader175 ] ; 2 uses
  %i.cq = getelementptr i8, ptr %.169109, i64 4   ; 2 uses
  %i.cr = load i32, ptr %.169109, align 4, !tbaa !7
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = getelementptr i8, ptr %.1110, i64 1
  store i8 %i.cs, ptr %.1110, align 1, !tbaa !205
  %i.cu = icmp ult ptr %i.cq, %i.w
  br i1 %i.cu, label %.lr.ph111, label %unicode_char.exit, !llvm.loop !331

bb.y:                                             ; preds = %bb.u
  %i.cv = icmp ult i32 %.2.i, 65536
  %i.cw = getelementptr i8, ptr %i.av, i64 32
  %.val.i77 = load i32, ptr %i.cw, align 8        ; 3 uses
  %i.cx = and i32 %.val.i77, 32
  %.not.i78 = icmp eq i32 %i.cx, 0                ; 2 uses
  br i1 %i.cv, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %.not.i78, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = and i32 %.val.i77, 64
  %.not.i.i79 = icmp eq i32 %i.cy, 0
  %.0.v.i.i80 = select i1 %.not.i.i79, i64 56, i64 40
  %.0.i.i81 = getelementptr i8, ptr %i.av, i64 %.0.v.i.i80
  br label %_PyUnicode_DATA.exit84

bb.ab:                                            ; preds = %bb.z
  %i.cz = getelementptr i8, ptr %i.av, i64 56
  %.val4.i83 = load ptr, ptr %i.cz, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit84

_PyUnicode_DATA.exit84:                           ; preds = %bb.aa, %bb.ab
  %.0.i82 = phi ptr [ %.0.i.i81, %bb.aa ], [ %.val4.i83, %bb.ab ] ; 2 uses
  br i1 %i.aa, label %.lr.ph, label %.preheader94

.preheader94:                                     ; preds = %.lr.ph, %_PyUnicode_DATA.exit84
  %.066.lcssa = phi ptr [ %.0.i82, %_PyUnicode_DATA.exit84 ], [ %i.dv, %.lr.ph ] ; 3 uses
  %.064.lcssa = phi ptr [ %0, %_PyUnicode_DATA.exit84 ], [ %i.du, %.lr.ph ] ; 5 uses
  %i.da = icmp ult ptr %.064.lcssa, %i.w
  br i1 %i.da, label %.lr.ph103.preheader, label %unicode_char.exit

.lr.ph103.preheader:                              ; preds = %.preheader94
  %.064.lcssa151 = ptrtoaddr ptr %.064.lcssa to i64 ; 2 uses
  %i.db = add i64 %.idx93, %2
  %i.dc = add i64 %.064.lcssa151, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.db, i64 %i.dc)
  %i.dd = xor i64 %.064.lcssa151, -1
  %i.de = add i64 %umax, %i.dd                    ; 2 uses
  %i.df = lshr i64 %i.de, 2
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.de, 28
  br i1 %min.iters.check, label %.lr.ph103.preheader177, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph103.preheader
  %n.vec = and i64 %i.dg, 9223372036854775800     ; 4 uses
  %i.dh = shl i64 %n.vec, 2
  %i.di = getelementptr i8, ptr %.064.lcssa, i64 %i.dh
  %i.dj = shl nuw i64 %n.vec, 1
  %i.dk = getelementptr i8, ptr %.066.lcssa, i64 %i.dj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.064.lcssa, i64 %i.dl ; 2 uses
  %i.dm = shl i64 %index, 1
  %next.gep152 = getelementptr i8, ptr %.066.lcssa, i64 %i.dm ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load153 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !7
  %i.do = trunc <4 x i32> %wide.load to <4 x i16>
  %i.dp = trunc <4 x i32> %wide.load153 to <4 x i16>
  %i.dq = getelementptr i8, ptr %next.gep152, i64 8
  store <4 x i16> %i.do, ptr %next.gep152, align 2, !tbaa !208
  store <4 x i16> %i.dp, ptr %i.dq, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !332

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %unicode_char.exit, label %.lr.ph103.preheader177

.lr.ph103.preheader177:                           ; preds = %.lr.ph103.preheader, %middle.block
  %.165102.ph = phi ptr [ %.064.lcssa, %.lr.ph103.preheader ], [ %i.di, %middle.block ]
  %.167101.ph = phi ptr [ %.066.lcssa, %.lr.ph103.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph103

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit84, %.lr.ph
  %.06499 = phi ptr [ %i.du, %.lr.ph ], [ %0, %_PyUnicode_DATA.exit84 ] ; 2 uses
  %.06698 = phi ptr [ %i.dv, %.lr.ph ], [ %.0.i82, %_PyUnicode_DATA.exit84 ] ; 2 uses
  %i.ds = load <4 x i32>, ptr %.06499, align 4, !tbaa !7
  %i.dt = trunc <4 x i32> %i.ds to <4 x i16>
  store <4 x i16> %i.dt, ptr %.06698, align 2, !tbaa !208
  %i.du = getelementptr i8, ptr %.06499, i64 16   ; 3 uses
  %i.dv = getelementptr i8, ptr %.06698, i64 8    ; 2 uses
  %i.dw = icmp ult ptr %i.du, %i.z
  br i1 %i.dw, label %.lr.ph, label %.preheader94, !llvm.loop !333

.lr.ph103:                                        ; preds = %.lr.ph103.preheader177, %.lr.ph103
  %.165102 = phi ptr [ %i.dx, %.lr.ph103 ], [ %.165102.ph, %.lr.ph103.preheader177 ] ; 2 uses
  %.167101 = phi ptr [ %i.ea, %.lr.ph103 ], [ %.167101.ph, %.lr.ph103.preheader177 ] ; 2 uses
  %i.dx = getelementptr i8, ptr %.165102, i64 4   ; 2 uses
  %i.dy = load i32, ptr %.165102, align 4, !tbaa !7
  %i.dz = trunc i32 %i.dy to i16
  %i.ea = getelementptr i8, ptr %.167101, i64 2
  store i16 %i.dz, ptr %.167101, align 2, !tbaa !208
  %i.eb = icmp ult ptr %i.dx, %i.w
  br i1 %i.eb, label %.lr.ph103, label %unicode_char.exit, !llvm.loop !334

bb.ac:                                            ; preds = %bb.y
  br i1 %.not.i78, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ec = and i32 %.val.i77, 64
  %.not.i.i87 = icmp eq i32 %i.ec, 0
  %.0.v.i.i88 = select i1 %.not.i.i87, i64 56, i64 40
  %.0.i.i89 = getelementptr i8, ptr %i.av, i64 %.0.v.i.i88
  br label %_PyUnicode_DATA.exit92

bb.ae:                                            ; preds = %bb.ac
  %i.ed = getelementptr i8, ptr %i.av, i64 56
  %.val4.i91 = load ptr, ptr %i.ed, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit92

_PyUnicode_DATA.exit92:                           ; preds = %bb.ad, %bb.ae
  %.0.i90 = phi ptr [ %.0.i.i89, %bb.ad ], [ %.val4.i91, %bb.ae ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0.i90, ptr align 4 %0, i64 %.idx93, i1 false)
  br label %unicode_char.exit

unicode_char.exit:                                ; preds = %.lr.ph103, %.lr.ph111, %middle.block, %middle.block171, %.preheader94, %.preheader, %_PyUnicode_DATA.exit19.i, %_PyUnicode_DATA.exit.i, %bb.f, %bb.e, %bb.d, %bb.a, %_PyUnicode_DATA.exit92, %ucs4lib_find_max_char.exit
  %.0 = phi ptr [ %i.av, %_PyUnicode_DATA.exit92 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ null, %ucs4lib_find_max_char.exit ], [ %i.av, %.preheader ], [ %i.i, %bb.e ], [ %i.j, %_PyUnicode_DATA.exit.i ], [ null, %bb.f ], [ %i.j, %_PyUnicode_DATA.exit19.i ], [ %i.f, %bb.d ], [ %i.av, %.preheader94 ], [ %i.av, %middle.block171 ], [ %i.av, %middle.block ], [ %i.av, %.lr.ph111 ], [ %i.av, %.lr.ph103 ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @_PyUnicode_FindMaxChar(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val24 = load i64, ptr %i.b, align 8, !tbaa !207
  %i.c = icmp eq i64 %2, %.val24
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val25 = load i32, ptr %i.d, align 8           ; 2 uses
  %i.e = and i32 %.val25, 64
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.d:                                             ; preds = %bb.c
  %i.f = lshr i32 %.val25, 2
  %i.g = and i32 %i.f, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.g, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.g, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.h = icmp eq i64 %1, %2
  br i1 %i.h, label %PyUnicode_MAX_CHAR_VALUE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %0, i64 32
  %.val = load i32, ptr %i.i, align 8             ; 3 uses
  %i.j = and i32 %.val, 64
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.g, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.g:                                             ; preds = %bb.f
  %i.k = lshr i32 %.val, 2
  %i.l = and i32 %i.k, 7                          ; 2 uses
  %i.m = and i32 %.val, 32
  %.not.i26 = icmp eq i32 %i.m, 0
  %i.n = getelementptr i8, ptr %0, i64 56         ; 2 uses
  br i1 %.not.i26, label %bb.h, label %_PyUnicode_DATA.exit

bb.h:                                             ; preds = %bb.g
  %.val4.i = load ptr, ptr %i.n, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.g, %bb.h
  %.0.i27 = phi ptr [ %.val4.i, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.o = zext nneg i32 %i.l to i64                ; 2 uses
  %i.p = mul i64 %2, %i.o                         ; 3 uses
  %i.q = getelementptr i8, ptr %.0.i27, i64 %i.p  ; 7 uses
  %i.r = mul i64 %1, %i.o                         ; 3 uses
  %i.s = getelementptr i8, ptr %.0.i27, i64 %i.r  ; 9 uses
  switch i32 %i.l, label %bb.u [
    i32 1, label %.preheader
    i32 2, label %bb.l
    i32 4, label %bb.p
  ]

.preheader:                                       ; preds = %_PyUnicode_DATA.exit, %.thread31.i
  %.021.i = phi ptr [ %i.aa, %.thread31.i ], [ %i.s, %_PyUnicode_DATA.exit ] ; 4 uses
  %i.t = icmp ult ptr %.021.i, %i.q
  br i1 %i.t, label %bb.i, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.i:                                             ; preds = %.preheader
  %i.u = ptrtoint ptr %.021.i to i64
  %i.v = and i64 %i.u, 7
  %.not.i28 = icmp eq i64 %i.v, 0
  br i1 %.not.i28, label %.preheader.i, label %.thread31.i

.preheader.i:                                     ; preds = %bb.i, %bb.j
  %.019.i = phi ptr [ %i.w, %bb.j ], [ %.021.i, %bb.i ] ; 4 uses
  %i.w = getelementptr i8, ptr %.019.i, i64 8     ; 2 uses
  %.not26.i = icmp ugt ptr %i.w, %i.q
  br i1 %.not26.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader.i
  %i.x = load i64, ptr %.019.i, align 8, !tbaa !193
  %i.y = and i64 %i.x, -9187201950435737472
  %.not27.i = icmp eq i64 %i.y, 0
  br i1 %.not27.i, label %.preheader.i, label %PyUnicode_MAX_CHAR_VALUE.exit, !llvm.loop !220

bb.k:                                             ; preds = %.preheader.i
  %i.z = icmp eq ptr %.019.i, %i.q
  br i1 %i.z, label %PyUnicode_MAX_CHAR_VALUE.exit, label %.thread31.i

.thread31.i:                                      ; preds = %bb.k, %bb.i
  %.223.i = phi ptr [ %.021.i, %bb.i ], [ %.019.i, %bb.k ] ; 2 uses
  %i.aa = getelementptr i8, ptr %.223.i, i64 1
  %i.ab = load i8, ptr %.223.i, align 1, !tbaa !205
  %.not28.i = icmp sgt i8 %i.ab, -1
  br i1 %.not28.i, label %.preheader, label %PyUnicode_MAX_CHAR_VALUE.exit, !llvm.loop !221

bb.l:                                             ; preds = %_PyUnicode_DATA.exit
  %gepdiff57 = sub i64 %i.p, %i.r
  %i.ac = ashr exact i64 %gepdiff57, 1
  %i.ad = and i64 %i.ac, -4
  %i.ae = getelementptr [2 x i8], ptr %i.s, i64 %i.ad ; 4 uses
  %i.af = icmp ult ptr %i.s, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %.preheader.i29

.preheader.i29:                                   ; preds = %.loopexit.i, %.loopexit.i.jt4294967040, %.loopexit.i.jt4294901760, %bb.l
  %.034.lcssa.i = phi ptr [ %i.s, %bb.l ], [ %i.ap, %.loopexit.i.jt4294901760 ], [ %i.ar, %.loopexit.i.jt4294967040 ], [ %i.an, %.loopexit.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@_PyUnicode_FindMaxChar:bb.a

.lr.ph.jt4294901760.i:                            ; preds = %.lr.ph.jt4294967040.i53, %bb.q
  %.not37.jt4294901760.i = icmp ult i32 %i.bf, 65536
  br i1 %.not37.jt4294901760.i, label %bb.r, label %PyUnicode_MAX_CHAR_VALUE.exit

.lr.ph.jt4294967040.i53:                          ; preds = %bb.q
  %.not37.jt4294967040.i54 = icmp ult i32 %i.bf, 256
  br i1 %.not37.jt4294967040.i54, label %bb.r, label %.lr.ph.jt4294901760.i

bb.q:                                             ; preds = %.lr.ph.i48
  switch i32 %.02949.i50, label %.lr.ph.jt4294901760.i [
    i32 -65536, label %PyUnicode_MAX_CHAR_VALUE.exit
    i32 -128, label %.lr.ph.jt4294967040.i53
  ], !llvm.loop !298

bb.r:                                             ; preds = %.lr.ph.jt4294967040.i53, %.lr.ph.jt4294901760.i, %.lr.ph.i48
  %.0294982.i55 = phi i32 [ -65536, %.lr.ph.jt4294901760.i ], [ -256, %.lr.ph.jt4294967040.i53 ], [ %.02949.i50, %.lr.ph.i48 ] ; 2 uses
  %.0265081.i56 = phi i32 [ 65535, %.lr.ph.jt4294901760.i ], [ 255, %.lr.ph.jt4294967040.i53 ], [ %.02650.i49, %.lr.ph.i48 ] ; 2 uses
  %i.bh = getelementptr i8, ptr %.03448.i51, i64 16 ; 3 uses
  %i.bi = icmp ult ptr %i.bh, %i.bb
  br i1 %i.bi, label %.lr.ph.i48, label %.preheader.i30

.outer.i45:                                       ; preds = %bb.t, %.lr.ph55.split.us.i35
  %.us-phi.i46 = phi i32 [ %.332.ph68.i37, %.lr.ph55.split.us.i35 ], [ %.433.us.i42, %bb.t ]
  %.us-phi60.i47 = phi i32 [ %.3.ph69.i36, %.lr.ph55.split.us.i35 ], [ %.4.us.i43, %bb.t ] ; 2 uses
  %i.bj = getelementptr i8, ptr %.236.ph67.i38, i64 4 ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %i.q
  br i1 %i.bk, label %.lr.ph55.split.us.i35, label %PyUnicode_MAX_CHAR_VALUE.exit, !llvm.loop !299

.lr.ph55.split.us.i35:                            ; preds = %.preheader.i30, %.outer.i45
  %.3.ph69.i36 = phi i32 [ %.us-phi60.i47, %.outer.i45 ], [ %.026.lcssa.i33, %.preheader.i30 ]
  %.332.ph68.i37 = phi i32 [ %.us-phi.i46, %.outer.i45 ], [ %.029.lcssa.i32, %.preheader.i30 ] ; 3 uses
  %.236.ph67.i38 = phi ptr [ %i.bj, %.outer.i45 ], [ %.034.lcssa.i31, %.preheader.i30 ] ; 2 uses
  %i.bl = load i32, ptr %.236.ph67.i38, align 4, !tbaa !7 ; 2 uses
  %i.bm = and i32 %i.bl, %.332.ph68.i37
  %.not.us62.i39 = icmp eq i32 %i.bm, 0
  br i1 %.not.us62.i39, label %.outer.i45, label %.lr.ph64.i40

.lr.ph64.i40:                                     ; preds = %.lr.ph55.split.us.i35, %bb.t
  %.33253.us63.i41 = phi i32 [ %.433.us.i42, %bb.t ], [ %.332.ph68.i37, %.lr.ph55.split.us.i35 ]
  switch i32 %.33253.us63.i41, label %bb.s [
    i32 -65536, label %PyUnicode_MAX_CHAR_VALUE.exit
    i32 -128, label %bb.t
  ]

bb.s:                                             ; preds = %.lr.ph64.i40
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph64.i40
  %.433.us.i42 = phi i32 [ -65536, %bb.s ], [ -256, %.lr.ph64.i40 ] ; 3 uses
  %.4.us.i43 = phi i32 [ 65535, %bb.s ], [ 255, %.lr.ph64.i40 ]
  %i.bn = and i32 %.433.us.i42, %i.bl
  %.not.us.i44 = icmp eq i32 %i.bn, 0
  br i1 %.not.us.i44, label %.outer.i45, label %.lr.ph64.i40

bb.u:                                             ; preds = %_PyUnicode_DATA.exit
  unreachable

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.q, %.lr.ph.jt4294901760.i, %.outer.i45, %.lr.ph64.i40, %bb.m, %.lr.ph.jt4294967040.i, %.lr.ph.i.jt4294967040, %.outer.i, %.lr.ph64.i, %.thread31.i, %bb.k, %.preheader, %bb.j, %.preheader.i30, %.preheader.i29, %bb.d, %bb.c, %bb.f, %bb.e
  %.0 = phi i32 [ 127, %bb.f ], [ %.026.lcssa.i33, %.preheader.i30 ], [ 127, %bb.e ], [ 127, %bb.c ], [ %.us-phi60.i47, %.outer.i45 ], [ %switch.select6.i, %bb.d ], [ 65535, %bb.m ], [ 255, %bb.j ], [ 1114111, %.lr.ph64.i40 ], [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i29 ], [ 65535, %.lr.ph64.i ], [ 255, %.thread31.i ], [ 127, %.preheader ], [ 127, %bb.k ], [ 65535, %.lr.ph.i.jt4294967040 ], [ 65535, %.lr.ph.jt4294967040.i ], [ 1114111, %.lr.ph.jt4294901760.i ], [ 1114111, %bb.q ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyUnicode_Copy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val12 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val12, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 2379) #33
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val13 = load i64, ptr %i.d, align 8, !tbaa !207 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val14 = load i32, ptr %i.e, align 8           ; 2 uses
  %i.f = and i32 %.val14, 64
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.d, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.d:                                             ; preds = %bb.c
  %i.g = lshr i32 %.val14, 2
  %i.h = and i32 %i.g, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.h, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.h, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %switch.select6.i, %bb.d ], [ 127, %bb.c ]
  %i.i = tail call ptr @PyUnicode_New(i64 noundef %.val13, i32 noundef %.0.i) ; 5 uses
  %.not11 = icmp eq ptr %i.i, null
  br i1 %.not11, label %bb.j, label %bb.e

bb.e:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %.val.i = load i32, ptr %i.j, align 8           ; 2 uses
  %i.k = and i32 %.val.i, 32
  %.not.i15 = icmp eq i32 %i.k, 0
  br i1 %.not.i15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.l, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.i, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.i, i64 56
  %.val4.i = load ptr, ptr %i.m, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.f, %bb.g
  %.0.i16 = phi ptr [ %.0.i.i, %bb.f ], [ %.val4.i, %bb.g ]
  %.val.i17 = load i32, ptr %i.e, align 8         ; 3 uses
  %i.n = and i32 %.val.i17, 32
  %.not.i18 = icmp eq i32 %i.n, 0
  br i1 %.not.i18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_PyUnicode_DATA.exit
  %i.o = and i32 %.val.i17, 64
  %.not.i.i19 = icmp eq i32 %i.o, 0
  %.0.v.i.i20 = select i1 %.not.i.i19, i64 56, i64 40
  %.0.i.i21 = getelementptr i8, ptr %0, i64 %.0.v.i.i20
  br label %_PyUnicode_DATA.exit24

bb.i:                                             ; preds = %_PyUnicode_DATA.exit
  %i.p = getelementptr i8, ptr %0, i64 56
  %.val4.i23 = load ptr, ptr %i.p, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit24

_PyUnicode_DATA.exit24:                           ; preds = %bb.h, %bb.i
  %.0.i22 = phi ptr [ %.0.i.i21, %bb.h ], [ %.val4.i23, %bb.i ]
  %i.q = lshr i32 %.val.i17, 2
  %i.r = and i32 %i.q, 7
  %i.s = zext nneg i32 %i.r to i64
  %i.t = mul i64 %.val13, %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i16, ptr align 1 %.0.i22, i64 %i.t, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit, %_PyUnicode_DATA.exit24, %bb.b
  %.0 = phi ptr [ %i.i, %_PyUnicode_DATA.exit24 ], [ null, %bb.b ], [ null, %PyUnicode_MAX_CHAR_VALUE.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsUCS4(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp slt i64 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 2496) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @as_ucs4(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @as_ucs4(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 7                          ; 2 uses
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
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 12 uses
  %.0.i111 = ptrtoaddr ptr %.0.i to i64           ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.h, align 8, !tbaa !207 ; 8 uses
  %i.i = icmp ne i32 %3, 0                        ; 3 uses
  %i.j = zext i1 %i.i to i64
  %spec.select = add i64 %.val, %i.j              ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.k = icmp ugt i64 %spec.select, 2305843009213693951
  br i1 %i.k, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = shl nuw nsw i64 %spec.select, 2
  %i.m = tail call ptr @PyMem_Malloc(i64 noundef %i.l) #33 ; 2 uses
  %.not89 = icmp eq ptr %i.m, null
  br i1 %.not89, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.d, %bb.e
  %i.n = tail call ptr @PyErr_NoMemory() #33      ; 0 uses
  br label %bb.n

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.o = icmp slt i64 %2, %spec.select
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  %i.q = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.p, ptr noundef nonnull @.str.126) #33 ; 0 uses
  %i.r = icmp ne i64 %2, 0
  %or.cond = and i1 %i.r, %i.i
  br i1 %or.cond, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %1, align 4, !tbaa !7
  br label %bb.n

bb.i:                                             ; preds = %bb.f, %bb.e
  %.076 = phi ptr [ %1, %bb.f ], [ %i.m, %bb.e ]  ; 8 uses
  switch i32 %i.d, label %bb.l [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr i8, ptr %.0.i, i64 %.val
  %i.t = and i64 %.val, -4
  %i.u = getelementptr i8, ptr %.0.i, i64 %i.t    ; 2 uses
  %i.v = icmp ult ptr %.0.i, %i.u
  br i1 %i.v, label %.lr.ph101, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph101
  %.pre = ptrtoaddr ptr %i.ay to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.j
  %.083.lcssa112.pre-phi = phi i64 [ %.pre, %.preheader.loopexit ], [ %.0.i111, %bb.j ] ; 2 uses
  %.083.lcssa = phi ptr [ %i.ay, %.preheader.loopexit ], [ %.0.i, %bb.j ] ; 7 uses
  %.081.lcssa = phi ptr [ %i.az, %.preheader.loopexit ], [ %.076, %bb.j ] ; 6 uses
  %i.w = icmp ult ptr %.083.lcssa, %i.s
  br i1 %i.w, label %.lr.ph106.preheader, label %.loopexit

.lr.ph106.preheader:                              ; preds = %.preheader
  %i.x = add i64 %.val, %.0.i111                  ; 2 uses
  %i.y = sub i64 %i.x, %.083.lcssa112.pre-phi     ; 4 uses
  %scevgep = getelementptr i8, ptr %.083.lcssa, i64 %i.y ; 2 uses
  %min.iters.check135 = icmp ult i64 %i.y, 20
  br i1 %min.iters.check135, label %.lr.ph106.preheader150, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph106.preheader
  %i.z = sub i64 %i.x, %.083.lcssa112.pre-phi
  %i.aa = shl i64 %i.z, 2
  %scevgep133 = getelementptr i8, ptr %.081.lcssa, i64 %i.aa
  %bound0 = icmp ult ptr %.081.lcssa, %scevgep
  %bound1 = icmp ult ptr %.083.lcssa, %scevgep133
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph106.preheader150, label %vector.ph136

vector.ph136:                                     ; preds = %vector.memcheck
  %n.vec138 = and i64 %i.y, -8                    ; 4 uses
  %i.ab = shl i64 %n.vec138, 2
  %i.ac = getelementptr i8, ptr %.081.lcssa, i64 %i.ab
  %i.ad = getelementptr i8, ptr %.083.lcssa, i64 %n.vec138
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next145, %vector.body139 ] ; 3 uses
  %i.ae = shl i64 %index140, 2
  %next.gep141 = getelementptr i8, ptr %.081.lcssa, i64 %i.ae ; 2 uses
  %next.gep142 = getelementptr i8, ptr %.083.lcssa, i64 %index140 ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep142, i64 4
  %wide.load143 = load <4 x i8>, ptr %next.gep142, align 1, !tbaa !205, !alias.scope !335
  %wide.load144 = load <4 x i8>, ptr %i.af, align 1, !tbaa !205, !alias.scope !335
  %i.ag = zext <4 x i8> %wide.load143 to <4 x i32>
  %i.ah = zext <4 x i8> %wide.load144 to <4 x i32>
  %i.ai = getelementptr i8, ptr %next.gep141, i64 16
  store <4 x i32> %i.ag, ptr %next.gep141, align 4, !tbaa !7, !alias.scope !338, !noalias !335
  store <4 x i32> %i.ah, ptr %i.ai, align 4, !tbaa !7, !alias.scope !338, !noalias !335
  %index.next145 = add nuw i64 %index140, 8       ; 2 uses
  %i.aj = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.aj, label %middle.block146, label %vector.body139, !llvm.loop !340

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.y, %n.vec138
  br i1 %cmp.n147, label %.loopexit, label %.lr.ph106.preheader150

.lr.ph106.preheader150:                           ; preds = %vector.memcheck, %.lr.ph106.preheader, %middle.block146
  %.182105.ph = phi ptr [ %.081.lcssa, %vector.memcheck ], [ %.081.lcssa, %.lr.ph106.preheader ], [ %i.ac, %middle.block146 ]
  %.184104.ph = phi ptr [ %.083.lcssa, %vector.memcheck ], [ %.083.lcssa, %.lr.ph106.preheader ], [ %i.ad, %middle.block146 ]
  br label %.lr.ph106

.lr.ph101:                                        ; preds = %bb.j, %.lr.ph101
  %.081100 = phi ptr [ %i.az, %.lr.ph101 ], [ %.076, %bb.j ] ; 5 uses
  %.08399 = phi ptr [ %i.ay, %.lr.ph101 ], [ %.0.i, %bb.j ] ; 5 uses
  %i.ak = load i8, ptr %.08399, align 1, !tbaa !205
  %i.al = zext i8 %i.ak to i32
  store i32 %i.al, ptr %.081100, align 4, !tbaa !7
  %i.am = getelementptr i8, ptr %.08399, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !205
  %i.ao = zext i8 %i.an to i32
  %i.ap = getelementptr i8, ptr %.081100, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !7
  %i.aq = getelementptr i8, ptr %.08399, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !205
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr i8, ptr %.081100, i64 8
  store i32 %i.as, ptr %i.at, align 4, !tbaa !7
  %i.au = getelementptr i8, ptr %.08399, i64 3
  %i.av = load i8, ptr %i.au, align 1, !tbaa !205
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr i8, ptr %.081100, i64 12
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !7
  %i.ay = getelementptr i8, ptr %.08399, i64 4    ; 4 uses
  %i.az = getelementptr i8, ptr %.081100, i64 16  ; 2 uses
  %i.ba = icmp ult ptr %i.ay, %i.u
  br i1 %i.ba, label %.lr.ph101, label %.preheader.loopexit, !llvm.loop !341

.lr.ph106:                                        ; preds = %.lr.ph106.preheader150, %.lr.ph106
  %.182105 = phi ptr [ %i.be, %.lr.ph106 ], [ %.182105.ph, %.lr.ph106.preheader150 ] ; 2 uses
  %.184104 = phi ptr [ %i.bb, %.lr.ph106 ], [ %.184104.ph, %.lr.ph106.preheader150 ] ; 2 uses
  %i.bb = getelementptr i8, ptr %.184104, i64 1   ; 2 uses
  %i.bc = load i8, ptr %.184104, align 1, !tbaa !205
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr i8, ptr %.182105, i64 4
  store i32 %i.bd, ptr %.182105, align 4, !tbaa !7
  %exitcond.not = icmp eq ptr %i.bb, %scevgep
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph106, !llvm.loop !342

bb.k:                                             ; preds = %bb.i
  %i.bf = getelementptr [2 x i8], ptr %.0.i, i64 %.val ; 2 uses
  %.idx = shl i64 %.val, 1                        ; 2 uses
  %i.bg = ashr exact i64 %.idx, 1
  %i.bh = and i64 %i.bg, -4
  %i.bi = getelementptr [2 x i8], ptr %.0.i, i64 %i.bh ; 2 uses
  %i.bj = icmp ult ptr %.0.i, %i.bi
  br i1 %i.bj, label %.lr.ph, label %.preheader91

.preheader91:                                     ; preds = %.lr.ph, %bb.k
  %.079.lcssa = phi ptr [ %.076, %bb.k ], [ %i.cf, %.lr.ph ] ; 3 uses
  %.078.lcssa = phi ptr [ %.0.i, %bb.k ], [ %i.ce, %.lr.ph ] ; 5 uses
  %i.bk = icmp ult ptr %.078.lcssa, %i.bf
  br i1 %i.bk, label %.lr.ph98.preheader, label %.loopexit

.lr.ph98.preheader:                               ; preds = %.preheader91
  %.078.lcssa129 = ptrtoaddr ptr %.078.lcssa to i64 ; 2 uses
  %i.bl = add i64 %.idx, %.0.i111
  %i.bm = add i64 %.078.lcssa129, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 %i.bm)
  %i.bn = xor i64 %.078.lcssa129, -1
  %i.bo = add i64 %umax, %i.bn                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 1
  %i.bq = add nuw i64 %i.bp, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 14
  br i1 %min.iters.check, label %.lr.ph98.preheader152, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph98.preheader
  %n.vec = and i64 %i.bq, -8                      ; 4 uses
  %i.br = shl i64 %n.vec, 1
  %i.bs = getelementptr i8, ptr %.078.lcssa, i64 %i.br
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %.079.lcssa, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bv = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.078.lcssa, i64 %i.bv ; 2 uses
  %i.bw = shl i64 %index, 2
  %next.gep130 = getelementptr i8, ptr %.079.lcssa, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !208
  %wide.load131 = load <4 x i16>, ptr %i.bx, align 2, !tbaa !208
  %i.by = zext <4 x i16> %wide.load to <4 x i32>
  %i.bz = zext <4 x i16> %wide.load131 to <4 x i32>
  %i.ca = getelementptr i8, ptr %next.gep130, i64 16
  store <4 x i32> %i.by, ptr %next.gep130, align 4, !tbaa !7
  store <4 x i32> %i.bz, ptr %i.ca, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph98.preheader152

.lr.ph98.preheader152:                            ; preds = %.lr.ph98.preheader, %middle.block
  %.197.ph = phi ptr [ %.078.lcssa, %.lr.ph98.preheader ], [ %i.bs, %middle.block ]
  %.18096.ph = phi ptr [ %.079.lcssa, %.lr.ph98.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph98

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.07894 = phi ptr [ %i.ce, %.lr.ph ], [ %.0.i, %bb.k ] ; 2 uses
  %.07993 = phi ptr [ %i.cf, %.lr.ph ], [ %.076, %bb.k ] ; 2 uses
  %i.cc = load <4 x i16>, ptr %.07894, align 2, !tbaa !208
  %i.cd = zext <4 x i16> %i.cc to <4 x i32>
  store <4 x i32> %i.cd, ptr %.07993, align 4, !tbaa !7
  %i.ce = getelementptr i8, ptr %.07894, i64 8    ; 3 uses
  %i.cf = getelementptr i8, ptr %.07993, i64 16   ; 2 uses
  %i.cg = icmp ult ptr %i.ce, %i.bi
  br i1 %i.cg, label %.lr.ph, label %.preheader91, !llvm.loop !344

.lr.ph98:                                         ; preds = %.lr.ph98.preheader152, %.lr.ph98
  %.197 = phi ptr [ %i.ch, %.lr.ph98 ], [ %.197.ph, %.lr.ph98.preheader152 ] ; 2 uses
  %.18096 = phi ptr [ %i.ck, %.lr.ph98 ], [ %.18096.ph, %.lr.ph98.preheader152 ] ; 2 uses
  %i.ch = getelementptr i8, ptr %.197, i64 2      ; 2 uses
  %i.ci = load i16, ptr %.197, align 2, !tbaa !208
  %i.cj = zext i16 %i.ci to i32
  %i.ck = getelementptr i8, ptr %.18096, i64 4
  store i32 %i.cj, ptr %.18096, align 4, !tbaa !7
  %i.cl = icmp ult ptr %i.ch, %i.bf
  br i1 %i.cl, label %.lr.ph98, label %.loopexit, !llvm.loop !345

bb.l:                                             ; preds = %bb.i
  %i.cm = icmp eq i32 %i.d, 4
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = shl i64 %.val, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.076, ptr align 1 %.0.i, i64 %i.cn, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph98, %.lr.ph106, %middle.block, %middle.block146, %.preheader91, %.preheader, %bb.l
  br i1 %i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.co = getelementptr [4 x i8], ptr %.076, i64 %.val
  store i32 0, ptr %i.co, align 4, !tbaa !7
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.m, %bb.g, %bb.h, %.thread
  %.0 = phi ptr [ null, %.thread ], [ null, %bb.g ], [ null, %bb.h ], [ %.076, %bb.m ], [ %.076, %.loopexit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsUCS4Copy(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @as_ucs4(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_FromFormatV(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct._PyUnicodeWriter, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %2) #33
  %i.a = call fastcc i32 @unicode_from_format(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %1)
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %2) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %2) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret ptr %.0
}

declare void @_PyUnicodeWriter_Init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @unicode_from_format(ptr noundef initializes((52, 53)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 41 uses
  %i.b = alloca [26 x i8], align 16               ; 9 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 70 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34 ; 5 uses
  %i.d = add i64 %i.c, 100
  %i.e = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !346
  %i.g = add i64 %i.d, %i.f
  store i64 %i.g, ptr %i.e, align 8, !tbaa !346
  %i.h = getelementptr i8, ptr %0, i64 52         ; 8 uses
  store i8 1, ptr %i.h, align 4, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.va_copy.p0(ptr nonnull %3, ptr %2)
  %i.i = getelementptr i8, ptr %1, i64 %i.c       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread31.i, %bb.a
  %.021.i = phi ptr [ %1, %bb.a ], [ %i.q, %.thread31.i ] ; 4 uses
  %i.j = icmp ult ptr %.021.i, %i.i
  br i1 %i.j, label %bb.c, label %ucs1lib_find_max_char.exit

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %.021.i to i64
  %i.l = and i64 %i.k, 7
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %.preheader.i, label %.thread31.i

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %.019.i = phi ptr [ %i.m, %bb.d ], [ %.021.i, %bb.c ] ; 4 uses
  %i.m = getelementptr i8, ptr %.019.i, i64 8     ; 2 uses
  %.not26.i = icmp ugt ptr %i.m, %i.i
  br i1 %.not26.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.n = load i64, ptr %.019.i, align 8, !tbaa !193
  %i.o = and i64 %i.n, -9187201950435737472
  %.not27.i = icmp eq i64 %i.o, 0
  br i1 %.not27.i, label %.preheader.i, label %.critedge58, !llvm.loop !220

bb.e:                                             ; preds = %.preheader.i
  %i.p = icmp eq ptr %.019.i, %i.i
  br i1 %i.p, label %ucs1lib_find_max_char.exit, label %.thread31.i

.thread31.i:                                      ; preds = %bb.e, %bb.c
  %.223.i = phi ptr [ %.021.i, %bb.c ], [ %.019.i, %bb.e ] ; 2 uses
  %i.q = getelementptr i8, ptr %.223.i, i64 1
  %i.r = load i8, ptr %.223.i, align 1, !tbaa !205
  %.not28.i = icmp sgt i8 %i.r, -1
  br i1 %.not28.i, label %bb.b, label %.critedge58, !llvm.loop !221

ucs1lib_find_max_char.exit:                       ; preds = %bb.b, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 90 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 45 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.w = getelementptr i8, ptr %0, i64 20         ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 32         ; 18 uses
  %i.z = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.g

.critedge58:                                      ; preds = %.thread31.i, %bb.d
  %i.ab = icmp sgt i64 %i.c, 0
  br i1 %i.ab, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.critedge58, %bb.f
  %.04074 = phi i64 [ %i.af, %bb.f ], [ 0, %.critedge58 ] ; 3 uses
  %i.ac = getelementptr i8, ptr %1, i64 %.04074
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !205
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph
  %i.af = add nuw nsw i64 %.04074, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.c
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !348
end_hunk_2
begin_hunk_3_@PyUnicode_Decode:bb.a
  %i.fb = zext nneg i8 %i.fa to i64
  %i.fc = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.fb
  %i.fd = and i8 %i.fa, 127
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.fe
  %i.fg = icmp slt i8 %i.fa, 0
  %i.fh = select i1 %i.fg, ptr %i.ff, ptr %i.fc   ; 5 uses
  %.not.i88 = icmp eq ptr %i.eb, %i.fh
  br i1 %.not.i88, label %_PyUnicode_Result.exit, label %bb.bd

bb.bd:                                            ; preds = %_PyUnicode_DATA.exit.i
  %i.fi = load i32, ptr %i.eb, align 8, !tbaa !205 ; 2 uses
  %.not.i.i89 = icmp sgt i32 %i.fi, -1
  br i1 %.not.i.i89, label %bb.be, label %_PyUnicode_Result.exit

bb.be:                                            ; preds = %bb.bd
  %i.fj = add nsw i32 %i.fi, -1                   ; 2 uses
  store i32 %i.fj, ptr %i.eb, align 8, !tbaa !205
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %Py_DECREF.exit28.sink.split.i, label %_PyUnicode_Result.exit

Py_DECREF.exit28.sink.split.i:                    ; preds = %bb.be, %bb.ay
  %.1.ph.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.ay ], [ %i.fh, %bb.be ]
  call void @_Py_Dealloc(ptr noundef nonnull %i.eb) #33
  br label %_PyUnicode_Result.exit

bb.bf:                                            ; preds = %bb.ao, %bb.aq, %bb.ar, %bb.as
  %i.fl = load i32, ptr %i.dz, align 8, !tbaa !205 ; 2 uses
  %.not.i.i91 = icmp sgt i32 %i.fl, -1
  br i1 %.not.i.i91, label %bb.bg, label %_PyUnicode_Result.exit

bb.bg:                                            ; preds = %bb.bf
  %i.fm = add nsw i32 %i.fl, -1                   ; 2 uses
  store i32 %i.fm, ptr %i.dz, align 8, !tbaa !205
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.bh, label %_PyUnicode_Result.exit

bb.bh:                                            ; preds = %bb.bg
  call void @_Py_Dealloc(ptr noundef nonnull %i.dz) #33
  br label %_PyUnicode_Result.exit

_PyUnicode_Result.exit:                           ; preds = %_PyUnicode_DATA.exit.i.i, %ucs1lib_find_max_char.exit.i.i, %bb.ae, %bb.ad, %bb.w, %bb.t, %bb.q, %bb.n, %bb.bh, %bb.bg, %bb.bf, %bb.an, %PyUnicode_DecodeLatin1.exit, %Py_DECREF.exit28.sink.split.i, %bb.be, %bb.bd, %_PyUnicode_DATA.exit.i, %bb.az, %bb.ay, %bb.ax, %bb.aw, %Py_DECREF.exit, %bb.b, %bb.a, %bb.d
  %.1 = phi ptr [ null, %bb.bh ], [ null, %bb.a ], [ %i.g, %bb.d ], [ %.1.ph.i, %Py_DECREF.exit28.sink.split.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.b ], [ %i.eb, %Py_DECREF.exit ], [ %i.fh, %bb.bd ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.aw ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.ax ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.ay ], [ %i.eb, %bb.az ], [ %i.fh, %_PyUnicode_DATA.exit.i ], [ %i.fh, %bb.be ], [ null, %PyUnicode_DecodeLatin1.exit ], [ null, %bb.an ], [ null, %bb.bf ], [ null, %bb.bg ], [ %i.dh, %bb.ae ], [ %i.de, %bb.ad ], [ %i.ds, %_PyUnicode_DATA.exit.i.i ], [ %i.aq, %bb.n ], [ null, %ucs1lib_find_max_char.exit.i.i ], [ %i.bu, %bb.w ], [ %i.ba, %bb.t ], [ %i.av, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret ptr %.1
}

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @_Py_normalize_encoding(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 %2
  %i.b = getelementptr i8, ptr %i.a, i64 -1       ; 4 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !205     ; 3 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not36 = icmp eq i32 %3, 0
  br i1 %.not36, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %i.e = phi i8 [ %i.q, %bb.g ], [ %i.c, %.lr.ph ] ; 3 uses
  %.02651.us = phi i32 [ %.127.us, %bb.g ], [ 0, %.lr.ph ]
  %.02950.us = phi ptr [ %i.p, %bb.g ], [ %0, %.lr.ph ]
  %.03149.us = phi ptr [ %.233.us, %bb.g ], [ %1, %.lr.ph ] ; 6 uses
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  %i.i = and i32 %i.h, 7
  %i.j = icmp ne i32 %i.i, 0
  %i.k = icmp eq i8 %i.e, 46
  %or.cond.us = or i1 %i.k, %i.j
  br i1 %or.cond.us, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph.split.us
  %.not.us = icmp eq i32 %.02651.us, 0
  %.not35.us = icmp eq ptr %.03149.us, %1
  %or.cond37.us = select i1 %.not.us, i1 true, i1 %.not35.us
  br i1 %or.cond37.us, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq ptr %.03149.us, %i.b
  br i1 %i.l, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %.03149.us, i64 1
  store i8 95, ptr %.03149.us, align 1, !tbaa !205
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.132.us = phi ptr [ %i.m, %bb.d ], [ %.03149.us, %bb.b ] ; 3 uses
  %i.n = icmp eq ptr %.132.us, %i.b
  br i1 %i.n, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %.132.us, i64 1
  store i8 %i.e, ptr %.132.us, align 1, !tbaa !205
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us
  %.233.us = phi ptr [ %i.o, %bb.f ], [ %.03149.us, %.lr.ph.split.us ] ; 2 uses
  %.127.us = phi i32 [ 0, %bb.f ], [ 1, %.lr.ph.split.us ]
  %i.p = getelementptr i8, ptr %.02950.us, i64 1  ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !205   ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %i.s = phi i8 [ %i.ag, %bb.m ], [ %i.c, %.lr.ph ] ; 2 uses
  %.02651 = phi i32 [ %.127, %bb.m ], [ 0, %.lr.ph ]
  %.02950 = phi ptr [ %i.af, %bb.m ], [ %0, %.lr.ph ]
  %.03149 = phi ptr [ %.233, %bb.m ], [ %1, %.lr.ph ] ; 6 uses
  %i.t = zext i8 %i.s to i64                      ; 2 uses
  %i.u = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7
  %i.w = and i32 %i.v, 7
  %i.x = icmp ne i32 %i.w, 0
  %i.y = icmp eq i8 %i.s, 46
  %or.cond = or i1 %i.y, %i.x
  br i1 %or.cond, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph.split
  %.not = icmp eq i32 %.02651, 0
  %.not35 = icmp eq ptr %.03149, %1
  %or.cond37 = select i1 %.not, i1 true, i1 %.not35
  br i1 %or.cond37, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = icmp eq ptr %.03149, %i.b
  br i1 %i.z, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %.03149, i64 1
  store i8 95, ptr %.03149, align 1, !tbaa !205
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.132 = phi ptr [ %i.aa, %bb.j ], [ %.03149, %bb.h ] ; 3 uses
  %i.ab = icmp eq ptr %.132, %i.b
  br i1 %i.ab, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.t
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !205
  %i.ae = getelementptr i8, ptr %.132, i64 1
  store i8 %i.ad, ptr %.132, align 1, !tbaa !205
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split
  %.233 = phi ptr [ %i.ae, %bb.l ], [ %.03149, %.lr.ph.split ] ; 2 uses
  %.127 = phi i32 [ 0, %bb.l ], [ 1, %.lr.ph.split ]
  %i.af = getelementptr i8, ptr %.02950, i64 1    ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !205 ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.m, %bb.g, %bb.a
  %.031.lcssa = phi ptr [ %1, %bb.a ], [ %.233.us, %bb.g ], [ %.233, %bb.m ]
  store i8 0, ptr %.031.lcssa, align 1, !tbaa !205
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.k, %bb.e, %bb.c, %._crit_edge
  %.2 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.k ], [ 0, %bb.i ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeUTF16(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @PyUnicode_DecodeUTF16Stateful(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeUTF32(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @PyUnicode_DecodeUTF32Stateful(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeASCII(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct._PyUnicodeWriter, align 8   ; 10 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %0, ptr %i.b, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.h = getelementptr i8, ptr %0, i64 %1         ; 7 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr null, ptr %i.d, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr null, ptr %i.e, align 8, !tbaa !194
  switch i64 %1, label %.split [
    i64 0, label %bb.au
    i64 1, label %bb.b
  ]

.split:                                           ; preds = %bb.a
  %i.i = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef 127)
  br label %PyUnicode_New.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %0, align 1, !tbaa !205     ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %get_latin1_char.exit, label %.split37

.split37:                                         ; preds = %bb.b
  %i.l = tail call ptr @PyObject_Malloc(i64 noundef 42) #33, !inline_history !388 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.split37
  %i.n = tail call ptr @PyErr_NoMemory() #33, !inline_history !388
  br label %PyUnicode_New.exit

bb.d:                                             ; preds = %.split37
  %i.o = getelementptr i8, ptr %i.l, i64 8
  store ptr @PyUnicode_Type, ptr %i.o, align 8, !tbaa !197
  %i.p = load i32, ptr @PyUnicode_Type, align 8, !tbaa !205 ; 2 uses
  %i.q = icmp ugt i32 %i.p, -1073741825
  br i1 %i.q, label %PyUnicode_New.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nuw i32 %i.p, 1
  store i32 %i.r, ptr @PyUnicode_Type, align 8, !tbaa !205
  br label %PyUnicode_New.exit.thread

PyUnicode_New.exit.thread:                        ; preds = %bb.d, %bb.e
  tail call void @_Py_NewReference(ptr noundef nonnull %i.l) #33, !inline_history !388
  %i.s = getelementptr i8, ptr %i.l, i64 16
  store i64 1, ptr %i.s, align 8, !tbaa !207
  %i.t = getelementptr i8, ptr %i.l, i64 24
  store i64 -1, ptr %i.t, align 8, !tbaa !217
  %i.u = getelementptr i8, ptr %i.l, i64 32       ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, -256
  %i.x = or disjoint i32 %i.w, 100                ; 2 uses
  store i32 %i.x, ptr %i.u, align 8
  %i.y = getelementptr i8, ptr %i.l, i64 41
  store i8 0, ptr %i.y, align 1, !tbaa !205
  br label %bb.f

get_latin1_char.exit:                             ; preds = %bb.b
  %i.z = zext nneg i8 %i.j to i64
  %i.aa = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.z
  br label %bb.au

PyUnicode_New.exit:                               ; preds = %bb.c, %.split
  %phi.call = phi ptr [ %i.i, %.split ], [ %i.n, %bb.c ] ; 3 uses
  %i.ab = icmp eq ptr %phi.call, null
  br i1 %i.ab, label %bb.au, label %PyUnicode_New.exit._crit_edge

PyUnicode_New.exit._crit_edge:                    ; preds = %PyUnicode_New.exit
  %.phi.trans.insert = getelementptr i8, ptr %phi.call, i64 32
  %.val.i.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.f:                                             ; preds = %PyUnicode_New.exit._crit_edge, %PyUnicode_New.exit.thread
  %.val.i = phi i32 [ %i.x, %PyUnicode_New.exit.thread ], [ %.val.i.pre, %PyUnicode_New.exit._crit_edge ] ; 2 uses
  %phi.call59 = phi ptr [ %i.l, %PyUnicode_New.exit.thread ], [ %phi.call, %PyUnicode_New.exit._crit_edge ] ; 4 uses
  %i.ac = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.ad, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %phi.call59, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %phi.call59, i64 56
  %.val4.i = load ptr, ptr %i.ae, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %.0.i.i, %bb.g ], [ %.val4.i, %bb.h ] ; 4 uses
  %4 = ptrtoaddr ptr %i.h to i64
  %i.af = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ag = ptrtoint ptr %.0.i to i64
  %i.ah = or i64 %i.ag, %i.af
  %i.ai = and i64 %i.ah, 7
  %or.cond.i = icmp eq i64 %i.ai, 0
  br i1 %or.cond.i, label %.preheader.i, label %bb.k

.preheader.i:                                     ; preds = %_PyUnicode_DATA.exit
  %i.aj = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.not3441.i = icmp ugt ptr %i.aj, %i.h
  br i1 %.not3441.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %i.ak = phi ptr [ %i.ao, %bb.i ], [ %i.aj, %.preheader.i ] ; 3 uses
  %.02743.i = phi ptr [ %i.ak, %bb.i ], [ %0, %.preheader.i ] ; 2 uses
  %.02842.i = phi ptr [ %i.an, %bb.i ], [ %.0.i, %.preheader.i ] ; 3 uses
  %i.al = load i64, ptr %.02743.i, align 8, !tbaa !193 ; 2 uses
  %i.am = and i64 %i.al, -9187201950435737472
  %.not35.i = icmp eq i64 %i.am, 0
  br i1 %.not35.i, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %.lr.ph.i
  store i64 %i.al, ptr %.02842.i, align 8, !tbaa !193
  %i.an = getelementptr i8, ptr %.02842.i, i64 8  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ak, i64 8      ; 2 uses
  %.not34.i = icmp ugt ptr %i.ao, %i.h
  br i1 %.not34.i, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.i, %.lr.ph.i, %.preheader.i
  %.028.lcssa.i = phi ptr [ %.0.i, %.preheader.i ], [ %i.an, %bb.i ], [ %.02842.i, %.lr.ph.i ]
  %.027.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.ak, %bb.i ], [ %.02743.i, %.lr.ph.i ] ; 5 uses
  %i.ap = icmp ult ptr %.027.lcssa.i, %i.h
  br i1 %i.ap, label %.lr.ph50.preheader.i, label %._crit_edge.i

.lr.ph50.preheader.i:                             ; preds = %.thread.i
  %.027.lcssa54.i = ptrtoaddr ptr %.027.lcssa.i to i64
  %i.aq = sub i64 %4, %.027.lcssa54.i
  %scevgep.i = getelementptr i8, ptr %.027.lcssa.i, i64 %i.aq
  br label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %bb.j, %.lr.ph50.preheader.i
  %.349.i = phi ptr [ %i.as, %bb.j ], [ %.027.lcssa.i, %.lr.ph50.preheader.i ] ; 3 uses
  %.33148.i = phi ptr [ %i.at, %bb.j ], [ %.028.lcssa.i, %.lr.ph50.preheader.i ] ; 2 uses
  %i.ar = load i8, ptr %.349.i, align 1, !tbaa !205 ; 2 uses
  %.not36.i = icmp sgt i8 %i.ar, -1
  br i1 %.not36.i, label %bb.j, label %._crit_edge.i

bb.j:                                             ; preds = %.lr.ph50.i
  %i.as = getelementptr i8, ptr %.349.i, i64 1    ; 2 uses
  %i.at = getelementptr i8, ptr %.33148.i, i64 1
  store i8 %i.ar, ptr %.33148.i, align 1, !tbaa !205
  %exitcond.not.i = icmp eq ptr %i.as, %i.h
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph50.i, !llvm.loop !389

._crit_edge.i:                                    ; preds = %bb.j, %.lr.ph50.i, %.thread.i
  %.3.lcssa.i = phi ptr [ %.027.lcssa.i, %.thread.i ], [ %scevgep.i, %bb.j ], [ %.349.i, %.lr.ph50.i ]
  %5 = ptrtoint ptr %.3.lcssa.i to i64
  %i.au = sub i64 %5, %i.af
  br label %ascii_decode.exit

bb.k:                                             ; preds = %_PyUnicode_DATA.exit
  %i.av = tail call fastcc i64 @find_first_nonascii(ptr noundef %0, ptr noundef %i.h) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i, ptr align 1 %0, i64 %i.av, i1 false)
  br label %ascii_decode.exit

ascii_decode.exit:                                ; preds = %._crit_edge.i, %bb.k
  %.0.i44 = phi i64 [ %i.av, %bb.k ], [ %i.au, %._crit_edge.i ] ; 3 uses
  %i.aw = icmp eq i64 %.0.i44, %1
  br i1 %i.aw, label %bb.au, label %bb.l

bb.l:                                             ; preds = %ascii_decode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @_PyUnicodeWriter_InitWithBuffer(ptr noundef nonnull %3, ptr noundef nonnull %phi.call59) #33
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  store i64 %.0.i44, ptr %i.ax, align 8, !tbaa !279
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.az = getelementptr i8, ptr %i.ay, i64 %.0.i44 ; 3 uses
  store ptr %i.az, ptr %i.a, align 8, !tbaa !355
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !280
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !355
  %i.bf = icmp ult ptr %i.az, %i.be
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l, %bb.ag
  %i.bg = phi ptr [ %i.cx, %bb.ag ], [ %i.az, %bb.l ] ; 6 uses
  %.02766 = phi ptr [ %.229, %bb.ag ], [ %i.bd, %bb.l ] ; 5 uses
  %.03065 = phi i32 [ %.232, %bb.ag ], [ %i.bb, %bb.l ] ; 3 uses
  %.03364 = phi i32 [ %.235, %bb.ag ], [ 0, %bb.l ] ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !205 ; 5 uses
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = icmp sgt i8 %i.bh, -1
  br i1 %i.bj, label %bb.m, label %bb.q

bb.m:                                             ; preds = %.lr.ph
  %i.bk = load i64, ptr %i.ax, align 8, !tbaa !279 ; 5 uses
  switch i32 %.03065, label %bb.p [
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr i8, ptr %.02766, i64 %i.bk
  store i8 %i.bh, ptr %i.bl, align 1, !tbaa !205
  %.pre = load i64, ptr %i.ax, align 8, !tbaa !279
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !355
  br label %PyUnicode_WRITE.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = zext nneg i8 %i.bh to i16
  %i.bn = getelementptr [2 x i8], ptr %.02766, i64 %i.bk
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit

bb.p:                                             ; preds = %bb.m
  %i.bo = getelementptr [4 x i8], ptr %.02766, i64 %i.bk
  store i32 %i.bi, ptr %i.bo, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit

PyUnicode_WRITE.exit:                             ; preds = %bb.n, %bb.o, %bb.p
  %i.bp = phi ptr [ %.pre68, %bb.n ], [ %i.bg, %bb.o ], [ %i.bg, %bb.p ]
  %i.bq = phi i64 [ %.pre, %bb.n ], [ %i.bk, %bb.o ], [ %i.bk, %bb.p ]
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.ax, align 8, !tbaa !279
  %i.bs = getelementptr i8, ptr %i.bp, i64 1      ; 2 uses
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !355
  br label %bb.ag, !llvm.loop !390

bb.q:                                             ; preds = %.lr.ph
  %i.bt = icmp eq i32 %.03364, 0
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = call i32 @_Py_GetErrorHandler(ptr noundef %2)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.134 = phi i32 [ %i.bu, %bb.r ], [ %.03364, %bb.q ] ; 4 uses
  switch i32 %.134, label %bb.ae [
    i32 3, label %bb.t
    i32 2, label %bb.t
    i32 4, label %bb.ad
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.bv = load i32, ptr %i.ba, align 8, !tbaa !280 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = call i32 @_PyUnicodeWriter_PrepareKindInternal(ptr noundef nonnull %3, i32 noundef 2) #33
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %bb.an, label %.critedgethread-pre-split

.critedgethread-pre-split:                        ; preds = %bb.u
  %.pr = load i32, ptr %i.ba, align 8, !tbaa !280
  br label %.critedge

.critedge:                                        ; preds = %.critedgethread-pre-split, %bb.t
  %i.bz = phi i32 [ %.pr, %.critedgethread-pre-split ], [ %i.bv, %bb.t ] ; 3 uses
  %i.ca = load ptr, ptr %i.bc, align 8, !tbaa !281 ; 7 uses
  %i.cb = icmp eq i32 %.134, 3
  %i.cc = load i64, ptr %i.ax, align 8, !tbaa !279 ; 6 uses
  br i1 %i.cb, label %bb.v, label %bb.z

bb.v:                                             ; preds = %.critedge
  switch i32 %i.bz, label %bb.y [
    i32 1, label %bb.w
    i32 2, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.cd = getelementptr i8, ptr %i.ca, i64 %i.cc
  store i8 -3, ptr %i.cd, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit45

bb.x:                                             ; preds = %bb.v
  %i.ce = getelementptr [2 x i8], ptr %i.ca, i64 %i.cc
  store i16 -3, ptr %i.ce, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit45

bb.y:                                             ; preds = %bb.v
  %i.cf = getelementptr [4 x i8], ptr %i.ca, i64 %i.cc
  store i32 65533, ptr %i.cf, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit45

bb.z:                                             ; preds = %.critedge
  %i.cg = or disjoint i32 %i.bi, 56320            ; 2 uses
  switch i32 %i.bz, label %bb.ac [
    i32 1, label %bb.aa
    i32 2, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ch = getelementptr i8, ptr %i.ca, i64 %i.cc
  store i8 %i.bh, ptr %i.ch, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit45

bb.ab:                                            ; preds = %bb.z
  %i.ci = trunc nuw i32 %i.cg to i16
  %i.cj = getelementptr [2 x i8], ptr %i.ca, i64 %i.cc
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit45

bb.ac:                                            ; preds = %bb.z
  %i.ck = getelementptr [4 x i8], ptr %i.ca, i64 %i.cc
  store i32 %i.cg, ptr %i.ck, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit45

PyUnicode_WRITE.exit45:                           ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.w
  %i.cl = load i64, ptr %i.ax, align 8, !tbaa !279
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.ax, align 8, !tbaa !279
  %i.cn = getelementptr i8, ptr %i.bg, i64 1      ; 2 uses
  store ptr %i.cn, ptr %i.a, align 8, !tbaa !355
  br label %bb.ag

bb.ad:                                            ; preds = %bb.s
  %i.co = getelementptr i8, ptr %i.bg, i64 1      ; 2 uses
  store ptr %i.co, ptr %i.a, align 8, !tbaa !355
  br label %bb.ag

bb.ae:                                            ; preds = %bb.s
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !355
  %i.cq = ptrtoint ptr %i.bg to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 2 uses
  store i64 %i.cs, ptr %i.f, align 8, !tbaa !193
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr %i.g, align 8, !tbaa !193
  %i.cu = call fastcc i32 @unicode_decode_call_errorhandler_writer(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.97, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.e, ptr noundef %i.a, ptr noundef nonnull %3)
  %.not = icmp eq i32 %i.cu, 0
  br i1 %.not, label %bb.af, label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.cv = load i32, ptr %i.ba, align 8, !tbaa !280
  %i.cw = load ptr, ptr %i.bc, align 8, !tbaa !281
  %.pre69 = load ptr, ptr %i.a, align 8, !tbaa !355
  br label %bb.ag

bb.ag:                                            ; preds = %PyUnicode_WRITE.exit45, %bb.ad, %bb.af, %PyUnicode_WRITE.exit
  %i.cx = phi ptr [ %i.bs, %PyUnicode_WRITE.exit ], [ %i.co, %bb.ad ], [ %i.cn, %PyUnicode_WRITE.exit45 ], [ %.pre69, %bb.af ] ; 2 uses
  %.235 = phi i32 [ %.03364, %PyUnicode_WRITE.exit ], [ 4, %bb.ad ], [ %.134, %PyUnicode_WRITE.exit45 ], [ %.134, %bb.af ]
  %.232 = phi i32 [ %.03065, %PyUnicode_WRITE.exit ], [ %.03065, %bb.ad ], [ %i.bz, %PyUnicode_WRITE.exit45 ], [ %i.cv, %bb.af ]
  %.229 = phi ptr [ %.02766, %PyUnicode_WRITE.exit ], [ %.02766, %bb.ad ], [ %i.ca, %PyUnicode_WRITE.exit45 ], [ %i.cw, %bb.af ]
  %i.cy = load ptr, ptr %i.c, align 8, !tbaa !355
  %i.cz = icmp ult ptr %i.cx, %i.cy
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ag, %bb.l
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !194 ; 4 uses
  %.not.i47 = icmp eq ptr %i.da, null
  br i1 %.not.i47, label %Py_XDECREF.exit, label %bb.ah

end_hunk_3
begin_hunk_4_@PyUnicode_AsEncodedString:bb.a
  br label %_PyUnicode_DATA.exit.i93

_PyUnicode_DATA.exit.i93:                         ; preds = %bb.an, %bb.am
  %.0.i.i94 = phi ptr [ %.0.i.i.i92, %bb.am ], [ %.val4.i.i96, %bb.an ]
  %i.dv = getelementptr i8, ptr %0, i64 16
  %.val8.i95 = load i64, ptr %i.dv, align 8, !tbaa !207
  %i.dw = call ptr @PyBytes_FromStringAndSize(ptr noundef %.0.i.i94, i64 noundef %.val8.i95) #33
  br label %Py_DECREF.exit76

bb.ao:                                            ; preds = %bb.ak
  %i.dx = call fastcc ptr @unicode_encode_ucs1(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 256)
  br label %Py_DECREF.exit76

_PyUnicode_AsASCIIString.exit:                    ; preds = %bb.h, %bb.j, %bb.m, %bb.n, %bb.p, %bb.q, %bb.ah, %bb.s, %bb.t
  %i.dy = call ptr @_PyCodec_EncodeText(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #33 ; 14 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %Py_DECREF.exit76, label %bb.ap

bb.ap:                                            ; preds = %_PyUnicode_AsASCIIString.exit
  %i.ea = getelementptr i8, ptr %i.dy, i64 8      ; 2 uses
  %.val79 = load ptr, ptr %i.ea, align 8, !tbaa !197 ; 3 uses
  %i.eb = getelementptr i8, ptr %.val79, i64 168
  %.val81 = load i64, ptr %i.eb, align 8, !tbaa !198
  %i.ec = and i64 %.val81, 134217728
  %.not65 = icmp eq i64 %i.ec, 0
  br i1 %.not65, label %bb.aq, label %Py_DECREF.exit76

bb.aq:                                            ; preds = %bb.ap
  %.not.i97 = icmp eq ptr %.val79, @PyByteArray_Type
  br i1 %.not.i97, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.aq
  %i.ed = call i32 @PyType_IsSubtype(ptr noundef %.val79, ptr noundef nonnull @PyByteArray_Type) #33
  %.not119 = icmp eq i32 %i.ed, 0
  br i1 %.not119, label %bb.ax, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.aq, %PyObject_TypeCheck.exit
  %i.ee = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !194
  %i.ef = call i32 (ptr, i64, ptr, ...) @PyErr_WarnFormat(ptr noundef %i.ee, i64 noundef 1, ptr noundef nonnull @.str.51, ptr noundef nonnull %1) #33
  %.not67 = icmp eq i32 %i.ef, 0
  br i1 %.not67, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %PyObject_TypeCheck.exit.thread
  %i.eg = load i32, ptr %i.dy, align 8, !tbaa !205 ; 2 uses
  %.not.i75 = icmp sgt i32 %i.eg, -1
  br i1 %.not.i75, label %bb.as, label %Py_DECREF.exit76

bb.as:                                            ; preds = %bb.ar
  %i.eh = add nsw i32 %i.eg, -1                   ; 2 uses
  store i32 %i.eh, ptr %i.dy, align 8, !tbaa !205
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.at, label %Py_DECREF.exit76

bb.at:                                            ; preds = %bb.as
  call void @_Py_Dealloc(ptr noundef nonnull %i.dy) #33
  br label %Py_DECREF.exit76

bb.au:                                            ; preds = %PyObject_TypeCheck.exit.thread
  %i.ej = getelementptr i8, ptr %i.dy, i64 40
  %.val84 = load ptr, ptr %i.ej, align 8, !tbaa !397
  %i.ek = getelementptr i8, ptr %i.dy, i64 16
  %.val85 = load i64, ptr %i.ek, align 8, !tbaa !380
  %i.el = call ptr @PyBytes_FromStringAndSize(ptr noundef %.val84, i64 noundef %.val85) #33 ; 3 uses
  %i.em = load i32, ptr %i.dy, align 8, !tbaa !205 ; 2 uses
  %.not.i73 = icmp sgt i32 %i.em, -1
  br i1 %.not.i73, label %bb.av, label %Py_DECREF.exit76

bb.av:                                            ; preds = %bb.au
  %i.en = add nsw i32 %i.em, -1                   ; 2 uses
  store i32 %i.en, ptr %i.dy, align 8, !tbaa !205
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.aw, label %Py_DECREF.exit76

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %i.dy) #33
  br label %Py_DECREF.exit76

bb.ax:                                            ; preds = %PyObject_TypeCheck.exit
  %i.ep = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %.val = load ptr, ptr %i.ea, align 8, !tbaa !197
  %i.eq = getelementptr i8, ptr %.val, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !378
  %i.es = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ep, ptr noundef nonnull @.str.52, ptr noundef nonnull %1, ptr noundef %i.er) #33 ; 0 uses
  %i.et = load i32, ptr %i.dy, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.et, -1
  br i1 %.not.i, label %bb.ay, label %Py_DECREF.exit76

bb.ay:                                            ; preds = %bb.ax
  %i.eu = add nsw i32 %i.et, -1                   ; 2 uses
  store i32 %i.eu, ptr %i.dy, align 8, !tbaa !205
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.az, label %Py_DECREF.exit76

bb.az:                                            ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %i.dy) #33
  br label %Py_DECREF.exit76

Py_DECREF.exit76:                                 ; preds = %bb.ao, %_PyUnicode_DATA.exit.i93, %bb.aj, %_PyUnicode_DATA.exit.i, %bb.y, %bb.ad, %bb.u, %bb.r, %bb.o, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap, %_PyUnicode_AsASCIIString.exit, %bb.c, %bb.e, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ %i.i, %bb.e ], [ null, %bb.c ], [ null, %_PyUnicode_AsASCIIString.exit ], [ %i.dy, %bb.ap ], [ %i.el, %bb.aw ], [ null, %bb.az ], [ null, %bb.at ], [ null, %bb.ar ], [ null, %bb.as ], [ %i.el, %bb.au ], [ %i.el, %bb.av ], [ null, %bb.ax ], [ null, %bb.ay ], [ null, %bb.aj ], [ %i.dx, %bb.ao ], [ %i.dw, %_PyUnicode_DATA.exit.i93 ], [ %i.ce, %bb.ad ], [ %i.cd, %_PyUnicode_DATA.exit.i ], [ null, %bb.y ], [ %i.bb, %bb.u ], [ %i.aw, %bb.r ], [ %i.ar, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.2
}

declare ptr @_PyInterpreterState_GetConfig(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc range(i32 1, 9) i32 @get_error_handler_wide(ptr nofree noundef readonly %0) unnamed_addr #13 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.168) #34
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.169) #34
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.170) #34
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.171) #34
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.172) #34
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.173) #34
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @wcscmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.174) #34
  %i.o = icmp eq i32 %i.n, 0
  %. = select i1 %i.o, i32 7, i32 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 6, %bb.g ], [ 1, %bb.a ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ %., %bb.h ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyUnicode_AsUTF8String(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @unicode_encode_utf8(ptr noundef %0, i32 noundef 0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyUnicode_EncodeUTF16(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val129 = load ptr, ptr %i.d, align 8, !tbaa !197
  %i.e = getelementptr i8, ptr %.val129, i64 168
  %.val132 = load i64, ptr %i.e, align 8, !tbaa !198
  %i.f = and i64 %.val132, 268435456
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %ucs1lib_utf16_encode.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = lshr i32 %i.i, 2
  %i.k = and i32 %i.j, 7                          ; 3 uses
  %i.l = and i32 %i.i, 32
  %.not.i137 = icmp eq i32 %i.l, 0
  br i1 %.not.i137, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i32 %i.i, 64
  %.not.i.i = icmp eq i32 %i.m, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.n, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %.0.i.i, %bb.d ], [ %.val4.i, %bb.e ] ; 18 uses
  %.0.i464 = ptrtoaddr ptr %.0.i to i64           ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 16
  %.val135 = load i64, ptr %i.o, align 8, !tbaa !207 ; 16 uses
  %i.p = icmp eq i32 %i.k, 4
  br i1 %i.p, label %bb.f, label %.loopexit243

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.q = getelementptr [4 x i8], ptr %.0.i, i64 %.val135 ; 2 uses
  %i.r = icmp ult ptr %.0.i, %i.q
  br i1 %i.r, label %.lr.ph.preheader, label %.loopexit243

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.s = shl i64 %.val135, 2
  %i.t = add i64 %i.s, %.0.i464
  %i.u = add i64 %.0.i464, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.u)
  %i.v = xor i64 %.0.i464, -1
  %i.w = add i64 %umax, %i.v                      ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 12
  br i1 %min.iters.check, label %.lr.ph.preheader657, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.y, 9223372036854775804      ; 3 uses
  %i.z = shl i64 %n.vec, 2
  %i.aa = getelementptr i8, ptr %.0.i, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi465 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.ab = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.i, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load466 = load <2 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.ad = icmp ugt <2 x i32> %wide.load, splat (i32 65535)
  %i.ae = icmp ugt <2 x i32> %wide.load466, splat (i32 65535)
  %i.af = zext <2 x i1> %i.ad to <2 x i64>
  %i.ag = zext <2 x i1> %i.ae to <2 x i64>
  %i.ah = add <2 x i64> %vec.phi, %i.af           ; 2 uses
  %i.ai = add <2 x i64> %vec.phi465, %i.ag        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !399

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit243, label %.lr.ph.preheader657

.lr.ph.preheader657:                              ; preds = %.lr.ph.preheader, %middle.block
  %.086277.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  %.096276.ph = phi ptr [ %.0.i, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader657, %.lr.ph
  %.086277 = phi i64 [ %spec.select, %.lr.ph ], [ %.086277.ph, %.lr.ph.preheader657 ]
  %.096276 = phi ptr [ %i.al, %.lr.ph ], [ %.096276.ph, %.lr.ph.preheader657 ] ; 2 uses
  %i.al = getelementptr i8, ptr %.096276, i64 4   ; 2 uses
  %i.am = load i32, ptr %.096276, align 4, !tbaa !7
  %i.an = icmp ugt i32 %i.am, 65535
  %i.ao = zext i1 %i.an to i64
  %spec.select = add i64 %.086277, %i.ao          ; 2 uses
  %i.ap = icmp ult ptr %i.al, %i.q
  br i1 %i.ap, label %.lr.ph, label %.loopexit243, !llvm.loop !400

.loopexit243:                                     ; preds = %.lr.ph, %middle.block, %bb.f, %_PyUnicode_DATA.exit
  %.288 = phi i64 [ 0, %_PyUnicode_DATA.exit ], [ 0, %bb.f ], [ %i.ak, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.aq = icmp eq i32 %2, 0                       ; 5 uses
  %.neg235 = select i1 %i.aq, i64 4611686018427387902, i64 4611686018427387903
  %i.ar = sub i64 %.neg235, %.288
  %i.as = icmp sgt i64 %.val135, %i.ar
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit243
  %i.at = tail call ptr @PyErr_NoMemory() #33
  br label %ucs1lib_utf16_encode.exit

bb.h:                                             ; preds = %.loopexit243
  %i.au = zext i1 %i.aq to i64
  %i.av = add i64 %.val135, %i.au
  %i.aw = add i64 %i.av, %.288
  %i.ax = icmp sgt i32 %2, 0                      ; 4 uses
  %i.ay = icmp eq i32 %i.k, 1
  %i.az = shl i64 %i.aw, 1                        ; 2 uses
  br i1 %i.ay, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ba = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.az) #33 ; 12 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %ucs1lib_utf16_encode.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr i8, ptr %i.ba, i64 32     ; 2 uses
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr i8, ptr %i.ba, i64 34
  store i16 -257, ptr %i.bc, align 2, !tbaa !208
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0219 = phi ptr [ %i.bd, %bb.k ], [ %i.bc, %bb.j ] ; 4 uses
  %i.be = icmp sgt i64 %.val135, 0
  br i1 %i.be, label %bb.m, label %ucs1lib_utf16_encode.exit

bb.m:                                             ; preds = %bb.l
  %3 = ptrtoaddr ptr %.0.i to i64                 ; 4 uses
  %i.bf = getelementptr i8, ptr %.0.i, i64 %.val135 ; 2 uses
  %i.bg = and i64 %.val135, 9223372036854775804
  %i.bh = getelementptr i8, ptr %.0.i, i64 %i.bg  ; 3 uses
  %i.bi = icmp ult ptr %.0.i, %i.bh               ; 2 uses
  br i1 %i.ax, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.bi, label %.lr.ph.i, label %.preheader47.i

.preheader47.loopexit.i:                          ; preds = %.lr.ph.i
  %.pre75.i = ptrtoaddr ptr %i.cr to i64
  br label %.preheader47.i

.preheader47.i:                                   ; preds = %.preheader47.loopexit.i, %bb.n
  %.0.lcssa71.pre-phi.i = phi i64 [ %.pre75.i, %.preheader47.loopexit.i ], [ %3, %bb.n ] ; 2 uses
  %.043.lcssa.i = phi ptr [ %i.cs, %.preheader47.loopexit.i ], [ %.0219, %bb.n ] ; 8 uses
  %.0.lcssa.i = phi ptr [ %i.cr, %.preheader47.loopexit.i ], [ %.0.i, %bb.n ] ; 9 uses
  %i.bj = icmp ult ptr %.0.lcssa.i, %i.bf
  br i1 %i.bj, label %iter.check559, label %ucs1lib_utf16_encode.exit

iter.check559:                                    ; preds = %.preheader47.i
  %i.bk = add i64 %.val135, %3                    ; 2 uses
  %i.bl = sub i64 %i.bk, %.0.lcssa71.pre-phi.i    ; 8 uses
  %scevgep.i = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bl ; 2 uses
  %min.iters.check541 = icmp ult i64 %i.bl, 4
  br i1 %min.iters.check541, label %.lr.ph54.i.preheader, label %vector.memcheck535

vector.memcheck535:                               ; preds = %iter.check559
  %i.bm = sub i64 %i.bk, %.0.lcssa71.pre-phi.i
  %i.bn = shl i64 %i.bm, 1
  %scevgep536 = getelementptr i8, ptr %.043.lcssa.i, i64 %i.bn
  %bound0537 = icmp ult ptr %.043.lcssa.i, %scevgep.i
  %bound1538 = icmp ult ptr %.0.lcssa.i, %scevgep536
  %found.conflict539 = and i1 %bound0537, %bound1538
  br i1 %found.conflict539, label %.lr.ph54.i.preheader, label %vector.main.loop.iter.check542

vector.main.loop.iter.check542:                   ; preds = %vector.memcheck535
  %min.iters.check543 = icmp ult i64 %i.bl, 16
  br i1 %min.iters.check543, label %vec.epilog.ph563, label %vector.ph544

vector.ph544:                                     ; preds = %vector.main.loop.iter.check542
  %n.mod.vf545 = and i64 %i.bl, 12
  %n.vec546 = and i64 %i.bl, -16                  ; 5 uses
  %i.bo = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec546
  %i.bp = shl i64 %n.vec546, 1
  %i.bq = getelementptr i8, ptr %.043.lcssa.i, i64 %i.bp
  br label %vector.body547

vector.body547:                                   ; preds = %vector.body547, %vector.ph544
  %index548 = phi i64 [ 0, %vector.ph544 ], [ %index.next553, %vector.body547 ] ; 3 uses
  %next.gep549 = getelementptr i8, ptr %.0.lcssa.i, i64 %index548 ; 2 uses
  %i.br = shl i64 %index548, 1
  %next.gep550 = getelementptr i8, ptr %.043.lcssa.i, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep549, i64 8
  %wide.load551 = load <8 x i8>, ptr %next.gep549, align 1, !tbaa !205, !alias.scope !401
  %wide.load552 = load <8 x i8>, ptr %i.bs, align 1, !tbaa !205, !alias.scope !401
  %i.bt = zext <8 x i8> %wide.load551 to <8 x i16>
  %i.bu = zext <8 x i8> %wide.load552 to <8 x i16>
  %i.bv = getelementptr i8, ptr %next.gep550, i64 16
  store <8 x i16> %i.bt, ptr %next.gep550, align 2, !tbaa !208, !alias.scope !404, !noalias !401
  store <8 x i16> %i.bu, ptr %i.bv, align 2, !tbaa !208, !alias.scope !404, !noalias !401
  %index.next553 = add nuw i64 %index548, 16      ; 2 uses
  %i.bw = icmp eq i64 %index.next553, %n.vec546
  br i1 %i.bw, label %middle.block554, label %vector.body547, !llvm.loop !406

middle.block554:                                  ; preds = %vector.body547
  %cmp.n555 = icmp eq i64 %i.bl, %n.vec546
  br i1 %cmp.n555, label %ucs1lib_utf16_encode.exit, label %vec.epilog.iter.check561

vec.epilog.iter.check561:                         ; preds = %middle.block554
  %min.epilog.iters.check562 = icmp eq i64 %n.mod.vf545, 0
  br i1 %min.epilog.iters.check562, label %.lr.ph54.i.preheader, label %vec.epilog.ph563, !prof !228

vec.epilog.ph563:                                 ; preds = %vector.main.loop.iter.check542, %vec.epilog.iter.check561
  %vec.epilog.resume.val556 = phi i64 [ %n.vec546, %vec.epilog.iter.check561 ], [ 0, %vector.main.loop.iter.check542 ]
  %n.vec565 = and i64 %i.bl, -4                   ; 4 uses
  %i.bx = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec565
  %i.by = shl i64 %n.vec565, 1
  %i.bz = getelementptr i8, ptr %.043.lcssa.i, i64 %i.by
  br label %vec.epilog.vector.body566

vec.epilog.vector.body566:                        ; preds = %vec.epilog.vector.body566, %vec.epilog.ph563
  %index567 = phi i64 [ %vec.epilog.resume.val556, %vec.epilog.ph563 ], [ %index.next571, %vec.epilog.vector.body566 ] ; 3 uses
  %next.gep568 = getelementptr i8, ptr %.0.lcssa.i, i64 %index567
  %i.ca = shl i64 %index567, 1
  %next.gep569 = getelementptr i8, ptr %.043.lcssa.i, i64 %i.ca
  %wide.load570 = load <4 x i8>, ptr %next.gep568, align 1, !tbaa !205, !alias.scope !401
  %i.cb = zext <4 x i8> %wide.load570 to <4 x i16>
  store <4 x i16> %i.cb, ptr %next.gep569, align 2, !tbaa !208, !alias.scope !404, !noalias !401
  %index.next571 = add nuw i64 %index567, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next571, %n.vec565
  br i1 %i.cc, label %vec.epilog.middle.block572, label %vec.epilog.vector.body566, !llvm.loop !407

vec.epilog.middle.block572:                       ; preds = %vec.epilog.vector.body566
  %cmp.n573 = icmp eq i64 %i.bl, %n.vec565
  br i1 %cmp.n573, label %ucs1lib_utf16_encode.exit, label %.lr.ph54.i.preheader

.lr.ph54.i.preheader:                             ; preds = %vector.memcheck535, %iter.check559, %vec.epilog.iter.check561, %vec.epilog.middle.block572
  %.153.i.ph = phi ptr [ %.0.lcssa.i, %iter.check559 ], [ %.0.lcssa.i, %vector.memcheck535 ], [ %i.bo, %vec.epilog.iter.check561 ], [ %i.bx, %vec.epilog.middle.block572 ]
  %.14452.i.ph = phi ptr [ %.043.lcssa.i, %iter.check559 ], [ %.043.lcssa.i, %vector.memcheck535 ], [ %i.bq, %vec.epilog.iter.check561 ], [ %i.bz, %vec.epilog.middle.block572 ]
  br label %.lr.ph54.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.050.i = phi ptr [ %i.cr, %.lr.ph.i ], [ %.0.i, %bb.n ] ; 5 uses
  %.04349.i = phi ptr [ %i.cs, %.lr.ph.i ], [ %.0219, %bb.n ] ; 5 uses
  %i.cd = load i8, ptr %.050.i, align 1, !tbaa !205
  %i.ce = zext i8 %i.cd to i16
  store i16 %i.ce, ptr %.04349.i, align 2, !tbaa !208
  %i.cf = getelementptr i8, ptr %.050.i, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !205
  %i.ch = zext i8 %i.cg to i16
  %i.ci = getelementptr i8, ptr %.04349.i, i64 2
  store i16 %i.ch, ptr %i.ci, align 2, !tbaa !208
  %i.cj = getelementptr i8, ptr %.050.i, i64 2
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !205
  %i.cl = zext i8 %i.ck to i16
  %i.cm = getelementptr i8, ptr %.04349.i, i64 4
  store i16 %i.cl, ptr %i.cm, align 2, !tbaa !208
  %i.cn = getelementptr i8, ptr %.050.i, i64 3
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !205
  %i.cp = zext i8 %i.co to i16
  %i.cq = getelementptr i8, ptr %.04349.i, i64 6
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !208
  %i.cr = getelementptr i8, ptr %.050.i, i64 4    ; 4 uses
  %i.cs = getelementptr i8, ptr %.04349.i, i64 8  ; 2 uses
  %i.ct = icmp ult ptr %i.cr, %i.bh
  br i1 %i.ct, label %.lr.ph.i, label %.preheader47.loopexit.i, !llvm.loop !408

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader, %.lr.ph54.i
  %.153.i = phi ptr [ %i.cu, %.lr.ph54.i ], [ %.153.i.ph, %.lr.ph54.i.preheader ] ; 2 uses
  %.14452.i = phi ptr [ %i.cx, %.lr.ph54.i ], [ %.14452.i.ph, %.lr.ph54.i.preheader ] ; 2 uses
  %i.cu = getelementptr i8, ptr %.153.i, i64 1    ; 2 uses
  %i.cv = load i8, ptr %.153.i, align 1, !tbaa !205
  %i.cw = zext i8 %i.cv to i16
  %i.cx = getelementptr i8, ptr %.14452.i, i64 2
  store i16 %i.cw, ptr %.14452.i, align 2, !tbaa !208
  %exitcond.not.i = icmp eq ptr %i.cu, %scevgep.i
  br i1 %exitcond.not.i, label %ucs1lib_utf16_encode.exit, label %.lr.ph54.i, !llvm.loop !409

bb.o:                                             ; preds = %bb.m
  br i1 %i.bi, label %.lr.ph58.i, label %.preheader.i

.preheader.loopexit.i:                            ; preds = %.lr.ph58.i
  %.pre.i = ptrtoaddr ptr %i.en to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.o
  %.2.lcssa72.pre-phi.i = phi i64 [ %.pre.i, %.preheader.loopexit.i ], [ %3, %bb.o ] ; 2 uses
  %.245.lcssa.i = phi ptr [ %i.eo, %.preheader.loopexit.i ], [ %.0219, %bb.o ] ; 8 uses
  %.2.lcssa.i = phi ptr [ %i.en, %.preheader.loopexit.i ], [ %.0.i, %bb.o ] ; 9 uses
  %i.cy = icmp ult ptr %.2.lcssa.i, %i.bf
  br i1 %i.cy, label %iter.check600, label %ucs1lib_utf16_encode.exit

iter.check600:                                    ; preds = %.preheader.i
  %i.cz = add i64 %.val135, %3                    ; 2 uses
  %i.da = sub i64 %i.cz, %.2.lcssa72.pre-phi.i    ; 8 uses
  %scevgep73.i = getelementptr i8, ptr %.2.lcssa.i, i64 %i.da ; 2 uses
  %min.iters.check582 = icmp ult i64 %i.da, 4
  br i1 %min.iters.check582, label %.lr.ph63.i.preheader, label %vector.memcheck576

vector.memcheck576:                               ; preds = %iter.check600
  %i.db = sub i64 %i.cz, %.2.lcssa72.pre-phi.i
  %i.dc = shl i64 %i.db, 1
  %scevgep577 = getelementptr i8, ptr %.245.lcssa.i, i64 %i.dc
  %bound0578 = icmp ult ptr %.245.lcssa.i, %scevgep73.i
  %bound1579 = icmp ult ptr %.2.lcssa.i, %scevgep577
  %found.conflict580 = and i1 %bound0578, %bound1579
  br i1 %found.conflict580, label %.lr.ph63.i.preheader, label %vector.main.loop.iter.check583

vector.main.loop.iter.check583:                   ; preds = %vector.memcheck576
  %min.iters.check584 = icmp ult i64 %i.da, 16
  br i1 %min.iters.check584, label %vec.epilog.ph604, label %vector.ph585

vector.ph585:                                     ; preds = %vector.main.loop.iter.check583
  %n.mod.vf586 = and i64 %i.da, 12
  %n.vec587 = and i64 %i.da, -16                  ; 5 uses
  %i.dd = getelementptr i8, ptr %.2.lcssa.i, i64 %n.vec587
  %i.de = shl i64 %n.vec587, 1
  %i.df = getelementptr i8, ptr %.245.lcssa.i, i64 %i.de
  br label %vector.body588

vector.body588:                                   ; preds = %vector.body588, %vector.ph585
  %index589 = phi i64 [ 0, %vector.ph585 ], [ %index.next594, %vector.body588 ] ; 3 uses
  %next.gep590 = getelementptr i8, ptr %.2.lcssa.i, i64 %index589 ; 2 uses
  %i.dg = shl i64 %index589, 1
  %next.gep591 = getelementptr i8, ptr %.245.lcssa.i, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep590, i64 8
  %wide.load592 = load <8 x i8>, ptr %next.gep590, align 1, !tbaa !205, !alias.scope !410
  %wide.load593 = load <8 x i8>, ptr %i.dh, align 1, !tbaa !205, !alias.scope !410
  %i.di = zext <8 x i8> %wide.load592 to <8 x i16>
  %i.dj = zext <8 x i8> %wide.load593 to <8 x i16>
  %i.dk = shl nuw <8 x i16> %i.di, splat (i16 8)
  %i.dl = shl nuw <8 x i16> %i.dj, splat (i16 8)
  %i.dm = getelementptr i8, ptr %next.gep591, i64 16
  store <8 x i16> %i.dk, ptr %next.gep591, align 2, !tbaa !208, !alias.scope !413, !noalias !410
  store <8 x i16> %i.dl, ptr %i.dm, align 2, !tbaa !208, !alias.scope !413, !noalias !410
  %index.next594 = add nuw i64 %index589, 16      ; 2 uses
  %i.dn = icmp eq i64 %index.next594, %n.vec587
  br i1 %i.dn, label %middle.block595, label %vector.body588, !llvm.loop !415

middle.block595:                                  ; preds = %vector.body588
  %cmp.n596 = icmp eq i64 %i.da, %n.vec587
  br i1 %cmp.n596, label %ucs1lib_utf16_encode.exit, label %vec.epilog.iter.check602

vec.epilog.iter.check602:                         ; preds = %middle.block595
  %min.epilog.iters.check603 = icmp eq i64 %n.mod.vf586, 0
  br i1 %min.epilog.iters.check603, label %.lr.ph63.i.preheader, label %vec.epilog.ph604, !prof !228

vec.epilog.ph604:                                 ; preds = %vector.main.loop.iter.check583, %vec.epilog.iter.check602
  %vec.epilog.resume.val597 = phi i64 [ %n.vec587, %vec.epilog.iter.check602 ], [ 0, %vector.main.loop.iter.check583 ]
  %n.vec606 = and i64 %i.da, -4                   ; 4 uses
  %i.do = getelementptr i8, ptr %.2.lcssa.i, i64 %n.vec606
  %i.dp = shl i64 %n.vec606, 1
  %i.dq = getelementptr i8, ptr %.245.lcssa.i, i64 %i.dp
  br label %vec.epilog.vector.body607

vec.epilog.vector.body607:                        ; preds = %vec.epilog.vector.body607, %vec.epilog.ph604
  %index608 = phi i64 [ %vec.epilog.resume.val597, %vec.epilog.ph604 ], [ %index.next612, %vec.epilog.vector.body607 ] ; 3 uses
  %next.gep609 = getelementptr i8, ptr %.2.lcssa.i, i64 %index608
  %i.dr = shl i64 %index608, 1
  %next.gep610 = getelementptr i8, ptr %.245.lcssa.i, i64 %i.dr
  %wide.load611 = load <4 x i8>, ptr %next.gep609, align 1, !tbaa !205, !alias.scope !410
  %i.ds = zext <4 x i8> %wide.load611 to <4 x i16>
  %i.dt = shl nuw <4 x i16> %i.ds, splat (i16 8)
  store <4 x i16> %i.dt, ptr %next.gep610, align 2, !tbaa !208, !alias.scope !413, !noalias !410
  %index.next612 = add nuw i64 %index608, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next612, %n.vec606
  br i1 %i.du, label %vec.epilog.middle.block613, label %vec.epilog.vector.body607, !llvm.loop !416

vec.epilog.middle.block613:                       ; preds = %vec.epilog.vector.body607
  %cmp.n614 = icmp eq i64 %i.da, %n.vec606
  br i1 %cmp.n614, label %ucs1lib_utf16_encode.exit, label %.lr.ph63.i.preheader

.lr.ph63.i.preheader:                             ; preds = %vector.memcheck576, %iter.check600, %vec.epilog.iter.check602, %vec.epilog.middle.block613
  %.362.i.ph = phi ptr [ %.2.lcssa.i, %iter.check600 ], [ %.2.lcssa.i, %vector.memcheck576 ], [ %i.dd, %vec.epilog.iter.check602 ], [ %i.do, %vec.epilog.middle.block613 ]
  %.34661.i.ph = phi ptr [ %.245.lcssa.i, %iter.check600 ], [ %.245.lcssa.i, %vector.memcheck576 ], [ %i.df, %vec.epilog.iter.check602 ], [ %i.dq, %vec.epilog.middle.block613 ]
  br label %.lr.ph63.i

.lr.ph58.i:                                       ; preds = %bb.o, %.lr.ph58.i
  %.257.i = phi ptr [ %i.en, %.lr.ph58.i ], [ %.0.i, %bb.o ] ; 5 uses
  %.24556.i = phi ptr [ %i.eo, %.lr.ph58.i ], [ %.0219, %bb.o ] ; 5 uses
  %i.dv = load i8, ptr %.257.i, align 1, !tbaa !205
  %i.dw = zext i8 %i.dv to i16
  %i.dx = shl nuw i16 %i.dw, 8
  store i16 %i.dx, ptr %.24556.i, align 2, !tbaa !208
  %i.dy = getelementptr i8, ptr %.257.i, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !205
  %i.ea = zext i8 %i.dz to i16
  %i.eb = shl nuw i16 %i.ea, 8
  %i.ec = getelementptr i8, ptr %.24556.i, i64 2
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !208
  %i.ed = getelementptr i8, ptr %.257.i, i64 2
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !205
  %i.ef = zext i8 %i.ee to i16
  %i.eg = shl nuw i16 %i.ef, 8
  %i.eh = getelementptr i8, ptr %.24556.i, i64 4
  store i16 %i.eg, ptr %i.eh, align 2, !tbaa !208
  %i.ei = getelementptr i8, ptr %.257.i, i64 3
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !205
  %i.ek = zext i8 %i.ej to i16
  %i.el = shl nuw i16 %i.ek, 8
  %i.em = getelementptr i8, ptr %.24556.i, i64 6
  store i16 %i.el, ptr %i.em, align 2, !tbaa !208
  %i.en = getelementptr i8, ptr %.257.i, i64 4    ; 4 uses
  %i.eo = getelementptr i8, ptr %.24556.i, i64 8  ; 2 uses
  %i.ep = icmp ult ptr %i.en, %i.bh
  br i1 %i.ep, label %.lr.ph58.i, label %.preheader.loopexit.i, !llvm.loop !417

.lr.ph63.i:                                       ; preds = %.lr.ph63.i.preheader, %.lr.ph63.i
  %.362.i = phi ptr [ %i.eq, %.lr.ph63.i ], [ %.362.i.ph, %.lr.ph63.i.preheader ] ; 2 uses
  %.34661.i = phi ptr [ %i.eu, %.lr.ph63.i ], [ %.34661.i.ph, %.lr.ph63.i.preheader ] ; 2 uses
  %i.eq = getelementptr i8, ptr %.362.i, i64 1    ; 2 uses
  %i.er = load i8, ptr %.362.i, align 1, !tbaa !205
  %i.es = zext i8 %i.er to i16
  %i.et = shl nuw i16 %i.es, 8
  %i.eu = getelementptr i8, ptr %.34661.i, i64 2
  store i16 %i.et, ptr %.34661.i, align 2, !tbaa !208
  %exitcond74.not.i = icmp eq ptr %i.eq, %scevgep73.i
  br i1 %exitcond74.not.i, label %ucs1lib_utf16_encode.exit, label %.lr.ph63.i, !llvm.loop !418

bb.p:                                             ; preds = %bb.h
  %i.ev = tail call ptr @PyBytesWriter_Create(i64 noundef %i.az) #33 ; 6 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %ucs1lib_utf16_encode.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ex = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.ev) #33 ; 3 uses
  br i1 %i.aq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ey = getelementptr i8, ptr %i.ex, i64 2
  store i16 -257, ptr %i.ex, align 2, !tbaa !208
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi ptr [ %i.ey, %bb.r ], [ %i.ex, %bb.q ] ; 2 uses
  %i.ez = icmp eq i64 %.val135, 0
  br i1 %i.ez, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fa = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.ev) #33
  br label %ucs1lib_utf16_encode.exit

bb.u:                                             ; preds = %bb.s
  %i.fb = icmp slt i32 %2, 0
  %.str.82..str.79 = select i1 %i.aq, ptr @.str.82, ptr @.str.79
  %.095 = select i1 %i.fb, ptr @.str.78, ptr %.str.82..str.79 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr null, ptr %i.a, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr null, ptr %i.b, align 8, !tbaa !194
  %i.fc = icmp sgt i64 %.val135, 0
  br i1 %i.fc, label %.lr.ph280, label %Py_XDECREF.exit199

.lr.ph280:                                        ; preds = %bb.u
  %i.fd = icmp eq i32 %i.k, 2
  %i.fe = getelementptr [4 x i8], ptr %.0.i, i64 %.val135 ; 4 uses
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = getelementptr [2 x i8], ptr %.0.i, i64 %.val135 ; 5 uses
  %i.fh = ptrtoint ptr %i.fg to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph280, %raise_encode_exception.exit
  %.091279 = phi i64 [ 0, %.lr.ph280 ], [ %i.kb, %raise_encode_exception.exit ] ; 4 uses
  %.1216278 = phi ptr [ %.0, %.lr.ph280 ], [ %.4, %raise_encode_exception.exit ] ; 8 uses
  %i.fi = sub i64 %.val135, %.091279              ; 11 uses
  br i1 %i.fd, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.fj = getelementptr [2 x i8], ptr %.0.i, i64 %.091279 ; 6 uses
  %i.fk = and i64 %i.fi, -4
  %i.fl = getelementptr [2 x i8], ptr %i.fj, i64 %i.fk ; 3 uses
  %i.fm = icmp ult ptr %i.fj, %i.fl               ; 2 uses
  br i1 %i.ax, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.fm, label %.lr.ph.i141, label %._crit_edge.i

.lr.ph.i141:                                      ; preds = %bb.x, %bb.y
  %.077114.i = phi ptr [ %i.gb, %bb.y ], [ %i.fj, %bb.x ] ; 7 uses
  %.082113.i = phi ptr [ %i.gc, %bb.y ], [ %.1216278, %bb.x ] ; 6 uses
  %i.fn = load <4 x i16>, ptr %.077114.i, align 2, !tbaa !208
  %i.fo = xor <4 x i16> %i.fn, splat (i16 -10240)
  %i.fp = call i16 @llvm.vector.reduce.and.v4i16(<4 x i16> %i.fo)
end_hunk_4
begin_hunk_5_@_PyUnicode_EncodeUTF16:bb.a
bb.ag:                                            ; preds = %bb.af
  %i.hw = icmp ugt i32 %i.hr, 65535
  br i1 %i.hw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hx = lshr i32 %i.hr, 10
  %i.hy = trunc i32 %i.hx to i16
  %i.hz = add i16 %i.hy, -10304
  store i16 %i.hz, ptr %.05174.i, align 2, !tbaa !208
  %i.ia = trunc i32 %i.hr to i16
  %i.ib = and i16 %i.ia, 1023
  %i.ic = or disjoint i16 %i.ib, -9216
  %i.id = getelementptr i8, ptr %.05174.i, i64 2
  store i16 %i.ic, ptr %i.id, align 2, !tbaa !208
  %i.ie = getelementptr i8, ptr %.05174.i, i64 4
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.if = trunc nuw i32 %i.hr to i16
  %i.ig = getelementptr i8, ptr %.05174.i, i64 2
  store i16 %i.if, ptr %.05174.i, align 2, !tbaa !208
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ae
  %.253.i = phi ptr [ %i.ig, %bb.ai ], [ %i.hu, %bb.ae ], [ %i.ie, %bb.ah ] ; 2 uses
  %i.ih = icmp ult ptr %i.hq, %i.fe
  br i1 %i.ih, label %.lr.ph.i146, label %ucs2lib_utf16_encode.exit

.lr.ph78.i:                                       ; preds = %.preheader.i149, %bb.ap
  %.177.i = phi ptr [ %i.ii, %bb.ap ], [ %i.ho, %.preheader.i149 ] ; 2 uses
  %.376.i = phi ptr [ %.5.i, %bb.ap ], [ %.1216278, %.preheader.i149 ] ; 7 uses
  %i.ii = getelementptr i8, ptr %.177.i, i64 4    ; 3 uses
  %i.ij = load i32, ptr %.177.i, align 4, !tbaa !7 ; 9 uses
  %i.ik = icmp ult i32 %i.ij, 55296
  br i1 %i.ik, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph78.i
  %i.il = shl nuw nsw i32 %i.ij, 8
  %i.im = lshr i32 %i.ij, 8
  %i.in = or disjoint i32 %i.il, %i.im
  %i.io = trunc i32 %i.in to i16
  %i.ip = getelementptr i8, ptr %.376.i, i64 2
  store i16 %i.io, ptr %.376.i, align 2, !tbaa !208
  br label %bb.ap

bb.al:                                            ; preds = %.lr.ph78.i
  %i.iq = icmp ult i32 %i.ij, 57344
  br i1 %i.iq, label %.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ir = icmp ugt i32 %i.ij, 65535
  br i1 %i.ir, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.is = lshr i32 %i.ij, 10
  %i.it = and i32 %i.ij, 1023
  %i.iu = add nuw nsw i32 %i.is, 55232
  %i.iv = insertelement <2 x i32> poison, i32 %i.iu, i64 0
  %i.iw = insertelement <2 x i32> %i.iv, i32 %i.it, i64 1 ; 2 uses
  %i.ix = shl nuw nsw <2 x i32> %i.iw, splat (i32 8)
  %i.iy = lshr <2 x i32> %i.iw, splat (i32 8)
  %i.iz = and <2 x i32> %i.iy, <i32 255, i32 -1>
  %i.ja = or disjoint <2 x i32> %i.iz, %i.ix
  %i.jb = trunc <2 x i32> %i.ja to <2 x i16>
  %i.jc = or <2 x i16> %i.jb, <i16 0, i16 220>
  store <2 x i16> %i.jc, ptr %.376.i, align 2, !tbaa !208
  %i.jd = getelementptr i8, ptr %.376.i, i64 4
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.je = shl nuw nsw i32 %i.ij, 8
  %i.jf = lshr i32 %i.ij, 8
  %i.jg = or disjoint i32 %i.je, %i.jf
  %i.jh = trunc i32 %i.jg to i16
  %i.ji = getelementptr i8, ptr %.376.i, i64 2
  store i16 %i.jh, ptr %.376.i, align 2, !tbaa !208
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.ak
  %.5.i = phi ptr [ %i.ji, %bb.ao ], [ %i.ip, %bb.ak ], [ %i.jd, %bb.an ] ; 2 uses
  %i.jj = icmp ult ptr %i.ii, %i.fe
  br i1 %i.jj, label %.lr.ph78.i, label %ucs2lib_utf16_encode.exit

.thread.i:                                        ; preds = %bb.af, %bb.al
  %.7.i147 = phi ptr [ %.376.i, %bb.al ], [ %.05174.i, %bb.af ]
  %.2.i = phi ptr [ %i.ii, %bb.al ], [ %i.hq, %bb.af ]
  %i.jk = ptrtoint ptr %.2.i to i64
  %i.jl = sub i64 %i.ff, %i.jk
  %i.jm = ashr exact i64 %i.jl, 2
  %.neg.i148 = xor i64 %i.jm, -1
  %i.jn = add i64 %i.fi, %.neg.i148
  br label %ucs2lib_utf16_encode.exit

ucs2lib_utf16_encode.exit:                        ; preds = %bb.aj, %bb.ap, %bb.z, %bb.ac, %.thread.i, %.preheader.i149, %.preheader68.i, %.loopexit.i, %._crit_edge128.i, %._crit_edge.i
  %.2217 = phi ptr [ %.7.i, %bb.ac ], [ %.11.i, %.loopexit.i ], [ %.5.i, %bb.ap ], [ %.587.lcssa.i, %._crit_edge128.i ], [ %.082.lcssa.i, %._crit_edge.i ], [ %.7.i147, %.thread.i ], [ %.284.i, %bb.z ], [ %.1216278, %.preheader.i149 ], [ %.1216278, %.preheader68.i ], [ %.253.i, %bb.aj ] ; 3 uses
  %.pn = phi i64 [ %i.fi, %bb.ac ], [ %i.hn, %.loopexit.i ], [ %i.fi, %bb.ap ], [ %i.fi, %._crit_edge128.i ], [ %i.fi, %._crit_edge.i ], [ %i.jn, %.thread.i ], [ %i.fi, %bb.z ], [ %i.fi, %.preheader.i149 ], [ %i.fi, %.preheader68.i ], [ %i.fi, %bb.aj ]
  %.192 = add i64 %.pn, %.091279                  ; 6 uses
  %i.jo = icmp eq i64 %.192, %.val135
  br i1 %i.jo, label %._crit_edge, label %bb.aq

bb.aq:                                            ; preds = %ucs2lib_utf16_encode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.jp = add i64 %.192, 1                        ; 3 uses
  %i.jq = call fastcc ptr @unicode_encode_call_errorhandler(ptr noundef %1, ptr noundef %i.a, ptr noundef nonnull %.095, ptr noundef nonnull @.str.77, ptr noundef %0, ptr noundef %i.b, i64 noundef %.192, i64 noundef %i.jp, ptr noundef %i.c) ; 13 uses
  %.not123 = icmp eq ptr %i.jq, null
  br i1 %.not123, label %bb.bo, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jr = getelementptr i8, ptr %i.jq, i64 8      ; 2 uses
  %.val128 = load ptr, ptr %i.jr, align 8, !tbaa !197
  %i.js = getelementptr i8, ptr %.val128, i64 168
  %.val131 = load i64, ptr %i.js, align 8, !tbaa !198 ; 2 uses
  %i.jt = and i64 %.val131, 134217728
  %.not124 = icmp eq i64 %i.jt, 0
  %i.ju = getelementptr i8, ptr %i.jq, i64 16
  %.val134 = load i64, ptr %i.ju, align 8, !tbaa !193 ; 9 uses
  br i1 %.not124, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jv = and i64 %.val134, 1
  %.not126 = icmp eq i64 %i.jv, 0
  br i1 %.not126, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call fastcc void @make_encode_exception(ptr noundef nonnull %i.b, ptr noundef nonnull %.095, ptr noundef %0, i64 noundef %.192, i64 noundef %i.jp, ptr noundef nonnull @.str.77)
  %i.jw = load ptr, ptr %i.b, align 8, !tbaa !194 ; 2 uses
  %.not.i150 = icmp eq ptr %i.jw, null
  br i1 %.not.i150, label %.loopexit, label %.loopexit.sink.split

bb.au:                                            ; preds = %bb.as
  %i.jx = ashr exact i64 %.val134, 1
  br label %bb.ax

bb.av:                                            ; preds = %bb.ar
  %i.jy = getelementptr i8, ptr %i.jq, i64 32
  %.val133 = load i32, ptr %i.jy, align 8
  %i.jz = and i32 %.val133, 64
  %.not125 = icmp eq i32 %i.jz, 0
  br i1 %.not125, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call fastcc void @make_encode_exception(ptr noundef nonnull %i.b, ptr noundef nonnull %.095, ptr noundef %0, i64 noundef %.192, i64 noundef %i.jp, ptr noundef nonnull @.str.77)
  %i.ka = load ptr, ptr %i.b, align 8, !tbaa !194 ; 2 uses
  %.not.i151 = icmp eq ptr %i.ka, null
  br i1 %.not.i151, label %.loopexit, label %.loopexit.sink.split

bb.ax:                                            ; preds = %bb.av, %bb.au
  %.089 = phi i64 [ %i.jx, %bb.au ], [ %.val134, %bb.av ]
  %i.kb = load i64, ptr %i.c, align 8, !tbaa !193 ; 3 uses
  %i.kc = sub i64 %.192, %i.kb
  %i.kd = add i64 %i.kc, %.089                    ; 2 uses
  %i.ke = icmp sgt i64 %i.kd, 0
  br i1 %i.ke, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.kf = shl nuw i64 %i.kd, 1
  %i.kg = call ptr @PyBytesWriter_GrowAndUpdatePointer(ptr noundef nonnull %i.ev, i64 noundef %i.kf, ptr noundef %.2217) #33 ; 2 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %.loopexit, label %._crit_edge324

._crit_edge324:                                   ; preds = %bb.ay
  %.val.pre = load ptr, ptr %i.jr, align 8, !tbaa !197
  %.phi.trans.insert = getelementptr i8, ptr %.val.pre, i64 168
  %.val130.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !198
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge324, %bb.ax
  %.val130 = phi i64 [ %.val130.pre, %._crit_edge324 ], [ %.val131, %bb.ax ]
  %.3 = phi ptr [ %i.kg, %._crit_edge324 ], [ %.2217, %bb.ax ] ; 6 uses
  %i.ki = and i64 %.val130, 134217728
  %.not127 = icmp eq i64 %i.ki, 0
  %i.kj = getelementptr i8, ptr %i.jq, i64 32     ; 2 uses
  br i1 %.not127, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.3, ptr align 1 %i.kj, i64 %.val134, i1 false)
  %i.kk = sdiv i64 %.val134, 2
  %i.kl = getelementptr [2 x i8], ptr %.3, i64 %i.kk
  br label %ucs1lib_utf16_encode.exit194

bb.bb:                                            ; preds = %bb.az
  %.val.i153 = load i32, ptr %i.kj, align 8       ; 2 uses
  %i.km = and i32 %.val.i153, 32
  %.not.i154 = icmp eq i32 %i.km, 0
  br i1 %.not.i154, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kn = and i32 %.val.i153, 64
  %.not.i.i155 = icmp eq i32 %i.kn, 0
  %.0.v.i.i156 = select i1 %.not.i.i155, i64 56, i64 40
  %.0.i.i157 = getelementptr i8, ptr %i.jq, i64 %.0.v.i.i156
  br label %_PyUnicode_DATA.exit160

bb.bd:                                            ; preds = %bb.bb
  %i.ko = getelementptr i8, ptr %i.jq, i64 56
  %.val4.i159 = load ptr, ptr %i.ko, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit160

_PyUnicode_DATA.exit160:                          ; preds = %bb.bc, %bb.bd
  %.0.i158 = phi ptr [ %.0.i.i157, %bb.bc ], [ %.val4.i159, %bb.bd ] ; 8 uses
  %4 = ptrtoaddr ptr %.0.i158 to i64              ; 4 uses
  %i.kp = getelementptr i8, ptr %.0.i158, i64 %.val134 ; 2 uses
  %i.kq = and i64 %.val134, -4
  %i.kr = getelementptr i8, ptr %.0.i158, i64 %i.kq ; 3 uses
  %i.ks = icmp ult ptr %.0.i158, %i.kr            ; 2 uses
  br i1 %i.ax, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_PyUnicode_DATA.exit160
  br i1 %i.ks, label %.lr.ph.i174, label %.preheader47.i162

.preheader47.loopexit.i177:                       ; preds = %.lr.ph.i174
  %.pre75.i178 = ptrtoaddr ptr %i.mb to i64
  br label %.preheader47.i162

.preheader47.i162:                                ; preds = %.preheader47.loopexit.i177, %bb.be
  %.0.lcssa71.pre-phi.i163 = phi i64 [ %.pre75.i178, %.preheader47.loopexit.i177 ], [ %4, %bb.be ] ; 2 uses
  %.043.lcssa.i164 = phi ptr [ %i.mc, %.preheader47.loopexit.i177 ], [ %.3, %bb.be ] ; 9 uses
  %.0.lcssa.i165 = phi ptr [ %i.mb, %.preheader47.loopexit.i177 ], [ %.0.i158, %bb.be ] ; 9 uses
  %i.kt = icmp ult ptr %.0.lcssa.i165, %i.kp
  br i1 %i.kt, label %iter.check518, label %ucs1lib_utf16_encode.exit194

iter.check518:                                    ; preds = %.preheader47.i162
  %i.ku = add i64 %.val134, %4                    ; 2 uses
  %i.kv = sub i64 %i.ku, %.0.lcssa71.pre-phi.i163 ; 8 uses
  %scevgep.i169 = getelementptr i8, ptr %.0.lcssa.i165, i64 %i.kv ; 2 uses
  %min.iters.check500 = icmp ult i64 %i.kv, 4
  br i1 %min.iters.check500, label %.lr.ph54.i170.preheader, label %vector.memcheck494

vector.memcheck494:                               ; preds = %iter.check518
  %i.kw = sub i64 %i.ku, %.0.lcssa71.pre-phi.i163
  %i.kx = shl i64 %i.kw, 1
  %scevgep495 = getelementptr i8, ptr %.043.lcssa.i164, i64 %i.kx
  %bound0496 = icmp ult ptr %.043.lcssa.i164, %scevgep.i169
  %bound1497 = icmp ult ptr %.0.lcssa.i165, %scevgep495
  %found.conflict498 = and i1 %bound0496, %bound1497
  br i1 %found.conflict498, label %.lr.ph54.i170.preheader, label %vector.main.loop.iter.check501

vector.main.loop.iter.check501:                   ; preds = %vector.memcheck494
  %min.iters.check502 = icmp ult i64 %i.kv, 16
  br i1 %min.iters.check502, label %vec.epilog.ph522, label %vector.ph503

vector.ph503:                                     ; preds = %vector.main.loop.iter.check501
  %n.mod.vf504 = and i64 %i.kv, 12
  %n.vec505 = and i64 %i.kv, -16                  ; 5 uses
  %i.ky = getelementptr i8, ptr %.0.lcssa.i165, i64 %n.vec505
  %i.kz = shl i64 %n.vec505, 1
  %i.la = getelementptr i8, ptr %.043.lcssa.i164, i64 %i.kz ; 2 uses
  br label %vector.body506

vector.body506:                                   ; preds = %vector.body506, %vector.ph503
  %index507 = phi i64 [ 0, %vector.ph503 ], [ %index.next512, %vector.body506 ] ; 3 uses
  %next.gep508 = getelementptr i8, ptr %.0.lcssa.i165, i64 %index507 ; 2 uses
  %i.lb = shl i64 %index507, 1
  %next.gep509 = getelementptr i8, ptr %.043.lcssa.i164, i64 %i.lb ; 2 uses
  %i.lc = getelementptr i8, ptr %next.gep508, i64 8
  %wide.load510 = load <8 x i8>, ptr %next.gep508, align 1, !tbaa !205, !alias.scope !423
  %wide.load511 = load <8 x i8>, ptr %i.lc, align 1, !tbaa !205, !alias.scope !423
  %i.ld = zext <8 x i8> %wide.load510 to <8 x i16>
  %i.le = zext <8 x i8> %wide.load511 to <8 x i16>
  %i.lf = getelementptr i8, ptr %next.gep509, i64 16
  store <8 x i16> %i.ld, ptr %next.gep509, align 2, !tbaa !208, !alias.scope !426, !noalias !423
  store <8 x i16> %i.le, ptr %i.lf, align 2, !tbaa !208, !alias.scope !426, !noalias !423
  %index.next512 = add nuw i64 %index507, 16      ; 2 uses
  %i.lg = icmp eq i64 %index.next512, %n.vec505
  br i1 %i.lg, label %middle.block513, label %vector.body506, !llvm.loop !428

middle.block513:                                  ; preds = %vector.body506
  %cmp.n514 = icmp eq i64 %i.kv, %n.vec505
  br i1 %cmp.n514, label %ucs1lib_utf16_encode.exit194, label %vec.epilog.iter.check520

vec.epilog.iter.check520:                         ; preds = %middle.block513
  %min.epilog.iters.check521 = icmp eq i64 %n.mod.vf504, 0
  br i1 %min.epilog.iters.check521, label %.lr.ph54.i170.preheader, label %vec.epilog.ph522, !prof !228

vec.epilog.ph522:                                 ; preds = %vector.main.loop.iter.check501, %vec.epilog.iter.check520
  %vec.epilog.resume.val515 = phi i64 [ %n.vec505, %vec.epilog.iter.check520 ], [ 0, %vector.main.loop.iter.check501 ]
  %n.vec524 = and i64 %i.kv, -4                   ; 4 uses
  %i.lh = getelementptr i8, ptr %.0.lcssa.i165, i64 %n.vec524
  %i.li = shl i64 %n.vec524, 1
  %i.lj = getelementptr i8, ptr %.043.lcssa.i164, i64 %i.li ; 2 uses
  br label %vec.epilog.vector.body525

vec.epilog.vector.body525:                        ; preds = %vec.epilog.vector.body525, %vec.epilog.ph522
  %index526 = phi i64 [ %vec.epilog.resume.val515, %vec.epilog.ph522 ], [ %index.next530, %vec.epilog.vector.body525 ] ; 3 uses
  %next.gep527 = getelementptr i8, ptr %.0.lcssa.i165, i64 %index526
  %i.lk = shl i64 %index526, 1
  %next.gep528 = getelementptr i8, ptr %.043.lcssa.i164, i64 %i.lk
  %wide.load529 = load <4 x i8>, ptr %next.gep527, align 1, !tbaa !205, !alias.scope !423
  %i.ll = zext <4 x i8> %wide.load529 to <4 x i16>
  store <4 x i16> %i.ll, ptr %next.gep528, align 2, !tbaa !208, !alias.scope !426, !noalias !423
  %index.next530 = add nuw i64 %index526, 4       ; 2 uses
  %i.lm = icmp eq i64 %index.next530, %n.vec524
  br i1 %i.lm, label %vec.epilog.middle.block531, label %vec.epilog.vector.body525, !llvm.loop !429

vec.epilog.middle.block531:                       ; preds = %vec.epilog.vector.body525
  %cmp.n532 = icmp eq i64 %i.kv, %n.vec524
  br i1 %cmp.n532, label %ucs1lib_utf16_encode.exit194, label %.lr.ph54.i170.preheader

.lr.ph54.i170.preheader:                          ; preds = %vector.memcheck494, %iter.check518, %vec.epilog.iter.check520, %vec.epilog.middle.block531
  %.153.i171.ph = phi ptr [ %.0.lcssa.i165, %iter.check518 ], [ %.0.lcssa.i165, %vector.memcheck494 ], [ %i.ky, %vec.epilog.iter.check520 ], [ %i.lh, %vec.epilog.middle.block531 ]
  %.14452.i172.ph = phi ptr [ %.043.lcssa.i164, %iter.check518 ], [ %.043.lcssa.i164, %vector.memcheck494 ], [ %i.la, %vec.epilog.iter.check520 ], [ %i.lj, %vec.epilog.middle.block531 ]
  br label %.lr.ph54.i170

.lr.ph.i174:                                      ; preds = %bb.be, %.lr.ph.i174
  %.050.i175 = phi ptr [ %i.mb, %.lr.ph.i174 ], [ %.0.i158, %bb.be ] ; 5 uses
  %.04349.i176 = phi ptr [ %i.mc, %.lr.ph.i174 ], [ %.3, %bb.be ] ; 5 uses
  %i.ln = load i8, ptr %.050.i175, align 1, !tbaa !205
  %i.lo = zext i8 %i.ln to i16
  store i16 %i.lo, ptr %.04349.i176, align 2, !tbaa !208
  %i.lp = getelementptr i8, ptr %.050.i175, i64 1
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !205
  %i.lr = zext i8 %i.lq to i16
  %i.ls = getelementptr i8, ptr %.04349.i176, i64 2
  store i16 %i.lr, ptr %i.ls, align 2, !tbaa !208
  %i.lt = getelementptr i8, ptr %.050.i175, i64 2
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !205
  %i.lv = zext i8 %i.lu to i16
  %i.lw = getelementptr i8, ptr %.04349.i176, i64 4
  store i16 %i.lv, ptr %i.lw, align 2, !tbaa !208
  %i.lx = getelementptr i8, ptr %.050.i175, i64 3
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !205
  %i.lz = zext i8 %i.ly to i16
  %i.ma = getelementptr i8, ptr %.04349.i176, i64 6
  store i16 %i.lz, ptr %i.ma, align 2, !tbaa !208
  %i.mb = getelementptr i8, ptr %.050.i175, i64 4 ; 4 uses
  %i.mc = getelementptr i8, ptr %.04349.i176, i64 8 ; 2 uses
  %i.md = icmp ult ptr %i.mb, %i.kr
  br i1 %i.md, label %.lr.ph.i174, label %.preheader47.loopexit.i177, !llvm.loop !408

.lr.ph54.i170:                                    ; preds = %.lr.ph54.i170.preheader, %.lr.ph54.i170
  %.153.i171 = phi ptr [ %i.me, %.lr.ph54.i170 ], [ %.153.i171.ph, %.lr.ph54.i170.preheader ] ; 2 uses
  %.14452.i172 = phi ptr [ %i.mh, %.lr.ph54.i170 ], [ %.14452.i172.ph, %.lr.ph54.i170.preheader ] ; 2 uses
  %i.me = getelementptr i8, ptr %.153.i171, i64 1 ; 2 uses
  %i.mf = load i8, ptr %.153.i171, align 1, !tbaa !205
  %i.mg = zext i8 %i.mf to i16
  %i.mh = getelementptr i8, ptr %.14452.i172, i64 2 ; 2 uses
  store i16 %i.mg, ptr %.14452.i172, align 2, !tbaa !208
  %exitcond.not.i173 = icmp eq ptr %i.me, %scevgep.i169
  br i1 %exitcond.not.i173, label %ucs1lib_utf16_encode.exit194, label %.lr.ph54.i170, !llvm.loop !430

bb.bf:                                            ; preds = %_PyUnicode_DATA.exit160
  br i1 %i.ks, label %.lr.ph58.i189, label %.preheader.i179

.preheader.loopexit.i192:                         ; preds = %.lr.ph58.i189
  %.pre.i193 = ptrtoaddr ptr %i.nx to i64
  br label %.preheader.i179

.preheader.i179:                                  ; preds = %.preheader.loopexit.i192, %bb.bf
  %.2.lcssa72.pre-phi.i180 = phi i64 [ %.pre.i193, %.preheader.loopexit.i192 ], [ %4, %bb.bf ] ; 2 uses
  %.245.lcssa.i181 = phi ptr [ %i.ny, %.preheader.loopexit.i192 ], [ %.3, %bb.bf ] ; 9 uses
  %.2.lcssa.i182 = phi ptr [ %i.nx, %.preheader.loopexit.i192 ], [ %.0.i158, %bb.bf ] ; 9 uses
  %i.mi = icmp ult ptr %.2.lcssa.i182, %i.kp
  br i1 %i.mi, label %iter.check, label %ucs1lib_utf16_encode.exit194

iter.check:                                       ; preds = %.preheader.i179
  %i.mj = add i64 %.val134, %4                    ; 2 uses
  %i.mk = sub i64 %i.mj, %.2.lcssa72.pre-phi.i180 ; 8 uses
  %scevgep73.i184 = getelementptr i8, ptr %.2.lcssa.i182, i64 %i.mk ; 2 uses
  %min.iters.check468 = icmp ult i64 %i.mk, 4
  br i1 %min.iters.check468, label %.lr.ph63.i185.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ml = sub i64 %i.mj, %.2.lcssa72.pre-phi.i180
  %i.mm = shl i64 %i.ml, 1
  %scevgep = getelementptr i8, ptr %.245.lcssa.i181, i64 %i.mm
  %bound0 = icmp ult ptr %.245.lcssa.i181, %scevgep73.i184
  %bound1 = icmp ult ptr %.2.lcssa.i182, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph63.i185.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check469 = icmp ult i64 %i.mk, 16
  br i1 %min.iters.check469, label %vec.epilog.ph, label %vector.ph470

vector.ph470:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf471 = and i64 %i.mk, 12
  %n.vec472 = and i64 %i.mk, -16                  ; 5 uses
  %i.mn = getelementptr i8, ptr %.2.lcssa.i182, i64 %n.vec472
  %i.mo = shl i64 %n.vec472, 1
  %i.mp = getelementptr i8, ptr %.245.lcssa.i181, i64 %i.mo ; 2 uses
  br label %vector.body473

vector.body473:                                   ; preds = %vector.body473, %vector.ph470
  %index474 = phi i64 [ 0, %vector.ph470 ], [ %index.next479, %vector.body473 ] ; 3 uses
  %next.gep475 = getelementptr i8, ptr %.2.lcssa.i182, i64 %index474 ; 2 uses
  %i.mq = shl i64 %index474, 1
  %next.gep476 = getelementptr i8, ptr %.245.lcssa.i181, i64 %i.mq ; 2 uses
  %i.mr = getelementptr i8, ptr %next.gep475, i64 8
  %wide.load477 = load <8 x i8>, ptr %next.gep475, align 1, !tbaa !205, !alias.scope !431
  %wide.load478 = load <8 x i8>, ptr %i.mr, align 1, !tbaa !205, !alias.scope !431
  %i.ms = zext <8 x i8> %wide.load477 to <8 x i16>
  %i.mt = zext <8 x i8> %wide.load478 to <8 x i16>
  %i.mu = shl nuw <8 x i16> %i.ms, splat (i16 8)
  %i.mv = shl nuw <8 x i16> %i.mt, splat (i16 8)
  %i.mw = getelementptr i8, ptr %next.gep476, i64 16
  store <8 x i16> %i.mu, ptr %next.gep476, align 2, !tbaa !208, !alias.scope !434, !noalias !431
  store <8 x i16> %i.mv, ptr %i.mw, align 2, !tbaa !208, !alias.scope !434, !noalias !431
  %index.next479 = add nuw i64 %index474, 16      ; 2 uses
  %i.mx = icmp eq i64 %index.next479, %n.vec472
  br i1 %i.mx, label %middle.block480, label %vector.body473, !llvm.loop !436

middle.block480:                                  ; preds = %vector.body473
  %cmp.n481 = icmp eq i64 %i.mk, %n.vec472
  br i1 %cmp.n481, label %ucs1lib_utf16_encode.exit194, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block480
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf471, 0
  br i1 %min.epilog.iters.check, label %.lr.ph63.i185.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec472, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec485 = and i64 %i.mk, -4                   ; 4 uses
  %i.my = getelementptr i8, ptr %.2.lcssa.i182, i64 %n.vec485
  %i.mz = shl i64 %n.vec485, 1
  %i.na = getelementptr i8, ptr %.245.lcssa.i181, i64 %i.mz ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index486 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next490, %vec.epilog.vector.body ] ; 3 uses
  %next.gep487 = getelementptr i8, ptr %.2.lcssa.i182, i64 %index486
  %i.nb = shl i64 %index486, 1
  %next.gep488 = getelementptr i8, ptr %.245.lcssa.i181, i64 %i.nb
  %wide.load489 = load <4 x i8>, ptr %next.gep487, align 1, !tbaa !205, !alias.scope !431
  %i.nc = zext <4 x i8> %wide.load489 to <4 x i16>
  %i.nd = shl nuw <4 x i16> %i.nc, splat (i16 8)
  store <4 x i16> %i.nd, ptr %next.gep488, align 2, !tbaa !208, !alias.scope !434, !noalias !431
  %index.next490 = add nuw i64 %index486, 4       ; 2 uses
  %i.ne = icmp eq i64 %index.next490, %n.vec485
  br i1 %i.ne, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !437

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n491 = icmp eq i64 %i.mk, %n.vec485
  br i1 %cmp.n491, label %ucs1lib_utf16_encode.exit194, label %.lr.ph63.i185.preheader

.lr.ph63.i185.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.362.i186.ph = phi ptr [ %.2.lcssa.i182, %iter.check ], [ %.2.lcssa.i182, %vector.memcheck ], [ %i.mn, %vec.epilog.iter.check ], [ %i.my, %vec.epilog.middle.block ]
  %.34661.i187.ph = phi ptr [ %.245.lcssa.i181, %iter.check ], [ %.245.lcssa.i181, %vector.memcheck ], [ %i.mp, %vec.epilog.iter.check ], [ %i.na, %vec.epilog.middle.block ]
  br label %.lr.ph63.i185

.lr.ph58.i189:                                    ; preds = %bb.bf, %.lr.ph58.i189
  %.257.i190 = phi ptr [ %i.nx, %.lr.ph58.i189 ], [ %.0.i158, %bb.bf ] ; 5 uses
  %.24556.i191 = phi ptr [ %i.ny, %.lr.ph58.i189 ], [ %.3, %bb.bf ] ; 5 uses
  %i.nf = load i8, ptr %.257.i190, align 1, !tbaa !205
  %i.ng = zext i8 %i.nf to i16
  %i.nh = shl nuw i16 %i.ng, 8
  store i16 %i.nh, ptr %.24556.i191, align 2, !tbaa !208
  %i.ni = getelementptr i8, ptr %.257.i190, i64 1
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !205
  %i.nk = zext i8 %i.nj to i16
  %i.nl = shl nuw i16 %i.nk, 8
  %i.nm = getelementptr i8, ptr %.24556.i191, i64 2
  store i16 %i.nl, ptr %i.nm, align 2, !tbaa !208
  %i.nn = getelementptr i8, ptr %.257.i190, i64 2
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !205
  %i.np = zext i8 %i.no to i16
  %i.nq = shl nuw i16 %i.np, 8
  %i.nr = getelementptr i8, ptr %.24556.i191, i64 4
  store i16 %i.nq, ptr %i.nr, align 2, !tbaa !208
  %i.ns = getelementptr i8, ptr %.257.i190, i64 3
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !205
  %i.nu = zext i8 %i.nt to i16
  %i.nv = shl nuw i16 %i.nu, 8
  %i.nw = getelementptr i8, ptr %.24556.i191, i64 6
  store i16 %i.nv, ptr %i.nw, align 2, !tbaa !208
  %i.nx = getelementptr i8, ptr %.257.i190, i64 4 ; 4 uses
  %i.ny = getelementptr i8, ptr %.24556.i191, i64 8 ; 2 uses
  %i.nz = icmp ult ptr %i.nx, %i.kr
  br i1 %i.nz, label %.lr.ph58.i189, label %.preheader.loopexit.i192, !llvm.loop !417

.lr.ph63.i185:                                    ; preds = %.lr.ph63.i185.preheader, %.lr.ph63.i185
  %.362.i186 = phi ptr [ %i.oa, %.lr.ph63.i185 ], [ %.362.i186.ph, %.lr.ph63.i185.preheader ] ; 2 uses
  %.34661.i187 = phi ptr [ %i.oe, %.lr.ph63.i185 ], [ %.34661.i187.ph, %.lr.ph63.i185.preheader ] ; 2 uses
  %i.oa = getelementptr i8, ptr %.362.i186, i64 1 ; 2 uses
  %i.ob = load i8, ptr %.362.i186, align 1, !tbaa !205
  %i.oc = zext i8 %i.ob to i16
  %i.od = shl nuw i16 %i.oc, 8
  %i.oe = getelementptr i8, ptr %.34661.i187, i64 2 ; 2 uses
  store i16 %i.od, ptr %.34661.i187, align 2, !tbaa !208
  %exitcond74.not.i188 = icmp eq ptr %i.oa, %scevgep73.i184
  br i1 %exitcond74.not.i188, label %ucs1lib_utf16_encode.exit194, label %.lr.ph63.i185, !llvm.loop !438

ucs1lib_utf16_encode.exit194:                     ; preds = %.lr.ph54.i170, %.lr.ph63.i185, %middle.block513, %vec.epilog.middle.block531, %middle.block480, %vec.epilog.middle.block, %.preheader.i179, %.preheader47.i162, %bb.ba
  %.4 = phi ptr [ %i.kl, %bb.ba ], [ %i.oe, %.lr.ph63.i185 ], [ %.245.lcssa.i181, %.preheader.i179 ], [ %.043.lcssa.i164, %.preheader47.i162 ], [ %i.na, %vec.epilog.middle.block ], [ %i.mp, %middle.block480 ], [ %i.lj, %vec.epilog.middle.block531 ], [ %i.la, %middle.block513 ], [ %i.mh, %.lr.ph54.i170 ] ; 2 uses
  %i.of = load i32, ptr %i.jq, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.of, -1
  br i1 %.not.i, label %bb.bg, label %raise_encode_exception.exit

bb.bg:                                            ; preds = %ucs1lib_utf16_encode.exit194
  %i.og = add nsw i32 %i.of, -1                   ; 2 uses
  store i32 %i.og, ptr %i.jq, align 8, !tbaa !205
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %bb.bh, label %raise_encode_exception.exit

bb.bh:                                            ; preds = %bb.bg
  call void @_Py_Dealloc(ptr noundef nonnull %i.jq) #33
  br label %raise_encode_exception.exit

raise_encode_exception.exit:                      ; preds = %bb.bh, %bb.bg, %ucs1lib_utf16_encode.exit194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.oi = icmp slt i64 %i.kb, %.val135
  br i1 %i.oi, label %bb.v, label %._crit_edge, !llvm.loop !439

._crit_edge:                                      ; preds = %ucs2lib_utf16_encode.exit, %raise_encode_exception.exit
  %.6218.ph.ph = phi ptr [ %.2217, %ucs2lib_utf16_encode.exit ], [ %.4, %raise_encode_exception.exit ] ; 4 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !194 ; 4 uses
  %.not.i195 = icmp eq ptr %.pre, null
  br i1 %.not.i195, label %Py_XDECREF.exit, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge
  %i.oj = load i32, ptr %.pre, align 8, !tbaa !205 ; 2 uses
  %.not.i.i196 = icmp sgt i32 %i.oj, -1
  br i1 %.not.i.i196, label %bb.bj, label %Py_XDECREF.exit

bb.bj:                                            ; preds = %bb.bi
  %i.ok = add nsw i32 %i.oj, -1                   ; 2 uses
  store i32 %i.ok, ptr %.pre, align 8, !tbaa !205
  %i.ol = icmp eq i32 %i.ok, 0
  br i1 %i.ol, label %bb.bk, label %Py_XDECREF.exit

bb.bk:                                            ; preds = %bb.bj
  call void @_Py_Dealloc(ptr noundef nonnull %.pre) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %._crit_edge, %bb.bi, %bb.bj, %bb.bk
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !194  ; 4 uses
  %.not.i197 = icmp eq ptr %.pr, null
  br i1 %.not.i197, label %Py_XDECREF.exit199, label %bb.bl

bb.bl:                                            ; preds = %Py_XDECREF.exit
  %i.om = load i32, ptr %.pr, align 8, !tbaa !205 ; 2 uses
  %.not.i.i198 = icmp sgt i32 %i.om, -1
  br i1 %.not.i.i198, label %bb.bm, label %Py_XDECREF.exit199

bb.bm:                                            ; preds = %bb.bl
  %i.on = add nsw i32 %i.om, -1                   ; 2 uses
  store i32 %i.on, ptr %.pr, align 8, !tbaa !205
  %i.oo = icmp eq i32 %i.on, 0
  br i1 %i.oo, label %bb.bn, label %Py_XDECREF.exit199

bb.bn:                                            ; preds = %bb.bm
  call void @_Py_Dealloc(ptr noundef nonnull %.pr) #33
  br label %Py_XDECREF.exit199

Py_XDECREF.exit199:                               ; preds = %bb.u, %Py_XDECREF.exit, %bb.bl, %bb.bm, %bb.bn
  %.6218.ph380383 = phi ptr [ %.6218.ph.ph, %bb.bn ], [ %.6218.ph.ph, %Py_XDECREF.exit ], [ %.6218.ph.ph, %bb.bl ], [ %.6218.ph.ph, %bb.bm ], [ %.0, %bb.u ]
  %i.op = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.ev, ptr noundef %.6218.ph380383) #33
  br label %bb.bx

bb.bo:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %Py_XDECREF.exit202

.loopexit.sink.split:                             ; preds = %bb.aw, %bb.at
  %.sink = phi ptr [ %i.jw, %bb.at ], [ %i.ka, %bb.aw ]
  %i.oq = call ptr @PyCodec_StrictErrors(ptr noundef nonnull %.sink) #33 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ay, %.loopexit.sink.split, %bb.aw, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.or = load i32, ptr %i.jq, align 8, !tbaa !205 ; 2 uses
  %.not.i.i201 = icmp sgt i32 %i.or, -1
  br i1 %.not.i.i201, label %bb.bp, label %Py_XDECREF.exit202

bb.bp:                                            ; preds = %.loopexit
  %i.os = add nsw i32 %i.or, -1                   ; 2 uses
  store i32 %i.os, ptr %i.jq, align 8, !tbaa !205
  %i.ot = icmp eq i32 %i.os, 0
  br i1 %i.ot, label %bb.bq, label %Py_XDECREF.exit202

bb.bq:                                            ; preds = %bb.bp
  call void @_Py_Dealloc(ptr noundef nonnull %i.jq) #33
  br label %Py_XDECREF.exit202

Py_XDECREF.exit202:                               ; preds = %bb.bo, %.loopexit, %bb.bp, %bb.bq
  %i.ou = load ptr, ptr %i.a, align 8, !tbaa !194 ; 4 uses
  %.not.i203 = icmp eq ptr %i.ou, null
  br i1 %.not.i203, label %Py_XDECREF.exit205, label %bb.br

bb.br:                                            ; preds = %Py_XDECREF.exit202
  %i.ov = load i32, ptr %i.ou, align 8, !tbaa !205 ; 2 uses
  %.not.i.i204 = icmp sgt i32 %i.ov, -1
  br i1 %.not.i.i204, label %bb.bs, label %Py_XDECREF.exit205

bb.bs:                                            ; preds = %bb.br
  %i.ow = add nsw i32 %i.ov, -1                   ; 2 uses
  store i32 %i.ow, ptr %i.ou, align 8, !tbaa !205
  %i.ox = icmp eq i32 %i.ow, 0
  br i1 %i.ox, label %bb.bt, label %Py_XDECREF.exit205

bb.bt:                                            ; preds = %bb.bs
  call void @_Py_Dealloc(ptr noundef nonnull %i.ou) #33
  br label %Py_XDECREF.exit205

Py_XDECREF.exit205:                               ; preds = %Py_XDECREF.exit202, %bb.br, %bb.bs, %bb.bt
  %i.oy = load ptr, ptr %i.b, align 8, !tbaa !194 ; 4 uses
  %.not.i206 = icmp eq ptr %i.oy, null
  br i1 %.not.i206, label %Py_XDECREF.exit208, label %bb.bu

bb.bu:                                            ; preds = %Py_XDECREF.exit205
  %i.oz = load i32, ptr %i.oy, align 8, !tbaa !205 ; 2 uses
  %.not.i.i207 = icmp sgt i32 %i.oz, -1
  br i1 %.not.i.i207, label %bb.bv, label %Py_XDECREF.exit208

bb.bv:                                            ; preds = %bb.bu
  %i.pa = add nsw i32 %i.oz, -1                   ; 2 uses
  store i32 %i.pa, ptr %i.oy, align 8, !tbaa !205
  %i.pb = icmp eq i32 %i.pa, 0
  br i1 %i.pb, label %bb.bw, label %Py_XDECREF.exit208

bb.bw:                                            ; preds = %bb.bv
  call void @_Py_Dealloc(ptr noundef nonnull %i.oy) #33
  br label %Py_XDECREF.exit208

Py_XDECREF.exit208:                               ; preds = %Py_XDECREF.exit205, %bb.bu, %bb.bv, %bb.bw
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.ev) #33
  br label %bb.bx

bb.bx:                                            ; preds = %Py_XDECREF.exit208, %Py_XDECREF.exit199
  %.1 = phi ptr [ null, %Py_XDECREF.exit208 ], [ %i.op, %Py_XDECREF.exit199 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %ucs1lib_utf16_encode.exit

ucs1lib_utf16_encode.exit:                        ; preds = %.lr.ph54.i, %.lr.ph63.i, %middle.block554, %vec.epilog.middle.block572, %middle.block595, %vec.epilog.middle.block613, %bb.t, %bb.bx, %bb.l, %.preheader47.i, %.preheader.i, %bb.g, %bb.p, %bb.i, %bb.b
  %.6 = phi ptr [ null, %bb.b ], [ %i.at, %bb.g ], [ null, %bb.i ], [ null, %bb.p ], [ %i.ba, %bb.l ], [ %.1, %bb.bx ], [ %i.ba, %.preheader.i ], [ %i.ba, %middle.block595 ], [ %i.ba, %.preheader47.i ], [ %i.fa, %bb.t ], [ %i.ba, %middle.block554 ], [ %i.ba, %vec.epilog.middle.block613 ], [ %i.ba, %.lr.ph63.i ], [ %i.ba, %vec.epilog.middle.block572 ], [ %i.ba, %.lr.ph54.i ]
  ret ptr %.6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyUnicode_EncodeUTF32(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val116 = load ptr, ptr %i.d, align 8, !tbaa !197
  %i.e = getelementptr i8, ptr %.val116, i64 168
  %.val119 = load i64, ptr %i.e, align 8, !tbaa !198
  %i.f = and i64 %.val119, 268435456
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %ucs1lib_utf32_encode.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = lshr i32 %i.i, 2
  %i.k = and i32 %i.j, 7                          ; 2 uses
  %i.l = and i32 %i.i, 32
  %.not.i124 = icmp eq i32 %i.l, 0
  br i1 %.not.i124, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i32 %i.i, 64
  %.not.i.i = icmp eq i32 %i.m, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.n, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %.0.i.i, %bb.d ], [ %.val4.i, %bb.e ] ; 12 uses
  %i.o = getelementptr i8, ptr %0, i64 16
  %.val122 = load i64, ptr %i.o, align 8, !tbaa !207 ; 14 uses
  %i.p = icmp eq i32 %2, 0                        ; 4 uses
  %i.q = select i1 %i.p, i64 2305843009213693950, i64 2305843009213693951
  %i.r = icmp sgt i64 %.val122, %i.q
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.s = tail call ptr @PyErr_NoMemory() #33
  br label %ucs1lib_utf32_encode.exit

bb.g:                                             ; preds = %_PyUnicode_DATA.exit
  %i.t = zext i1 %i.p to i64
  %i.u = add nsw i64 %.val122, %i.t
  %i.v = icmp sgt i32 %2, 0                       ; 4 uses
  %i.w = icmp eq i32 %i.k, 1
  %i.x = shl i64 %i.u, 2                          ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.y = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.x) #33 ; 10 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %ucs1lib_utf32_encode.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %i.y, i64 32      ; 2 uses
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr i8, ptr %i.y, i64 36
  store i32 65279, ptr %i.aa, align 4, !tbaa !7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0211 = phi ptr [ %i.ab, %bb.j ], [ %i.aa, %bb.i ] ; 4 uses
  %i.ac = icmp sgt i64 %.val122, 0
  br i1 %i.ac, label %bb.l, label %ucs1lib_utf32_encode.exit

bb.l:                                             ; preds = %bb.k
  %3 = ptrtoaddr ptr %.0.i to i64                 ; 4 uses
  %i.ad = getelementptr i8, ptr %.0.i, i64 %.val122 ; 2 uses
  %i.ae = and i64 %.val122, 9223372036854775804
  %i.af = getelementptr i8, ptr %.0.i, i64 %i.ae  ; 3 uses
  %i.ag = icmp ult ptr %.0.i, %i.af               ; 2 uses
  br i1 %i.v, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ag, label %.lr.ph.i, label %.preheader48.i

.preheader48.loopexit.i:                          ; preds = %.lr.ph.i
  %.pre76.i = ptrtoaddr ptr %i.bj to i64
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %.preheader48.loopexit.i, %bb.m
  %.0.lcssa72.pre-phi.i = phi i64 [ %.pre76.i, %.preheader48.loopexit.i ], [ %3, %bb.m ] ; 2 uses
  %.044.lcssa.i = phi ptr [ %i.bk, %.preheader48.loopexit.i ], [ %.0211, %bb.m ] ; 6 uses
  %.0.lcssa.i = phi ptr [ %i.bj, %.preheader48.loopexit.i ], [ %.0.i, %bb.m ] ; 7 uses
  %i.ah = icmp ult ptr %.0.lcssa.i, %i.ad
  br i1 %i.ah, label %.lr.ph55.preheader.i, label %ucs1lib_utf32_encode.exit

.lr.ph55.preheader.i:                             ; preds = %.preheader48.i
  %i.ai = add i64 %.val122, %3                    ; 2 uses
  %i.aj = sub i64 %i.ai, %.0.lcssa72.pre-phi.i    ; 4 uses
  %scevgep.i = getelementptr i8, ptr %.0.lcssa.i, i64 %i.aj ; 2 uses
  %min.iters.check498 = icmp ult i64 %i.aj, 20
  br i1 %min.iters.check498, label %.lr.ph55.i.preheader, label %vector.memcheck492

vector.memcheck492:                               ; preds = %.lr.ph55.preheader.i
  %i.ak = sub i64 %i.ai, %.0.lcssa72.pre-phi.i
  %i.al = shl i64 %i.ak, 2
  %scevgep493 = getelementptr i8, ptr %.044.lcssa.i, i64 %i.al
  %bound0494 = icmp ult ptr %.044.lcssa.i, %scevgep.i
  %bound1495 = icmp ult ptr %.0.lcssa.i, %scevgep493
  %found.conflict496 = and i1 %bound0494, %bound1495
  br i1 %found.conflict496, label %.lr.ph55.i.preheader, label %vector.ph499

vector.ph499:                                     ; preds = %vector.memcheck492
  %n.vec501 = and i64 %i.aj, -8                   ; 4 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec501
  %i.an = shl i64 %n.vec501, 2
  %i.ao = getelementptr i8, ptr %.044.lcssa.i, i64 %i.an
  br label %vector.body502

vector.body502:                                   ; preds = %vector.body502, %vector.ph499
  %index503 = phi i64 [ 0, %vector.ph499 ], [ %index.next508, %vector.body502 ] ; 3 uses
  %next.gep504 = getelementptr i8, ptr %.0.lcssa.i, i64 %index503 ; 2 uses
  %i.ap = shl i64 %index503, 2
  %next.gep505 = getelementptr i8, ptr %.044.lcssa.i, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep504, i64 4
  %wide.load506 = load <4 x i8>, ptr %next.gep504, align 1, !tbaa !205, !alias.scope !440
  %wide.load507 = load <4 x i8>, ptr %i.aq, align 1, !tbaa !205, !alias.scope !440
  %i.ar = zext <4 x i8> %wide.load506 to <4 x i32>
  %i.as = zext <4 x i8> %wide.load507 to <4 x i32>
  %i.at = getelementptr i8, ptr %next.gep505, i64 16
  store <4 x i32> %i.ar, ptr %next.gep505, align 4, !tbaa !7, !alias.scope !443, !noalias !440
  store <4 x i32> %i.as, ptr %i.at, align 4, !tbaa !7, !alias.scope !443, !noalias !440
  %index.next508 = add nuw i64 %index503, 8       ; 2 uses
  %i.au = icmp eq i64 %index.next508, %n.vec501
  br i1 %i.au, label %middle.block509, label %vector.body502, !llvm.loop !445

middle.block509:                                  ; preds = %vector.body502
  %cmp.n510 = icmp eq i64 %i.aj, %n.vec501
  br i1 %cmp.n510, label %ucs1lib_utf32_encode.exit, label %.lr.ph55.i.preheader

.lr.ph55.i.preheader:                             ; preds = %vector.memcheck492, %.lr.ph55.preheader.i, %middle.block509
  %.154.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck492 ], [ %.0.lcssa.i, %.lr.ph55.preheader.i ], [ %i.am, %middle.block509 ]
  %.14553.i.ph = phi ptr [ %.044.lcssa.i, %vector.memcheck492 ], [ %.044.lcssa.i, %.lr.ph55.preheader.i ], [ %i.ao, %middle.block509 ]
  br label %.lr.ph55.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.051.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %.0.i, %bb.m ] ; 5 uses
  %.04450.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %.0211, %bb.m ] ; 5 uses
  %i.av = load i8, ptr %.051.i, align 1, !tbaa !205
  %i.aw = zext i8 %i.av to i32
  store i32 %i.aw, ptr %.04450.i, align 4, !tbaa !7
  %i.ax = getelementptr i8, ptr %.051.i, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !205
  %i.az = zext i8 %i.ay to i32
  %i.ba = getelementptr i8, ptr %.04450.i, i64 4
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !7
  %i.bb = getelementptr i8, ptr %.051.i, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !205
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr i8, ptr %.04450.i, i64 8
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !7
  %i.bf = getelementptr i8, ptr %.051.i, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !205
  %i.bh = zext i8 %i.bg to i32
  %i.bi = getelementptr i8, ptr %.04450.i, i64 12
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !7
  %i.bj = getelementptr i8, ptr %.051.i, i64 4    ; 4 uses
  %i.bk = getelementptr i8, ptr %.04450.i, i64 16 ; 2 uses
  %i.bl = icmp ult ptr %i.bj, %i.af
  br i1 %i.bl, label %.lr.ph.i, label %.preheader48.loopexit.i, !llvm.loop !446

.lr.ph55.i:                                       ; preds = %.lr.ph55.i.preheader, %.lr.ph55.i
  %.154.i = phi ptr [ %i.bm, %.lr.ph55.i ], [ %.154.i.ph, %.lr.ph55.i.preheader ] ; 2 uses
  %.14553.i = phi ptr [ %i.bp, %.lr.ph55.i ], [ %.14553.i.ph, %.lr.ph55.i.preheader ] ; 2 uses
  %i.bm = getelementptr i8, ptr %.154.i, i64 1    ; 2 uses
  %i.bn = load i8, ptr %.154.i, align 1, !tbaa !205
  %i.bo = zext i8 %i.bn to i32
  %i.bp = getelementptr i8, ptr %.14553.i, i64 4
  store i32 %i.bo, ptr %.14553.i, align 4, !tbaa !7
  %exitcond.not.i = icmp eq ptr %i.bm, %scevgep.i
  br i1 %exitcond.not.i, label %ucs1lib_utf32_encode.exit, label %.lr.ph55.i, !llvm.loop !447

bb.n:                                             ; preds = %bb.l
  br i1 %i.ag, label %.lr.ph59.i, label %.preheader.i

.preheader.loopexit.i:                            ; preds = %.lr.ph59.i
  %.pre.i = ptrtoaddr ptr %i.cy to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.n
  %.2.lcssa73.pre-phi.i = phi i64 [ %.pre.i, %.preheader.loopexit.i ], [ %3, %bb.n ] ; 2 uses
  %.246.lcssa.i = phi ptr [ %i.cz, %.preheader.loopexit.i ], [ %.0211, %bb.n ] ; 6 uses
  %.2.lcssa.i = phi ptr [ %i.cy, %.preheader.loopexit.i ], [ %.0.i, %bb.n ] ; 7 uses
  %i.bq = icmp ult ptr %.2.lcssa.i, %i.ad
  br i1 %i.bq, label %.lr.ph64.preheader.i, label %ucs1lib_utf32_encode.exit

.lr.ph64.preheader.i:                             ; preds = %.preheader.i
  %i.br = add i64 %.val122, %3                    ; 2 uses
  %i.bs = sub i64 %i.br, %.2.lcssa73.pre-phi.i    ; 4 uses
  %scevgep74.i = getelementptr i8, ptr %.2.lcssa.i, i64 %i.bs ; 2 uses
  %min.iters.check519 = icmp ult i64 %i.bs, 16
  br i1 %min.iters.check519, label %.lr.ph64.i.preheader, label %vector.memcheck513

vector.memcheck513:                               ; preds = %.lr.ph64.preheader.i
  %i.bt = sub i64 %i.br, %.2.lcssa73.pre-phi.i
  %i.bu = shl i64 %i.bt, 2
  %scevgep514 = getelementptr i8, ptr %.246.lcssa.i, i64 %i.bu
  %bound0515 = icmp ult ptr %.246.lcssa.i, %scevgep74.i
  %bound1516 = icmp ult ptr %.2.lcssa.i, %scevgep514
  %found.conflict517 = and i1 %bound0515, %bound1516
  br i1 %found.conflict517, label %.lr.ph64.i.preheader, label %vector.ph520

vector.ph520:                                     ; preds = %vector.memcheck513
  %n.vec522 = and i64 %i.bs, -8                   ; 4 uses
  %i.bv = getelementptr i8, ptr %.2.lcssa.i, i64 %n.vec522
  %i.bw = shl i64 %n.vec522, 2
  %i.bx = getelementptr i8, ptr %.246.lcssa.i, i64 %i.bw
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.ph520
  %index524 = phi i64 [ 0, %vector.ph520 ], [ %index.next529, %vector.body523 ] ; 3 uses
  %next.gep525 = getelementptr i8, ptr %.2.lcssa.i, i64 %index524 ; 2 uses
  %i.by = shl i64 %index524, 2
  %next.gep526 = getelementptr i8, ptr %.246.lcssa.i, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep525, i64 4
  %wide.load527 = load <4 x i8>, ptr %next.gep525, align 1, !tbaa !205, !alias.scope !448
  %wide.load528 = load <4 x i8>, ptr %i.bz, align 1, !tbaa !205, !alias.scope !448
  %i.ca = zext <4 x i8> %wide.load527 to <4 x i32>
  %i.cb = zext <4 x i8> %wide.load528 to <4 x i32>
  %i.cc = shl nuw <4 x i32> %i.ca, splat (i32 24)
  %i.cd = shl nuw <4 x i32> %i.cb, splat (i32 24)
  %i.ce = getelementptr i8, ptr %next.gep526, i64 16
  store <4 x i32> %i.cc, ptr %next.gep526, align 4, !tbaa !7, !alias.scope !451, !noalias !448
  store <4 x i32> %i.cd, ptr %i.ce, align 4, !tbaa !7, !alias.scope !451, !noalias !448
  %index.next529 = add nuw i64 %index524, 8       ; 2 uses
  %i.cf = icmp eq i64 %index.next529, %n.vec522
  br i1 %i.cf, label %middle.block530, label %vector.body523, !llvm.loop !453

middle.block530:                                  ; preds = %vector.body523
  %cmp.n531 = icmp eq i64 %i.bs, %n.vec522
  br i1 %cmp.n531, label %ucs1lib_utf32_encode.exit, label %.lr.ph64.i.preheader

.lr.ph64.i.preheader:                             ; preds = %vector.memcheck513, %.lr.ph64.preheader.i, %middle.block530
  %.363.i.ph = phi ptr [ %.2.lcssa.i, %vector.memcheck513 ], [ %.2.lcssa.i, %.lr.ph64.preheader.i ], [ %i.bv, %middle.block530 ]
  %.34762.i.ph = phi ptr [ %.246.lcssa.i, %vector.memcheck513 ], [ %.246.lcssa.i, %.lr.ph64.preheader.i ], [ %i.bx, %middle.block530 ]
  br label %.lr.ph64.i

.lr.ph59.i:                                       ; preds = %bb.n, %.lr.ph59.i
  %.258.i = phi ptr [ %i.cy, %.lr.ph59.i ], [ %.0.i, %bb.n ] ; 5 uses
  %.24657.i = phi ptr [ %i.cz, %.lr.ph59.i ], [ %.0211, %bb.n ] ; 5 uses
  %i.cg = load i8, ptr %.258.i, align 1, !tbaa !205
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw i32 %i.ch, 24
  store i32 %i.ci, ptr %.24657.i, align 4, !tbaa !7
  %i.cj = getelementptr i8, ptr %.258.i, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !205
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw i32 %i.cl, 24
  %i.cn = getelementptr i8, ptr %.24657.i, i64 4
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !7
  %i.co = getelementptr i8, ptr %.258.i, i64 2
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !205
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw i32 %i.cq, 24
  %i.cs = getelementptr i8, ptr %.24657.i, i64 8
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !7
  %i.ct = getelementptr i8, ptr %.258.i, i64 3
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !205
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw i32 %i.cv, 24
  %i.cx = getelementptr i8, ptr %.24657.i, i64 12
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !7
  %i.cy = getelementptr i8, ptr %.258.i, i64 4    ; 4 uses
  %i.cz = getelementptr i8, ptr %.24657.i, i64 16 ; 2 uses
  %i.da = icmp ult ptr %i.cy, %i.af
  br i1 %i.da, label %.lr.ph59.i, label %.preheader.loopexit.i, !llvm.loop !454

.lr.ph64.i:                                       ; preds = %.lr.ph64.i.preheader, %.lr.ph64.i
  %.363.i = phi ptr [ %i.db, %.lr.ph64.i ], [ %.363.i.ph, %.lr.ph64.i.preheader ] ; 2 uses
  %.34762.i = phi ptr [ %i.df, %.lr.ph64.i ], [ %.34762.i.ph, %.lr.ph64.i.preheader ] ; 2 uses
  %i.db = getelementptr i8, ptr %.363.i, i64 1    ; 2 uses
  %i.dc = load i8, ptr %.363.i, align 1, !tbaa !205
  %i.dd = zext i8 %i.dc to i32
  %i.de = shl nuw i32 %i.dd, 24
  %i.df = getelementptr i8, ptr %.34762.i, i64 4
  store i32 %i.de, ptr %.34762.i, align 4, !tbaa !7
  %exitcond75.not.i = icmp eq ptr %i.db, %scevgep74.i
  br i1 %exitcond75.not.i, label %ucs1lib_utf32_encode.exit, label %.lr.ph64.i, !llvm.loop !455

bb.o:                                             ; preds = %bb.g
  %i.dg = tail call ptr @PyBytesWriter_Create(i64 noundef %i.x) #33 ; 6 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %ucs1lib_utf32_encode.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.dg) #33 ; 3 uses
  br i1 %i.p, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dj = getelementptr i8, ptr %i.di, i64 4
  store i32 65279, ptr %i.di, align 4, !tbaa !7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi ptr [ %i.dj, %bb.q ], [ %i.di, %bb.p ] ; 2 uses
  %i.dk = icmp eq i64 %.val122, 0
  br i1 %i.dk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dl = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.dg) #33
  br label %ucs1lib_utf32_encode.exit

bb.t:                                             ; preds = %bb.r
  %switch.selectcmp = icmp eq i32 %2, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.72, ptr @.str.76
  %switch.selectcmp113 = icmp eq i32 %2, -1
  %switch.select114 = select i1 %switch.selectcmp113, ptr @.str.71, ptr %switch.select ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr null, ptr %i.a, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr null, ptr %i.b, align 8, !tbaa !194
  %i.dm = icmp sgt i64 %.val122, 0
  br i1 %i.dm, label %.lr.ph, label %Py_XDECREF.exit191

.lr.ph:                                           ; preds = %bb.t
  %i.dn = icmp eq i32 %i.k, 2
  %i.do = getelementptr [4 x i8], ptr %.0.i, i64 %.val122 ; 5 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = getelementptr [2 x i8], ptr %.0.i, i64 %.val122 ; 5 uses
  %i.dr = ptrtoint ptr %i.dq to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %raise_encode_exception.exit
  %.081271 = phi i64 [ 0, %.lr.ph ], [ %i.iy, %raise_encode_exception.exit ] ; 4 uses
  %.1208270 = phi ptr [ %.0, %.lr.ph ], [ %.4, %raise_encode_exception.exit ] ; 8 uses
  %i.ds = sub i64 %.val122, %.081271              ; 11 uses
  %i.dt = and i64 %i.ds, -4                       ; 2 uses
  br i1 %i.dn, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.du = getelementptr [2 x i8], ptr %.0.i, i64 %.081271 ; 6 uses
  %i.dv = getelementptr [2 x i8], ptr %i.du, i64 %i.dt ; 3 uses
  %i.dw = icmp ult ptr %i.du, %i.dv               ; 2 uses
  br i1 %i.v, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.dw, label %.lr.ph.i128, label %._crit_edge.i

.lr.ph.i128:                                      ; preds = %bb.w, %bb.x
  %.065109.i = phi ptr [ %i.en, %bb.x ], [ %i.du, %bb.w ] ; 5 uses
  %.070108.i = phi ptr [ %i.eo, %bb.x ], [ %.1208270, %bb.w ] ; 6 uses
  %i.dx = load <4 x i16>, ptr %.065109.i, align 2, !tbaa !208 ; 3 uses
  %i.dy = xor <4 x i16> %i.dx, splat (i16 -10240)
  %i.dz = call i16 @llvm.vector.reduce.and.v4i16(<4 x i16> %i.dy)
  %i.ea = icmp ult i16 %i.dz, 2048
  br i1 %i.ea, label %._crit_edge.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i128
  %i.eb = load i16, ptr %.065109.i, align 2, !tbaa !208
  %i.ec = zext i16 %i.eb to i32
  %i.ed = getelementptr i8, ptr %.065109.i, i64 2
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !208
  store i32 %i.ec, ptr %.070108.i, align 4, !tbaa !7
  %i.ef = zext i16 %i.ee to i32
  %i.eg = getelementptr i8, ptr %.070108.i, i64 4
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !7
  %i.eh = extractelement <4 x i16> %i.dx, i64 2
  %i.ei = zext i16 %i.eh to i32
  %i.ej = getelementptr i8, ptr %.070108.i, i64 8
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !7
  %i.ek = extractelement <4 x i16> %i.dx, i64 3
  %i.el = zext i16 %i.ek to i32
  %i.em = getelementptr i8, ptr %.070108.i, i64 12
  store i32 %i.el, ptr %i.em, align 4, !tbaa !7
  %i.en = getelementptr i8, ptr %.065109.i, i64 8 ; 3 uses
  %i.eo = getelementptr i8, ptr %.070108.i, i64 16 ; 2 uses
  %i.ep = icmp ult ptr %i.en, %i.dv
  br i1 %i.ep, label %.lr.ph.i128, label %._crit_edge.i, !llvm.loop !456

._crit_edge.i:                                    ; preds = %bb.x, %.lr.ph.i128, %bb.w
  %.070.lcssa.i = phi ptr [ %.1208270, %bb.w ], [ %i.eo, %bb.x ], [ %.070108.i, %.lr.ph.i128 ] ; 2 uses
  %.065.lcssa.i = phi ptr [ %i.du, %bb.w ], [ %i.en, %bb.x ], [ %.065109.i, %.lr.ph.i128 ] ; 2 uses
  %i.eq = icmp ult ptr %.065.lcssa.i, %i.dq
  br i1 %i.eq, label %.lr.ph117.i, label %ucs2lib_utf32_encode.exit

.lr.ph117.i:                                      ; preds = %._crit_edge.i, %bb.y
  %.1115.i = phi ptr [ %i.er, %bb.y ], [ %.065.lcssa.i, %._crit_edge.i ] ; 2 uses
end_hunk_5
begin_hunk_6_@_PyUnicode_EncodeUTF32:bb.a
  %i.gx = icmp ult ptr %i.gv, %i.ge
  br i1 %i.gx, label %.lr.ph.i139, label %._crit_edge.i130, !llvm.loop !460

._crit_edge.i130:                                 ; preds = %bb.ae, %.lr.ph.i139, %bb.ad
  %.070.lcssa.i131 = phi ptr [ %.1208270, %bb.ad ], [ %i.gw, %bb.ae ], [ %.070100.i, %.lr.ph.i139 ] ; 2 uses
  %.065.lcssa.i132 = phi ptr [ %i.gd, %bb.ad ], [ %i.gv, %bb.ae ], [ %.065101.i, %.lr.ph.i139 ] ; 2 uses
  %i.gy = icmp ult ptr %.065.lcssa.i132, %i.do
  br i1 %i.gy, label %.lr.ph109.i, label %ucs2lib_utf32_encode.exit

.lr.ph109.i:                                      ; preds = %._crit_edge.i130, %bb.af
  %.1107.i = phi ptr [ %i.gz, %bb.af ], [ %.065.lcssa.i132, %._crit_edge.i130 ] ; 2 uses
  %.171106.i = phi ptr [ %i.hc, %bb.af ], [ %.070.lcssa.i131, %._crit_edge.i130 ] ; 3 uses
  %i.gz = getelementptr i8, ptr %.1107.i, i64 4   ; 3 uses
  %i.ha = load i32, ptr %.1107.i, align 4, !tbaa !7 ; 2 uses
  %i.hb = and i32 %i.ha, -2048
  %.not93.i = icmp eq i32 %i.hb, 55296
  br i1 %.not93.i, label %.loopexit.i135, label %bb.af

bb.af:                                            ; preds = %.lr.ph109.i
  %i.hc = getelementptr i8, ptr %.171106.i, i64 4 ; 2 uses
  store i32 %i.ha, ptr %.171106.i, align 4, !tbaa !7
  %i.hd = icmp ult ptr %i.gz, %i.do
  br i1 %i.hd, label %.lr.ph109.i, label %ucs2lib_utf32_encode.exit, !llvm.loop !461

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.gf, label %.lr.ph114.i, label %._crit_edge115.i

.lr.ph114.i:                                      ; preds = %bb.ag, %bb.ah
  %.3112.i = phi ptr [ %i.hx, %bb.ah ], [ %i.gd, %bb.ag ] ; 7 uses
  %.474111.i = phi ptr [ %i.hy, %bb.ah ], [ %.1208270, %bb.ag ] ; 6 uses
  %i.he = load <4 x i32>, ptr %.3112.i, align 4, !tbaa !7
  %i.hf = and <4 x i32> %i.he, <i32 63488, i32 -1, i32 -1, i32 -1>
  %i.hg = xor <4 x i32> %i.hf, splat (i32 55296)
  %i.hh = call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %i.hg)
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %._crit_edge115.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph114.i
  %i.hj = load i32, ptr %.3112.i, align 4, !tbaa !7
  %i.hk = getelementptr i8, ptr %.3112.i, i64 12
  %i.hl = getelementptr i8, ptr %.3112.i, i64 8
  %i.hm = getelementptr i8, ptr %.3112.i, i64 4
  %i.hn = call noundef i32 @llvm.bswap.i32(i32 %i.hj)
  store i32 %i.hn, ptr %.474111.i, align 4, !tbaa !7
  %i.ho = load i32, ptr %i.hm, align 4, !tbaa !7
  %i.hp = call noundef i32 @llvm.bswap.i32(i32 %i.ho)
  %i.hq = getelementptr i8, ptr %.474111.i, i64 4
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !7
  %i.hr = load i32, ptr %i.hl, align 4, !tbaa !7
  %i.hs = call noundef i32 @llvm.bswap.i32(i32 %i.hr)
  %i.ht = getelementptr i8, ptr %.474111.i, i64 8
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !7
  %i.hu = load i32, ptr %i.hk, align 4, !tbaa !7
  %i.hv = call noundef i32 @llvm.bswap.i32(i32 %i.hu)
  %i.hw = getelementptr i8, ptr %.474111.i, i64 12
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !7
  %i.hx = getelementptr i8, ptr %.3112.i, i64 16  ; 3 uses
  %i.hy = getelementptr i8, ptr %.474111.i, i64 16 ; 2 uses
  %i.hz = icmp ult ptr %i.hx, %i.ge
  br i1 %i.hz, label %.lr.ph114.i, label %._crit_edge115.i, !llvm.loop !462

._crit_edge115.i:                                 ; preds = %bb.ah, %.lr.ph114.i, %bb.ag
  %.474.lcssa.i140 = phi ptr [ %.1208270, %bb.ag ], [ %i.hy, %bb.ah ], [ %.474111.i, %.lr.ph114.i ] ; 2 uses
  %.3.lcssa.i141 = phi ptr [ %i.gd, %bb.ag ], [ %i.hx, %bb.ah ], [ %.3112.i, %.lr.ph114.i ] ; 2 uses
  %i.ia = icmp ult ptr %.3.lcssa.i141, %i.do
  br i1 %i.ia, label %.lr.ph124.i, label %ucs2lib_utf32_encode.exit

.lr.ph124.i:                                      ; preds = %._crit_edge115.i, %bb.ai
  %.4122.i = phi ptr [ %i.ib, %bb.ai ], [ %.3.lcssa.i141, %._crit_edge115.i ] ; 2 uses
  %.575121.i = phi ptr [ %i.if, %bb.ai ], [ %.474.lcssa.i140, %._crit_edge115.i ] ; 3 uses
  %i.ib = getelementptr i8, ptr %.4122.i, i64 4   ; 3 uses
  %i.ic = load i32, ptr %.4122.i, align 4, !tbaa !7 ; 2 uses
  %i.id = and i32 %i.ic, -2048
  %.not94.i = icmp eq i32 %i.id, 55296
  br i1 %.not94.i, label %.loopexit.i135, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph124.i
  %i.ie = call noundef i32 @llvm.bswap.i32(i32 %i.ic)
  %i.if = getelementptr i8, ptr %.575121.i, i64 4 ; 2 uses
  store i32 %i.ie, ptr %.575121.i, align 4, !tbaa !7
  %i.ig = icmp ult ptr %i.ib, %i.do
  br i1 %i.ig, label %.lr.ph124.i, label %ucs2lib_utf32_encode.exit, !llvm.loop !463

.loopexit.i135:                                   ; preds = %.lr.ph109.i, %.lr.ph124.i
  %.9.i136 = phi ptr [ %.575121.i, %.lr.ph124.i ], [ %.171106.i, %.lr.ph109.i ]
  %.6.i137 = phi ptr [ %i.ib, %.lr.ph124.i ], [ %i.gz, %.lr.ph109.i ]
  %i.ih = ptrtoint ptr %.6.i137 to i64
  %i.ii = sub i64 %i.dp, %i.ih
  %i.ij = ashr exact i64 %i.ii, 2
  %.neg.i138 = xor i64 %i.ij, -1
  %i.ik = add i64 %i.ds, %.neg.i138
  br label %ucs2lib_utf32_encode.exit

ucs2lib_utf32_encode.exit:                        ; preds = %bb.af, %bb.ai, %bb.y, %bb.ab, %.loopexit.i135, %._crit_edge115.i, %._crit_edge.i130, %.loopexit.i, %._crit_edge123.i, %._crit_edge.i
  %.2209 = phi ptr [ %i.fx, %bb.ab ], [ %.9.i, %.loopexit.i ], [ %i.if, %bb.ai ], [ %.474.lcssa.i, %._crit_edge123.i ], [ %.070.lcssa.i, %._crit_edge.i ], [ %.9.i136, %.loopexit.i135 ], [ %i.ev, %bb.y ], [ %.474.lcssa.i140, %._crit_edge115.i ], [ %.070.lcssa.i131, %._crit_edge.i130 ], [ %i.hc, %bb.af ] ; 3 uses
  %.pn = phi i64 [ %i.ds, %bb.ab ], [ %i.gc, %.loopexit.i ], [ %i.ds, %bb.ai ], [ %i.ds, %._crit_edge123.i ], [ %i.ds, %._crit_edge.i ], [ %i.ik, %.loopexit.i135 ], [ %i.ds, %bb.y ], [ %i.ds, %._crit_edge115.i ], [ %i.ds, %._crit_edge.i130 ], [ %i.ds, %bb.af ]
  %.182 = add i64 %.pn, %.081271                  ; 6 uses
  %i.il = icmp eq i64 %.182, %.val122
  br i1 %i.il, label %._crit_edge, label %bb.aj

bb.aj:                                            ; preds = %ucs2lib_utf32_encode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.im = add i64 %.182, 1                        ; 3 uses
  %i.in = call fastcc ptr @unicode_encode_call_errorhandler(ptr noundef %1, ptr noundef %i.a, ptr noundef nonnull %switch.select114, ptr noundef nonnull @.str.77, ptr noundef %0, ptr noundef %i.b, i64 noundef %.182, i64 noundef %i.im, ptr noundef %i.c) ; 13 uses
  %.not108 = icmp eq ptr %i.in, null
  br i1 %.not108, label %bb.bh, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.io = getelementptr i8, ptr %i.in, i64 8      ; 2 uses
  %.val115 = load ptr, ptr %i.io, align 8, !tbaa !197
  %i.ip = getelementptr i8, ptr %.val115, i64 168
  %.val118 = load i64, ptr %i.ip, align 8, !tbaa !198 ; 2 uses
  %i.iq = and i64 %.val118, 134217728
  %.not109 = icmp eq i64 %i.iq, 0
  %i.ir = getelementptr i8, ptr %i.in, i64 16
  %.val121 = load i64, ptr %i.ir, align 8, !tbaa !193 ; 9 uses
  br i1 %.not109, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.is = and i64 %.val121, 3
  %.not111 = icmp eq i64 %i.is, 0
  br i1 %.not111, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call fastcc void @make_encode_exception(ptr noundef nonnull %i.b, ptr noundef nonnull %switch.select114, ptr noundef %0, i64 noundef %.182, i64 noundef %i.im, ptr noundef nonnull @.str.77)
  %i.it = load ptr, ptr %i.b, align 8, !tbaa !194 ; 2 uses
  %.not.i142 = icmp eq ptr %i.it, null
  br i1 %.not.i142, label %.loopexit, label %.loopexit.sink.split

bb.an:                                            ; preds = %bb.al
  %i.iu = ashr exact i64 %.val121, 2
  br label %bb.aq

bb.ao:                                            ; preds = %bb.ak
  %i.iv = getelementptr i8, ptr %i.in, i64 32
  %.val120 = load i32, ptr %i.iv, align 8
  %i.iw = and i32 %.val120, 64
  %.not110 = icmp eq i32 %i.iw, 0
  br i1 %.not110, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @make_encode_exception(ptr noundef nonnull %i.b, ptr noundef nonnull %switch.select114, ptr noundef %0, i64 noundef %.182, i64 noundef %i.im, ptr noundef nonnull @.str.77)
  %i.ix = load ptr, ptr %i.b, align 8, !tbaa !194 ; 2 uses
  %.not.i143 = icmp eq ptr %i.ix, null
  br i1 %.not.i143, label %.loopexit, label %.loopexit.sink.split

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %.079 = phi i64 [ %i.iu, %bb.an ], [ %.val121, %bb.ao ]
  %i.iy = load i64, ptr %i.c, align 8, !tbaa !193 ; 3 uses
  %i.iz = sub i64 %.182, %i.iy
  %i.ja = add i64 %i.iz, %.079                    ; 2 uses
  %i.jb = icmp sgt i64 %i.ja, 0
  br i1 %i.jb, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jc = shl i64 %i.ja, 2
  %i.jd = call ptr @PyBytesWriter_GrowAndUpdatePointer(ptr noundef nonnull %i.dg, i64 noundef %i.jc, ptr noundef %.2209) #33 ; 2 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %.loopexit, label %._crit_edge317

._crit_edge317:                                   ; preds = %bb.ar
  %.val.pre = load ptr, ptr %i.io, align 8, !tbaa !197
  %.phi.trans.insert = getelementptr i8, ptr %.val.pre, i64 168
  %.val117.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !198
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge317, %bb.aq
  %.val117 = phi i64 [ %.val117.pre, %._crit_edge317 ], [ %.val118, %bb.aq ]
  %.3 = phi ptr [ %i.jd, %._crit_edge317 ], [ %.2209, %bb.aq ] ; 6 uses
  %i.jf = and i64 %.val117, 134217728
  %.not112 = icmp eq i64 %i.jf, 0
  %i.jg = getelementptr i8, ptr %i.in, i64 32     ; 2 uses
  br i1 %.not112, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.3, ptr align 1 %i.jg, i64 %.val121, i1 false)
  %i.jh = sdiv i64 %.val121, 4
  %i.ji = getelementptr [4 x i8], ptr %.3, i64 %i.jh
  br label %ucs1lib_utf32_encode.exit186

bb.au:                                            ; preds = %bb.as
  %.val.i145 = load i32, ptr %i.jg, align 8       ; 2 uses
  %i.jj = and i32 %.val.i145, 32
  %.not.i146 = icmp eq i32 %i.jj, 0
  br i1 %.not.i146, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jk = and i32 %.val.i145, 64
  %.not.i.i147 = icmp eq i32 %i.jk, 0
  %.0.v.i.i148 = select i1 %.not.i.i147, i64 56, i64 40
  %.0.i.i149 = getelementptr i8, ptr %i.in, i64 %.0.v.i.i148
  br label %_PyUnicode_DATA.exit152

bb.aw:                                            ; preds = %bb.au
  %i.jl = getelementptr i8, ptr %i.in, i64 56
  %.val4.i151 = load ptr, ptr %i.jl, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit152

_PyUnicode_DATA.exit152:                          ; preds = %bb.av, %bb.aw
  %.0.i150 = phi ptr [ %.0.i.i149, %bb.av ], [ %.val4.i151, %bb.aw ] ; 8 uses
  %4 = ptrtoaddr ptr %.0.i150 to i64              ; 4 uses
  %i.jm = getelementptr i8, ptr %.0.i150, i64 %.val121 ; 2 uses
  %i.jn = and i64 %.val121, -4
  %i.jo = getelementptr i8, ptr %.0.i150, i64 %i.jn ; 3 uses
  %i.jp = icmp ult ptr %.0.i150, %i.jo            ; 2 uses
  br i1 %i.v, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_PyUnicode_DATA.exit152
  br i1 %i.jp, label %.lr.ph.i166, label %.preheader48.i154

.preheader48.loopexit.i169:                       ; preds = %.lr.ph.i166
  %.pre76.i170 = ptrtoaddr ptr %i.ks to i64
  br label %.preheader48.i154

.preheader48.i154:                                ; preds = %.preheader48.loopexit.i169, %bb.ax
  %.0.lcssa72.pre-phi.i155 = phi i64 [ %.pre76.i170, %.preheader48.loopexit.i169 ], [ %4, %bb.ax ] ; 2 uses
  %.044.lcssa.i156 = phi ptr [ %i.kt, %.preheader48.loopexit.i169 ], [ %.3, %bb.ax ] ; 7 uses
  %.0.lcssa.i157 = phi ptr [ %i.ks, %.preheader48.loopexit.i169 ], [ %.0.i150, %bb.ax ] ; 7 uses
  %i.jq = icmp ult ptr %.0.lcssa.i157, %i.jm
  br i1 %i.jq, label %.lr.ph55.preheader.i160, label %ucs1lib_utf32_encode.exit186

.lr.ph55.preheader.i160:                          ; preds = %.preheader48.i154
  %i.jr = add i64 %.val121, %4                    ; 2 uses
  %i.js = sub i64 %i.jr, %.0.lcssa72.pre-phi.i155 ; 4 uses
  %scevgep.i161 = getelementptr i8, ptr %.0.lcssa.i157, i64 %i.js ; 2 uses
  %min.iters.check477 = icmp ult i64 %i.js, 12
  br i1 %min.iters.check477, label %.lr.ph55.i162.preheader, label %vector.memcheck471

vector.memcheck471:                               ; preds = %.lr.ph55.preheader.i160
  %i.jt = sub i64 %i.jr, %.0.lcssa72.pre-phi.i155
  %i.ju = shl i64 %i.jt, 2
  %scevgep472 = getelementptr i8, ptr %.044.lcssa.i156, i64 %i.ju
  %bound0473 = icmp ult ptr %.044.lcssa.i156, %scevgep.i161
  %bound1474 = icmp ult ptr %.0.lcssa.i157, %scevgep472
  %found.conflict475 = and i1 %bound0473, %bound1474
  br i1 %found.conflict475, label %.lr.ph55.i162.preheader, label %vector.ph478

vector.ph478:                                     ; preds = %vector.memcheck471
  %n.vec480 = and i64 %i.js, -8                   ; 4 uses
  %i.jv = getelementptr i8, ptr %.0.lcssa.i157, i64 %n.vec480
  %i.jw = shl i64 %n.vec480, 2
  %i.jx = getelementptr i8, ptr %.044.lcssa.i156, i64 %i.jw ; 2 uses
  br label %vector.body481

vector.body481:                                   ; preds = %vector.body481, %vector.ph478
  %index482 = phi i64 [ 0, %vector.ph478 ], [ %index.next487, %vector.body481 ] ; 3 uses
  %next.gep483 = getelementptr i8, ptr %.0.lcssa.i157, i64 %index482 ; 2 uses
  %i.jy = shl i64 %index482, 2
  %next.gep484 = getelementptr i8, ptr %.044.lcssa.i156, i64 %i.jy ; 2 uses
  %i.jz = getelementptr i8, ptr %next.gep483, i64 4
  %wide.load485 = load <4 x i8>, ptr %next.gep483, align 1, !tbaa !205, !alias.scope !464
  %wide.load486 = load <4 x i8>, ptr %i.jz, align 1, !tbaa !205, !alias.scope !464
  %i.ka = zext <4 x i8> %wide.load485 to <4 x i32>
  %i.kb = zext <4 x i8> %wide.load486 to <4 x i32>
  %i.kc = getelementptr i8, ptr %next.gep484, i64 16
  store <4 x i32> %i.ka, ptr %next.gep484, align 4, !tbaa !7, !alias.scope !467, !noalias !464
  store <4 x i32> %i.kb, ptr %i.kc, align 4, !tbaa !7, !alias.scope !467, !noalias !464
  %index.next487 = add nuw i64 %index482, 8       ; 2 uses
  %i.kd = icmp eq i64 %index.next487, %n.vec480
  br i1 %i.kd, label %middle.block488, label %vector.body481, !llvm.loop !469

middle.block488:                                  ; preds = %vector.body481
  %cmp.n489 = icmp eq i64 %i.js, %n.vec480
  br i1 %cmp.n489, label %ucs1lib_utf32_encode.exit186, label %.lr.ph55.i162.preheader

.lr.ph55.i162.preheader:                          ; preds = %vector.memcheck471, %.lr.ph55.preheader.i160, %middle.block488
  %.154.i163.ph = phi ptr [ %.0.lcssa.i157, %vector.memcheck471 ], [ %.0.lcssa.i157, %.lr.ph55.preheader.i160 ], [ %i.jv, %middle.block488 ]
  %.14553.i164.ph = phi ptr [ %.044.lcssa.i156, %vector.memcheck471 ], [ %.044.lcssa.i156, %.lr.ph55.preheader.i160 ], [ %i.jx, %middle.block488 ]
  br label %.lr.ph55.i162

.lr.ph.i166:                                      ; preds = %bb.ax, %.lr.ph.i166
  %.051.i167 = phi ptr [ %i.ks, %.lr.ph.i166 ], [ %.0.i150, %bb.ax ] ; 5 uses
  %.04450.i168 = phi ptr [ %i.kt, %.lr.ph.i166 ], [ %.3, %bb.ax ] ; 5 uses
  %i.ke = load i8, ptr %.051.i167, align 1, !tbaa !205
  %i.kf = zext i8 %i.ke to i32
  store i32 %i.kf, ptr %.04450.i168, align 4, !tbaa !7
  %i.kg = getelementptr i8, ptr %.051.i167, i64 1
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !205
  %i.ki = zext i8 %i.kh to i32
  %i.kj = getelementptr i8, ptr %.04450.i168, i64 4
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !7
  %i.kk = getelementptr i8, ptr %.051.i167, i64 2
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !205
  %i.km = zext i8 %i.kl to i32
  %i.kn = getelementptr i8, ptr %.04450.i168, i64 8
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !7
  %i.ko = getelementptr i8, ptr %.051.i167, i64 3
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !205
  %i.kq = zext i8 %i.kp to i32
  %i.kr = getelementptr i8, ptr %.04450.i168, i64 12
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !7
  %i.ks = getelementptr i8, ptr %.051.i167, i64 4 ; 4 uses
  %i.kt = getelementptr i8, ptr %.04450.i168, i64 16 ; 2 uses
  %i.ku = icmp ult ptr %i.ks, %i.jo
  br i1 %i.ku, label %.lr.ph.i166, label %.preheader48.loopexit.i169, !llvm.loop !446

.lr.ph55.i162:                                    ; preds = %.lr.ph55.i162.preheader, %.lr.ph55.i162
  %.154.i163 = phi ptr [ %i.kv, %.lr.ph55.i162 ], [ %.154.i163.ph, %.lr.ph55.i162.preheader ] ; 2 uses
  %.14553.i164 = phi ptr [ %i.ky, %.lr.ph55.i162 ], [ %.14553.i164.ph, %.lr.ph55.i162.preheader ] ; 2 uses
  %i.kv = getelementptr i8, ptr %.154.i163, i64 1 ; 2 uses
  %i.kw = load i8, ptr %.154.i163, align 1, !tbaa !205
  %i.kx = zext i8 %i.kw to i32
  %i.ky = getelementptr i8, ptr %.14553.i164, i64 4 ; 2 uses
  store i32 %i.kx, ptr %.14553.i164, align 4, !tbaa !7
  %exitcond.not.i165 = icmp eq ptr %i.kv, %scevgep.i161
  br i1 %exitcond.not.i165, label %ucs1lib_utf32_encode.exit186, label %.lr.ph55.i162, !llvm.loop !470

bb.ay:                                            ; preds = %_PyUnicode_DATA.exit152
  br i1 %i.jp, label %.lr.ph59.i181, label %.preheader.i171

.preheader.loopexit.i184:                         ; preds = %.lr.ph59.i181
  %.pre.i185 = ptrtoaddr ptr %i.mh to i64
  br label %.preheader.i171

.preheader.i171:                                  ; preds = %.preheader.loopexit.i184, %bb.ay
  %.2.lcssa73.pre-phi.i172 = phi i64 [ %.pre.i185, %.preheader.loopexit.i184 ], [ %4, %bb.ay ] ; 2 uses
  %.246.lcssa.i173 = phi ptr [ %i.mi, %.preheader.loopexit.i184 ], [ %.3, %bb.ay ] ; 7 uses
  %.2.lcssa.i174 = phi ptr [ %i.mh, %.preheader.loopexit.i184 ], [ %.0.i150, %bb.ay ] ; 7 uses
  %i.kz = icmp ult ptr %.2.lcssa.i174, %i.jm
  br i1 %i.kz, label %.lr.ph64.preheader.i175, label %ucs1lib_utf32_encode.exit186

.lr.ph64.preheader.i175:                          ; preds = %.preheader.i171
  %i.la = add i64 %.val121, %4                    ; 2 uses
  %i.lb = sub i64 %i.la, %.2.lcssa73.pre-phi.i172 ; 4 uses
  %scevgep74.i176 = getelementptr i8, ptr %.2.lcssa.i174, i64 %i.lb ; 2 uses
  %min.iters.check = icmp ult i64 %i.lb, 8
  br i1 %min.iters.check, label %.lr.ph64.i177.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph64.preheader.i175
  %i.lc = sub i64 %i.la, %.2.lcssa73.pre-phi.i172
  %i.ld = shl i64 %i.lc, 2
  %scevgep = getelementptr i8, ptr %.246.lcssa.i173, i64 %i.ld
  %bound0 = icmp ult ptr %.246.lcssa.i173, %scevgep74.i176
  %bound1 = icmp ult ptr %.2.lcssa.i174, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph64.i177.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.lb, -8                      ; 4 uses
  %i.le = getelementptr i8, ptr %.2.lcssa.i174, i64 %n.vec
  %i.lf = shl i64 %n.vec, 2
  %i.lg = getelementptr i8, ptr %.246.lcssa.i173, i64 %i.lf ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.2.lcssa.i174, i64 %index ; 2 uses
  %i.lh = shl i64 %index, 2
  %next.gep468 = getelementptr i8, ptr %.246.lcssa.i173, i64 %i.lh ; 2 uses
  %i.li = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !205, !alias.scope !471
  %wide.load469 = load <4 x i8>, ptr %i.li, align 1, !tbaa !205, !alias.scope !471
  %i.lj = zext <4 x i8> %wide.load to <4 x i32>
  %i.lk = zext <4 x i8> %wide.load469 to <4 x i32>
  %i.ll = shl nuw <4 x i32> %i.lj, splat (i32 24)
  %i.lm = shl nuw <4 x i32> %i.lk, splat (i32 24)
  %i.ln = getelementptr i8, ptr %next.gep468, i64 16
  store <4 x i32> %i.ll, ptr %next.gep468, align 4, !tbaa !7, !alias.scope !474, !noalias !471
  store <4 x i32> %i.lm, ptr %i.ln, align 4, !tbaa !7, !alias.scope !474, !noalias !471
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lo = icmp eq i64 %index.next, %n.vec
  br i1 %i.lo, label %middle.block, label %vector.body, !llvm.loop !476

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lb, %n.vec
  br i1 %cmp.n, label %ucs1lib_utf32_encode.exit186, label %.lr.ph64.i177.preheader

.lr.ph64.i177.preheader:                          ; preds = %vector.memcheck, %.lr.ph64.preheader.i175, %middle.block
  %.363.i178.ph = phi ptr [ %.2.lcssa.i174, %vector.memcheck ], [ %.2.lcssa.i174, %.lr.ph64.preheader.i175 ], [ %i.le, %middle.block ]
  %.34762.i179.ph = phi ptr [ %.246.lcssa.i173, %vector.memcheck ], [ %.246.lcssa.i173, %.lr.ph64.preheader.i175 ], [ %i.lg, %middle.block ]
  br label %.lr.ph64.i177

.lr.ph59.i181:                                    ; preds = %bb.ay, %.lr.ph59.i181
  %.258.i182 = phi ptr [ %i.mh, %.lr.ph59.i181 ], [ %.0.i150, %bb.ay ] ; 5 uses
  %.24657.i183 = phi ptr [ %i.mi, %.lr.ph59.i181 ], [ %.3, %bb.ay ] ; 5 uses
  %i.lp = load i8, ptr %.258.i182, align 1, !tbaa !205
  %i.lq = zext i8 %i.lp to i32
  %i.lr = shl nuw i32 %i.lq, 24
  store i32 %i.lr, ptr %.24657.i183, align 4, !tbaa !7
  %i.ls = getelementptr i8, ptr %.258.i182, i64 1
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !205
  %i.lu = zext i8 %i.lt to i32
  %i.lv = shl nuw i32 %i.lu, 24
  %i.lw = getelementptr i8, ptr %.24657.i183, i64 4
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !7
  %i.lx = getelementptr i8, ptr %.258.i182, i64 2
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !205
  %i.lz = zext i8 %i.ly to i32
  %i.ma = shl nuw i32 %i.lz, 24
  %i.mb = getelementptr i8, ptr %.24657.i183, i64 8
  store i32 %i.ma, ptr %i.mb, align 4, !tbaa !7
  %i.mc = getelementptr i8, ptr %.258.i182, i64 3
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !205
  %i.me = zext i8 %i.md to i32
  %i.mf = shl nuw i32 %i.me, 24
  %i.mg = getelementptr i8, ptr %.24657.i183, i64 12
  store i32 %i.mf, ptr %i.mg, align 4, !tbaa !7
  %i.mh = getelementptr i8, ptr %.258.i182, i64 4 ; 4 uses
  %i.mi = getelementptr i8, ptr %.24657.i183, i64 16 ; 2 uses
  %i.mj = icmp ult ptr %i.mh, %i.jo
  br i1 %i.mj, label %.lr.ph59.i181, label %.preheader.loopexit.i184, !llvm.loop !454

.lr.ph64.i177:                                    ; preds = %.lr.ph64.i177.preheader, %.lr.ph64.i177
  %.363.i178 = phi ptr [ %i.mk, %.lr.ph64.i177 ], [ %.363.i178.ph, %.lr.ph64.i177.preheader ] ; 2 uses
  %.34762.i179 = phi ptr [ %i.mo, %.lr.ph64.i177 ], [ %.34762.i179.ph, %.lr.ph64.i177.preheader ] ; 2 uses
  %i.mk = getelementptr i8, ptr %.363.i178, i64 1 ; 2 uses
  %i.ml = load i8, ptr %.363.i178, align 1, !tbaa !205
  %i.mm = zext i8 %i.ml to i32
  %i.mn = shl nuw i32 %i.mm, 24
  %i.mo = getelementptr i8, ptr %.34762.i179, i64 4 ; 2 uses
  store i32 %i.mn, ptr %.34762.i179, align 4, !tbaa !7
  %exitcond75.not.i180 = icmp eq ptr %i.mk, %scevgep74.i176
  br i1 %exitcond75.not.i180, label %ucs1lib_utf32_encode.exit186, label %.lr.ph64.i177, !llvm.loop !477

ucs1lib_utf32_encode.exit186:                     ; preds = %.lr.ph55.i162, %.lr.ph64.i177, %middle.block488, %middle.block, %.preheader.i171, %.preheader48.i154, %bb.at
  %.4 = phi ptr [ %i.ji, %bb.at ], [ %i.mo, %.lr.ph64.i177 ], [ %.246.lcssa.i173, %.preheader.i171 ], [ %.044.lcssa.i156, %.preheader48.i154 ], [ %i.lg, %middle.block ], [ %i.jx, %middle.block488 ], [ %i.ky, %.lr.ph55.i162 ] ; 2 uses
  %i.mp = load i32, ptr %i.in, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.mp, -1
  br i1 %.not.i, label %bb.az, label %raise_encode_exception.exit

bb.az:                                            ; preds = %ucs1lib_utf32_encode.exit186
  %i.mq = add nsw i32 %i.mp, -1                   ; 2 uses
  store i32 %i.mq, ptr %i.in, align 8, !tbaa !205
  %i.mr = icmp eq i32 %i.mq, 0
  br i1 %i.mr, label %bb.ba, label %raise_encode_exception.exit

bb.ba:                                            ; preds = %bb.az
  call void @_Py_Dealloc(ptr noundef nonnull %i.in) #33
  br label %raise_encode_exception.exit

raise_encode_exception.exit:                      ; preds = %bb.ba, %bb.az, %ucs1lib_utf32_encode.exit186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.ms = icmp slt i64 %i.iy, %.val122
  br i1 %i.ms, label %bb.u, label %._crit_edge, !llvm.loop !478

._crit_edge:                                      ; preds = %ucs2lib_utf32_encode.exit, %raise_encode_exception.exit
  %.6210.ph.ph = phi ptr [ %.2209, %ucs2lib_utf32_encode.exit ], [ %.4, %raise_encode_exception.exit ] ; 4 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !194 ; 4 uses
  %.not.i187 = icmp eq ptr %.pre, null
  br i1 %.not.i187, label %Py_XDECREF.exit, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge
  %i.mt = load i32, ptr %.pre, align 8, !tbaa !205 ; 2 uses
  %.not.i.i188 = icmp sgt i32 %i.mt, -1
  br i1 %.not.i.i188, label %bb.bc, label %Py_XDECREF.exit

bb.bc:                                            ; preds = %bb.bb
  %i.mu = add nsw i32 %i.mt, -1                   ; 2 uses
  store i32 %i.mu, ptr %.pre, align 8, !tbaa !205
  %i.mv = icmp eq i32 %i.mu, 0
  br i1 %i.mv, label %bb.bd, label %Py_XDECREF.exit

bb.bd:                                            ; preds = %bb.bc
  call void @_Py_Dealloc(ptr noundef nonnull %.pre) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %._crit_edge, %bb.bb, %bb.bc, %bb.bd
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !194  ; 4 uses
  %.not.i189 = icmp eq ptr %.pr, null
  br i1 %.not.i189, label %Py_XDECREF.exit191, label %bb.be

bb.be:                                            ; preds = %Py_XDECREF.exit
  %i.mw = load i32, ptr %.pr, align 8, !tbaa !205 ; 2 uses
  %.not.i.i190 = icmp sgt i32 %i.mw, -1
  br i1 %.not.i.i190, label %bb.bf, label %Py_XDECREF.exit191

bb.bf:                                            ; preds = %bb.be
  %i.mx = add nsw i32 %i.mw, -1                   ; 2 uses
  store i32 %i.mx, ptr %.pr, align 8, !tbaa !205
  %i.my = icmp eq i32 %i.mx, 0
  br i1 %i.my, label %bb.bg, label %Py_XDECREF.exit191

bb.bg:                                            ; preds = %bb.bf
  call void @_Py_Dealloc(ptr noundef nonnull %.pr) #33
  br label %Py_XDECREF.exit191

Py_XDECREF.exit191:                               ; preds = %bb.t, %Py_XDECREF.exit, %bb.be, %bb.bf, %bb.bg
  %.6210.ph376379 = phi ptr [ %.6210.ph.ph, %bb.bg ], [ %.6210.ph.ph, %Py_XDECREF.exit ], [ %.6210.ph.ph, %bb.be ], [ %.6210.ph.ph, %bb.bf ], [ %.0, %bb.t ]
  %i.mz = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.dg, ptr noundef %.6210.ph376379) #33
  br label %bb.bq

bb.bh:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %Py_XDECREF.exit194

.loopexit.sink.split:                             ; preds = %bb.ap, %bb.am
  %.sink = phi ptr [ %i.it, %bb.am ], [ %i.ix, %bb.ap ]
  %i.na = call ptr @PyCodec_StrictErrors(ptr noundef nonnull %.sink) #33 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ar, %.loopexit.sink.split, %bb.ap, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.nb = load i32, ptr %i.in, align 8, !tbaa !205 ; 2 uses
  %.not.i.i193 = icmp sgt i32 %i.nb, -1
  br i1 %.not.i.i193, label %bb.bi, label %Py_XDECREF.exit194

bb.bi:                                            ; preds = %.loopexit
  %i.nc = add nsw i32 %i.nb, -1                   ; 2 uses
  store i32 %i.nc, ptr %i.in, align 8, !tbaa !205
  %i.nd = icmp eq i32 %i.nc, 0
  br i1 %i.nd, label %bb.bj, label %Py_XDECREF.exit194

bb.bj:                                            ; preds = %bb.bi
  call void @_Py_Dealloc(ptr noundef nonnull %i.in) #33
  br label %Py_XDECREF.exit194

Py_XDECREF.exit194:                               ; preds = %bb.bh, %.loopexit, %bb.bi, %bb.bj
  %i.ne = load ptr, ptr %i.a, align 8, !tbaa !194 ; 4 uses
  %.not.i195 = icmp eq ptr %i.ne, null
  br i1 %.not.i195, label %Py_XDECREF.exit197, label %bb.bk

bb.bk:                                            ; preds = %Py_XDECREF.exit194
end_hunk_6
begin_hunk_7_@PyUnicode_AsEncodedUnicode:bb.a
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.f, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeLocaleAndSize(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_Py_GetErrorHandler(ptr noundef %2)
  %i.b = tail call fastcc ptr @unicode_decode_locale(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, i32 noundef 1)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @unicode_decode_locale(ptr noundef %0, i64 noundef %1, i32 noundef range(i32 1, 9) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 %1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !205
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #34
  %.not19 = icmp eq i64 %1, %i.f
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.54) #33
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.h = call i32 @_Py_DecodeLocaleEx(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %3, i32 noundef %2) #33
  switch i32 %i.h, label %bb.j [
    i32 0, label %bb.k
    i32 -2, label %bb.e
    i32 -3, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @PyExc_UnicodeDecodeError, align 8, !tbaa !194
  %i.j = load i64, ptr %i.b, align 8, !tbaa !193  ; 2 uses
  %i.k = add i64 %i.j, 1
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !355
  %i.m = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %i.i, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.166, ptr noundef nonnull %0, i64 noundef %1, i64 noundef %i.j, i64 noundef %i.k, ptr noundef %i.l) #33 ; 5 uses
  %.not21 = icmp eq ptr %i.m, null
  br i1 %.not21, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call ptr @PyCodec_StrictErrors(ptr noundef nonnull %i.m) #33 ; 0 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !205  ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.m, align 8, !tbaa !205
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.m) #33
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.167) #33
  br label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.d
  %i.s = call ptr @PyErr_NoMemory() #33           ; 0 uses
  br label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !354
  %i.u = load i64, ptr %i.b, align 8, !tbaa !193
  %i.v = call ptr @PyUnicode_FromWideChar(ptr noundef %i.t, i64 noundef %i.u)
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !354
  call void @PyMem_RawFree(ptr noundef %i.w) #33
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.j, %bb.i, %bb.e, %bb.k
  %.0 = phi ptr [ %i.v, %bb.k ], [ null, %bb.e ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.l

bb.l:                                             ; preds = %Py_DECREF.exit, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %.0, %Py_DECREF.exit ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeLocale(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #34
  %i.b = tail call i32 @_Py_GetErrorHandler(ptr noundef %1)
  %i.c = tail call fastcc ptr @unicode_decode_locale(ptr noundef nonnull %0, i64 noundef %i.a, i32 noundef %i.b, i32 noundef 1)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeFSDefault(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #34 ; 3 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 11840
  %i.e = load i32, ptr %i.d, align 8, !tbaa !391
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 11856
  %i.g = load i32, ptr %i.f, align 8, !tbaa !392
  %i.h = getelementptr i8, ptr %i.c, i64 11848
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !393
  %i.j = tail call fastcc ptr @unicode_decode_utf8(ptr noundef nonnull %0, i64 noundef %i.a, i32 noundef %i.g, ptr noundef %i.i, ptr noundef null)
  br label %PyUnicode_DecodeFSDefaultAndSize.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.c, i64 11832
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !394  ; 2 uses
  %.not18.i = icmp eq ptr %i.l, null
  br i1 %.not18.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.c, i64 11848
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !393
  %i.o = tail call ptr @PyUnicode_Decode(ptr noundef nonnull %0, i64 noundef %i.a, ptr noundef nonnull %i.l, ptr noundef %i.n)
  br label %PyUnicode_DecodeFSDefaultAndSize.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call ptr @_PyInterpreterState_GetConfig(ptr noundef nonnull %i.c) #33
  %i.q = getelementptr i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !395
  %i.s = tail call fastcc i32 @get_error_handler_wide(ptr noundef %i.r)
  %i.t = tail call fastcc ptr @unicode_decode_locale(ptr noundef nonnull %0, i64 noundef %i.a, i32 noundef %i.s, i32 noundef 0)
  br label %PyUnicode_DecodeFSDefaultAndSize.exit

PyUnicode_DecodeFSDefaultAndSize.exit:            ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.d ], [ %i.t, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeFSDefaultAndSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 11840
  %i.d = load i32, ptr %i.c, align 8, !tbaa !391
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 11856
  %i.f = load i32, ptr %i.e, align 8, !tbaa !392
  %i.g = getelementptr i8, ptr %i.b, i64 11848
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !393
  %i.i = tail call fastcc ptr @unicode_decode_utf8(ptr noundef %0, i64 noundef %1, i32 noundef %i.f, ptr noundef %i.h, ptr noundef null)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.b, i64 11832
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.b, i64 11848
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !393
  %i.n = tail call ptr @PyUnicode_Decode(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.k, ptr noundef %i.m)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = tail call ptr @_PyInterpreterState_GetConfig(ptr noundef nonnull %i.b) #33
  %i.p = getelementptr i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !395
  %i.r = tail call fastcc i32 @get_error_handler_wide(ptr noundef %i.q)
  %i.s = tail call fastcc ptr @unicode_decode_locale(ptr noundef %0, i64 noundef %1, i32 noundef %i.r, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.d ], [ %i.s, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @unicode_decode_utf8(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #1 {
bb.a:
  %5 = ptrtoaddr ptr %0 to i64
  %6 = alloca %struct._PyUnicodeWriter, align 8   ; 7 uses
  switch i64 %1, label %bb.h [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.not71 = icmp eq ptr %4, null
  br i1 %.not71, label %get_latin1_char.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %4, align 8, !tbaa !193
  br label %get_latin1_char.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !205     ; 2 uses
  %i.b = icmp sgt i8 %i.a, -1
  br i1 %i.b, label %bb.e, label %.thread81

bb.e:                                             ; preds = %bb.d
  %.not70 = icmp eq ptr %4, null
  br i1 %.not70, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %4, align 8, !tbaa !193
  %.pr = load i8, ptr %0, align 1, !tbaa !205     ; 3 uses
  %i.c = icmp sgt i8 %.pr, -1
  br i1 %i.c, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.e, %bb.f
  %i.d = phi i8 [ %.pr, %bb.f ], [ %i.a, %bb.e ]
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.e
  br label %get_latin1_char.exit

bb.g:                                             ; preds = %bb.f
  %i.g = and i8 %.pr, 127
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.h
  br label %get_latin1_char.exit

bb.h:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %1, 9223372036854775751
  br i1 %i.j, label %bb.i, label %.thread81

bb.i:                                             ; preds = %bb.h
  %i.k = tail call ptr @PyErr_NoMemory() #33      ; 0 uses
  br label %get_latin1_char.exit

.thread81:                                        ; preds = %bb.d, %bb.h
  %i.l = getelementptr i8, ptr %0, i64 %1         ; 8 uses
  %i.m = tail call fastcc i64 @find_first_nonascii(ptr noundef %0, ptr noundef %i.l) ; 4 uses
  %i.n = icmp eq i64 %i.m, %1
  br i1 %i.n, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.thread81
  %i.o = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef 127) ; 6 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %get_latin1_char.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 32
  %.val.i = load i32, ptr %i.q, align 8           ; 2 uses
  %i.r = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.s, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.o, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.m:                                             ; preds = %bb.k
  %i.t = getelementptr i8, ptr %i.o, i64 56
  %.val4.i = load ptr, ptr %i.t, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.l, %bb.m
  %.0.i = phi ptr [ %.0.i.i, %bb.l ], [ %.val4.i, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i, ptr align 1 %0, i64 %1, i1 false)
  %.not69 = icmp eq ptr %4, null
  br i1 %.not69, label %get_latin1_char.exit, label %bb.n

bb.n:                                             ; preds = %_PyUnicode_DATA.exit
  store i64 %1, ptr %4, align 8, !tbaa !193
  br label %get_latin1_char.exit

bb.o:                                             ; preds = %.thread81
  %i.u = getelementptr i8, ptr %0, i64 %i.m       ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !205   ; 3 uses
  %i.w = icmp eq i32 %2, 1
  %i.x = icmp eq ptr %4, null
  %or.cond.not68 = and i1 %i.w, %i.x
  %i.y = icmp ugt i8 %i.v, -63
  %or.cond4 = select i1 %or.cond.not68, i1 %i.y, i1 false
  br i1 %or.cond4, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.z = ptrtoint ptr %i.l to i64
  %i.aa = icmp samesign ugt i64 %1, 7
  br i1 %i.aa, label %.preheader40.i, label %.loopexit.i

.preheader40.i:                                   ; preds = %bb.p
  %i.ab = ptrtoint ptr %0 to i64
  %i.ac = and i64 %i.ab, 7
  %.not41.i = icmp eq i64 %i.ac, 0
  br i1 %.not41.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %.preheader40.i
  %.030.lcssa.i = phi i64 [ 0, %.preheader40.i ], [ %i.am, %.lr.ph.i ], [ %i.ax, %.lr.ph.i.1 ], [ %i.bi, %.lr.ph.i.2 ], [ %i.bt, %.lr.ph.i.3 ], [ %i.ce, %.lr.ph.i.4 ], [ %i.cp, %.lr.ph.i.5 ], [ %i.da, %.lr.ph.i.6 ], [ %i.dm, %.lr.ph.i.7 ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %0, %.preheader40.i ], [ %i.ae, %.lr.ph.i ], [ %i.ap, %.lr.ph.i.1 ], [ %i.ba, %.lr.ph.i.2 ], [ %i.bl, %.lr.ph.i.3 ], [ %i.bw, %.lr.ph.i.4 ], [ %i.ch, %.lr.ph.i.5 ], [ %i.cs, %.lr.ph.i.6 ], [ %i.dd, %.lr.ph.i.7 ] ; 3 uses
  %i.ad = getelementptr i8, ptr %.0.lcssa.i, i64 8
  %.not3851.i = icmp ugt ptr %i.ad, %i.l
  br i1 %.not3851.i, label %.loopexit.i, label %.lr.ph54.i

.lr.ph.i:                                         ; preds = %.preheader40.i
  %i.ae = getelementptr i8, ptr %0, i64 1         ; 3 uses
  %i.af = load i8, ptr %0, align 1, !tbaa !205
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = xor i32 %i.ag, -1
  %i.ai = lshr i32 %i.ah, 7
  %i.aj = lshr i32 %i.ag, 6
  %i.ak = or i32 %i.ai, %i.aj
  %i.al = and i32 %i.ak, 1                        ; 2 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = ptrtoint ptr %i.ae to i64
  %i.ao = and i64 %i.an, 7
  %.not.i72 = icmp eq i64 %i.ao, 0
  br i1 %.not.i72, label %.preheader.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.ap = getelementptr i8, ptr %0, i64 2         ; 3 uses
  %i.aq = load i8, ptr %i.ae, align 1, !tbaa !205
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = xor i32 %i.ar, -1
  %i.at = lshr i32 %i.as, 7
  %i.au = lshr i32 %i.ar, 6
  %i.av = or i32 %i.at, %i.au
  %i.aw = and i32 %i.av, 1
  %narrow = add nuw nsw i32 %i.al, %i.aw          ; 2 uses
  %i.ax = zext nneg i32 %narrow to i64
  %i.ay = ptrtoint ptr %i.ap to i64
  %i.az = and i64 %i.ay, 7
  %.not.i72.1 = icmp eq i64 %i.az, 0
  br i1 %.not.i72.1, label %.preheader.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.ba = getelementptr i8, ptr %0, i64 3         ; 3 uses
  %i.bb = load i8, ptr %i.ap, align 1, !tbaa !205
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = xor i32 %i.bc, -1
  %i.be = lshr i32 %i.bd, 7
  %i.bf = lshr i32 %i.bc, 6
  %i.bg = or i32 %i.be, %i.bf
  %i.bh = and i32 %i.bg, 1
  %narrow124 = add nuw nsw i32 %narrow, %i.bh     ; 2 uses
  %i.bi = zext nneg i32 %narrow124 to i64
  %i.bj = ptrtoint ptr %i.ba to i64
  %i.bk = and i64 %i.bj, 7
  %.not.i72.2 = icmp eq i64 %i.bk, 0
  br i1 %.not.i72.2, label %.preheader.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.bl = getelementptr i8, ptr %0, i64 4         ; 3 uses
  %i.bm = load i8, ptr %i.ba, align 1, !tbaa !205
  %i.bn = zext i8 %i.bm to i32                    ; 2 uses
  %i.bo = xor i32 %i.bn, -1
  %i.bp = lshr i32 %i.bo, 7
  %i.bq = lshr i32 %i.bn, 6
  %i.br = or i32 %i.bp, %i.bq
  %i.bs = and i32 %i.br, 1
  %narrow125 = add nuw nsw i32 %narrow124, %i.bs  ; 2 uses
  %i.bt = zext nneg i32 %narrow125 to i64
  %i.bu = ptrtoint ptr %i.bl to i64
  %i.bv = and i64 %i.bu, 7
  %.not.i72.3 = icmp eq i64 %i.bv, 0
  br i1 %.not.i72.3, label %.preheader.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.bw = getelementptr i8, ptr %0, i64 5         ; 3 uses
  %i.bx = load i8, ptr %i.bl, align 1, !tbaa !205
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = xor i32 %i.by, -1
  %i.ca = lshr i32 %i.bz, 7
  %i.cb = lshr i32 %i.by, 6
  %i.cc = or i32 %i.ca, %i.cb
  %i.cd = and i32 %i.cc, 1
  %narrow126 = add nuw nsw i32 %narrow125, %i.cd  ; 2 uses
  %i.ce = zext nneg i32 %narrow126 to i64
  %i.cf = ptrtoint ptr %i.bw to i64
  %i.cg = and i64 %i.cf, 7
  %.not.i72.4 = icmp eq i64 %i.cg, 0
  br i1 %.not.i72.4, label %.preheader.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.ch = getelementptr i8, ptr %0, i64 6         ; 3 uses
  %i.ci = load i8, ptr %i.bw, align 1, !tbaa !205
  %i.cj = zext i8 %i.ci to i32                    ; 2 uses
  %i.ck = xor i32 %i.cj, -1
  %i.cl = lshr i32 %i.ck, 7
  %i.cm = lshr i32 %i.cj, 6
  %i.cn = or i32 %i.cl, %i.cm
  %i.co = and i32 %i.cn, 1
  %narrow127 = add nuw nsw i32 %narrow126, %i.co  ; 2 uses
  %i.cp = zext nneg i32 %narrow127 to i64
  %i.cq = ptrtoint ptr %i.ch to i64
  %i.cr = and i64 %i.cq, 7
  %.not.i72.5 = icmp eq i64 %i.cr, 0
  br i1 %.not.i72.5, label %.preheader.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.cs = getelementptr i8, ptr %0, i64 7         ; 3 uses
  %i.ct = load i8, ptr %i.ch, align 1, !tbaa !205
  %i.cu = zext i8 %i.ct to i32                    ; 2 uses
  %i.cv = xor i32 %i.cu, -1
  %i.cw = lshr i32 %i.cv, 7
  %i.cx = lshr i32 %i.cu, 6
  %i.cy = or i32 %i.cw, %i.cx
  %i.cz = and i32 %i.cy, 1
  %narrow128 = add nuw nsw i32 %narrow127, %i.cz
  %i.da = zext i32 %narrow128 to i64              ; 2 uses
  %i.db = ptrtoint ptr %i.cs to i64
  %i.dc = and i64 %i.db, 7
  %.not.i72.6 = icmp eq i64 %i.dc, 0
  br i1 %.not.i72.6, label %.preheader.i, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %.lr.ph.i.6
  %i.dd = getelementptr i8, ptr %0, i64 8
  %i.de = load i8, ptr %i.cs, align 1, !tbaa !205
  %i.df = zext i8 %i.de to i32                    ; 2 uses
  %i.dg = xor i32 %i.df, -1
  %i.dh = lshr i32 %i.dg, 7
  %i.di = lshr i32 %i.df, 6
  %i.dj = or i32 %i.dh, %i.di
  %i.dk = and i32 %i.dj, 1
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = add nuw nsw i64 %i.da, %i.dl
  br label %.preheader.i

.lr.ph54.i:                                       ; preds = %.preheader.i, %._crit_edge.i
  %.153.i = phi ptr [ %.2.lcssa.i, %._crit_edge.i ], [ %.0.lcssa.i, %.preheader.i ] ; 5 uses
  %.13152.i = phi i64 [ %i.ek, %._crit_edge.i ], [ %.030.lcssa.i, %.preheader.i ]
  %i.dn = ptrtoint ptr %.153.i to i64
  %i.do = sub i64 %i.z, %i.dn
  %i.dp = icmp sgt i64 %i.do, 2040
  %i.dq = getelementptr i8, ptr %.153.i, i64 2040
  %spec.select.i = select i1 %i.dp, ptr %i.dq, ptr %i.l ; 2 uses
  %i.dr = getelementptr i8, ptr %.153.i, i64 8    ; 2 uses
  %.not3945.i = icmp ugt ptr %i.dr, %spec.select.i
  br i1 %.not3945.i, label %._crit_edge.i, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph54.i, %.lr.ph48.i
  %i.ds = phi ptr [ %i.ea, %.lr.ph48.i ], [ %i.dr, %.lr.ph54.i ] ; 3 uses
  %.247.i = phi ptr [ %i.ds, %.lr.ph48.i ], [ %.153.i, %.lr.ph54.i ]
  %.03446.i = phi i64 [ %i.dz, %.lr.ph48.i ], [ 0, %.lr.ph54.i ]
  %i.dt = load i64, ptr %.247.i, align 8, !tbaa !193 ; 2 uses
  %i.du = xor i64 %i.dt, -1
  %i.dv = lshr i64 %i.du, 7
  %i.dw = lshr i64 %i.dt, 6
  %i.dx = or i64 %i.dv, %i.dw
  %i.dy = and i64 %i.dx, 72340172838076673
  %i.dz = add i64 %i.dy, %.03446.i                ; 2 uses
  %i.ea = getelementptr i8, ptr %i.ds, i64 8      ; 2 uses
  %.not39.i = icmp ugt ptr %i.ea, %spec.select.i
  br i1 %.not39.i, label %._crit_edge.i, label %.lr.ph48.i, !llvm.loop !479

._crit_edge.i:                                    ; preds = %.lr.ph48.i, %.lr.ph54.i
  %.034.lcssa.i = phi i64 [ 0, %.lr.ph54.i ], [ %i.dz, %.lr.ph48.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.153.i, %.lr.ph54.i ], [ %i.ds, %.lr.ph48.i ] ; 3 uses
  %i.eb = and i64 %.034.lcssa.i, 71777214294589695
  %i.ec = lshr i64 %.034.lcssa.i, 8
  %i.ed = and i64 %i.ec, 71777214294589695
  %i.ee = add nuw nsw i64 %i.ed, %i.eb            ; 2 uses
  %i.ef = lshr i64 %i.ee, 16
  %i.eg = add nuw nsw i64 %i.ef, %i.ee            ; 2 uses
  %i.eh = lshr i64 %i.eg, 32
  %i.ei = add nuw nsw i64 %i.eh, %i.eg
  %i.ej = and i64 %i.ei, 2047
  %i.ek = add i64 %i.ej, %.13152.i                ; 2 uses
  %i.el = getelementptr i8, ptr %.2.lcssa.i, i64 8
  %.not38.i = icmp ugt ptr %i.el, %i.l
  br i1 %.not38.i, label %.loopexit.i, label %.lr.ph54.i, !llvm.loop !480

.loopexit.i:                                      ; preds = %._crit_edge.i, %.preheader.i, %bb.p
  %.232.i = phi i64 [ 0, %bb.p ], [ %.030.lcssa.i, %.preheader.i ], [ %i.ek, %._crit_edge.i ] ; 3 uses
  %.3.i = phi ptr [ %0, %bb.p ], [ %.0.lcssa.i, %.preheader.i ], [ %.2.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.em = icmp ult ptr %.3.i, %i.l
  br i1 %i.em, label %.lr.ph60.i.preheader, label %utf8_count_codepoints.exit

.lr.ph60.i.preheader:                             ; preds = %.loopexit.i
  %.3.i113 = ptrtoaddr ptr %.3.i to i64
  %i.en = add i64 %1, %5
  %i.eo = sub i64 %i.en, %.3.i113                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.eo, 4
  br i1 %min.iters.check, label %.lr.ph60.i.preheader116, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph60.i.preheader
  %n.vec = and i64 %i.eo, -4                      ; 3 uses
  %i.ep = getelementptr i8, ptr %.3.i, i64 %n.vec
  %i.eq = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.232.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.eq, %vector.ph ], [ %i.fg, %vector.body ]
  %vec.phi114 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fh, %vector.body ]
  %next.gep = getelementptr i8, ptr %.3.i, i64 %index ; 2 uses
  %i.er = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !205
  %wide.load115 = load <2 x i8>, ptr %i.er, align 1, !tbaa !205
  %i.es = zext <2 x i8> %wide.load to <2 x i32>   ; 2 uses
  %i.et = zext <2 x i8> %wide.load115 to <2 x i32> ; 2 uses
  %i.eu = xor <2 x i32> %i.es, splat (i32 -1)
  %i.ev = xor <2 x i32> %i.et, splat (i32 -1)
  %i.ew = lshr <2 x i32> %i.eu, splat (i32 7)
  %i.ex = lshr <2 x i32> %i.ev, splat (i32 7)
  %i.ey = lshr <2 x i32> %i.es, splat (i32 6)
  %i.ez = lshr <2 x i32> %i.et, splat (i32 6)
  %i.fa = or <2 x i32> %i.ew, %i.ey
  %i.fb = or <2 x i32> %i.ex, %i.ez
  %i.fc = and <2 x i32> %i.fa, splat (i32 1)
  %i.fd = and <2 x i32> %i.fb, splat (i32 1)
  %i.fe = zext nneg <2 x i32> %i.fc to <2 x i64>
  %i.ff = zext nneg <2 x i32> %i.fd to <2 x i64>
  %i.fg = add <2 x i64> %vec.phi, %i.fe           ; 2 uses
  %i.fh = add <2 x i64> %vec.phi114, %i.ff        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !481

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.fh, %i.fg
  %i.fj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %utf8_count_codepoints.exit, label %.lr.ph60.i.preheader116

.lr.ph60.i.preheader116:                          ; preds = %.lr.ph60.i.preheader, %middle.block
  %.458.i.ph = phi ptr [ %.3.i, %.lr.ph60.i.preheader ], [ %i.ep, %middle.block ]
  %.33357.i.ph = phi i64 [ %.232.i, %.lr.ph60.i.preheader ], [ %i.fj, %middle.block ]
  br label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %.lr.ph60.i.preheader116, %.lr.ph60.i
  %.458.i = phi ptr [ %i.fk, %.lr.ph60.i ], [ %.458.i.ph, %.lr.ph60.i.preheader116 ] ; 2 uses
  %.33357.i = phi i64 [ %i.ft, %.lr.ph60.i ], [ %.33357.i.ph, %.lr.ph60.i.preheader116 ]
  %i.fk = getelementptr i8, ptr %.458.i, i64 1    ; 2 uses
  %i.fl = load i8, ptr %.458.i, align 1, !tbaa !205
  %i.fm = zext i8 %i.fl to i32                    ; 2 uses
  %i.fn = xor i32 %i.fm, -1
  %i.fo = lshr i32 %i.fn, 7
  %i.fp = lshr i32 %i.fm, 6
  %i.fq = or i32 %i.fo, %i.fp
  %i.fr = and i32 %i.fq, 1
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = add i64 %.33357.i, %i.fs                ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.fk, %i.l
  br i1 %exitcond.not.i, label %utf8_count_codepoints.exit, label %.lr.ph60.i, !llvm.loop !482

utf8_count_codepoints.exit:                       ; preds = %.lr.ph60.i, %middle.block, %.loopexit.i
  %.333.lcssa.i = phi i64 [ %.232.i, %.loopexit.i ], [ %i.fj, %middle.block ], [ %i.ft, %.lr.ph60.i ] ; 2 uses
  %i.fu = icmp ult i8 %i.v, -60
  br i1 %i.fu, label %bb.r, label %bb.q

bb.q:                                             ; preds = %utf8_count_codepoints.exit
  %i.fv = icmp samesign ult i8 %i.v, -16
  %. = select i1 %i.fv, i32 65535, i32 1114111
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %utf8_count_codepoints.exit, %bb.o
  %i.fw = phi i1 [ true, %bb.o ], [ false, %bb.q ], [ true, %utf8_count_codepoints.exit ]
  %.058 = phi i32 [ 127, %bb.o ], [ %., %bb.q ], [ 255, %utf8_count_codepoints.exit ]
  %.057 = phi i64 [ %1, %bb.o ], [ %.333.lcssa.i, %bb.q ], [ %.333.lcssa.i, %utf8_count_codepoints.exit ]
  %i.fx = tail call ptr @PyUnicode_New(i64 noundef %.057, i32 noundef %.058) ; 5 uses
  %.not = icmp eq ptr %i.fx, null
  br i1 %.not, label %get_latin1_char.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @_PyUnicodeWriter_InitWithBuffer(ptr noundef nonnull %6, ptr noundef nonnull %i.fx) #33
  br i1 %i.fw, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.fy = getelementptr i8, ptr %i.fx, i64 32
  %.val.i73 = load i32, ptr %i.fy, align 8        ; 2 uses
  %i.fz = and i32 %.val.i73, 32
  %.not.i74 = icmp eq i32 %i.fz, 0
  br i1 %.not.i74, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ga = and i32 %.val.i73, 64
  %.not.i.i75 = icmp eq i32 %i.ga, 0
  %.0.v.i.i76 = select i1 %.not.i.i75, i64 56, i64 40
  %.0.i.i77 = getelementptr i8, ptr %i.fx, i64 %.0.v.i.i76
  br label %_PyUnicode_DATA.exit80

bb.v:                                             ; preds = %bb.t
  %i.gb = getelementptr i8, ptr %i.fx, i64 56
  %.val4.i79 = load ptr, ptr %i.gb, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit80

_PyUnicode_DATA.exit80:                           ; preds = %bb.u, %bb.v
  %.0.i78 = phi ptr [ %.0.i.i77, %bb.u ], [ %.val4.i79, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i78, ptr align 1 %0, i64 %i.m, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.m, ptr %i.gc, align 8, !tbaa !279
  br label %bb.w

bb.w:                                             ; preds = %_PyUnicode_DATA.exit80, %bb.s
  %.056 = phi ptr [ %i.u, %_PyUnicode_DATA.exit80 ], [ %0, %bb.s ]
  %i.gd = call fastcc i32 @unicode_decode_utf8_impl(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %.056, ptr noundef %i.l, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  %i.ge = icmp slt i32 %i.gd, 0
  br i1 %i.ge, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %6) #33
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gf = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %6) #33
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1 = phi ptr [ null, %bb.x ], [ %i.gf, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %get_latin1_char.exit

get_latin1_char.exit:                             ; preds = %bb.g, %.thread, %bb.c, %bb.b, %_PyUnicode_DATA.exit, %bb.n, %bb.j, %bb.r, %bb.z, %bb.i
  %.4 = phi ptr [ null, %bb.r ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.c ], [ null, %bb.i ], [ %i.o, %_PyUnicode_DATA.exit ], [ null, %bb.j ], [ %i.o, %bb.n ], [ %.1, %bb.z ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.b ], [ %i.f, %.thread ], [ %i.i, %bb.g ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 131073) i32 @PyUnicode_FSConverter(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !194    ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !205  ; 2 uses
  %.not.i25 = icmp sgt i32 %i.c, -1
  br i1 %.not.i25, label %bb.c, label %Py_DECREF.exit26

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !205
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit26

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #33
  br label %Py_DECREF.exit26

Py_DECREF.exit26:                                 ; preds = %bb.b, %bb.c, %bb.d
  store ptr null, ptr %1, align 8, !tbaa !194
  br label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyOS_FSPath(ptr noundef nonnull %0) #33 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val = load ptr, ptr %i.h, align 8, !tbaa !197
  %i.i = getelementptr i8, ptr %.val, i64 168
  %.val29 = load i64, ptr %i.i, align 8, !tbaa !198
  %i.j = and i64 %.val29, 134217728
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11   ; 6 uses
  %i.m = getelementptr i8, ptr %i.l, i64 11840
  %i.n = load i32, ptr %i.m, align 8, !tbaa !391
  %.not.i30 = icmp eq i32 %i.n, 0
  br i1 %.not.i30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %i.l, i64 11856
  %i.p = load i32, ptr %i.o, align 8, !tbaa !392
  %i.q = getelementptr i8, ptr %i.l, i64 11848
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !393
  %i.s = tail call fastcc ptr @unicode_encode_utf8(ptr noundef nonnull %i.f, i32 noundef %i.p, ptr noundef %i.r)
  br label %PyUnicode_EncodeFSDefault.exit

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.l, i64 11832
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !394  ; 2 uses
  %.not15.i = icmp eq ptr %i.u, null
  br i1 %.not15.i, label %bb.k, label %bb.j
end_hunk_7
begin_hunk_8_@PyUnicode_ReadChar:bb.a

bb.k:                                             ; preds = %_PyUnicode_DATA.exit
  %i.t = getelementptr [4 x i8], ptr %.0.i, i64 %1
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.k, %bb.j, %bb.i, %bb.e, %bb.b
  %.0 = phi i32 [ -1, %bb.e ], [ -1, %bb.b ], [ %i.p, %bb.i ], [ %i.s, %bb.j ], [ %i.u, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyUnicode_WriteChar(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val17 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val17, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val18 = load i32, ptr %i.d, align 8           ; 5 uses
  %i.e = and i32 %.val18, 32
  %.not14 = icmp eq i32 %i.e, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %PyUnicode_WRITE.exit

bb.d:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %1, 0
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val19 = load i64, ptr %i.h, align 8, !tbaa !207
  %.not15 = icmp slt i64 %1, %.val19
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.28) #33
  br label %PyUnicode_WRITE.exit

bb.g:                                             ; preds = %bb.e
  %.val7.i.i = load i32, ptr %0, align 8, !tbaa !205
  %.not.i.i = icmp eq i32 %.val7.i.i, 1
  br i1 %.not.i.i, label %bb.h, label %unicode_check_modifiable.exit

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr i8, ptr %0, i64 24
  %.val8.i.i = load i64, ptr %i.j, align 8, !tbaa !217
  %.not4.i.i = icmp eq i64 %.val8.i.i, -1
  %i.k = and i32 %.val18, 3
  %.not5.i.i = icmp eq i32 %i.k, 0
  %or.cond = and i1 %.not5.i.i, %.not4.i.i
  %.not10.i.not.i = icmp eq ptr %.val, @PyUnicode_Type
  %or.cond27 = and i1 %.not10.i.not.i, %or.cond
  br i1 %or.cond27, label %bb.i, label %unicode_check_modifiable.exit

unicode_check_modifiable.exit:                    ; preds = %bb.g, %bb.h
  %i.l = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.116) #33
  br label %PyUnicode_WRITE.exit

bb.i:                                             ; preds = %bb.h
  %i.m = and i32 %.val18, 64
  %.not.i = icmp eq i32 %i.m, 0                   ; 2 uses
  br i1 %.not.i, label %bb.j, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.j:                                             ; preds = %bb.i
  %i.n = lshr exact i32 %.val18, 2
  %i.o = and i32 %i.n, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.o, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.o, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.i, %bb.j
  %.0.i21 = phi i32 [ %switch.select6.i, %bb.j ], [ 127, %bb.i ]
  %i.p = icmp ugt i32 %2, %.0.i21
  br i1 %i.p, label %bb.k, label %_PyUnicode_DATA.exit

bb.k:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.q = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.57) #33
  br label %PyUnicode_WRITE.exit

_PyUnicode_DATA.exit:                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.r = lshr exact i32 %.val18, 2
  %i.s = and i32 %i.r, 7
  %.0.v.i.i = select i1 %.not.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i ; 3 uses
  switch i32 %i.s, label %bb.n [
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %_PyUnicode_DATA.exit
  %i.t = trunc i32 %2 to i8
  %i.u = getelementptr i8, ptr %.0.i.i, i64 %1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit

bb.m:                                             ; preds = %_PyUnicode_DATA.exit
  %i.v = trunc i32 %2 to i16
  %i.w = getelementptr [2 x i8], ptr %.0.i.i, i64 %1
  store i16 %i.v, ptr %i.w, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit

bb.n:                                             ; preds = %_PyUnicode_DATA.exit
  %i.x = getelementptr [4 x i8], ptr %.0.i.i, i64 %1
  store i32 %2, ptr %i.x, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit

PyUnicode_WRITE.exit:                             ; preds = %bb.n, %bb.m, %bb.l, %unicode_check_modifiable.exit, %bb.k, %bb.f, %bb.c
  %.0 = phi i32 [ -1, %bb.f ], [ -1, %bb.c ], [ -1, %bb.k ], [ -1, %unicode_check_modifiable.exit ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeUTF7(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @PyUnicode_DecodeUTF7Stateful(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeUTF7Stateful(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 15 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %struct._PyUnicodeWriter, align 8   ; 20 uses
  %i.f = alloca ptr, align 8                      ; 8 uses
  %i.g = alloca ptr, align 8                      ; 8 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %0, ptr %i.b, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  store ptr null, ptr %i.f, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr null, ptr %i.g, align 8, !tbaa !194
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not139 = icmp eq ptr %3, null
  br i1 %.not139, label %bb.db, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %3, align 8, !tbaa !193
  br label %bb.db

bb.d:                                             ; preds = %bb.a
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %4) #33
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %1, ptr %i.i, align 8, !tbaa !346
  %i.j = getelementptr i8, ptr %0, i64 %1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !355
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 27 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.p = icmp ne ptr %3, null                     ; 2 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %bb.d
  %.ph.ph = phi i64 [ undef, %bb.d ], [ %.ph.ph.be, %.outer.outer.backedge ]
  %.0115.ph.ph = phi i32 [ 0, %bb.d ], [ %.0115.ph.ph.be, %.outer.outer.backedge ]
  %.0113.ph.ph = phi i64 [ 0, %bb.d ], [ %.0113.ph.ph.be, %.outer.outer.backedge ]
  %.0108.ph.ph = phi i32 [ 0, %bb.d ], [ %.0108.ph.ph.be, %.outer.outer.backedge ]
  %.0104.ph.ph = phi i64 [ 0, %bb.d ], [ %.0104.ph.ph.be, %.outer.outer.backedge ] ; 10 uses
  %i.q = phi i1 [ true, %bb.d ], [ %.be, %.outer.outer.backedge ]
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %bb.by
  %.ph = phi i64 [ %i.hm, %bb.by ], [ %.ph.ph, %.outer.outer ] ; 9 uses
  %.0115.ph = phi i32 [ %.0115269, %bb.by ], [ %.0115.ph.ph, %.outer.outer ] ; 7 uses
  %.0113.ph = phi i64 [ %.0113259, %bb.by ], [ %.0113.ph.ph, %.outer.outer ] ; 5 uses
  %.0108.ph = phi i32 [ %.0108249, %bb.by ], [ %.0108.ph.ph, %.outer.outer ] ; 11 uses
  %.0103.ph = phi i1 [ true, %bb.by ], [ %i.q, %.outer.outer ] ; 3 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !355  ; 4 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !355 ; 9 uses
  %i.s = icmp ult ptr %.promoted, %i.r
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.outer
  %.promoted459 = ptrtoaddr ptr %.promoted to i64
  %5 = ptrtoaddr ptr %i.r to i64
  %i.t = zext i32 %.0115.ph to i64
  %i.u = sub i64 %5, %.promoted459
  %scevgep = getelementptr i8, ptr %.promoted, i64 %i.u
  %i.v = load i8, ptr %.promoted, align 1, !tbaa !205 ; 9 uses
  %i.w = zext i8 %i.v to i32                      ; 4 uses
  br i1 %.0103.ph, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.preheader
  %i.x = add i8 %i.v, -65
  %or.cond.peel = icmp ult i8 %i.x, 26            ; 2 uses
  %i.y = add i8 %i.v, -97
  %or.cond3.peel = icmp ult i8 %i.y, 26           ; 2 uses
  %or.cond140.peel = or i1 %or.cond.peel, %or.cond3.peel
  br i1 %or.cond140.peel, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = icmp eq i8 %i.v, 43
  %i.aa = add i8 %i.v, -47
  %i.ab = icmp ult i8 %i.aa, 11
  %or.cond9.peel = or i1 %i.z, %i.ab
  br i1 %or.cond9.peel, label %bb.g, label %._crit_edge487

bb.g:                                             ; preds = %bb.f
  %i.ac = shl i64 %.0113.ph, 6                    ; 2 uses
  %i.ad = add nsw i8 %i.v, -48
  %or.cond15.peel = icmp ult i8 %i.ad, 10
  br i1 %or.cond15.peel, label %bb.h, label %.thread209.peel

bb.h:                                             ; preds = %bb.g
  %i.ae = add nuw nsw i32 %i.w, 4
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  %i.af = shl i64 %.0113.ph, 6                    ; 3 uses
  br i1 %or.cond.peel, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %or.cond3.peel, label %bb.k, label %.thread209.peel

.thread209.peel:                                  ; preds = %bb.j, %bb.g
  %i.ag = phi i64 [ %i.ac, %bb.g ], [ %i.af, %bb.j ]
  %i.ah = icmp eq i8 %i.v, 43
  %i.ai = select i1 %i.ah, i32 62, i32 63
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.w, -71
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ak = add nsw i32 %i.w, -65
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.thread209.peel, %bb.h
  %i.al = phi i64 [ %i.af, %bb.l ], [ %i.af, %bb.k ], [ %i.ac, %bb.h ], [ %i.ag, %.thread209.peel ]
  %i.am = phi i32 [ %i.ak, %bb.l ], [ %i.aj, %bb.k ], [ %i.ae, %bb.h ], [ %i.ai, %.thread209.peel ]
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = or i64 %i.al, %i.an                     ; 3 uses
  %i.ap = add i32 %.0115.ph, 6                    ; 2 uses
  %i.aq = getelementptr i8, ptr %.promoted, i64 1 ; 6 uses
  %i.ar = icmp ugt i32 %i.ap, 15
  br i1 %i.ar, label %bb.n, label %.thread217.loopexit

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.peel = add nsw i64 %i.t, -10   ; 2 uses
  %indvars.peel = trunc nuw i64 %indvars.iv.next.peel to i32 ; 6 uses
  %i.as = lshr i64 %i.ao, %indvars.iv.next.peel   ; 4 uses
  %i.at = trunc i64 %i.as to i32                  ; 4 uses
  %notmask.peel = shl nsw i32 -1, %indvars.peel
  %i.au = xor i32 %notmask.peel, -1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = and i64 %i.ao, %i.av                    ; 6 uses
  %.not136.peel = icmp eq i32 %.0108.ph, 0
  br i1 %.not136.peel, label %.loopexit233, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = and i32 %i.at, -1024                    ; 2 uses
  %.not229.peel = icmp eq i32 %i.ax, 56320
  br i1 %.not229.peel, label %bb.p, label %.loopexit476

bb.p:                                             ; preds = %bb.o
  %i.ay = shl i32 %.0108.ph, 10
  %i.az = and i32 %i.ay, 1047552
  %i.ba = and i32 %i.at, 1023
  %i.bb = or disjoint i32 %i.ba, 65536
  %i.bc = add nuw nsw i32 %i.bb, %i.az            ; 4 uses
  %i.bd = load i32, ptr %i.k, align 4, !tbaa !276
  %.not.i.peel = icmp ugt i32 %i.bc, %i.bd
  br i1 %.not.i.peel, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = load i64, ptr %i.l, align 8, !tbaa !278
  %i.bf = load i64, ptr %i.m, align 8, !tbaa !279 ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.critedge.i.peel, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bi = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 1, i32 noundef %i.bc) #33
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %.thread213, label %..critedge_crit_edge.i.peel

..critedge_crit_edge.i.peel:                      ; preds = %bb.r
  %.pre.i.peel = load i64, ptr %i.m, align 8, !tbaa !279
  br label %.critedge.i.peel

.critedge.i.peel:                                 ; preds = %..critedge_crit_edge.i.peel, %bb.q
  %i.bk = phi i64 [ %.pre.i.peel, %..critedge_crit_edge.i.peel ], [ %i.bf, %bb.q ] ; 5 uses
  %i.bl = load i32, ptr %i.n, align 8, !tbaa !280
  %i.bm = load ptr, ptr %i.o, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.bl, label %bb.u [
    i32 1, label %bb.t
    i32 2, label %bb.s
  ]

bb.s:                                             ; preds = %.critedge.i.peel
  %i.bn = trunc i32 %i.bc to i16
  %i.bo = getelementptr [2 x i8], ptr %i.bm, i64 %i.bk
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !208
  br label %bb.v

bb.t:                                             ; preds = %.critedge.i.peel
  %i.bp = trunc i64 %i.as to i8
  %i.bq = getelementptr i8, ptr %i.bm, i64 %i.bk
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !205
  %.pre11.i.peel = load i64, ptr %i.m, align 8, !tbaa !279
  br label %bb.v

bb.u:                                             ; preds = %.critedge.i.peel
  %i.br = getelementptr [4 x i8], ptr %i.bm, i64 %i.bk
  store i32 %i.bc, ptr %i.br, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.bs = phi i64 [ %.pre11.i.peel, %bb.t ], [ %i.bk, %bb.s ], [ %i.bk, %bb.u ]
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.m, align 8, !tbaa !279
  %exitcond.peel.not = icmp eq ptr %i.aq, %i.r
  br i1 %exitcond.peel.not, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.pre = load i8, ptr %i.aq, align 1, !tbaa !205 ; 9 uses
  %i.bu = add i8 %.pre, -65
  %or.cond = icmp ult i8 %i.bu, 26                ; 2 uses
  %i.bv = add i8 %.pre, -97
  %or.cond3 = icmp ult i8 %i.bv, 26               ; 2 uses
  %or.cond140 = or i1 %or.cond, %or.cond3
  br i1 %or.cond140, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = icmp eq i8 %.pre, 43
  %i.bx = add i8 %.pre, -47
  %i.by = icmp ult i8 %i.bx, 11
  %or.cond9 = or i1 %i.bw, %i.by
  br i1 %or.cond9, label %bb.ac, label %._crit_edge487

bb.y:                                             ; preds = %bb.w
  %i.bz = zext nneg i8 %.pre to i32               ; 2 uses
  %i.ca = shl nuw nsw i64 %i.aw, 6                ; 3 uses
  br i1 %or.cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cb = add nsw i32 %i.bz, -65
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  br i1 %or.cond3, label %bb.ab, label %.thread209

bb.ab:                                            ; preds = %bb.aa
  %i.cc = add nsw i32 %i.bz, -71
  br label %bb.ae

bb.ac:                                            ; preds = %bb.x
  %i.cd = shl nuw nsw i64 %i.aw, 6                ; 2 uses
  %i.ce = add nsw i8 %.pre, -48
  %or.cond15 = icmp ult i8 %i.ce, 10
  br i1 %or.cond15, label %bb.ad, label %.thread209

bb.ad:                                            ; preds = %bb.ac
  %narrow = add nuw nsw i8 %.pre, 4
  %i.cf = zext nneg i8 %narrow to i32
  br label %bb.ae

.thread209:                                       ; preds = %bb.aa, %bb.ac
  %i.cg = phi i64 [ %i.cd, %bb.ac ], [ %i.ca, %bb.aa ]
  %i.ch = icmp eq i8 %.pre, 43
  %i.ci = select i1 %i.ch, i32 62, i32 63
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %.thread209, %bb.ad, %bb.z
  %i.cj = phi i64 [ %i.ca, %bb.z ], [ %i.ca, %bb.ab ], [ %i.cd, %bb.ad ], [ %i.cg, %.thread209 ]
  %i.ck = phi i32 [ %i.cb, %bb.z ], [ %i.cc, %bb.ab ], [ %i.cf, %bb.ad ], [ %i.ci, %.thread209 ]
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = or i64 %i.cj, %i.cl                     ; 3 uses
  %i.cn = getelementptr i8, ptr %.promoted, i64 2 ; 2 uses
  %i.co = add i32 %.0115.ph, -20
  %i.cp = icmp ult i32 %i.co, -16
  br i1 %i.cp, label %.loopexit233.loopexit, label %.thread217.loopexit.loopexit

.loopexit476:                                     ; preds = %bb.o
end_hunk_8
begin_hunk_9_@_PyUnicode_EncodeUTF7:bb.a
    i32 45, label %bb.q
    i32 43, label %bb.q
  ]

bb.q:                                             ; preds = %switch.early.test, %switch.early.test, %bb.p
  %i.ao = getelementptr i8, ptr %.1, i64 1
  store i8 45, ptr %.1, align 1, !tbaa !205
  br label %bb.r

bb.r:                                             ; preds = %switch.early.test, %bb.q
  %.2 = phi ptr [ %i.ao, %bb.q ], [ %.1, %switch.early.test ] ; 2 uses
  %i.ap = trunc nuw nsw i32 %.0.i117.fr to i8
  %i.aq = getelementptr i8, ptr %.2, i64 1
  store i8 %i.ap, ptr %.2, align 1, !tbaa !205
  br label %.loopexit

bb.s:                                             ; preds = %PyUnicode_READ.exit
  %i.ar = icmp eq i32 %.0.i117.fr, 43
  br i1 %i.ar, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr i8, ptr %.085130, i64 1
  store i8 43, ptr %.085130, align 1, !tbaa !205
  %i.at = getelementptr i8, ptr %.085130, i64 2
  store i8 45, ptr %i.as, align 1, !tbaa !205
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  %i.au = add i32 %.0.i117.fr, -1
  %or.cond15 = icmp ult i32 %i.au, 127
  br i1 %or.cond15, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.av = zext nneg i32 %.0.i117.fr to i64
  %i.aw = getelementptr i8, ptr @utf7_category, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !205
  %.not113 = icmp eq i8 %i.ax, 3
  br i1 %.not113, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = trunc nuw nsw i32 %.0.i117.fr to i8
  %i.az = getelementptr i8, ptr %.085130, i64 1
  store i8 %i.ay, ptr %.085130, align 1, !tbaa !205
  br label %.loopexit

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.ba = getelementptr i8, ptr %.085130, i64 1
  store i8 43, ptr %.085130, align 1, !tbaa !205
  br label %bb.y

bb.y:                                             ; preds = %bb.l, %bb.x
  %.4 = phi ptr [ %i.ba, %bb.x ], [ %.085130, %bb.l ] ; 2 uses
  %i.bb = icmp ugt i32 %.0.i117.fr, 65535
  br i1 %i.bb, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.bc = add nuw nsw i32 %.091126, 16
  %i.bd = shl i64 %.086128, 16
  %i.be = lshr i32 %.0.i117.fr, 10
  %i.bf = add nuw nsw i32 %i.be, 55232
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = or i64 %i.bd, %i.bg                     ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.aa
  %.5122 = phi ptr [ %.4, %bb.z ], [ %i.bo, %bb.aa ] ; 2 uses
  %.394121 = phi i32 [ %i.bc, %bb.z ], [ %i.bi, %bb.aa ]
  %i.bi = add i32 %.394121, -6                    ; 4 uses
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = lshr i64 %i.bh, %i.bj
  %i.bl = and i64 %i.bk, 63
  %i.bm = getelementptr i8, ptr @.str.66, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !205
  %i.bo = getelementptr i8, ptr %.5122, i64 1     ; 2 uses
  store i8 %i.bn, ptr %.5122, align 1, !tbaa !205
  %i.bp = icmp ugt i32 %i.bi, 5
  br i1 %i.bp, label %bb.aa, label %bb.ab, !llvm.loop !494

bb.ab:                                            ; preds = %bb.aa
  %i.bq = and i32 %.0.i117.fr, 1023
  %i.br = or disjoint i32 %i.bq, 56320
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.ab, %bb.y
  %.495 = phi i32 [ %i.bi, %bb.ab ], [ %.091126, %bb.y ], [ %.091126, %bb.m ]
  %.389 = phi i64 [ %i.bh, %bb.ab ], [ %.086128, %bb.y ], [ %.086128, %bb.m ]
  %.6 = phi ptr [ %i.bo, %bb.ab ], [ %.4, %bb.y ], [ %.085130, %bb.m ]
  %.0 = phi i32 [ %i.br, %bb.ab ], [ %.0.i117.fr, %bb.y ], [ %.0.i117.fr, %bb.m ]
  %i.bs = add nuw nsw i32 %.495, 16
  %i.bt = shl i64 %.389, 16
  %i.bu = zext nneg i32 %.0 to i64
  %i.bv = add nuw nsw i64 %i.bt, %i.bu            ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.thread, %bb.ac
  %.7124 = phi ptr [ %.6, %.thread ], [ %i.cc, %bb.ac ] ; 2 uses
  %.596123 = phi i32 [ %i.bs, %.thread ], [ %i.bw, %bb.ac ]
  %i.bw = add i32 %.596123, -6                    ; 4 uses
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = lshr i64 %i.bv, %i.bx
  %i.bz = and i64 %i.by, 63
  %i.ca = getelementptr i8, ptr @.str.66, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !205
  %i.cc = getelementptr i8, ptr %.7124, i64 1     ; 2 uses
  store i8 %i.cb, ptr %.7124, align 1, !tbaa !205
  %i.cd = icmp ugt i32 %i.bw, 5
  br i1 %i.cd, label %bb.ac, label %.loopexit, !llvm.loop !495

.loopexit:                                        ; preds = %bb.ac, %bb.r, %bb.w, %bb.t
  %i.ce = phi i1 [ true, %bb.r ], [ true, %bb.t ], [ true, %bb.w ], [ false, %bb.ac ] ; 2 uses
  %.3101 = phi i32 [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.w ], [ 1, %bb.ac ]
  %.697 = phi i32 [ 0, %bb.r ], [ %.091126, %bb.t ], [ %.091126, %bb.w ], [ %i.bw, %bb.ac ] ; 3 uses
  %.490 = phi i64 [ %.187, %bb.r ], [ %.086128, %bb.t ], [ %.086128, %bb.w ], [ %i.bv, %bb.ac ] ; 2 uses
  %.8 = phi ptr [ %i.aq, %bb.r ], [ %i.at, %bb.t ], [ %i.az, %bb.w ], [ %i.cc, %bb.ac ] ; 5 uses
  %i.cf = add nuw nsw i64 %.084131, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cf, %.val
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !496

bb.ad:                                            ; preds = %._crit_edge
  %i.cg = sub nuw nsw i32 6, %.697
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl i64 %.490, %i.ch
  %i.cj = and i64 %i.ci, 63
  %i.ck = getelementptr i8, ptr @.str.66, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !205
  %i.cm = getelementptr i8, ptr %.8, i64 1        ; 2 uses
  store i8 %i.cl, ptr %.8, align 1, !tbaa !205
  br i1 %i.ce, label %.thread148, label %bb.af

bb.ae:                                            ; preds = %._crit_edge
  br i1 %i.ce, label %.thread148, label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.9151 = phi ptr [ %i.cm, %bb.ad ], [ %.8, %bb.ae ] ; 2 uses
  %i.cn = getelementptr i8, ptr %.9151, i64 1
  store i8 45, ptr %.9151, align 1, !tbaa !205
  br label %.thread148

.thread148:                                       ; preds = %bb.h, %bb.ad, %bb.af, %bb.ae
  %.10 = phi ptr [ %i.cn, %bb.af ], [ %.8, %bb.ae ], [ %i.cm, %bb.ad ], [ %i.p, %bb.h ]
  %i.co = tail call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.n, ptr noundef %.10) #33
  br label %bb.ag

bb.ag:                                            ; preds = %bb.f, %bb.g, %.thread148, %bb.b
  %.2104 = phi ptr [ %i.c, %bb.b ], [ %i.l, %bb.f ], [ %i.co, %.thread148 ], [ null, %bb.g ]
  ret ptr %.2104
}

declare ptr @Py_GetConstant(i32 noundef) local_unnamed_addr #3

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #3

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #3

declare ptr @PyBytesWriter_FinishWithPointer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeUTF8(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  %i.a = zext i1 %.not.i to i32
  %i.b = tail call fastcc ptr @unicode_decode_utf8(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, ptr noundef %2, ptr noundef null), !inline_history !291
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyUnicode_DecodeUTF8Writer(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not44 = icmp eq ptr %5, null
  br i1 %.not44, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %5, align 8, !tbaa !193
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !276
  %i.d = icmp ugt i32 %i.c, 126
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !278
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !279
  %i.i = sub i64 %i.f, %i.h
  %.not = icmp sgt i64 %2, %i.i
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.j = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %2, i32 noundef 127) #33
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.o, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.f
  %i.l = getelementptr i8, ptr %1, i64 %2         ; 7 uses
  %i.m = getelementptr i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !280
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.g, label %bb.n

bb.g:                                             ; preds = %.critedge
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !281
  %i.r = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !279
  %i.t = getelementptr i8, ptr %i.q, i64 %i.s     ; 4 uses
  %6 = ptrtoaddr ptr %i.l to i64
  %i.u = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = or i64 %i.v, %i.u
  %i.x = and i64 %i.w, 7
  %or.cond.i = icmp eq i64 %i.x, 0
  br i1 %or.cond.i, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %bb.g
  %i.y = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.not3441.i = icmp ugt ptr %i.y, %i.l
  br i1 %.not3441.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.h
  %i.z = phi ptr [ %i.ad, %bb.h ], [ %i.y, %.preheader.i ] ; 3 uses
  %.02743.i = phi ptr [ %i.z, %bb.h ], [ %1, %.preheader.i ] ; 2 uses
  %.02842.i = phi ptr [ %i.ac, %bb.h ], [ %i.t, %.preheader.i ] ; 3 uses
  %i.aa = load i64, ptr %.02743.i, align 8, !tbaa !193 ; 2 uses
  %i.ab = and i64 %i.aa, -9187201950435737472
  %.not35.i = icmp eq i64 %i.ab, 0
  br i1 %.not35.i, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %.lr.ph.i
  store i64 %i.aa, ptr %.02842.i, align 8, !tbaa !193
  %i.ac = getelementptr i8, ptr %.02842.i, i64 8  ; 2 uses
  %i.ad = getelementptr i8, ptr %i.z, i64 8       ; 2 uses
  %.not34.i = icmp ugt ptr %i.ad, %i.l
  br i1 %.not34.i, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.h, %.lr.ph.i, %.preheader.i
  %.028.lcssa.i = phi ptr [ %i.t, %.preheader.i ], [ %i.ac, %bb.h ], [ %.02842.i, %.lr.ph.i ]
  %.027.lcssa.i = phi ptr [ %1, %.preheader.i ], [ %i.z, %bb.h ], [ %.02743.i, %.lr.ph.i ] ; 5 uses
  %i.ae = icmp ult ptr %.027.lcssa.i, %i.l
  br i1 %i.ae, label %.lr.ph50.preheader.i, label %._crit_edge.i

.lr.ph50.preheader.i:                             ; preds = %.thread.i
  %.027.lcssa54.i = ptrtoaddr ptr %.027.lcssa.i to i64
  %i.af = sub i64 %6, %.027.lcssa54.i
  %scevgep.i = getelementptr i8, ptr %.027.lcssa.i, i64 %i.af
  br label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %bb.i, %.lr.ph50.preheader.i
  %.349.i = phi ptr [ %i.ah, %bb.i ], [ %.027.lcssa.i, %.lr.ph50.preheader.i ] ; 3 uses
  %.33148.i = phi ptr [ %i.ai, %bb.i ], [ %.028.lcssa.i, %.lr.ph50.preheader.i ] ; 2 uses
  %i.ag = load i8, ptr %.349.i, align 1, !tbaa !205 ; 2 uses
  %.not36.i = icmp sgt i8 %i.ag, -1
  br i1 %.not36.i, label %bb.i, label %._crit_edge.i

bb.i:                                             ; preds = %.lr.ph50.i
  %i.ah = getelementptr i8, ptr %.349.i, i64 1    ; 2 uses
  %i.ai = getelementptr i8, ptr %.33148.i, i64 1
  store i8 %i.ag, ptr %.33148.i, align 1, !tbaa !205
  %exitcond.not.i = icmp eq ptr %i.ah, %i.l
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph50.i, !llvm.loop !389

._crit_edge.i:                                    ; preds = %bb.i, %.lr.ph50.i, %.thread.i
  %.3.lcssa.i = phi ptr [ %.027.lcssa.i, %.thread.i ], [ %scevgep.i, %bb.i ], [ %.349.i, %.lr.ph50.i ]
  %7 = ptrtoint ptr %.3.lcssa.i to i64
  %i.aj = sub i64 %7, %i.u
  br label %ascii_decode.exit

bb.j:                                             ; preds = %bb.g
  %i.ak = tail call fastcc i64 @find_first_nonascii(ptr noundef %1, ptr noundef %i.l) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %1, i64 %i.ak, i1 false)
  br label %ascii_decode.exit

ascii_decode.exit:                                ; preds = %._crit_edge.i, %bb.j
  %.0.i = phi i64 [ %i.ak, %bb.j ], [ %i.aj, %._crit_edge.i ] ; 3 uses
  %i.al = load i64, ptr %i.r, align 8, !tbaa !279
  %i.am = add i64 %i.al, %.0.i
  store i64 %i.am, ptr %i.r, align 8, !tbaa !279
  %i.an = icmp eq i64 %.0.i, %2
  br i1 %i.an, label %bb.k, label %bb.m

bb.k:                                             ; preds = %ascii_decode.exit
  %.not43 = icmp eq ptr %5, null
  br i1 %.not43, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %2, ptr %5, align 8, !tbaa !193
  br label %bb.o

bb.m:                                             ; preds = %ascii_decode.exit
  %i.ao = getelementptr i8, ptr %1, i64 %.0.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge
  %.038 = phi ptr [ %i.ao, %bb.m ], [ %1, %.critedge ]
  %i.ap = tail call fastcc i32 @unicode_decode_utf8_impl(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %.038, ptr noundef %i.l, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.k, %bb.f, %bb.b, %bb.c
  %.1 = phi i32 [ -1, %bb.f ], [ 0, %bb.b ], [ 0, %bb.c ], [ %i.ap, %bb.n ], [ 0, %bb.l ], [ 0, %bb.k ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @unicode_decode_utf8_impl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 15 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !355
  store ptr %2, ptr %i.b, align 8, !tbaa !355
  store ptr %3, ptr %i.c, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  store ptr null, ptr %i.f, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr null, ptr %i.g, align 8, !tbaa !194
  %i.h = icmp ult ptr %2, %3
  br i1 %i.h, label %.lr.ph142, label %.critedge.thread131

.lr.ph142:                                        ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.j = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.k = getelementptr i8, ptr %0, i64 32         ; 18 uses
  %.not57 = icmp eq ptr %6, null
  %i.l = icmp ne ptr %6, null
  %i.m = getelementptr i8, ptr %0, i64 20         ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 24         ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph142, %.critedge
  %i.o = phi ptr [ %3, %.lr.ph142 ], [ %i.qc, %.critedge ] ; 18 uses
  %i.p = phi ptr [ %2, %.lr.ph142 ], [ %i.qb, %.critedge ] ; 3 uses
  %.048140 = phi i32 [ %4, %.lr.ph142 ], [ %.2, %.critedge ] ; 3 uses
  %i.q = load i32, ptr %i.i, align 8, !tbaa !280
  switch i32 %i.q, label %bb.dh [
    i32 1, label %bb.c
    i32 2, label %.lr.ph268.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %0, align 8, !tbaa !352
  %i.s = getelementptr i8, ptr %i.r, i64 32
  %.val = load i32, ptr %i.s, align 8
  %i.t = and i32 %.val, 64
  %.not = icmp eq i32 %i.t, 0
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !281  ; 3 uses
  %i.v = load i64, ptr %i.k, align 8, !tbaa !193
  %i.w = getelementptr i8, ptr %i.u, i64 %i.v     ; 2 uses
  br i1 %.not, label %.lr.ph270.i, label %.lr.ph254.i

.lr.ph254.i:                                      ; preds = %bb.c, %.thread193.i
  %.0143253.i = phi ptr [ %i.ak, %.thread193.i ], [ %i.p, %bb.c ] ; 7 uses
  %.0155252.i = phi ptr [ %i.al, %.thread193.i ], [ %i.w, %bb.c ] ; 4 uses
  %i.x = load i8, ptr %.0143253.i, align 1, !tbaa !205 ; 3 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph254.i
  %i.z = ptrtoint ptr %.0143253.i to i64
  %i.aa = and i64 %i.z, 7
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %.preheader.i, label %.thread193.i

.preheader.i:                                     ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %.0143253.i, i64 8 ; 2 uses
  %.not180245.i = icmp ugt ptr %i.ab, %i.o
  br i1 %.not180245.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %i.ac = phi ptr [ %i.ag, %bb.e ], [ %i.ab, %.preheader.i ] ; 3 uses
  %.0160247.i = phi ptr [ %i.af, %bb.e ], [ %.0155252.i, %.preheader.i ] ; 3 uses
  %.0163246.i = phi ptr [ %i.ac, %bb.e ], [ %.0143253.i, %.preheader.i ] ; 2 uses
  %i.ad = load i64, ptr %.0163246.i, align 8, !tbaa !193 ; 2 uses
  %i.ae = and i64 %i.ad, -9187201950435737472
  %.not181.i = icmp eq i64 %i.ae, 0
  br i1 %.not181.i, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %.lr.ph.i
  store i64 %i.ad, ptr %.0160247.i, align 1
  %i.af = getelementptr i8, ptr %.0160247.i, i64 8 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ac, i64 8      ; 2 uses
  %.not180.i = icmp ugt ptr %i.ag, %i.o
  br i1 %.not180.i, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.e, %.lr.ph.i, %.preheader.i
  %.0163.lcssa.i = phi ptr [ %.0143253.i, %.preheader.i ], [ %i.ac, %bb.e ], [ %.0163246.i, %.lr.ph.i ] ; 5 uses
  %.0160.lcssa.i = phi ptr [ %.0155252.i, %.preheader.i ], [ %i.af, %bb.e ], [ %.0160247.i, %.lr.ph.i ] ; 3 uses
  %i.ah = icmp eq ptr %.0163.lcssa.i, %i.o
  br i1 %i.ah, label %asciilib_utf8_decode.exit, label %bb.f

bb.f:                                             ; preds = %.thread.i
  %i.ai = load i8, ptr %.0163.lcssa.i, align 1, !tbaa !205 ; 3 uses
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %.thread193.i, label %bb.g

.thread193.i:                                     ; preds = %bb.f, %bb.d
  %.1199.i = phi i8 [ %i.ai, %bb.f ], [ %i.x, %bb.d ]
  %.1144198.i = phi ptr [ %.0163.lcssa.i, %bb.f ], [ %.0143253.i, %bb.d ]
  %.1156197.i = phi ptr [ %.0160.lcssa.i, %bb.f ], [ %.0155252.i, %bb.d ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.1144198.i, i64 1 ; 3 uses
  %i.al = getelementptr i8, ptr %.1156197.i, i64 1 ; 2 uses
  store i8 %.1199.i, ptr %.1156197.i, align 1, !tbaa !205
  %i.am = icmp ult ptr %i.ak, %i.o
  br i1 %i.am, label %.lr.ph254.i, label %asciilib_utf8_decode.exit, !llvm.loop !497

bb.g:                                             ; preds = %bb.f, %.lr.ph254.i
  %.2157.i = phi ptr [ %.0160.lcssa.i, %bb.f ], [ %.0155252.i, %.lr.ph254.i ] ; 26 uses
  %.2145.i = phi ptr [ %.0163.lcssa.i, %bb.f ], [ %.0143253.i, %.lr.ph254.i ] ; 38 uses
  %.2.in.i = phi i8 [ %i.ai, %bb.f ], [ %i.x, %.lr.ph254.i ] ; 13 uses
  %.2.i = zext i8 %.2.in.i to i32                 ; 3 uses
  %i.an = icmp samesign ult i8 %.2.in.i, -32
  br i1 %i.an, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp samesign ult i8 %.2.in.i, -62
  br i1 %i.ao, label %asciilib_utf8_decode.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = ptrtoint ptr %i.o to i64
  %i.aq = ptrtoint ptr %.2145.i to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = icmp slt i64 %i.ar, 2
  br i1 %i.as, label %asciilib_utf8_decode.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr i8, ptr %.2145.i, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !205 ; 2 uses
  %or.cond.i = icmp slt i8 %i.au, -64
  br i1 %or.cond.i, label %.thread204.i, label %asciilib_utf8_decode.exit

.thread204.i:                                     ; preds = %bb.j
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %.2.i, 6
  %i.ax = add nsw i32 %i.aw, -12416
  %i.ay = add nuw nsw i32 %i.ax, %i.av
  %i.az = getelementptr i8, ptr %.2145.i, i64 2
  br label %asciilib_utf8_decode.exit

bb.k:                                             ; preds = %bb.g
  %i.ba = icmp samesign ult i8 %.2.in.i, -16
  br i1 %i.ba, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.bb = ptrtoint ptr %i.o to i64
  %i.bc = ptrtoint ptr %.2145.i to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = icmp slt i64 %i.bd, 3
  br i1 %i.be, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %.not183.i = icmp eq i64 %i.bd, 2
  br i1 %.not183.i, label %bb.n, label %.thread218.i

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr i8, ptr %.2145.i, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !205 ; 2 uses
  %or.cond3.i = icmp slt i8 %i.bg, -64
  br i1 %or.cond3.i, label %bb.o, label %asciilib_utf8_decode.exit

bb.o:                                             ; preds = %bb.n
end_hunk_9
begin_hunk_10_@_PyUnicode_DecodeUnicodeEscapeInternal2:bb.a
  %i.ig = add i32 %i.if, -55
  br label %bb.dp

bb.dn:                                            ; preds = %bb.dk
  %i.ih = add i32 %i.ia, %i.ib
  %i.ii = add i32 %i.ih, -87
  br label %bb.dp

bb.do:                                            ; preds = %bb.dj
  %i.ij = add nsw i32 %i.ib, -48
  %i.ik = or disjoint i32 %i.ia, %i.ij
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %bb.dm
  %.sink.5 = phi i32 [ %i.ik, %bb.do ], [ %i.ig, %bb.dm ], [ %i.ii, %bb.dn ] ; 2 uses
  store i32 %.sink.5, ptr %i.f, align 4, !tbaa !7
  %i.il = getelementptr i8, ptr %i.ab, i64 8      ; 4 uses
  %.not104.6 = icmp ult ptr %i.il, %i.aa
  br i1 %.not104.6, label %bb.dq, label %.critedge.sink.split

bb.dq:                                            ; preds = %bb.dp
  %i.im = load i8, ptr %i.il, align 1, !tbaa !205 ; 4 uses
  %i.in = shl i32 %.sink.5, 4                     ; 4 uses
  store i32 %i.in, ptr %i.f, align 4, !tbaa !7
  %i.io = zext i8 %i.im to i32                    ; 3 uses
  %i.ip = add i8 %i.im, -48
  %or.cond.6 = icmp ult i8 %i.ip, 10
  br i1 %or.cond.6, label %bb.dv, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.iq = add i8 %i.im, -97
  %or.cond5.6 = icmp ult i8 %i.iq, 6
  br i1 %or.cond5.6, label %bb.du, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ir = add i8 %i.im, -65
  %or.cond8.6 = icmp ult i8 %i.ir, 6
  br i1 %or.cond8.6, label %bb.dt, label %.critedge.thread173.loopexit

bb.dt:                                            ; preds = %bb.ds
  %i.is = add i32 %i.in, %i.io
  %i.it = add i32 %i.is, -55
  br label %bb.dw

bb.du:                                            ; preds = %bb.dr
  %i.iu = add i32 %i.in, %i.io
  %i.iv = add i32 %i.iu, -87
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dq
  %i.iw = add nsw i32 %i.io, -48
  %i.ix = or disjoint i32 %i.in, %i.iw
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %.sink.6 = phi i32 [ %i.ix, %bb.dv ], [ %i.it, %bb.dt ], [ %i.iv, %bb.du ] ; 2 uses
  store i32 %.sink.6, ptr %i.f, align 4, !tbaa !7
  %i.iy = getelementptr i8, ptr %i.ab, i64 9      ; 4 uses
  %.not104.7 = icmp ult ptr %i.iy, %i.aa
  br i1 %.not104.7, label %bb.dx, label %.critedge.sink.split

bb.dx:                                            ; preds = %bb.dw
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !205 ; 4 uses
  %i.ja = shl i32 %.sink.6, 4                     ; 4 uses
  store i32 %i.ja, ptr %i.f, align 4, !tbaa !7
  %i.jb = zext i8 %i.iz to i32                    ; 3 uses
  %i.jc = add i8 %i.iz, -48
  %or.cond.7 = icmp ult i8 %i.jc, 10
  br i1 %or.cond.7, label %bb.ec, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.jd = add i8 %i.iz, -97
  %or.cond5.7 = icmp ult i8 %i.jd, 6
  br i1 %or.cond5.7, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.je = add i8 %i.iz, -65
  %or.cond8.7 = icmp ult i8 %i.je, 6
  br i1 %or.cond8.7, label %bb.ea, label %.critedge.thread173.loopexit

bb.ea:                                            ; preds = %bb.dz
  %i.jf = add i32 %i.ja, %i.jb
  %i.jg = add i32 %i.jf, -55
  br label %bb.ed

bb.eb:                                            ; preds = %bb.dy
  %i.jh = add i32 %i.ja, %i.jb
  %i.ji = add i32 %i.jh, -87
  br label %bb.ed

bb.ec:                                            ; preds = %bb.dx
  %i.jj = add nsw i32 %i.jb, -48
  %i.jk = or disjoint i32 %i.ja, %i.jj
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %bb.ea
  %.sink.7 = phi i32 [ %i.jk, %bb.ec ], [ %i.jg, %bb.ea ], [ %i.ji, %bb.eb ] ; 2 uses
  store i32 %.sink.7, ptr %i.f, align 4, !tbaa !7
  %i.jl = getelementptr i8, ptr %i.ab, i64 10
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.da, %bb.cl
  %.sink.lcssa = phi i32 [ %.sink.7, %bb.ed ], [ %.sink.1, %bb.cl ], [ %.sink.3, %bb.da ] ; 9 uses
  %.lcssa266 = phi ptr [ %i.jl, %bb.ed ], [ %i.gl, %bb.cl ], [ %i.hl, %bb.da ] ; 2 uses
  store ptr %.lcssa266, ptr %i.a, align 8
  %i.jm = icmp ugt i32 %.sink.lcssa, 1114111
  br i1 %i.jm, label %.critedge.thread173, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.jn = load i32, ptr %i.k, align 4, !tbaa !276
  %.not103 = icmp ugt i32 %.sink.lcssa, %i.jn
  br i1 %.not103, label %bb.ek, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.jo = load i32, ptr %i.w, align 8, !tbaa !280
  %i.jp = load ptr, ptr %i.x, align 8, !tbaa !281 ; 3 uses
  %i.jq = load i64, ptr %i.y, align 8, !tbaa !279 ; 4 uses
  %i.jr = add i64 %i.jq, 1
  store i64 %i.jr, ptr %i.y, align 8, !tbaa !279
  switch i32 %i.jo, label %bb.ej [
    i32 1, label %bb.eh
    i32 2, label %bb.ei
  ]

bb.eh:                                            ; preds = %bb.eg
  %i.js = trunc i32 %.sink.lcssa to i8
  %i.jt = getelementptr i8, ptr %i.jp, i64 %i.jq
  store i8 %i.js, ptr %i.jt, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit115.jt5, !llvm.loop !506

bb.ei:                                            ; preds = %bb.eg
  %i.ju = trunc i32 %.sink.lcssa to i16
  %i.jv = getelementptr [2 x i8], ptr %i.jp, i64 %i.jq
  store i16 %i.ju, ptr %i.jv, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit115.jt5, !llvm.loop !506

bb.ej:                                            ; preds = %bb.eg
  %i.jw = getelementptr [4 x i8], ptr %i.jp, i64 %i.jq
  store i32 %.sink.lcssa, ptr %i.jw, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit115.jt5, !llvm.loop !506

bb.ek:                                            ; preds = %bb.ef
  %i.jx = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %6, i64 noundef 1, i32 noundef %.sink.lcssa) #33
  %i.jy = icmp slt i32 %i.jx, 0
  br i1 %i.jy, label %PyUnicode_WRITE.exit.jt4, label %.critedge.i140

.critedge.i140:                                   ; preds = %bb.ek
  %.pre.i139 = load i64, ptr %i.y, align 8, !tbaa !279 ; 5 uses
  %i.jz = load i32, ptr %i.w, align 8, !tbaa !280
  %i.ka = load ptr, ptr %i.x, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.jz, label %bb.en [
    i32 1, label %bb.el
    i32 2, label %bb.em
  ]

bb.el:                                            ; preds = %.critedge.i140
  %i.kb = trunc i32 %.sink.lcssa to i8
  %i.kc = getelementptr i8, ptr %i.ka, i64 %.pre.i139
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !205
  %.pre11.i143 = load i64, ptr %i.y, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit144

bb.em:                                            ; preds = %.critedge.i140
  %i.kd = trunc i32 %.sink.lcssa to i16
  %i.ke = getelementptr [2 x i8], ptr %i.ka, i64 %.pre.i139
  store i16 %i.kd, ptr %i.ke, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit144

bb.en:                                            ; preds = %.critedge.i140
  %i.kf = getelementptr [4 x i8], ptr %i.ka, i64 %.pre.i139
  store i32 %.sink.lcssa, ptr %i.kf, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit144

_PyUnicodeWriter_WriteCharInline.exit144:         ; preds = %bb.el, %bb.em, %bb.en
  %i.kg = phi i64 [ %.pre11.i143, %bb.el ], [ %.pre.i139, %bb.em ], [ %.pre.i139, %bb.en ]
  %i.kh = add i64 %i.kg, 1
  store i64 %i.kh, ptr %i.y, align 8, !tbaa !279
  br label %PyUnicode_WRITE.exit115.jt5, !llvm.loop !506

bb.eo:                                            ; preds = %bb.r
  %i.ki = load ptr, ptr %i.z, align 8, !tbaa !11
  %i.kj = getelementptr i8, ptr %i.ki, i64 11864  ; 2 uses
  %i.kk = load atomic ptr, ptr %i.kj seq_cst, align 8 ; 2 uses
  %i.kl = icmp eq ptr %i.kk, null
  br i1 %i.kl, label %_PyUnicode_GetNameCAPI.exit, label %_PyUnicode_GetNameCAPI.exit.thread

_PyUnicode_GetNameCAPI.exit:                      ; preds = %bb.eo
  %i.km = call ptr @PyCapsule_Import(ptr noundef nonnull @.str.83, i32 noundef 1) #33 ; 3 uses
  store atomic ptr %i.km, ptr %i.kj seq_cst, align 8
  %i.kn = icmp eq ptr %i.km, null
  br i1 %i.kn, label %bb.ep, label %_PyUnicode_GetNameCAPI.exit.thread

bb.ep:                                            ; preds = %_PyUnicode_GetNameCAPI.exit
  %i.ko = load ptr, ptr @PyExc_UnicodeError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.ko, ptr noundef nonnull @.str.89) #33
  br label %PyUnicode_WRITE.exit.jt4

_PyUnicode_GetNameCAPI.exit.thread:               ; preds = %bb.eo, %_PyUnicode_GetNameCAPI.exit
  %.0.i145172 = phi ptr [ %i.km, %_PyUnicode_GetNameCAPI.exit ], [ %i.kk, %bb.eo ]
  %i.kp = load ptr, ptr %i.a, align 8, !tbaa !355 ; 7 uses
  %7 = ptrtoaddr ptr %i.kp to i64
  %i.kq = load ptr, ptr %i.c, align 8, !tbaa !355 ; 11 uses
  %8 = ptrtoaddr ptr %i.kq to i64
  %.not96 = icmp ult ptr %i.kp, %i.kq
  br i1 %.not96, label %bb.eq, label %.critedge

bb.eq:                                            ; preds = %_PyUnicode_GetNameCAPI.exit.thread
  %i.kr = load i8, ptr %i.kp, align 1, !tbaa !205
  %i.ks = icmp eq i8 %i.kr, 123
  br i1 %i.ks, label %bb.er, label %.critedge.thread173

bb.er:                                            ; preds = %bb.eq
  %i.kt = getelementptr i8, ptr %i.kp, i64 1      ; 7 uses
  %i.ku = icmp ult ptr %i.kt, %i.kq
  br i1 %i.ku, label %.lr.ph.preheader, label %.critedge.sink.split

.lr.ph.preheader:                                 ; preds = %bb.er
  %i.kv = sub i64 %8, %7
  %scevgep = getelementptr i8, ptr %i.kp, i64 %i.kv
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.es
  %storemerge185 = phi ptr [ %i.kx, %bb.es ], [ %i.kt, %.lr.ph.preheader ] ; 6 uses
  %i.kw = load i8, ptr %storemerge185, align 1, !tbaa !205
  %.not97 = icmp eq i8 %i.kw, 125
  br i1 %.not97, label %bb.et, label %bb.es

bb.es:                                            ; preds = %.lr.ph
  %i.kx = getelementptr i8, ptr %storemerge185, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.kx, %i.kq
  br i1 %exitcond.not, label %.critedge.sink.split, label %.lr.ph, !llvm.loop !507

bb.et:                                            ; preds = %.lr.ph
  store ptr %storemerge185, ptr %i.a, align 8, !tbaa !355
  %i.ky = ptrtoint ptr %storemerge185 to i64
  %i.kz = ptrtoint ptr %i.kt to i64
  %i.la = sub i64 %i.ky, %i.kz                    ; 2 uses
  %.not99 = icmp eq ptr %storemerge185, %i.kt
  br i1 %.not99, label %.critedge.thread173, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.lb = getelementptr i8, ptr %storemerge185, i64 1 ; 3 uses
  store ptr %i.lb, ptr %i.a, align 8, !tbaa !355
  store i32 -1, ptr %i.f, align 4, !tbaa !7
  %i.lc = icmp ult i64 %i.la, 2147483648
  br i1 %i.lc, label %bb.ev, label %.critedge.thread173

bb.ev:                                            ; preds = %bb.eu
  %i.ld = getelementptr i8, ptr %.0.i145172, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !508
  %i.lf = trunc nuw nsw i64 %i.la to i32
  %i.lg = call i32 %i.le(ptr noundef %i.kt, i32 noundef %i.lf, ptr noundef nonnull %i.f, i32 noundef 0) #33
  %.not100 = icmp eq i32 %i.lg, 0
  br i1 %.not100, label %.critedge.thread173, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.lh = load i32, ptr %i.f, align 4, !tbaa !7   ; 5 uses
  %i.li = load i32, ptr %i.k, align 4, !tbaa !276
  %.not101 = icmp ugt i32 %i.lh, %i.li
  br i1 %.not101, label %bb.fb, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.lj = load i32, ptr %i.w, align 8, !tbaa !280
  %i.lk = load ptr, ptr %i.x, align 8, !tbaa !281 ; 3 uses
  %i.ll = load i64, ptr %i.y, align 8, !tbaa !279 ; 4 uses
  %i.lm = add i64 %i.ll, 1
  store i64 %i.lm, ptr %i.y, align 8, !tbaa !279
  switch i32 %i.lj, label %bb.fa [
    i32 1, label %bb.ey
    i32 2, label %bb.ez
  ]

bb.ey:                                            ; preds = %bb.ex
  %i.ln = trunc i32 %i.lh to i8
  %i.lo = getelementptr i8, ptr %i.lk, i64 %i.ll
  store i8 %i.ln, ptr %i.lo, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit115.jt5, !llvm.loop !506

bb.ez:                                            ; preds = %bb.ex
  %i.lp = trunc i32 %i.lh to i16
  %i.lq = getelementptr [2 x i8], ptr %i.lk, i64 %i.ll
  store i16 %i.lp, ptr %i.lq, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit115.jt5, !llvm.loop !506

bb.fa:                                            ; preds = %bb.ex
  %i.lr = getelementptr [4 x i8], ptr %i.lk, i64 %i.ll
  store i32 %i.lh, ptr %i.lr, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit115.jt5, !llvm.loop !506

bb.fb:                                            ; preds = %bb.ew
  %i.ls = call fastcc i32 @_PyUnicodeWriter_WriteCharInline(ptr noundef nonnull %6, i32 noundef %i.lh)
  %i.lt = icmp slt i32 %i.ls, 0
  br i1 %i.lt, label %PyUnicode_WRITE.exit.jt4, label %PyUnicode_WRITE.exit115.jt5, !llvm.loop !506

bb.fc:                                            ; preds = %bb.r
  %i.lu = load i32, ptr %4, align 4, !tbaa !7
  %i.lv = icmp eq i32 %i.lu, -1
  br i1 %i.lv, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  store i32 %i.bf, ptr %4, align 4, !tbaa !7
  %i.lw = icmp eq ptr %i.ay, %0
  br i1 %i.lw, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  store ptr %i.ac, ptr %5, align 8, !tbaa !355
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fc, %bb.fe, %bb.fd
  %i.lx = load i32, ptr %i.w, align 8, !tbaa !280
  %i.ly = load ptr, ptr %i.x, align 8, !tbaa !281 ; 3 uses
  %i.lz = load i64, ptr %i.y, align 8, !tbaa !279 ; 4 uses
  %i.ma = add i64 %i.lz, 1
  store i64 %i.ma, ptr %i.y, align 8, !tbaa !279
  switch i32 %i.lx, label %bb.fi [
    i32 1, label %bb.fg
    i32 2, label %bb.fh
  ]

bb.fg:                                            ; preds = %bb.ff
  %i.mb = getelementptr i8, ptr %i.ly, i64 %i.lz
  store i8 92, ptr %i.mb, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit147

bb.fh:                                            ; preds = %bb.ff
  %i.mc = getelementptr [2 x i8], ptr %i.ly, i64 %i.lz
  store i16 92, ptr %i.mc, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit147

bb.fi:                                            ; preds = %bb.ff
  %i.md = getelementptr [4 x i8], ptr %i.ly, i64 %i.lz
  store i32 92, ptr %i.md, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit147

PyUnicode_WRITE.exit147:                          ; preds = %bb.fg, %bb.fh, %bb.fi
  %i.me = load i32, ptr %i.k, align 4, !tbaa !276
  %.not106 = icmp ult i32 %i.me, %i.bf
  br i1 %.not106, label %bb.fn, label %bb.fj

bb.fj:                                            ; preds = %PyUnicode_WRITE.exit147
  %i.mf = load i32, ptr %i.w, align 8, !tbaa !280
  %i.mg = load ptr, ptr %i.x, align 8, !tbaa !281 ; 3 uses
  %i.mh = load i64, ptr %i.y, align 8, !tbaa !279 ; 4 uses
  %i.mi = add i64 %i.mh, 1
  store i64 %i.mi, ptr %i.y, align 8, !tbaa !279
  switch i32 %i.mf, label %bb.fm [
    i32 1, label %bb.fk
    i32 2, label %bb.fl
  ]

bb.fk:                                            ; preds = %bb.fj
  %i.mj = getelementptr i8, ptr %i.mg, i64 %i.mh
  store i8 %i.be, ptr %i.mj, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit115.jt5, !llvm.loop !506

bb.fl:                                            ; preds = %bb.fj
  %i.mk = zext i8 %i.be to i16
  %i.ml = getelementptr [2 x i8], ptr %i.mg, i64 %i.mh
  store i16 %i.mk, ptr %i.ml, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit115.jt5, !llvm.loop !506

bb.fm:                                            ; preds = %bb.fj
  %i.mm = getelementptr [4 x i8], ptr %i.mg, i64 %i.mh
  store i32 %i.bf, ptr %i.mm, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit115.jt5, !llvm.loop !506

bb.fn:                                            ; preds = %PyUnicode_WRITE.exit147
  %i.mn = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %6, i64 noundef 1, i32 noundef %i.bf) #33
  %i.mo = icmp slt i32 %i.mn, 0
  br i1 %i.mo, label %PyUnicode_WRITE.exit.jt4, label %.critedge.i153

.critedge.i153:                                   ; preds = %bb.fn
  %.pre.i152 = load i64, ptr %i.y, align 8, !tbaa !279 ; 5 uses
  %i.mp = load i32, ptr %i.w, align 8, !tbaa !280
  %i.mq = load ptr, ptr %i.x, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.mp, label %bb.fq [
    i32 1, label %bb.fo
    i32 2, label %bb.fp
  ]

bb.fo:                                            ; preds = %.critedge.i153
  %i.mr = getelementptr i8, ptr %i.mq, i64 %.pre.i152
  store i8 %i.be, ptr %i.mr, align 1, !tbaa !205
  %.pre11.i156 = load i64, ptr %i.y, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit157

bb.fp:                                            ; preds = %.critedge.i153
  %i.ms = zext i8 %i.be to i16
  %i.mt = getelementptr [2 x i8], ptr %i.mq, i64 %.pre.i152
  store i16 %i.ms, ptr %i.mt, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit157

bb.fq:                                            ; preds = %.critedge.i153
  %i.mu = getelementptr [4 x i8], ptr %i.mq, i64 %.pre.i152
  store i32 %i.bf, ptr %i.mu, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit157

_PyUnicodeWriter_WriteCharInline.exit157:         ; preds = %bb.fo, %bb.fp, %bb.fq
  %i.mv = phi i64 [ %.pre11.i156, %bb.fo ], [ %.pre.i152, %bb.fp ], [ %.pre.i152, %bb.fq ]
  %i.mw = add i64 %i.mv, 1
  store i64 %i.mw, ptr %i.y, align 8, !tbaa !279
  br label %PyUnicode_WRITE.exit115.jt5, !llvm.loop !506

end_hunk_10
begin_hunk_11_@_PyUnicode_JoinArray:bb.a

bb.ae:                                            ; preds = %bb.ac
  %i.cp = getelementptr i8, ptr %i.cl, i64 56
  %.val4.i186.peel = load ptr, ptr %i.cp, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit187.peel

_PyUnicode_DATA.exit187.peel:                     ; preds = %bb.ae, %bb.ad
  %.0.i185.peel = phi ptr [ %.0.i.i184.peel, %bb.ad ], [ %.val4.i186.peel, %bb.ae ]
  %i.cq = mul i64 %.val157.peel.pre, %i.cj        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i171, ptr align 1 %.0.i185.peel, i64 %i.cq, i1 false)
  %i.cr = getelementptr i8, ptr %.0.i171, i64 %i.cq
  br label %bb.af

bb.af:                                            ; preds = %_PyUnicode_DATA.exit187.peel, %.lr.ph225
  %.3.peel = phi ptr [ %i.cr, %_PyUnicode_DATA.exit187.peel ], [ %.0.i171, %.lr.ph225 ]
  %exitcond246.peel.not = icmp eq i64 %2, 1
  br i1 %exitcond246.peel.not, label %.loopexit.thread, label %.lr.ph225.split.peel.next

.lr.ph225.split.us:                               ; preds = %.lr.ph225.thread, %bb.aj
  %.1110224.us = phi ptr [ %.3.us, %bb.aj ], [ %.0.i171, %.lr.ph225.thread ] ; 3 uses
  %.1126223.us = phi i64 [ %i.db, %bb.aj ], [ 0, %.lr.ph225.thread ] ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %1, i64 %.1126223.us
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !194 ; 4 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  %.val157.us = load i64, ptr %i.cu, align 8, !tbaa !207 ; 2 uses
  %.not145.us = icmp eq i64 %.val157.us, 0
  br i1 %.not145.us, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph225.split.us
  %i.cv = getelementptr i8, ptr %i.ct, i64 32
  %.val.i180.us = load i32, ptr %i.cv, align 8    ; 2 uses
  %i.cw = and i32 %.val.i180.us, 32
  %.not.i181.us = icmp eq i32 %i.cw, 0
  br i1 %.not.i181.us, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = and i32 %.val.i180.us, 64
  %.not.i.i182.us = icmp eq i32 %i.cx, 0
  %.0.v.i.i183.us = select i1 %.not.i.i182.us, i64 56, i64 40
  %.0.i.i184.us = getelementptr i8, ptr %i.ct, i64 %.0.v.i.i183.us
  br label %_PyUnicode_DATA.exit187.us

bb.ai:                                            ; preds = %bb.ag
  %i.cy = getelementptr i8, ptr %i.ct, i64 56
  %.val4.i186.us = load ptr, ptr %i.cy, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit187.us

_PyUnicode_DATA.exit187.us:                       ; preds = %bb.ai, %bb.ah
  %.0.i185.us = phi ptr [ %.0.i.i184.us, %bb.ah ], [ %.val4.i186.us, %bb.ai ]
  %i.cz = mul i64 %.val157.us, %i.ci              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1110224.us, ptr align 1 %.0.i185.us, i64 %i.cz, i1 false)
  %i.da = getelementptr i8, ptr %.1110224.us, i64 %i.cz
  br label %bb.aj

bb.aj:                                            ; preds = %_PyUnicode_DATA.exit187.us, %.lr.ph225.split.us
  %.3.us = phi ptr [ %i.da, %_PyUnicode_DATA.exit187.us ], [ %.1110224.us, %.lr.ph225.split.us ]
  %i.db = add nuw nsw i64 %.1126223.us, 1         ; 2 uses
  %exitcond248.not = icmp eq i64 %i.db, %2
  br i1 %exitcond248.not, label %.loopexit, label %.lr.ph225.split.us, !llvm.loop !545

.lr.ph225.split.peel.next:                        ; preds = %bb.af, %bb.an
  %.1110224 = phi ptr [ %.3, %bb.an ], [ %.3.peel, %bb.af ] ; 2 uses
  %.1126223 = phi i64 [ %i.dm, %bb.an ], [ 1, %bb.af ] ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %1, i64 %.1126223
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !194 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1110224, ptr align 1 %.0108, i64 %i.ck, i1 false)
  %i.de = getelementptr i8, ptr %.1110224, i64 %i.ck ; 3 uses
  %i.df = getelementptr i8, ptr %i.dd, i64 16
  %.val157 = load i64, ptr %i.df, align 8, !tbaa !207 ; 2 uses
  %.not145 = icmp eq i64 %.val157, 0
  br i1 %.not145, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph225.split.peel.next
  %i.dg = getelementptr i8, ptr %i.dd, i64 32
  %.val.i180 = load i32, ptr %i.dg, align 8       ; 2 uses
  %i.dh = and i32 %.val.i180, 32
  %.not.i181 = icmp eq i32 %i.dh, 0
  br i1 %.not.i181, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.di = and i32 %.val.i180, 64
  %.not.i.i182 = icmp eq i32 %i.di, 0
  %.0.v.i.i183 = select i1 %.not.i.i182, i64 56, i64 40
  %.0.i.i184 = getelementptr i8, ptr %i.dd, i64 %.0.v.i.i183
  br label %_PyUnicode_DATA.exit187

bb.am:                                            ; preds = %bb.ak
  %i.dj = getelementptr i8, ptr %i.dd, i64 56
  %.val4.i186 = load ptr, ptr %i.dj, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit187

_PyUnicode_DATA.exit187:                          ; preds = %bb.al, %bb.am
  %.0.i185 = phi ptr [ %.0.i.i184, %bb.al ], [ %.val4.i186, %bb.am ]
  %i.dk = mul i64 %.val157, %i.cj                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr align 1 %.0.i185, i64 %i.dk, i1 false)
  %i.dl = getelementptr i8, ptr %i.de, i64 %i.dk
  br label %bb.an

bb.an:                                            ; preds = %_PyUnicode_DATA.exit187, %.lr.ph225.split.peel.next
  %.3 = phi ptr [ %i.dl, %_PyUnicode_DATA.exit187 ], [ %i.de, %.lr.ph225.split.peel.next ]
  %i.dm = add nuw nsw i64 %.1126223, 1            ; 2 uses
  %exitcond246.not = icmp eq i64 %i.dm, %2
  br i1 %exitcond246.not, label %.loopexit, label %.lr.ph225.split.peel.next, !llvm.loop !546

.lr.ph228.split.peel.next:                        ; preds = %.critedge.peel, %.critedge
  %.0122227 = phi i64 [ %.2124, %.critedge ], [ %.val156.peel.pre, %.critedge.peel ] ; 2 uses
  %.2127226 = phi i64 [ %i.du, %.critedge ], [ 1, %.critedge.peel ] ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %1, i64 %.2127226
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !194 ; 2 uses
  %i.dp = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.bj, i64 noundef %.0122227, ptr noundef %.0107274, i64 noundef 0, i64 noundef %.1131.fr278, i32 noundef 0) ; 0 uses
  %i.dq = add i64 %.0122227, %.1131.fr278         ; 3 uses
  %i.dr = getelementptr i8, ptr %i.do, i64 16
  %.val156 = load i64, ptr %i.dr, align 8, !tbaa !207 ; 3 uses
  %.not144 = icmp eq i64 %.val156, 0
  br i1 %.not144, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph228.split.peel.next
  %i.ds = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.bj, i64 noundef %i.dq, ptr noundef nonnull %i.do, i64 noundef 0, i64 noundef %.val156, i32 noundef 0) ; 0 uses
  %i.dt = add i64 %.val156, %i.dq
  br label %.critedge

.critedge:                                        ; preds = %bb.ao, %.lr.ph228.split.peel.next
  %.2124 = phi i64 [ %i.dt, %bb.ao ], [ %i.dq, %.lr.ph228.split.peel.next ]
  %i.du = add nuw nsw i64 %.2127226, 1            ; 2 uses
  %exitcond249.not = icmp eq i64 %i.du, %2
  br i1 %exitcond249.not, label %.loopexit, label %.lr.ph228.split.peel.next, !llvm.loop !547

.loopexit:                                        ; preds = %bb.an, %bb.aj, %.critedge, %.critedge.us, %.critedge.peel, %_PyUnicode_DATA.exit179.thread
  %i.dv = phi ptr [ %i.bx, %bb.aj ], [ %i.bj, %.critedge.peel ], [ %i.bj, %.critedge ], [ %i.bx, %_PyUnicode_DATA.exit179.thread ], [ %i.bj, %.critedge.us ], [ %i.bx, %bb.an ] ; 2 uses
  %.0107275 = phi ptr [ %.0107273285290, %bb.aj ], [ %.0107274, %.critedge.peel ], [ %.0107274, %.critedge ], [ %.0107273285290, %_PyUnicode_DATA.exit179.thread ], [ %.0107274, %.critedge.us ], [ %.0107273285290, %bb.an ] ; 2 uses
  %.not.i188 = icmp eq ptr %.0107275, null
  br i1 %.not.i188, label %_Py_NewRef.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.af, %_PyUnicode_DATA.exit179, %.loopexit
  %.0107275297 = phi ptr [ %.0107275, %.loopexit ], [ %.0107273285290, %_PyUnicode_DATA.exit179 ], [ %.0107273285290, %bb.af ] ; 3 uses
  %i.dw = phi ptr [ %i.dv, %.loopexit ], [ %i.bx, %_PyUnicode_DATA.exit179 ], [ %i.bx, %bb.af ] ; 3 uses
  %i.dx = load i32, ptr %.0107275297, align 8, !tbaa !205 ; 2 uses
  %.not.i.i189 = icmp sgt i32 %i.dx, -1
  br i1 %.not.i.i189, label %bb.ap, label %_Py_NewRef.exit

bb.ap:                                            ; preds = %.loopexit.thread
  %i.dy = add nsw i32 %i.dx, -1                   ; 2 uses
  store i32 %i.dy, ptr %.0107275297, align 8, !tbaa !205
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.aq, label %_Py_NewRef.exit

bb.aq:                                            ; preds = %bb.ap
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0107275297) #33
  br label %_Py_NewRef.exit

bb.ar:                                            ; preds = %._crit_edge.thread, %.loopexit244, %.loopexit245, %._crit_edge
  %.0107276 = phi ptr [ %.0107274, %.loopexit244 ], [ %.0107274, %.loopexit245 ], [ %.0107274, %._crit_edge ], [ %.0107, %._crit_edge.thread ] ; 4 uses
  %.not.i190 = icmp eq ptr %.0107276, null
  br i1 %.not.i190, label %_Py_NewRef.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ea = load i32, ptr %.0107276, align 8, !tbaa !205 ; 2 uses
  %.not.i.i191 = icmp sgt i32 %i.ea, -1
  br i1 %.not.i.i191, label %bb.at, label %_Py_NewRef.exit

bb.at:                                            ; preds = %bb.as
  %i.eb = add nsw i32 %i.ea, -1                   ; 2 uses
  store i32 %i.eb, ptr %.0107276, align 8, !tbaa !205
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.au, label %_Py_NewRef.exit

bb.au:                                            ; preds = %bb.at
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0107276) #33
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %.thread202, %bb.aq, %bb.ap, %.loopexit.thread, %.loopexit, %bb.d, %bb.c, %bb.a
  %.0 = phi ptr [ %i.dw, %bb.aq ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ %i.a, %bb.d ], [ %i.a, %bb.c ], [ %i.dv, %.loopexit ], [ %i.dw, %.loopexit.thread ], [ %i.dw, %bb.ap ], [ null, %.thread202 ], [ null, %bb.ar ], [ null, %bb.as ], [ null, %bb.at ], [ null, %bb.au ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_PyUnicode_FastFill(ptr nofree noundef captures(address) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 7
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
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 4 uses
  %.0.i13 = ptrtoaddr ptr %.0.i to i64            ; 6 uses
  switch i32 %i.d, label %bb.g [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.h = trunc i32 %3 to i8
  %i.i = getelementptr i8, ptr %.0.i, i64 %1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 %i.h, i64 %2, i1 false)
  br label %_PyUnicode_Fill.exit

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  %i.j = trunc i32 %3 to i16                      ; 3 uses
  %i.k = getelementptr [2 x i8], ptr %.0.i, i64 %1 ; 7 uses
  %i.l = getelementptr [2 x i8], ptr %i.k, i64 %2 ; 2 uses
  %i.m = icmp ult ptr %i.k, %i.l
  br i1 %i.m, label %iter.check, label %_PyUnicode_Fill.exit

iter.check:                                       ; preds = %bb.e
  %i.n = shl i64 %2, 1
  %i.o = add i64 %i.n, %.0.i13
  %i.p = shl i64 %1, 1                            ; 3 uses
  %i.q = add i64 %i.o, %i.p
  %i.r = add i64 %i.p, %.0.i13
  %i.s = add i64 %i.r, 2
  %umax14 = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.s)
  %i.t = xor i64 %.0.i13, -1
  %i.u = add i64 %umax14, %i.t
  %i.v = sub i64 %i.u, %i.p                       ; 3 uses
  %i.w = lshr i64 %i.v, 1
  %i.x = add nuw i64 %i.w, 1                      ; 5 uses
  %min.iters.check16 = icmp ult i64 %i.v, 6
  br i1 %min.iters.check16, label %.lr.ph30.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check17 = icmp ult i64 %i.v, 30
  br i1 %min.iters.check17, label %vec.epilog.ph, label %vector.ph18

vector.ph18:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf19 = and i64 %i.x, 12
  %n.vec20 = and i64 %i.x, -16                    ; 4 uses
  %i.y = shl i64 %n.vec20, 1
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %broadcast.splatinsert21 = insertelement <8 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat22 = shufflevector <8 x i16> %broadcast.splatinsert21, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body23

vector.body23:                                    ; preds = %vector.body23, %vector.ph18
  %index24 = phi i64 [ 0, %vector.ph18 ], [ %index.next26, %vector.body23 ] ; 2 uses
  %i.aa = shl i64 %index24, 1
  %next.gep25 = getelementptr i8, ptr %i.k, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep25, i64 16
  store <8 x i16> %broadcast.splat22, ptr %next.gep25, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat22, ptr %i.ab, align 2, !tbaa !208
  %index.next26 = add nuw i64 %index24, 16        ; 2 uses
  %i.ac = icmp eq i64 %index.next26, %n.vec20
  br i1 %i.ac, label %middle.block27, label %vector.body23, !llvm.loop !548

middle.block27:                                   ; preds = %vector.body23
  %cmp.n28 = icmp eq i64 %i.x, %n.vec20
  br i1 %cmp.n28, label %_PyUnicode_Fill.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block27
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf19, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec20, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %i.x, -4                     ; 3 uses
  %i.ad = shl i64 %n.vec31, 1
  %i.ae = getelementptr i8, ptr %i.k, i64 %i.ad
  %broadcast.splatinsert32 = insertelement <4 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat33 = shufflevector <4 x i16> %broadcast.splatinsert32, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 2 uses
  %i.af = shl i64 %index34, 1
  %next.gep35 = getelementptr i8, ptr %i.k, i64 %i.af
  store <4 x i16> %broadcast.splat33, ptr %next.gep35, align 2, !tbaa !208
  %index.next36 = add nuw i64 %index34, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next36, %n.vec31
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !549

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %i.x, %n.vec31
  br i1 %cmp.n37, label %_PyUnicode_Fill.exit, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.029.i = phi ptr [ %i.ah, %.lr.ph30.i ], [ %.029.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  store i16 %i.j, ptr %.029.i, align 2, !tbaa !208
  %i.ah = getelementptr i8, ptr %.029.i, i64 2    ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %i.l
  br i1 %i.ai, label %.lr.ph30.i, label %_PyUnicode_Fill.exit, !llvm.loop !550

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.aj = getelementptr [4 x i8], ptr %.0.i, i64 %1 ; 5 uses
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %2 ; 2 uses
  %i.al = icmp ult ptr %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph.i.preheader, label %_PyUnicode_Fill.exit

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.am = shl i64 %2, 2
  %i.an = add i64 %i.am, %.0.i13
  %i.ao = shl i64 %1, 2                           ; 3 uses
  %i.ap = add i64 %i.an, %i.ao
  %i.aq = add i64 %i.ao, %.0.i13
  %i.ar = add i64 %i.aq, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.ar)
  %i.as = xor i64 %.0.i13, -1
  %i.at = add i64 %umax, %i.as
  %i.au = sub i64 %i.at, %i.ao                    ; 2 uses
  %i.av = lshr i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.au, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.aw, 9223372036854775800     ; 3 uses
  %i.ax = shl i64 %n.vec, 2
  %i.ay = getelementptr i8, ptr %i.aj, i64 %i.ax
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.ba, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !551

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit, label %.lr.ph.i.preheader39

.lr.ph.i.preheader39:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.02628.i.ph = phi ptr [ %i.aj, %.lr.ph.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader39, %.lr.ph.i
  %.02628.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %.02628.i.ph, %.lr.ph.i.preheader39 ] ; 2 uses
  store i32 %3, ptr %.02628.i, align 4, !tbaa !7
  %i.bc = getelementptr i8, ptr %.02628.i, i64 4  ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %i.ak
  br i1 %i.bd, label %.lr.ph.i, label %_PyUnicode_Fill.exit, !llvm.loop !552

bb.g:                                             ; preds = %_PyUnicode_DATA.exit
  unreachable

_PyUnicode_Fill.exit:                             ; preds = %.lr.ph.i, %.lr.ph30.i, %middle.block, %middle.block27, %vec.epilog.middle.block, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -9223372036854775808) i64 @PyUnicode_Fill(ptr nofree noundef captures(address) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val21 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val21, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 10165) #33
  br label %_PyUnicode_FastFill.exit

bb.c:                                             ; preds = %bb.a
  %.val7.i.i = load i32, ptr %0, align 8, !tbaa !205
  %.not.i.i = icmp eq i32 %.val7.i.i, 1
  br i1 %.not.i.i, label %bb.d, label %unicode_check_modifiable.exit

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val8.i.i = load i64, ptr %i.d, align 8, !tbaa !217
  %.not4.i.i = icmp eq i64 %.val8.i.i, -1
  br i1 %.not4.i.i, label %bb.e, label %unicode_check_modifiable.exit

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %0, i64 32
  %.val.i.i = load i32, ptr %i.e, align 8         ; 5 uses
  %i.f = and i32 %.val.i.i, 3
  %.not5.i.i = icmp eq i32 %i.f, 0
  %.not10.i.not.i = icmp eq ptr %.val, @PyUnicode_Type
  %or.cond = and i1 %.not10.i.not.i, %.not5.i.i
  br i1 %or.cond, label %bb.f, label %unicode_check_modifiable.exit

unicode_check_modifiable.exit:                    ; preds = %bb.c, %bb.d, %bb.e
  %i.g = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.116) #33
  br label %_PyUnicode_FastFill.exit

bb.f:                                             ; preds = %bb.e
  %i.h = icmp slt i64 %1, 0
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.28) #33
  br label %_PyUnicode_FastFill.exit

bb.h:                                             ; preds = %bb.f
  %i.j = and i32 %.val.i.i, 64
  %.not.i = icmp eq i32 %i.j, 0                   ; 2 uses
  br i1 %.not.i, label %bb.i, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.i:                                             ; preds = %bb.h
  %i.k = lshr exact i32 %.val.i.i, 2
  %i.l = and i32 %i.k, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.l, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.l, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.h, %bb.i
  %.0.i24 = phi i32 [ %switch.select6.i, %bb.i ], [ 127, %bb.h ]
  %i.m = icmp ugt i32 %3, %.0.i24
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.102) #33
  br label %_PyUnicode_FastFill.exit

bb.k:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.o = getelementptr i8, ptr %0, i64 16
  %.val22 = load i64, ptr %i.o, align 8, !tbaa !207
  %i.p = sub i64 %.val22, %1
  %i.q = tail call i64 @llvm.smin.i64(i64 %i.p, i64 %2) ; 14 uses
  %i.r = icmp slt i64 %i.q, 1
  br i1 %i.r, label %_PyUnicode_FastFill.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = lshr exact i32 %.val.i.i, 2
  %i.t = and i32 %i.s, 7
  %i.u = and i32 %.val.i.i, 32
  %.not.i.i25 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i25, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.0.v.i.i.i = select i1 %.not.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.n:                                             ; preds = %bb.l
  %i.v = getelementptr i8, ptr %0, i64 56
  %.val4.i.i = load ptr, ptr %i.v, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.n, %bb.m
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.m ], [ %.val4.i.i, %bb.n ] ; 4 uses
  %.0.i.i39 = ptrtoaddr ptr %.0.i.i to i64        ; 4 uses
  switch i32 %i.t, label %bb.r [
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 4, label %bb.q
  ]

bb.o:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.w = trunc i32 %3 to i8
  %i.x = getelementptr i8, ptr %.0.i.i, i64 %1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 %i.w, i64 %i.q, i1 false)
  br label %_PyUnicode_FastFill.exit

bb.p:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.y = trunc i32 %3 to i16                      ; 3 uses
  %i.z = getelementptr [2 x i8], ptr %.0.i.i, i64 %1 ; 7 uses
  %i.aa = getelementptr [2 x i8], ptr %i.z, i64 %i.q ; 2 uses
  %i.ab = icmp ult ptr %i.z, %i.aa
  br i1 %i.ab, label %iter.check, label %_PyUnicode_FastFill.exit

iter.check:                                       ; preds = %bb.p
  %i.ac = shl nuw i64 %1, 1                       ; 2 uses
  %i.ad = add i64 %i.ac, %.0.i.i39                ; 2 uses
  %i.ae = shl nuw i64 %i.q, 1
  %i.af = add i64 %i.ad, %i.ae
  %i.ag = add i64 %i.ad, 2
  %umax40 = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.ag)
  %i.ah = xor i64 %.0.i.i39, -1
  %i.ai = add i64 %umax40, %i.ah
  %i.aj = sub i64 %i.ai, %i.ac                    ; 3 uses
  %i.ak = lshr i64 %i.aj, 1
  %i.al = add nuw i64 %i.ak, 1                    ; 5 uses
  %min.iters.check42 = icmp ult i64 %i.aj, 6
  br i1 %min.iters.check42, label %.lr.ph30.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check43 = icmp ult i64 %i.aj, 30
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph44

vector.ph44:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf45 = and i64 %i.al, 12
  %n.vec46 = and i64 %i.al, -16                   ; 4 uses
  %i.am = shl i64 %n.vec46, 1
  %i.an = getelementptr i8, ptr %i.z, i64 %i.am
  %broadcast.splatinsert47 = insertelement <8 x i16> poison, i16 %i.y, i64 0
  %broadcast.splat48 = shufflevector <8 x i16> %broadcast.splatinsert47, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph44
  %index50 = phi i64 [ 0, %vector.ph44 ], [ %index.next52, %vector.body49 ] ; 2 uses
  %i.ao = shl i64 %index50, 1
  %next.gep51 = getelementptr i8, ptr %i.z, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep51, i64 16
  store <8 x i16> %broadcast.splat48, ptr %next.gep51, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat48, ptr %i.ap, align 2, !tbaa !208
  %index.next52 = add nuw i64 %index50, 16        ; 2 uses
  %i.aq = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.aq, label %middle.block53, label %vector.body49, !llvm.loop !553

middle.block53:                                   ; preds = %vector.body49
  %cmp.n54 = icmp eq i64 %i.al, %n.vec46
  br i1 %cmp.n54, label %_PyUnicode_FastFill.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block53
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf45, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.i.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec46, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec57 = and i64 %i.al, -4                    ; 3 uses
  %i.ar = shl i64 %n.vec57, 1
  %i.as = getelementptr i8, ptr %i.z, i64 %i.ar
  %broadcast.splatinsert58 = insertelement <4 x i16> poison, i16 %i.y, i64 0
  %broadcast.splat59 = shufflevector <4 x i16> %broadcast.splatinsert58, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 2 uses
  %i.at = shl i64 %index60, 1
  %next.gep61 = getelementptr i8, ptr %i.z, i64 %i.at
  store <4 x i16> %broadcast.splat59, ptr %next.gep61, align 2, !tbaa !208
  %index.next62 = add nuw i64 %index60, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next62, %n.vec57
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !554

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n63 = icmp eq i64 %i.al, %n.vec57
  br i1 %cmp.n63, label %_PyUnicode_FastFill.exit, label %.lr.ph30.i.i.preheader

.lr.ph30.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i.i.ph = phi ptr [ %i.z, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  br label %.lr.ph30.i.i

.lr.ph30.i.i:                                     ; preds = %.lr.ph30.i.i.preheader, %.lr.ph30.i.i
  %.029.i.i = phi ptr [ %i.av, %.lr.ph30.i.i ], [ %.029.i.i.ph, %.lr.ph30.i.i.preheader ] ; 2 uses
  store i16 %i.y, ptr %.029.i.i, align 2, !tbaa !208
  %i.av = getelementptr i8, ptr %.029.i.i, i64 2  ; 2 uses
  %i.aw = icmp ult ptr %i.av, %i.aa
  br i1 %i.aw, label %.lr.ph30.i.i, label %_PyUnicode_FastFill.exit, !llvm.loop !555

bb.q:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.ax = getelementptr [4 x i8], ptr %.0.i.i, i64 %1 ; 5 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ax, i64 %i.q ; 2 uses
  %i.az = icmp ult ptr %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph.i.i.preheader, label %_PyUnicode_FastFill.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %i.ba = shl i64 %1, 2                           ; 2 uses
  %i.bb = add i64 %i.ba, %.0.i.i39                ; 2 uses
  %i.bc = shl i64 %i.q, 2
  %i.bd = add i64 %i.bb, %i.bc
  %i.be = add i64 %i.bb, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.be)
  %i.bf = xor i64 %.0.i.i39, -1
  %i.bg = add i64 %umax, %i.bf
  %i.bh = sub i64 %i.bg, %i.ba                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader65, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.bj, 9223372036854775800     ; 3 uses
  %i.bk = shl i64 %n.vec, 2
  %i.bl = getelementptr i8, ptr %i.ax, i64 %i.bk
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.bn, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_PyUnicode_FastFill.exit, label %.lr.ph.i.i.preheader65

.lr.ph.i.i.preheader65:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.02628.i.i.ph = phi ptr [ %i.ax, %.lr.ph.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader65, %.lr.ph.i.i
  %.02628.i.i = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %.02628.i.i.ph, %.lr.ph.i.i.preheader65 ] ; 2 uses
  store i32 %3, ptr %.02628.i.i, align 4, !tbaa !7
  %i.bp = getelementptr i8, ptr %.02628.i.i, i64 4 ; 2 uses
  %i.bq = icmp ult ptr %i.bp, %i.ay
  br i1 %i.bq, label %.lr.ph.i.i, label %_PyUnicode_FastFill.exit, !llvm.loop !557

bb.r:                                             ; preds = %_PyUnicode_DATA.exit.i
  unreachable

_PyUnicode_FastFill.exit:                         ; preds = %.lr.ph.i.i, %.lr.ph30.i.i, %middle.block, %middle.block53, %vec.epilog.middle.block, %bb.q, %bb.p, %bb.o, %unicode_check_modifiable.exit, %bb.k, %bb.j, %bb.g, %bb.b
  %.0 = phi i64 [ -1, %bb.b ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %unicode_check_modifiable.exit ], [ 0, %bb.k ], [ %i.q, %bb.o ], [ %i.q, %bb.p ], [ %i.q, %middle.block53 ], [ %i.q, %bb.q ], [ %i.q, %middle.block ], [ %i.q, %vec.epilog.middle.block ], [ %i.q, %.lr.ph30.i.i ], [ %i.q, %.lr.ph.i.i ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_Splitlines(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val2.i = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val2.i, 268435456
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_PyUnicode_EnsureUnicode.exit.thread, label %_PyUnicode_EnsureUnicode.exit

_PyUnicode_EnsureUnicode.exit.thread:             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.193, ptr noundef nonnull %0) #33 ; 0 uses
  br label %asciilib_splitlines.exit

_PyUnicode_EnsureUnicode.exit:                    ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 7 uses
  %i.h = lshr i32 %i.g, 2
  %i.i = and i32 %i.h, 7
  switch i32 %i.i, label %bb.by [
    i32 1, label %bb.b
    i32 2, label %bb.as
    i32 4, label %bb.bi
  ]

bb.b:                                             ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.j = and i32 %i.g, 64
  %.not = icmp eq i32 %i.j, 0
  %i.k = and i32 %i.g, 32
  %.not.i34 = icmp eq i32 %i.k, 0                 ; 2 uses
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_11
begin_hunk_12_@PyUnicode_Contains:bb.a
  %.0.i.i65 = getelementptr i8, ptr %1, i64 %.0.v.i.i64
  br label %_PyUnicode_DATA.exit68

bb.i:                                             ; preds = %_PyUnicode_DATA.exit
  %i.ad = getelementptr i8, ptr %1, i64 56
  %.val4.i67 = load ptr, ptr %i.ad, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit68

_PyUnicode_DATA.exit68:                           ; preds = %bb.h, %bb.i
  %.0.i66 = phi ptr [ %.0.i.i65, %bb.h ], [ %.val4.i67, %bb.i ] ; 5 uses
  %i.ae = icmp eq i64 %.val56, 1
  br i1 %i.ae, label %bb.j, label %bb.ab

bb.j:                                             ; preds = %_PyUnicode_DATA.exit68
  switch i32 %i.t, label %bb.m [
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.af = load i8, ptr %.0.i66, align 1, !tbaa !205
  %i.ag = zext i8 %i.af to i32
  br label %PyUnicode_READ.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i16, ptr %.0.i66, align 2, !tbaa !208
  %i.ai = zext i16 %i.ah to i32
  br label %PyUnicode_READ.exit

bb.m:                                             ; preds = %bb.j
  %i.aj = load i32, ptr %.0.i66, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.k, %bb.l, %bb.m
  %.0.i69 = phi i32 [ %i.ag, %bb.k ], [ %i.ai, %bb.l ], [ %i.aj, %bb.m ] ; 7 uses
  switch i32 %i.p, label %bb.aa [
    i32 1, label %bb.n
    i32 2, label %bb.t
    i32 4, label %bb.v
  ]

bb.n:                                             ; preds = %PyUnicode_READ.exit
  %i.ak = trunc i32 %.0.i69 to i8
  %.not26.i = icmp ult i32 %.0.i69, 256
  br i1 %.not26.i, label %bb.o, label %findchar.exit

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr i8, ptr %.0.i60, i64 %.val57 ; 2 uses
  %i.am = icmp sgt i64 %.val57, 15
  br i1 %i.am, label %bb.p, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.o
  %i.an = icmp ult ptr %.0.i60, %i.al
  br i1 %i.an, label %.lr.ph.i.i, label %findchar.exit

bb.p:                                             ; preds = %bb.o
  %i.ao = tail call ptr @memchr(ptr noundef %.0.i60, i32 noundef %.0.i69, i64 noundef %.val57) #34 ; 2 uses
  %.not.i.i72 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i72, label %findchar.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %.0.i60 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  br label %findchar.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.s
  %.01721.i.i = phi ptr [ %i.ax, %bb.s ], [ %.0.i60, %.preheader.i.i ] ; 3 uses
  %i.as = load i8, ptr %.01721.i.i, align 1, !tbaa !205
  %i.at = icmp eq i8 %i.as, %i.ak
  br i1 %i.at, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.au = ptrtoint ptr %.01721.i.i to i64
  %i.av = ptrtoint ptr %.0.i60 to i64
  %i.aw = sub i64 %i.au, %i.av
  br label %findchar.exit

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.ax = getelementptr i8, ptr %.01721.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.ax, %i.al
  br i1 %exitcond.not.i.i, label %findchar.exit, label %.lr.ph.i.i, !llvm.loop !483

bb.t:                                             ; preds = %PyUnicode_READ.exit
  %.not.i71 = icmp ult i32 %.0.i69, 65536
  br i1 %.not.i71, label %bb.u, label %findchar.exit

bb.u:                                             ; preds = %bb.t
  %i.ay = trunc nuw i32 %.0.i69 to i16
  %i.az = tail call fastcc i64 @ucs2lib_find_char(ptr noundef %.0.i60, i64 noundef %.val57, i16 noundef zeroext %i.ay)
  br label %findchar.exit

bb.v:                                             ; preds = %PyUnicode_READ.exit
  %i.ba = getelementptr [4 x i8], ptr %.0.i60, i64 %.val57 ; 2 uses
  %i.bb = icmp sgt i64 %.val57, 15
  br i1 %i.bb, label %bb.w, label %.preheader.i31.i

.preheader.i31.i:                                 ; preds = %bb.v
  %i.bc = icmp ult ptr %.0.i60, %i.ba
  br i1 %i.bc, label %.lr.ph.i33.i, label %findchar.exit

bb.w:                                             ; preds = %bb.v
  %i.bd = tail call ptr @wmemchr(ptr noundef %.0.i60, i32 noundef %.0.i69, i64 noundef %.val57) #34 ; 2 uses
  %.not.i35.i = icmp eq ptr %i.bd, null
  br i1 %.not.i35.i, label %findchar.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %.0.i60 to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2
  br label %findchar.exit

.lr.ph.i33.i:                                     ; preds = %.preheader.i31.i, %bb.z
  %.01721.i34.i = phi ptr [ %i.bo, %bb.z ], [ %.0.i60, %.preheader.i31.i ] ; 3 uses
  %i.bi = load i32, ptr %.01721.i34.i, align 4, !tbaa !7
  %i.bj = icmp eq i32 %i.bi, %.0.i69
  br i1 %i.bj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i33.i
  %i.bk = ptrtoint ptr %.01721.i34.i to i64
  %i.bl = ptrtoint ptr %.0.i60 to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  br label %findchar.exit

bb.z:                                             ; preds = %.lr.ph.i33.i
  %i.bo = getelementptr i8, ptr %.01721.i34.i, i64 4 ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %i.ba
  br i1 %i.bp, label %.lr.ph.i33.i, label %findchar.exit, !llvm.loop !485

bb.aa:                                            ; preds = %PyUnicode_READ.exit
  unreachable

findchar.exit:                                    ; preds = %bb.z, %bb.s, %bb.n, %.preheader.i.i, %bb.p, %bb.q, %bb.r, %bb.t, %bb.u, %.preheader.i31.i, %bb.w, %bb.x, %bb.y
  %.0.i70 = phi i64 [ -1, %.preheader.i31.i ], [ -1, %bb.t ], [ %i.bh, %bb.x ], [ -1, %bb.n ], [ %i.az, %bb.u ], [ -1, %bb.s ], [ %i.bn, %bb.y ], [ %i.ar, %bb.q ], [ -1, %bb.p ], [ %i.aw, %bb.r ], [ -1, %.preheader.i.i ], [ -1, %bb.w ], [ -1, %bb.z ]
  %i.bq = icmp ne i64 %.0.i70, -1
  %i.br = zext i1 %i.bq to i32
  br label %bb.am

bb.ab:                                            ; preds = %_PyUnicode_DATA.exit68
  %.not52 = icmp eq i32 %i.t, %i.p                ; 2 uses
  br i1 %.not52, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bs = tail call fastcc ptr @unicode_askind(i32 noundef %i.t, ptr noundef %.0.i66, i64 noundef %.val56, i32 noundef %i.p) ; 2 uses
  %.not53 = icmp eq ptr %i.bs, null
  br i1 %.not53, label %bb.am, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.046 = phi ptr [ %i.bs, %bb.ac ], [ %.0.i66, %bb.ab ] ; 4 uses
  %i.bt = icmp eq i64 %.val56, 0                  ; 3 uses
  switch i32 %i.p, label %bb.ak [
    i32 1, label %bb.ae
    i32 2, label %bb.ag
    i32 4, label %bb.ai
  ]

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.bt, label %ucs1lib_find.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bu = tail call fastcc i64 @ucs1lib_fastsearch(ptr noundef %.0.i60, i64 noundef %.val57, ptr noundef %.046, i64 noundef %.val56, i64 noundef -1, i32 noundef 1)
  br label %ucs1lib_find.exit

bb.ag:                                            ; preds = %bb.ad
  br i1 %i.bt, label %ucs1lib_find.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bv = tail call fastcc i64 @ucs2lib_fastsearch(ptr noundef %.0.i60, i64 noundef %.val57, ptr noundef %.046, i64 noundef %.val56, i64 noundef -1, i32 noundef 1)
  br label %ucs1lib_find.exit

bb.ai:                                            ; preds = %bb.ad
  br i1 %i.bt, label %ucs1lib_find.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bw = tail call fastcc i64 @ucs4lib_fastsearch(ptr noundef %.0.i60, i64 noundef %.val57, ptr noundef %.046, i64 noundef %.val56, i64 noundef -1, i32 noundef 1)
  br label %ucs1lib_find.exit

bb.ak:                                            ; preds = %bb.ad
  unreachable

ucs1lib_find.exit:                                ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.045.in.in = phi i64 [ 0, %bb.ag ], [ 0, %bb.ae ], [ %i.bu, %bb.af ], [ %i.bv, %bb.ah ], [ %i.bw, %bb.aj ], [ 0, %bb.ai ]
  %.045.in = icmp ne i64 %.045.in.in, -1
  %.045 = zext i1 %.045.in to i32                 ; 2 uses
  br i1 %.not52, label %bb.am, label %bb.al

bb.al:                                            ; preds = %ucs1lib_find.exit
  tail call void @PyMem_Free(ptr noundef %.046) #33
  br label %bb.am

bb.am:                                            ; preds = %_PyUnicode_EnsureUnicode.exit.thread, %ucs1lib_find.exit, %bb.al, %bb.ac, %bb.d, %_PyUnicode_EnsureUnicode.exit, %findchar.exit, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %_PyUnicode_EnsureUnicode.exit.thread ], [ 0, %_PyUnicode_EnsureUnicode.exit ], [ %i.br, %findchar.exit ], [ -1, %bb.ac ], [ 0, %bb.d ], [ %.045, %bb.al ], [ %.045, %ucs1lib_find.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @unicode_askind(i32 noundef range(i32 0, 8) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i32 noundef range(i32 0, 8) %3) unnamed_addr #1 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64                    ; 5 uses
  %i.a = icmp eq i32 %3, 2
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.b, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = shl nuw nsw i64 %2, 1
  %i.d = tail call ptr @PyMem_Malloc(i64 noundef %i.c) #33 ; 7 uses
  %.not97 = icmp eq ptr %i.d, null
  br i1 %.not97, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 %2
  %i.f = and i64 %2, 4611686018427387900
  %i.g = getelementptr i8, ptr %1, i64 %i.f       ; 2 uses
  %i.h = icmp ult ptr %1, %i.g
  br i1 %i.h, label %.lr.ph121, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph121
  %.pre = ptrtoaddr ptr %i.aq to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.d
  %.087.lcssa135.pre-phi = phi i64 [ %.pre, %.preheader.loopexit ], [ %4, %bb.d ] ; 2 uses
  %.087.lcssa = phi ptr [ %i.aq, %.preheader.loopexit ], [ %1, %bb.d ] ; 9 uses
  %.085.lcssa = phi ptr [ %i.ar, %.preheader.loopexit ], [ %i.d, %bb.d ] ; 8 uses
  %i.i = icmp ult ptr %.087.lcssa, %i.e
  br i1 %i.i, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.j = add i64 %2, %4                           ; 2 uses
  %i.k = sub i64 %i.j, %.087.lcssa135.pre-phi     ; 8 uses
  %scevgep136 = getelementptr i8, ptr %.087.lcssa, i64 %i.k ; 2 uses
  %min.iters.check192 = icmp ult i64 %i.k, 4
  br i1 %min.iters.check192, label %.lr.ph126.preheader, label %vector.memcheck186

vector.memcheck186:                               ; preds = %iter.check
  %i.l = sub i64 %i.j, %.087.lcssa135.pre-phi
  %i.m = shl i64 %i.l, 1
  %scevgep187 = getelementptr i8, ptr %.085.lcssa, i64 %i.m
  %bound0188 = icmp ult ptr %.085.lcssa, %scevgep136
  %bound1189 = icmp ult ptr %.087.lcssa, %scevgep187
  %found.conflict190 = and i1 %bound0188, %bound1189
  br i1 %found.conflict190, label %.lr.ph126.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck186
  %min.iters.check193 = icmp ult i64 %i.k, 16
  br i1 %min.iters.check193, label %vec.epilog.ph, label %vector.ph194

vector.ph194:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf195 = and i64 %i.k, 12
  %n.vec196 = and i64 %i.k, -16                   ; 5 uses
  %i.n = shl i64 %n.vec196, 1
  %i.o = getelementptr i8, ptr %.085.lcssa, i64 %i.n
  %i.p = getelementptr i8, ptr %.087.lcssa, i64 %n.vec196
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph194
  %index198 = phi i64 [ 0, %vector.ph194 ], [ %index.next203, %vector.body197 ] ; 3 uses
  %i.q = shl i64 %index198, 1
  %next.gep199 = getelementptr i8, ptr %.085.lcssa, i64 %i.q ; 2 uses
  %next.gep200 = getelementptr i8, ptr %.087.lcssa, i64 %index198 ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep200, i64 8
  %wide.load201 = load <8 x i8>, ptr %next.gep200, align 1, !tbaa !205, !alias.scope !577
  %wide.load202 = load <8 x i8>, ptr %i.r, align 1, !tbaa !205, !alias.scope !577
  %i.s = zext <8 x i8> %wide.load201 to <8 x i16>
  %i.t = zext <8 x i8> %wide.load202 to <8 x i16>
  %i.u = getelementptr i8, ptr %next.gep199, i64 16
  store <8 x i16> %i.s, ptr %next.gep199, align 2, !tbaa !208, !alias.scope !580, !noalias !577
  store <8 x i16> %i.t, ptr %i.u, align 2, !tbaa !208, !alias.scope !580, !noalias !577
  %index.next203 = add nuw i64 %index198, 16      ; 2 uses
  %i.v = icmp eq i64 %index.next203, %n.vec196
  br i1 %i.v, label %middle.block204, label %vector.body197, !llvm.loop !582

middle.block204:                                  ; preds = %vector.body197
  %cmp.n205 = icmp eq i64 %i.k, %n.vec196
  br i1 %cmp.n205, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block204
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf195, 0
  br i1 %min.epilog.iters.check, label %.lr.ph126.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec196, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec209 = and i64 %i.k, -4                    ; 4 uses
  %i.w = shl i64 %n.vec209, 1
  %i.x = getelementptr i8, ptr %.085.lcssa, i64 %i.w
  %i.y = getelementptr i8, ptr %.087.lcssa, i64 %n.vec209
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index210 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next214, %vec.epilog.vector.body ] ; 3 uses
  %i.z = shl i64 %index210, 1
  %next.gep211 = getelementptr i8, ptr %.085.lcssa, i64 %i.z
  %next.gep212 = getelementptr i8, ptr %.087.lcssa, i64 %index210
  %wide.load213 = load <4 x i8>, ptr %next.gep212, align 1, !tbaa !205, !alias.scope !577
  %i.aa = zext <4 x i8> %wide.load213 to <4 x i16>
  store <4 x i16> %i.aa, ptr %next.gep211, align 2, !tbaa !208, !alias.scope !580, !noalias !577
  %index.next214 = add nuw i64 %index210, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next214, %n.vec209
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !583

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n215 = icmp eq i64 %i.k, %n.vec209
  br i1 %cmp.n215, label %.loopexit, label %.lr.ph126.preheader

.lr.ph126.preheader:                              ; preds = %vector.memcheck186, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.186125.ph = phi ptr [ %.085.lcssa, %iter.check ], [ %.085.lcssa, %vector.memcheck186 ], [ %i.o, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  %.188124.ph = phi ptr [ %.087.lcssa, %iter.check ], [ %.087.lcssa, %vector.memcheck186 ], [ %i.p, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  br label %.lr.ph126

.lr.ph121:                                        ; preds = %bb.d, %.lr.ph121
  %.085120 = phi ptr [ %i.ar, %.lr.ph121 ], [ %i.d, %bb.d ] ; 5 uses
  %.087119 = phi ptr [ %i.aq, %.lr.ph121 ], [ %1, %bb.d ] ; 5 uses
  %i.ac = load i8, ptr %.087119, align 1, !tbaa !205
  %i.ad = zext i8 %i.ac to i16
  store i16 %i.ad, ptr %.085120, align 2, !tbaa !208
  %i.ae = getelementptr i8, ptr %.087119, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !205
  %i.ag = zext i8 %i.af to i16
  %i.ah = getelementptr i8, ptr %.085120, i64 2
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !208
  %i.ai = getelementptr i8, ptr %.087119, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !205
  %i.ak = zext i8 %i.aj to i16
  %i.al = getelementptr i8, ptr %.085120, i64 4
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !208
  %i.am = getelementptr i8, ptr %.087119, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !205
  %i.ao = zext i8 %i.an to i16
  %i.ap = getelementptr i8, ptr %.085120, i64 6
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !208
  %i.aq = getelementptr i8, ptr %.087119, i64 4   ; 4 uses
  %i.ar = getelementptr i8, ptr %.085120, i64 8   ; 2 uses
  %i.as = icmp ult ptr %i.aq, %i.g
  br i1 %i.as, label %.lr.ph121, label %.preheader.loopexit, !llvm.loop !584

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %.lr.ph126
  %.186125 = phi ptr [ %i.aw, %.lr.ph126 ], [ %.186125.ph, %.lr.ph126.preheader ] ; 2 uses
  %.188124 = phi ptr [ %i.at, %.lr.ph126 ], [ %.188124.ph, %.lr.ph126.preheader ] ; 2 uses
  %i.at = getelementptr i8, ptr %.188124, i64 1   ; 2 uses
  %i.au = load i8, ptr %.188124, align 1, !tbaa !205
  %i.av = zext i8 %i.au to i16
  %i.aw = getelementptr i8, ptr %.186125, i64 2
  store i16 %i.av, ptr %.186125, align 2, !tbaa !208
  %exitcond137.not = icmp eq ptr %i.at, %scevgep136
  br i1 %exitcond137.not, label %.loopexit, label %.lr.ph126, !llvm.loop !585

bb.e:                                             ; preds = %bb.a
  %i.ax = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.ax, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = shl nuw nsw i64 %2, 2
  %i.az = tail call ptr @PyMem_Malloc(i64 noundef %i.ay) #33 ; 11 uses
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %.loopexit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = icmp eq i32 %0, 2
  %i.bb = and i64 %2, 2305843009213693948         ; 2 uses
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr [2 x i8], ptr %1, i64 %2  ; 2 uses
  %i.bd = getelementptr [2 x i8], ptr %1, i64 %i.bb ; 2 uses
  %i.be = icmp ult ptr %1, %i.bd
  br i1 %i.be, label %.lr.ph113, label %.preheader101

.preheader101:                                    ; preds = %.lr.ph113, %bb.h
  %.091.lcssa = phi ptr [ %1, %bb.h ], [ %i.ca, %.lr.ph113 ] ; 5 uses
  %.089.lcssa = phi ptr [ %i.az, %bb.h ], [ %i.cb, %.lr.ph113 ] ; 3 uses
  %i.bf = icmp ult ptr %.091.lcssa, %i.bc
  br i1 %i.bf, label %.lr.ph118.preheader, label %.loopexit

.lr.ph118.preheader:                              ; preds = %.preheader101
  %.091.lcssa169 = ptrtoaddr ptr %.091.lcssa to i64 ; 2 uses
  %i.bg = shl nuw nsw i64 %2, 1
  %i.bh = add i64 %i.bg, %4
  %i.bi = add i64 %.091.lcssa169, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 %i.bi)
  %i.bj = xor i64 %.091.lcssa169, -1
  %i.bk = add i64 %umax, %i.bj                    ; 2 uses
  %i.bl = lshr i64 %i.bk, 1
  %i.bm = add nuw i64 %i.bl, 1                    ; 2 uses
  %min.iters.check171 = icmp ult i64 %i.bk, 14
  br i1 %min.iters.check171, label %.lr.ph118.preheader219, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph118.preheader
  %n.vec174 = and i64 %i.bm, -8                   ; 4 uses
  %i.bn = shl i64 %n.vec174, 2
  %i.bo = getelementptr i8, ptr %.089.lcssa, i64 %i.bn
  %i.bp = shl i64 %n.vec174, 1
  %i.bq = getelementptr i8, ptr %.091.lcssa, i64 %i.bp
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph172
  %index176 = phi i64 [ 0, %vector.ph172 ], [ %index.next181, %vector.body175 ] ; 3 uses
  %i.br = shl i64 %index176, 2
  %next.gep177 = getelementptr i8, ptr %.089.lcssa, i64 %i.br ; 2 uses
  %i.bs = shl i64 %index176, 1
  %next.gep178 = getelementptr i8, ptr %.091.lcssa, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep178, i64 8
  %wide.load179 = load <4 x i16>, ptr %next.gep178, align 2, !tbaa !208
  %wide.load180 = load <4 x i16>, ptr %i.bt, align 2, !tbaa !208
  %i.bu = zext <4 x i16> %wide.load179 to <4 x i32>
  %i.bv = zext <4 x i16> %wide.load180 to <4 x i32>
  %i.bw = getelementptr i8, ptr %next.gep177, i64 16
  store <4 x i32> %i.bu, ptr %next.gep177, align 4, !tbaa !7
  store <4 x i32> %i.bv, ptr %i.bw, align 4, !tbaa !7
  %index.next181 = add nuw i64 %index176, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next181, %n.vec174
  br i1 %i.bx, label %middle.block182, label %vector.body175, !llvm.loop !586

middle.block182:                                  ; preds = %vector.body175
  %cmp.n183 = icmp eq i64 %i.bm, %n.vec174
  br i1 %cmp.n183, label %.loopexit, label %.lr.ph118.preheader219

.lr.ph118.preheader219:                           ; preds = %.lr.ph118.preheader, %middle.block182
  %.190117.ph = phi ptr [ %.089.lcssa, %.lr.ph118.preheader ], [ %i.bo, %middle.block182 ]
  %.192116.ph = phi ptr [ %.091.lcssa, %.lr.ph118.preheader ], [ %i.bq, %middle.block182 ]
  br label %.lr.ph118

.lr.ph113:                                        ; preds = %bb.h, %.lr.ph113
  %.089112 = phi ptr [ %i.cb, %.lr.ph113 ], [ %i.az, %bb.h ] ; 2 uses
  %.091111 = phi ptr [ %i.ca, %.lr.ph113 ], [ %1, %bb.h ] ; 2 uses
  %i.by = load <4 x i16>, ptr %.091111, align 2, !tbaa !208
  %i.bz = zext <4 x i16> %i.by to <4 x i32>
  store <4 x i32> %i.bz, ptr %.089112, align 4, !tbaa !7
  %i.ca = getelementptr i8, ptr %.091111, i64 8   ; 3 uses
  %i.cb = getelementptr i8, ptr %.089112, i64 16  ; 2 uses
  %i.cc = icmp ult ptr %i.ca, %i.bd
  br i1 %i.cc, label %.lr.ph113, label %.preheader101, !llvm.loop !587

.lr.ph118:                                        ; preds = %.lr.ph118.preheader219, %.lr.ph118
  %.190117 = phi ptr [ %i.cg, %.lr.ph118 ], [ %.190117.ph, %.lr.ph118.preheader219 ] ; 2 uses
  %.192116 = phi ptr [ %i.cd, %.lr.ph118 ], [ %.192116.ph, %.lr.ph118.preheader219 ] ; 2 uses
  %i.cd = getelementptr i8, ptr %.192116, i64 2   ; 2 uses
  %i.ce = load i16, ptr %.192116, align 2, !tbaa !208
  %i.cf = zext i16 %i.ce to i32
  %i.cg = getelementptr i8, ptr %.190117, i64 4
  store i32 %i.cf, ptr %.190117, align 4, !tbaa !7
  %i.ch = icmp ult ptr %i.cd, %i.bc
  br i1 %i.ch, label %.lr.ph118, label %.loopexit, !llvm.loop !588

bb.i:                                             ; preds = %bb.g
  %i.ci = getelementptr i8, ptr %1, i64 %2
  %i.cj = getelementptr i8, ptr %1, i64 %i.bb     ; 2 uses
  %i.ck = icmp ult ptr %1, %i.cj
  br i1 %i.ck, label %.lr.ph, label %.preheader103

.preheader103.loopexit:                           ; preds = %.lr.ph
  %.pre138 = ptrtoaddr ptr %i.dn to i64
  br label %.preheader103

.preheader103:                                    ; preds = %.preheader103.loopexit, %bb.i
  %.082.lcssa134.pre-phi = phi i64 [ %.pre138, %.preheader103.loopexit ], [ %4, %bb.i ] ; 2 uses
  %.083.lcssa = phi ptr [ %i.do, %.preheader103.loopexit ], [ %i.az, %bb.i ] ; 6 uses
  %.082.lcssa = phi ptr [ %i.dn, %.preheader103.loopexit ], [ %1, %bb.i ] ; 7 uses
  %i.cl = icmp ult ptr %.082.lcssa, %i.ci
  br i1 %i.cl, label %.lr.ph110.preheader, label %.loopexit

.lr.ph110.preheader:                              ; preds = %.preheader103
  %i.cm = add i64 %2, %4                          ; 2 uses
  %i.cn = sub i64 %i.cm, %.082.lcssa134.pre-phi   ; 4 uses
  %scevgep = getelementptr i8, ptr %.082.lcssa, i64 %i.cn ; 2 uses
  %min.iters.check = icmp ult i64 %i.cn, 20
  br i1 %min.iters.check, label %.lr.ph110.preheader223, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110.preheader
  %i.co = sub i64 %i.cm, %.082.lcssa134.pre-phi
  %i.cp = shl i64 %i.co, 2
  %scevgep165 = getelementptr i8, ptr %.083.lcssa, i64 %i.cp
  %bound0 = icmp ult ptr %.083.lcssa, %scevgep
  %bound1 = icmp ult ptr %.082.lcssa, %scevgep165
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader223, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cn, -8                      ; 4 uses
  %i.cq = getelementptr i8, ptr %.082.lcssa, i64 %n.vec
  %i.cr = shl i64 %n.vec, 2
  %i.cs = getelementptr i8, ptr %.083.lcssa, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.082.lcssa, i64 %index ; 2 uses
  %i.ct = shl i64 %index, 2
  %next.gep166 = getelementptr i8, ptr %.083.lcssa, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !205, !alias.scope !589
  %wide.load167 = load <4 x i8>, ptr %i.cu, align 1, !tbaa !205, !alias.scope !589
  %i.cv = zext <4 x i8> %wide.load to <4 x i32>
  %i.cw = zext <4 x i8> %wide.load167 to <4 x i32>
  %i.cx = getelementptr i8, ptr %next.gep166, i64 16
  store <4 x i32> %i.cv, ptr %next.gep166, align 4, !tbaa !7, !alias.scope !592, !noalias !589
  store <4 x i32> %i.cw, ptr %i.cx, align 4, !tbaa !7, !alias.scope !592, !noalias !589
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !594

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph110.preheader223

.lr.ph110.preheader223:                           ; preds = %vector.memcheck, %.lr.ph110.preheader, %middle.block
  %.1109.ph = phi ptr [ %.082.lcssa, %vector.memcheck ], [ %.082.lcssa, %.lr.ph110.preheader ], [ %i.cq, %middle.block ]
  %.184108.ph = phi ptr [ %.083.lcssa, %vector.memcheck ], [ %.083.lcssa, %.lr.ph110.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph110

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.082106 = phi ptr [ %i.dn, %.lr.ph ], [ %1, %bb.i ] ; 5 uses
  %.083105 = phi ptr [ %i.do, %.lr.ph ], [ %i.az, %bb.i ] ; 5 uses
  %i.cz = load i8, ptr %.082106, align 1, !tbaa !205
  %i.da = zext i8 %i.cz to i32
  store i32 %i.da, ptr %.083105, align 4, !tbaa !7
  %i.db = getelementptr i8, ptr %.082106, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !205
  %i.dd = zext i8 %i.dc to i32
  %i.de = getelementptr i8, ptr %.083105, i64 4
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !7
  %i.df = getelementptr i8, ptr %.082106, i64 2
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !205
  %i.dh = zext i8 %i.dg to i32
  %i.di = getelementptr i8, ptr %.083105, i64 8
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !7
  %i.dj = getelementptr i8, ptr %.082106, i64 3
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !205
  %i.dl = zext i8 %i.dk to i32
  %i.dm = getelementptr i8, ptr %.083105, i64 12
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !7
  %i.dn = getelementptr i8, ptr %.082106, i64 4   ; 4 uses
  %i.do = getelementptr i8, ptr %.083105, i64 16  ; 2 uses
  %i.dp = icmp ult ptr %i.dn, %i.cj
  br i1 %i.dp, label %.lr.ph, label %.preheader103.loopexit, !llvm.loop !595

.lr.ph110:                                        ; preds = %.lr.ph110.preheader223, %.lr.ph110
  %.1109 = phi ptr [ %i.dq, %.lr.ph110 ], [ %.1109.ph, %.lr.ph110.preheader223 ] ; 2 uses
  %.184108 = phi ptr [ %i.dt, %.lr.ph110 ], [ %.184108.ph, %.lr.ph110.preheader223 ] ; 2 uses
  %i.dq = getelementptr i8, ptr %.1109, i64 1     ; 2 uses
  %i.dr = load i8, ptr %.1109, align 1, !tbaa !205
  %i.ds = zext i8 %i.dr to i32
  %i.dt = getelementptr i8, ptr %.184108, i64 4
  store i32 %i.ds, ptr %.184108, align 4, !tbaa !7
  %exitcond.not = icmp eq ptr %i.dq, %scevgep
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph110, !llvm.loop !596

.loopexit.sink.split:                             ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  %i.du = tail call ptr @PyErr_NoMemory() #33
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph110, %.lr.ph118, %.lr.ph126, %middle.block, %middle.block182, %middle.block204, %vec.epilog.middle.block, %.loopexit.sink.split, %.preheader103, %.preheader101, %.preheader
  %.0 = phi ptr [ %i.du, %.loopexit.sink.split ], [ %i.d, %middle.block204 ], [ %i.az, %.preheader101 ], [ %i.d, %.preheader ], [ %i.az, %.preheader103 ], [ %i.az, %middle.block182 ], [ %i.az, %middle.block ], [ %i.d, %vec.epilog.middle.block ], [ %i.az, %.lr.ph118 ], [ %i.d, %.lr.ph126 ], [ %i.az, %.lr.ph110 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_Concat(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val2.i = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val2.i, 268435456
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_PyUnicode_EnsureUnicode.exit.thread, label %_PyUnicode_EnsureUnicode.exit

_PyUnicode_EnsureUnicode.exit.thread:             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.193, ptr noundef nonnull %0) #33 ; 0 uses
  br label %bb.m

_PyUnicode_EnsureUnicode.exit:                    ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val37 = load ptr, ptr %i.f, align 8, !tbaa !197 ; 2 uses
  %i.g = getelementptr i8, ptr %.val37, i64 168
  %.val38 = load i64, ptr %i.g, align 8, !tbaa !198
  %i.h = and i64 %.val38, 268435456
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.j = getelementptr i8, ptr %.val37, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !378
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.107, ptr noundef %i.k) #33 ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.m = icmp eq ptr %0, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @PyUnicode_FromObject(ptr noundef nonnull %1)
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq ptr %1, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @PyUnicode_FromObject(ptr noundef %0)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %0, i64 16
  %.val40 = load i64, ptr %i.q, align 8, !tbaa !207 ; 4 uses
  %i.r = getelementptr i8, ptr %1, i64 16
  %.val39 = load i64, ptr %i.r, align 8, !tbaa !207 ; 3 uses
  %i.s = sub i64 9223372036854775807, %.val39
  %i.t = icmp sgt i64 %.val40, %i.s
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.u, ptr noundef nonnull @.str.108) #33
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.v = add i64 %.val39, %.val40
  %i.w = getelementptr i8, ptr %0, i64 32
  %.val42 = load i32, ptr %i.w, align 8           ; 2 uses
  %i.x = and i32 %.val42, 64
  %.not.i43 = icmp eq i32 %i.x, 0
  br i1 %.not.i43, label %bb.j, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.j:                                             ; preds = %bb.i
  %i.y = lshr i32 %.val42, 2
  %i.z = and i32 %i.y, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.z, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.z, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.i, %bb.j
  %.0.i44 = phi i32 [ %switch.select6.i, %bb.j ], [ 127, %bb.i ] ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 32
  %.val41 = load i32, ptr %i.aa, align 8          ; 2 uses
  %i.ab = and i32 %.val41, 64
  %.not.i45 = icmp eq i32 %i.ab, 0
  br i1 %.not.i45, label %bb.k, label %PyUnicode_MAX_CHAR_VALUE.exit51

bb.k:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.ac = lshr i32 %.val41, 2
  %i.ad = and i32 %i.ac, 7                        ; 2 uses
  %switch.selectcmp.i47 = icmp eq i32 %i.ad, 2
  %switch.select.i48 = select i1 %switch.selectcmp.i47, i32 65535, i32 1114111
  %switch.selectcmp5.i49 = icmp eq i32 %i.ad, 1
  %switch.select6.i50 = select i1 %switch.selectcmp5.i49, i32 255, i32 %switch.select.i48
  %i.ae = tail call i32 @llvm.umax.i32(i32 %.0.i44, i32 %switch.select6.i50)
  br label %PyUnicode_MAX_CHAR_VALUE.exit51
end_hunk_12
begin_hunk_13_@unicode_expandtabs:bb.a
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.g ], [ %.val4.i.i, %bb.h ] ; 9 uses
  %i.v = icmp sgt i64 %.val.i, 0
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %_PyUnicode_DATA.exit.i
  %i.w = icmp sgt i32 %.0, 0                      ; 2 uses
  %i.x = zext i32 %.0 to i64                      ; 6 uses
  br i1 %i.w, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.q
  %.0102.us.i = phi i32 [ %.1.us.i, %bb.q ], [ 0, %.lr.ph.i ] ; 2 uses
  %.063101.us.i = phi i64 [ %i.aq, %bb.q ], [ 0, %.lr.ph.i ] ; 4 uses
  %.065100.us.i = phi i64 [ %.166.us.i, %bb.q ], [ 0, %.lr.ph.i ] ; 4 uses
  %.06799.us.i = phi i64 [ %.168.us.i, %bb.q ], [ 0, %.lr.ph.i ] ; 3 uses
  switch i32 %i.r, label %bb.k [
    i32 1, label %bb.j
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.split.us.i
  %i.y = getelementptr [2 x i8], ptr %.0.i.i, i64 %.063101.us.i
  %i.z = load i16, ptr %i.y, align 2, !tbaa !208
  %i.aa = zext i16 %i.z to i32
  br label %PyUnicode_READ.exit.us.i

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %i.ab = getelementptr i8, ptr %.0.i.i, i64 %.063101.us.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !205
  %i.ad = zext i8 %i.ac to i32
  br label %PyUnicode_READ.exit.us.i

bb.k:                                             ; preds = %.lr.ph.split.us.i
  %i.ae = getelementptr [4 x i8], ptr %.0.i.i, i64 %.063101.us.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  br label %PyUnicode_READ.exit.us.i

PyUnicode_READ.exit.us.i:                         ; preds = %bb.k, %bb.j, %bb.i
  %.0.i79.us.i = phi i32 [ %i.ad, %bb.j ], [ %i.aa, %bb.i ], [ %i.af, %bb.k ] ; 2 uses
  %i.ag = icmp eq i32 %.0.i79.us.i, 9
  br i1 %i.ag, label %bb.o, label %bb.l

bb.l:                                             ; preds = %PyUnicode_READ.exit.us.i
  %i.ah = icmp eq i64 %.065100.us.i, 9223372036854775807
  br i1 %i.ah, label %.split.us.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add i64 %.06799.us.i, 1
  %i.aj = add nsw i64 %.065100.us.i, 1            ; 2 uses
  switch i32 %.0.i79.us.i, label %bb.q [
    i32 13, label %bb.n
    i32 10, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  br label %bb.q

bb.o:                                             ; preds = %PyUnicode_READ.exit.us.i
  %i.ak = srem i64 %.06799.us.i, %i.x
  %i.al = sub nsw i64 %i.x, %i.ak                 ; 3 uses
  %i.am = sub i64 9223372036854775807, %i.al
  %i.an = icmp sgt i64 %.065100.us.i, %i.am
  br i1 %i.an, label %.split.us.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = add i64 %i.al, %.06799.us.i
  %i.ap = add i64 %i.al, %.065100.us.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.m
  %.168.us.i = phi i64 [ %i.ao, %bb.p ], [ %i.ai, %bb.m ], [ 0, %bb.n ]
  %.166.us.i = phi i64 [ %i.ap, %bb.p ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ] ; 2 uses
  %.1.us.i = phi i32 [ 1, %bb.p ], [ %.0102.us.i, %bb.m ], [ %.0102.us.i, %bb.n ] ; 2 uses
  %i.aq = add nuw nsw i64 %.063101.us.i, 1        ; 2 uses
  %exitcond146.not.i = icmp eq i64 %i.aq, %.val.i
  br i1 %exitcond146.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !904

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  switch i32 %i.r, label %PyUnicode_READ.exit.i [
    i32 1, label %PyUnicode_READ.exit.us109.i
    i32 2, label %PyUnicode_READ.exit.us123.i
  ]

PyUnicode_READ.exit.us109.i:                      ; preds = %.lr.ph.split.i, %bb.t
  %.0102.us105.i = phi i32 [ %.1.us113.i, %bb.t ], [ 0, %.lr.ph.split.i ]
  %.063101.us106.i = phi i64 [ %i.aw, %bb.t ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.065100.us107.i = phi i64 [ %.166.us112.i, %bb.t ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %i.ar = getelementptr i8, ptr %.0.i.i, i64 %.063101.us106.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !205
  %i.at = icmp eq i8 %i.as, 9
  br i1 %i.at, label %bb.t, label %bb.r

bb.r:                                             ; preds = %PyUnicode_READ.exit.us109.i
  %i.au = icmp eq i64 %.065100.us107.i, 9223372036854775807
  br i1 %i.au, label %.split.us.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = add nsw i64 %.065100.us107.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %PyUnicode_READ.exit.us109.i
  %.166.us112.i = phi i64 [ %i.av, %bb.s ], [ %.065100.us107.i, %PyUnicode_READ.exit.us109.i ] ; 2 uses
  %.1.us113.i = phi i32 [ %.0102.us105.i, %bb.s ], [ 1, %PyUnicode_READ.exit.us109.i ] ; 2 uses
  %i.aw = add nuw nsw i64 %.063101.us106.i, 1     ; 2 uses
  %exitcond144.not.i = icmp eq i64 %i.aw, %.val.i
  br i1 %exitcond144.not.i, label %._crit_edge.i, label %PyUnicode_READ.exit.us109.i, !llvm.loop !904

PyUnicode_READ.exit.us123.i:                      ; preds = %.lr.ph.split.i, %bb.w
  %.0102.us119.i = phi i32 [ %.1.us127.i, %bb.w ], [ 0, %.lr.ph.split.i ]
  %.063101.us120.i = phi i64 [ %i.bc, %bb.w ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.065100.us121.i = phi i64 [ %.166.us126.i, %bb.w ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %i.ax = getelementptr [2 x i8], ptr %.0.i.i, i64 %.063101.us120.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !208
  %i.az = icmp eq i16 %i.ay, 9
  br i1 %i.az, label %bb.w, label %bb.u

bb.u:                                             ; preds = %PyUnicode_READ.exit.us123.i
  %i.ba = icmp eq i64 %.065100.us121.i, 9223372036854775807
  br i1 %i.ba, label %.split.us.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = add nsw i64 %.065100.us121.i, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %PyUnicode_READ.exit.us123.i
  %.166.us126.i = phi i64 [ %i.bb, %bb.v ], [ %.065100.us121.i, %PyUnicode_READ.exit.us123.i ] ; 2 uses
  %.1.us127.i = phi i32 [ %.0102.us119.i, %bb.v ], [ 1, %PyUnicode_READ.exit.us123.i ] ; 2 uses
  %i.bc = add nuw nsw i64 %.063101.us120.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %PyUnicode_READ.exit.us123.i, !llvm.loop !904

PyUnicode_READ.exit.i:                            ; preds = %.lr.ph.split.i, %bb.z
  %.0102.i = phi i32 [ %.1.i, %bb.z ], [ 0, %.lr.ph.split.i ]
  %.063101.i = phi i64 [ %i.bi, %bb.z ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.065100.i = phi i64 [ %.166.i, %bb.z ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %i.bd = getelementptr [4 x i8], ptr %.0.i.i, i64 %.063101.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = icmp eq i32 %i.be, 9
  br i1 %i.bf, label %bb.z, label %bb.x

bb.x:                                             ; preds = %PyUnicode_READ.exit.i
  %i.bg = icmp eq i64 %.065100.i, 9223372036854775807
  br i1 %i.bg, label %.split.us.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = add nsw i64 %.065100.i, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %PyUnicode_READ.exit.i
  %.166.i = phi i64 [ %i.bh, %bb.y ], [ %.065100.i, %PyUnicode_READ.exit.i ] ; 2 uses
  %.1.i = phi i32 [ %.0102.i, %bb.y ], [ 1, %PyUnicode_READ.exit.i ] ; 2 uses
  %i.bi = add nuw nsw i64 %.063101.i, 1           ; 2 uses
  %exitcond145.not.i = icmp eq i64 %i.bi, %.val.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %PyUnicode_READ.exit.i, !llvm.loop !904

._crit_edge.i:                                    ; preds = %bb.w, %bb.t, %bb.z, %bb.q
  %.065.lcssa.i = phi i64 [ %.166.us.i, %bb.q ], [ %.166.us112.i, %bb.t ], [ %.166.i, %bb.z ], [ %.166.us126.i, %bb.w ]
  %.0.lcssa.i = phi i32 [ %.1.us.i, %bb.q ], [ %.1.us113.i, %bb.t ], [ %.1.i, %bb.z ], [ %.1.us127.i, %bb.w ]
  %.not.i = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i, label %._crit_edge.thread.i, label %PyUnicode_MAX_CHAR_VALUE.exit.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %_PyUnicode_DATA.exit.i
  %i.bj = call fastcc ptr @unicode_result_unchanged(ptr noundef %0), !inline_history !905
  br label %unicode_expandtabs_impl.exit

PyUnicode_MAX_CHAR_VALUE.exit.i:                  ; preds = %._crit_edge.i
  %i.bk = and i32 %i.p, 64
  %.not.i80.i = icmp eq i32 %i.bk, 0
  %switch.selectcmp.i.i = icmp eq i32 %i.r, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 65535, i32 1114111
  %switch.selectcmp5.i.i = icmp eq i32 %i.r, 1
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 255, i32 %switch.select.i.i
  %.0.i81.i = select i1 %.not.i80.i, i32 %switch.select6.i.i, i32 127
  %i.bl = call ptr @PyUnicode_New(i64 noundef %.065.lcssa.i, i32 noundef %.0.i81.i), !inline_history !905 ; 16 uses
  %.not77.i = icmp eq ptr %i.bl, null
  br i1 %.not77.i, label %unicode_expandtabs_impl.exit, label %bb.aa

bb.aa:                                            ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 32     ; 2 uses
  %.val.i82.i = load i32, ptr %i.bm, align 8      ; 2 uses
  %i.bn = and i32 %.val.i82.i, 32
  %.not.i83.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i83.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bo = and i32 %.val.i82.i, 64
  %.not.i.i84.i = icmp eq i32 %i.bo, 0
  %.0.v.i.i85.i = select i1 %.not.i.i84.i, i64 56, i64 40
  %.0.i.i86.i = getelementptr i8, ptr %i.bl, i64 %.0.v.i.i85.i
  br label %_PyUnicode_DATA.exit89.i

bb.ac:                                            ; preds = %bb.aa
  %i.bp = getelementptr i8, ptr %i.bl, i64 56
  %.val4.i88.i = load ptr, ptr %i.bp, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit89.i

_PyUnicode_DATA.exit89.i:                         ; preds = %bb.ac, %bb.ab
  %.0.i87.i = phi ptr [ %.0.i.i86.i, %bb.ab ], [ %.val4.i88.i, %bb.ac ] ; 7 uses
  %.0.i87.i79 = ptrtoaddr ptr %.0.i87.i to i64    ; 6 uses
  %i.bq = xor i64 %.0.i87.i79, -1
  %i.br = shl nuw nsw i64 %i.x, 1
  %i.bs = add i64 %i.br, %.0.i87.i79
  %i.bt = add i64 %.0.i87.i79, 2
  %i.bu = xor i64 %.0.i87.i79, -1
  %i.bv = shl nuw nsw i64 %i.x, 2
  %i.bw = add i64 %i.bv, %.0.i87.i79
  %i.bx = add i64 %.0.i87.i79, 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.as, %_PyUnicode_DATA.exit89.i
  %.164134.i = phi i64 [ 0, %_PyUnicode_DATA.exit89.i ], [ %i.ej, %bb.as ] ; 4 uses
  %.2133.i = phi i64 [ 0, %_PyUnicode_DATA.exit89.i ], [ %.3.i, %bb.as ] ; 11 uses
  %.269132.i = phi i64 [ 0, %_PyUnicode_DATA.exit89.i ], [ %.370.i, %bb.as ] ; 4 uses
  switch i32 %i.r, label %bb.ag [
    i32 1, label %bb.ae
    i32 2, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.by = getelementptr i8, ptr %.0.i.i, i64 %.164134.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !205
  %i.ca = zext i8 %i.bz to i32
  br label %PyUnicode_READ.exit91.i

bb.af:                                            ; preds = %bb.ad
  %i.cb = getelementptr [2 x i8], ptr %.0.i.i, i64 %.164134.i
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !208
  %i.cd = zext i16 %i.cc to i32
  br label %PyUnicode_READ.exit91.i

bb.ag:                                            ; preds = %bb.ad
  %i.ce = getelementptr [4 x i8], ptr %.0.i.i, i64 %.164134.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  br label %PyUnicode_READ.exit91.i

PyUnicode_READ.exit91.i:                          ; preds = %bb.ag, %bb.af, %bb.ae
  %.0.i90.i = phi i32 [ %i.ca, %bb.ae ], [ %i.cd, %bb.af ], [ %i.cf, %bb.ag ] ; 5 uses
  %i.cg = icmp eq i32 %.0.i90.i, 9
  br i1 %i.cg, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %PyUnicode_READ.exit91.i
  br i1 %i.w, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.ch = srem i64 %.269132.i, %i.x               ; 3 uses
  %i.ci = sub nsw i64 %i.x, %i.ch                 ; 5 uses
  %i.cj = add i64 %i.ci, %.269132.i
  switch i32 %i.r, label %bb.am [
    i32 1, label %bb.aj
    i32 2, label %bb.ak
    i32 4, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ck = getelementptr i8, ptr %.0.i87.i, i64 %.2133.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.ck, i8 32, i64 %i.ci, i1 false)
  br label %_PyUnicode_Fill.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.cl = getelementptr [2 x i8], ptr %.0.i87.i, i64 %.2133.i ; 7 uses
  %i.cm = getelementptr [2 x i8], ptr %i.cl, i64 %i.ci ; 2 uses
  %i.cn = icmp ult ptr %i.cl, %i.cm
  br i1 %i.cn, label %iter.check, label %_PyUnicode_Fill.exit.i

iter.check:                                       ; preds = %bb.ak
  %i.co = shl i64 %.2133.i, 1                     ; 3 uses
  %i.cp = add i64 %i.bs, %i.co
  %i.cq = shl i64 %i.ch, 1
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = add i64 %i.bt, %i.co
  %umax = call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.cs)
  %i.ct = add i64 %umax, %i.bq
  %i.cu = sub i64 %i.ct, %i.co                    ; 3 uses
  %i.cv = lshr i64 %i.cu, 1
  %i.cw = add nuw i64 %i.cv, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.cu, 6
  br i1 %min.iters.check, label %.lr.ph30.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check80 = icmp ult i64 %i.cu, 30
  br i1 %min.iters.check80, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cw, 12
  %n.vec = and i64 %i.cw, -16                     ; 4 uses
  %i.cx = shl i64 %n.vec, 1
  %i.cy = getelementptr i8, ptr %i.cl, i64 %i.cx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.cl, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 32), ptr %next.gep, align 2, !tbaa !208
  store <8 x i16> splat (i16 32), ptr %i.da, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !906

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.i.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec82 = and i64 %i.cw, -4                    ; 3 uses
  %i.dc = shl i64 %n.vec82, 1
  %i.dd = getelementptr i8, ptr %i.cl, i64 %i.dc
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index83 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next85, %vec.epilog.vector.body ] ; 2 uses
  %i.de = shl i64 %index83, 1
  %next.gep84 = getelementptr i8, ptr %i.cl, i64 %i.de
  store <4 x i16> splat (i16 32), ptr %next.gep84, align 2, !tbaa !208
  %index.next85 = add nuw i64 %index83, 4         ; 2 uses
  %i.df = icmp eq i64 %index.next85, %n.vec82
  br i1 %i.df, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !907

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n86 = icmp eq i64 %i.cw, %n.vec82
  br i1 %cmp.n86, label %_PyUnicode_Fill.exit.i, label %.lr.ph30.i.i.preheader

.lr.ph30.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i.i.ph = phi ptr [ %i.cl, %iter.check ], [ %i.cy, %vec.epilog.iter.check ], [ %i.dd, %vec.epilog.middle.block ]
  br label %.lr.ph30.i.i

.lr.ph30.i.i:                                     ; preds = %.lr.ph30.i.i.preheader, %.lr.ph30.i.i
  %.029.i.i = phi ptr [ %i.dg, %.lr.ph30.i.i ], [ %.029.i.i.ph, %.lr.ph30.i.i.preheader ] ; 2 uses
  store i16 32, ptr %.029.i.i, align 2, !tbaa !208
  %i.dg = getelementptr i8, ptr %.029.i.i, i64 2  ; 2 uses
  %i.dh = icmp ult ptr %i.dg, %i.cm
  br i1 %i.dh, label %.lr.ph30.i.i, label %_PyUnicode_Fill.exit.i, !llvm.loop !908

bb.al:                                            ; preds = %bb.ai
  %i.di = getelementptr [4 x i8], ptr %.0.i87.i, i64 %.2133.i ; 5 uses
  %i.dj = getelementptr [4 x i8], ptr %i.di, i64 %i.ci ; 2 uses
  %i.dk = icmp ult ptr %i.di, %i.dj
  br i1 %i.dk, label %.lr.ph.i.i.preheader, label %_PyUnicode_Fill.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.al
  %i.dl = shl i64 %.2133.i, 2                     ; 3 uses
  %i.dm = add i64 %i.bw, %i.dl
  %i.dn = shl i64 %i.ch, 2
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = add i64 %i.bx, %i.dl
  %umax88 = call i64 @llvm.umax.i64(i64 %i.do, i64 %i.dp)
  %i.dq = add i64 %umax88, %i.bu
  %i.dr = sub i64 %i.dq, %i.dl                    ; 2 uses
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check89 = icmp ult i64 %i.dr, 28
  br i1 %min.iters.check89, label %.lr.ph.i.i.preheader99, label %vector.ph90

vector.ph90:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec92 = and i64 %i.dt, 9223372036854775800   ; 3 uses
  %i.du = shl i64 %n.vec92, 2
  %i.dv = getelementptr i8, ptr %i.di, i64 %i.du
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph90
  %index94 = phi i64 [ 0, %vector.ph90 ], [ %index.next96, %vector.body93 ] ; 2 uses
  %i.dw = shl i64 %index94, 2
  %next.gep95 = getelementptr i8, ptr %i.di, i64 %i.dw ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep95, i64 16
  store <4 x i32> splat (i32 32), ptr %next.gep95, align 4, !tbaa !7
  store <4 x i32> splat (i32 32), ptr %i.dx, align 4, !tbaa !7
  %index.next96 = add nuw i64 %index94, 8         ; 2 uses
  %i.dy = icmp eq i64 %index.next96, %n.vec92
  br i1 %i.dy, label %middle.block97, label %vector.body93, !llvm.loop !909

middle.block97:                                   ; preds = %vector.body93
  %cmp.n98 = icmp eq i64 %i.dt, %n.vec92
  br i1 %cmp.n98, label %_PyUnicode_Fill.exit.i, label %.lr.ph.i.i.preheader99

.lr.ph.i.i.preheader99:                           ; preds = %.lr.ph.i.i.preheader, %middle.block97
  %.02628.i.i.ph = phi ptr [ %i.di, %.lr.ph.i.i.preheader ], [ %i.dv, %middle.block97 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader99, %.lr.ph.i.i
  %.02628.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %.02628.i.i.ph, %.lr.ph.i.i.preheader99 ] ; 2 uses
  store i32 32, ptr %.02628.i.i, align 4, !tbaa !7
  %i.dz = getelementptr i8, ptr %.02628.i.i, i64 4 ; 2 uses
  %i.ea = icmp ult ptr %i.dz, %i.dj
  br i1 %i.ea, label %.lr.ph.i.i, label %_PyUnicode_Fill.exit.i, !llvm.loop !910

bb.am:                                            ; preds = %bb.ai
  unreachable

_PyUnicode_Fill.exit.i:                           ; preds = %.lr.ph.i.i, %.lr.ph30.i.i, %middle.block97, %middle.block, %vec.epilog.middle.block, %bb.al, %bb.ak, %bb.aj
  %i.eb = add i64 %i.ci, %.2133.i
  br label %bb.as

bb.an:                                            ; preds = %PyUnicode_READ.exit91.i
end_hunk_13
begin_hunk_14_@unicode_sizeof:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 16
  %.val17.i = load i64, ptr %i.n, align 8, !tbaa !207
  %i.o = add i64 %.val17.i, 41
  br label %unicode_sizeof_impl.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0.i.ph = phi i64 [ 64, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 48
  %.val5.i.i = load ptr, ptr %i.p, align 8, !tbaa !203 ; 2 uses
  %.not4.i.i = icmp eq ptr %.val5.i.i, null
  br i1 %.not4.i.i, label %unicode_sizeof_impl.exit, label %bb.g

.thread:                                          ; preds = %bb.b
  %i.q = getelementptr i8, ptr %0, i64 16
  %.val16.i = load i64, ptr %i.q, align 8, !tbaa !207
  %i.r = add i64 %.val16.i, 1
  %i.s = lshr i32 %.val18.i, 2
  %i.t = and i32 %i.s, 7
  %i.u = zext nneg i32 %i.t to i64
  %i.v = mul i64 %i.r, %i.u
  %i.w = add i64 %i.v, 56                         ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 48
  %.val5.i.i4 = load ptr, ptr %i.x, align 8, !tbaa !203 ; 2 uses
  %.not4.i.i5 = icmp eq ptr %.val5.i.i4, null
  br i1 %.not4.i.i5, label %unicode_sizeof_impl.exit, label %.thread8

.thread8:                                         ; preds = %.thread
  %.0.v.i.i.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_HAS_UTF8_MEMORY.exit.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %0, i64 56
  %.val4.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !205
  br label %_PyUnicode_HAS_UTF8_MEMORY.exit.i

_PyUnicode_HAS_UTF8_MEMORY.exit.i:                ; preds = %bb.g, %.thread8
  %.0.i.ph613 = phi i64 [ %i.w, %.thread8 ], [ %.0.i.ph, %bb.g ] ; 2 uses
  %.val5.i.i711 = phi ptr [ %.val5.i.i4, %.thread8 ], [ %.val5.i.i, %bb.g ]
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %.thread8 ], [ %.val4.i.i.i, %bb.g ]
  %.not22.i = icmp eq ptr %.val5.i.i711, %.0.i.i.i
  br i1 %.not22.i, label %unicode_sizeof_impl.exit, label %bb.h

bb.h:                                             ; preds = %_PyUnicode_HAS_UTF8_MEMORY.exit.i
  %.0.in.i.i = getelementptr i8, ptr %0, i64 40
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !193
  %i.z = add i64 %.0.i.ph613, 1
  %i.aa = add i64 %i.z, %.0.i.i
  br label %unicode_sizeof_impl.exit

unicode_sizeof_impl.exit:                         ; preds = %.thread, %bb.e, %bb.f, %_PyUnicode_HAS_UTF8_MEMORY.exit.i, %bb.h
  %.1.i = phi i64 [ %i.aa, %bb.h ], [ %.0.i.ph613, %_PyUnicode_HAS_UTF8_MEMORY.exit.i ], [ %.0.i.ph, %bb.f ], [ %i.o, %bb.e ], [ %i.w, %.thread ]
  %i.ab = tail call ptr @PyLong_FromSsize_t(i64 noundef %.1.i) #33
  ret ptr %i.ab
}

; Function Attrs: nounwind uwtable
define internal ptr @unicode_getnewargs(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val12.i = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val12.i, 268435456
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 2379) #33, !inline_history !379
  br label %_PyUnicode_Copy.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val13.i = load i64, ptr %i.d, align 8, !tbaa !207 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val14.i = load i32, ptr %i.e, align 8         ; 2 uses
  %i.f = and i32 %.val14.i, 64
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %PyUnicode_MAX_CHAR_VALUE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.g = lshr i32 %.val14.i, 2
  %i.h = and i32 %i.g, 7                          ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %i.h, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 65535, i32 1114111
  %switch.selectcmp5.i.i = icmp eq i32 %i.h, 1
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 255, i32 %switch.select.i.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit.i

PyUnicode_MAX_CHAR_VALUE.exit.i:                  ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %switch.select6.i.i, %bb.d ], [ 127, %bb.c ]
  %i.i = tail call ptr @PyUnicode_New(i64 noundef %.val13.i, i32 noundef %.0.i.i), !inline_history !379 ; 5 uses
  %.not11.i = icmp eq ptr %i.i, null
  br i1 %.not11.i, label %_PyUnicode_Copy.exit.thread, label %bb.e

bb.e:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %.val.i.i = load i32, ptr %i.j, align 8         ; 2 uses
  %i.k = and i32 %.val.i.i, 32
  %.not.i15.i = icmp eq i32 %i.k, 0
  br i1 %.not.i15.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %.val.i.i, 64
  %.not.i.i.i = icmp eq i32 %i.l, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.i, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.i, i64 56
  %.val4.i.i = load ptr, ptr %i.m, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.g, %bb.f
  %.0.i16.i = phi ptr [ %.0.i.i.i, %bb.f ], [ %.val4.i.i, %bb.g ]
  %.val.i17.i = load i32, ptr %i.e, align 8       ; 3 uses
  %i.n = and i32 %.val.i17.i, 32
  %.not.i18.i = icmp eq i32 %i.n, 0
  br i1 %.not.i18.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.o = and i32 %.val.i17.i, 64
  %.not.i.i19.i = icmp eq i32 %i.o, 0
  %.0.v.i.i20.i = select i1 %.not.i.i19.i, i64 56, i64 40
  %.0.i.i21.i = getelementptr i8, ptr %0, i64 %.0.v.i.i20.i
  br label %bb.j

bb.i:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.p = getelementptr i8, ptr %0, i64 56
  %.val4.i23.i = load ptr, ptr %i.p, align 8, !tbaa !205
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i22.i = phi ptr [ %.0.i.i21.i, %bb.h ], [ %.val4.i23.i, %bb.i ]
  %i.q = lshr i32 %.val.i17.i, 2
  %i.r = and i32 %i.q, 7
  %i.s = zext nneg i32 %i.r to i64
  %i.t = mul i64 %.val13.i, %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i16.i, ptr align 1 %.0.i22.i, i64 %i.t, i1 false)
  %i.u = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.299, ptr noundef nonnull %i.i) #33
  br label %_PyUnicode_Copy.exit.thread

_PyUnicode_Copy.exit.thread:                      ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i, %bb.b, %bb.j
  %.0 = phi ptr [ %i.u, %bb.j ], [ null, %bb.b ], [ null, %PyUnicode_MAX_CHAR_VALUE.exit.i ]
  ret ptr %.0
}

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #3

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @case_operation(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i32 %i.c, 2
  %i.e = and i32 %i.d, 7
  %i.f = and i32 %i.c, 32
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.c, 64
  %.not.i.i = icmp eq i32 %i.g, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.h, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ]
  %i.i = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.i, align 8, !tbaa !207 ; 3 uses
  %i.j = icmp ugt i64 %.val, 768614336404564650
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.k = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.261) #33
  br label %bb.o

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  %i.l = mul nuw nsw i64 %.val, 12
  %i.m = tail call ptr @PyMem_Malloc(i64 noundef %i.l) #33 ; 14 uses
  %2 = ptrtoaddr ptr %i.m to i64                  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @PyErr_NoMemory() #33
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.p = call i64 %1(i32 noundef %i.e, ptr noundef %.0.i, i64 noundef %.val, ptr noundef nonnull %i.m, ptr noundef nonnull %i.a) #33 ; 3 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !7
  %i.r = call ptr @PyUnicode_New(i64 noundef %i.p, i32 noundef %i.q) ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr [4 x i8], ptr %i.m, i64 %i.p ; 4 uses
  %i.u = getelementptr i8, ptr %i.r, i64 32
  %.val.i80 = load i32, ptr %i.u, align 8         ; 3 uses
  %i.v = and i32 %.val.i80, 32
  %.not.i81 = icmp eq i32 %i.v, 0
  br i1 %.not.i81, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = and i32 %.val.i80, 64
  %.not.i.i82 = icmp eq i32 %i.w, 0
  %.0.v.i.i83 = select i1 %.not.i.i82, i64 56, i64 40
  %.0.i.i84 = getelementptr i8, ptr %i.r, i64 %.0.v.i.i83
  br label %_PyUnicode_DATA.exit87

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %i.r, i64 56
  %.val4.i86 = load ptr, ptr %i.x, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit87

_PyUnicode_DATA.exit87:                           ; preds = %bb.i, %bb.j
  %.0.i85 = phi ptr [ %.0.i.i84, %bb.i ], [ %.val4.i86, %bb.j ] ; 5 uses
  %i.y = lshr i32 %.val.i80, 2
  %i.z = and i32 %i.y, 7
  %.idx79 = shl i64 %i.p, 2                       ; 6 uses
  switch i32 %i.z, label %bb.n [
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 4, label %bb.m
  ]

bb.k:                                             ; preds = %_PyUnicode_DATA.exit87
  %i.aa = ashr exact i64 %.idx79, 2
  %i.ab = and i64 %i.aa, -4
  %i.ac = getelementptr [4 x i8], ptr %i.m, i64 %i.ab ; 2 uses
  %i.ad = icmp ult ptr %i.m, %i.ac
  br i1 %i.ad, label %.lr.ph98, label %.preheader

.preheader:                                       ; preds = %.lr.ph98, %bb.k
  %.074.lcssa = phi ptr [ %i.m, %bb.k ], [ %i.bq, %.lr.ph98 ] ; 8 uses
  %.072.lcssa = phi ptr [ %.0.i85, %bb.k ], [ %i.br, %.lr.ph98 ] ; 6 uses
  %.074.lcssa127 = ptrtoaddr ptr %.074.lcssa to i64 ; 4 uses
  %i.ae = icmp ult ptr %.074.lcssa, %i.t
  br i1 %i.ae, label %.lr.ph103.preheader, label %.loopexit

.lr.ph103.preheader:                              ; preds = %.preheader
  %i.af = add i64 %.idx79, %2
  %i.ag = add i64 %.074.lcssa127, 4
  %umax130 = call i64 @llvm.umax.i64(i64 %i.af, i64 %i.ag)
  %i.ah = xor i64 %.074.lcssa127, -1
  %i.ai = add i64 %umax130, %i.ah                 ; 2 uses
  %i.aj = lshr i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check132 = icmp ult i64 %i.ai, 156
  br i1 %min.iters.check132, label %.lr.ph103.preheader147, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph103.preheader
  %i.al = add i64 %.idx79, %2
  %i.am = add i64 %.074.lcssa127, 4
  %umax128 = call i64 @llvm.umax.i64(i64 %i.al, i64 %i.am)
  %i.an = xor i64 %.074.lcssa127, -1
  %i.ao = add i64 %umax128, %i.an                 ; 2 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = getelementptr i8, ptr %.072.lcssa, i64 %i.ap
  %scevgep = getelementptr i8, ptr %i.aq, i64 1
  %i.ar = and i64 %i.ao, -4
  %i.as = getelementptr i8, ptr %.074.lcssa, i64 %i.ar
  %scevgep129 = getelementptr i8, ptr %i.as, i64 4
  %bound0 = icmp ult ptr %.072.lcssa, %scevgep129
  %bound1 = icmp ult ptr %.074.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph103.preheader147, label %vector.ph133

vector.ph133:                                     ; preds = %vector.memcheck
  %n.vec135 = and i64 %i.ak, 9223372036854775800  ; 4 uses
  %i.at = getelementptr i8, ptr %.072.lcssa, i64 %n.vec135
  %i.au = shl i64 %n.vec135, 2
  %i.av = getelementptr i8, ptr %.074.lcssa, i64 %i.au
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph133
  %index137 = phi i64 [ 0, %vector.ph133 ], [ %index.next142, %vector.body136 ] ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.072.lcssa, i64 %index137 ; 2 uses
  %i.aw = shl i64 %index137, 2
  %next.gep139 = getelementptr i8, ptr %.074.lcssa, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep139, i64 16
  %wide.load140 = load <4 x i32>, ptr %next.gep139, align 4, !tbaa !7, !alias.scope !948
  %wide.load141 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !7, !alias.scope !948
  %i.ay = trunc <4 x i32> %wide.load140 to <4 x i8>
  %i.az = trunc <4 x i32> %wide.load141 to <4 x i8>
  %i.ba = getelementptr i8, ptr %next.gep138, i64 4
  store <4 x i8> %i.ay, ptr %next.gep138, align 1, !tbaa !205, !alias.scope !951, !noalias !948
  store <4 x i8> %i.az, ptr %i.ba, align 1, !tbaa !205, !alias.scope !951, !noalias !948
  %index.next142 = add nuw i64 %index137, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next142, %n.vec135
  br i1 %i.bb, label %middle.block143, label %vector.body136, !llvm.loop !953

middle.block143:                                  ; preds = %vector.body136
  %cmp.n144 = icmp eq i64 %i.ak, %n.vec135
  br i1 %cmp.n144, label %.loopexit, label %.lr.ph103.preheader147

.lr.ph103.preheader147:                           ; preds = %vector.memcheck, %.lr.ph103.preheader, %middle.block143
  %.173102.ph = phi ptr [ %.072.lcssa, %vector.memcheck ], [ %.072.lcssa, %.lr.ph103.preheader ], [ %i.at, %middle.block143 ]
  %.175101.ph = phi ptr [ %.074.lcssa, %vector.memcheck ], [ %.074.lcssa, %.lr.ph103.preheader ], [ %i.av, %middle.block143 ]
  br label %.lr.ph103

.lr.ph98:                                         ; preds = %bb.k, %.lr.ph98
  %.07297 = phi ptr [ %i.br, %.lr.ph98 ], [ %.0.i85, %bb.k ] ; 5 uses
  %.07496 = phi ptr [ %i.bq, %.lr.ph98 ], [ %i.m, %bb.k ] ; 5 uses
  %i.bc = load i32, ptr %.07496, align 4, !tbaa !7
  %i.bd = trunc i32 %i.bc to i8
  store i8 %i.bd, ptr %.07297, align 1, !tbaa !205
  %i.be = getelementptr i8, ptr %.07496, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr i8, ptr %.07297, i64 1
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !205
  %i.bi = getelementptr i8, ptr %.07496, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr i8, ptr %.07297, i64 2
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !205
  %i.bm = getelementptr i8, ptr %.07496, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = getelementptr i8, ptr %.07297, i64 3
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !205
  %i.bq = getelementptr i8, ptr %.07496, i64 16   ; 3 uses
  %i.br = getelementptr i8, ptr %.07297, i64 4    ; 2 uses
  %i.bs = icmp ult ptr %i.bq, %i.ac
  br i1 %i.bs, label %.lr.ph98, label %.preheader, !llvm.loop !954

.lr.ph103:                                        ; preds = %.lr.ph103.preheader147, %.lr.ph103
  %.173102 = phi ptr [ %i.bw, %.lr.ph103 ], [ %.173102.ph, %.lr.ph103.preheader147 ] ; 2 uses
  %.175101 = phi ptr [ %i.bt, %.lr.ph103 ], [ %.175101.ph, %.lr.ph103.preheader147 ] ; 2 uses
  %i.bt = getelementptr i8, ptr %.175101, i64 4   ; 2 uses
  %i.bu = load i32, ptr %.175101, align 4, !tbaa !7
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr i8, ptr %.173102, i64 1
  store i8 %i.bv, ptr %.173102, align 1, !tbaa !205
  %i.bx = icmp ult ptr %i.bt, %i.t
  br i1 %i.bx, label %.lr.ph103, label %.loopexit, !llvm.loop !955

bb.l:                                             ; preds = %_PyUnicode_DATA.exit87
  %i.by = ashr exact i64 %.idx79, 2
  %i.bz = and i64 %i.by, -4
  %i.ca = getelementptr [4 x i8], ptr %i.m, i64 %i.bz ; 2 uses
  %i.cb = icmp ult ptr %i.m, %i.ca
  br i1 %i.cb, label %.lr.ph, label %.preheader88

.preheader88:                                     ; preds = %.lr.ph, %bb.l
  %.070.lcssa = phi ptr [ %.0.i85, %bb.l ], [ %i.cx, %.lr.ph ] ; 3 uses
  %.069.lcssa = phi ptr [ %i.m, %bb.l ], [ %i.cw, %.lr.ph ] ; 5 uses
  %i.cc = icmp ult ptr %.069.lcssa, %i.t
  br i1 %i.cc, label %.lr.ph95.preheader, label %.loopexit

.lr.ph95.preheader:                               ; preds = %.preheader88
  %.069.lcssa123 = ptrtoaddr ptr %.069.lcssa to i64 ; 2 uses
  %i.cd = add i64 %.idx79, %2
  %i.ce = add i64 %.069.lcssa123, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.cd, i64 %i.ce)
  %i.cf = xor i64 %.069.lcssa123, -1
  %i.cg = add i64 %umax, %i.cf                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cg, 28
  br i1 %min.iters.check, label %.lr.ph95.preheader149, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph95.preheader
  %n.vec = and i64 %i.ci, 9223372036854775800     ; 4 uses
  %i.cj = shl i64 %n.vec, 2
  %i.ck = getelementptr i8, ptr %.069.lcssa, i64 %i.cj
  %i.cl = shl nuw i64 %n.vec, 1
  %i.cm = getelementptr i8, ptr %.070.lcssa, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.069.lcssa, i64 %i.cn ; 2 uses
  %i.co = shl i64 %index, 1
  %next.gep124 = getelementptr i8, ptr %.070.lcssa, i64 %i.co ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load125 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !7
  %i.cq = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cr = trunc <4 x i32> %wide.load125 to <4 x i16>
  %i.cs = getelementptr i8, ptr %next.gep124, i64 8
  store <4 x i16> %i.cq, ptr %next.gep124, align 2, !tbaa !208
  store <4 x i16> %i.cr, ptr %i.cs, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !956

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph95.preheader149

.lr.ph95.preheader149:                            ; preds = %.lr.ph95.preheader, %middle.block
  %.194.ph = phi ptr [ %.069.lcssa, %.lr.ph95.preheader ], [ %i.ck, %middle.block ]
  %.17193.ph = phi ptr [ %.070.lcssa, %.lr.ph95.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph95

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %.06991 = phi ptr [ %i.cw, %.lr.ph ], [ %i.m, %bb.l ] ; 2 uses
  %.07090 = phi ptr [ %i.cx, %.lr.ph ], [ %.0.i85, %bb.l ] ; 2 uses
  %i.cu = load <4 x i32>, ptr %.06991, align 4, !tbaa !7
  %i.cv = trunc <4 x i32> %i.cu to <4 x i16>
  store <4 x i16> %i.cv, ptr %.07090, align 2, !tbaa !208
  %i.cw = getelementptr i8, ptr %.06991, i64 16   ; 3 uses
  %i.cx = getelementptr i8, ptr %.07090, i64 8    ; 2 uses
  %i.cy = icmp ult ptr %i.cw, %i.ca
  br i1 %i.cy, label %.lr.ph, label %.preheader88, !llvm.loop !957

.lr.ph95:                                         ; preds = %.lr.ph95.preheader149, %.lr.ph95
  %.194 = phi ptr [ %i.cz, %.lr.ph95 ], [ %.194.ph, %.lr.ph95.preheader149 ] ; 2 uses
  %.17193 = phi ptr [ %i.dc, %.lr.ph95 ], [ %.17193.ph, %.lr.ph95.preheader149 ] ; 2 uses
  %i.cz = getelementptr i8, ptr %.194, i64 4      ; 2 uses
  %i.da = load i32, ptr %.194, align 4, !tbaa !7
  %i.db = trunc i32 %i.da to i16
  %i.dc = getelementptr i8, ptr %.17193, i64 2
  store i16 %i.db, ptr %.17193, align 2, !tbaa !208
  %i.dd = icmp ult ptr %i.cz, %i.t
  br i1 %i.dd, label %.lr.ph95, label %.loopexit, !llvm.loop !958

bb.m:                                             ; preds = %_PyUnicode_DATA.exit87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i85, ptr nonnull align 4 %i.m, i64 %.idx79, i1 false)
  br label %.loopexit

bb.n:                                             ; preds = %_PyUnicode_DATA.exit87
  unreachable

.loopexit:                                        ; preds = %.lr.ph95, %.lr.ph103, %middle.block, %middle.block143, %.preheader88, %.preheader, %bb.m, %bb.g
  call void @PyMem_Free(ptr noundef nonnull %i.m) #33
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.f, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.o, %bb.f ], [ %i.r, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @do_capitalize(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  switch i32 %0, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !205
  %i.c = zext i8 %i.b to i32
  br label %PyUnicode_READ.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i16, ptr %1, align 2, !tbaa !208
  %i.e = zext i16 %i.d to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  %i.g = call i32 @_PyUnicode_ToTitleFull(i32 noundef %.0.i, ptr noundef nonnull %i.a) #33 ; 4 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %PyUnicode_READ.exit
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.g, 1
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03647.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.w, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod67 = trunc i32 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod67)
  %i.j = load i32, ptr %4, align 4, !tbaa !7
  %i.k = getelementptr [4 x i8], ptr %i.a, i64 %.03647.epil.init
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7    ; 2 uses
  %..epil = call i32 @llvm.umax.i32(i32 %i.j, i32 %i.l)
  store i32 %..epil, ptr %4, align 4, !tbaa !7
  %i.m = getelementptr [4 x i8], ptr %3, i64 %.03647.epil.init
  store i32 %i.l, ptr %i.m, align 4, !tbaa !7
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.epil.preheader, %.preheader.loopexit.unr-lcssa, %PyUnicode_READ.exit
  %.036.lcssa = phi i64 [ 0, %PyUnicode_READ.exit ], [ %wide.trip.count, %.preheader.loopexit.unr-lcssa ], [ %wide.trip.count, %.lr.ph.epil.preheader ] ; 2 uses
  %i.n = icmp sgt i64 %2, 1
  br i1 %i.n, label %.lr.ph55, label %._crit_edge56

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03647 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.o = load i32, ptr %4, align 4, !tbaa !7
  %i.p = getelementptr [4 x i8], ptr %i.a, i64 %.03647
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7    ; 2 uses
  %. = call i32 @llvm.umax.i32(i32 %i.o, i32 %i.q)
  store i32 %., ptr %4, align 4, !tbaa !7
  %i.r = or disjoint i64 %.03647, 1               ; 2 uses
  %i.s = getelementptr [4 x i8], ptr %3, i64 %.03647
  store i32 %i.q, ptr %i.s, align 4, !tbaa !7
  %i.t = load i32, ptr %4, align 4, !tbaa !7
  %i.u = getelementptr [4 x i8], ptr %i.a, i64 %i.r
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7    ; 2 uses
  %..1 = call i32 @llvm.umax.i32(i32 %i.t, i32 %i.v)
  store i32 %..1, ptr %4, align 4, !tbaa !7
  %i.w = add nuw nsw i64 %.03647, 2               ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %3, i64 %i.r
  store i32 %i.v, ptr %i.x, align 4, !tbaa !7
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !959

.lr.ph55:                                         ; preds = %.preheader, %._crit_edge
  %.13754 = phi i64 [ %.2.lcssa, %._crit_edge ], [ %.036.lcssa, %.preheader ] ; 3 uses
  %.03853 = phi i64 [ %i.az, %._crit_edge ], [ 1, %.preheader ] ; 5 uses
  switch i32 %0, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph55
  %i.y = getelementptr i8, ptr %1, i64 %.03853
  %i.z = load i8, ptr %i.y, align 1, !tbaa !205
  %i.aa = zext i8 %i.z to i32
  br label %PyUnicode_READ.exit46

bb.f:                                             ; preds = %.lr.ph55
  %i.ab = getelementptr [2 x i8], ptr %1, i64 %.03853
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !208
  %i.ad = zext i16 %i.ac to i32
  br label %PyUnicode_READ.exit46

bb.g:                                             ; preds = %.lr.ph55
  %i.ae = getelementptr [4 x i8], ptr %1, i64 %.03853
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  br label %PyUnicode_READ.exit46

PyUnicode_READ.exit46:                            ; preds = %bb.e, %bb.f, %bb.g
  %.0.i45 = phi i32 [ %i.aa, %bb.e ], [ %i.ad, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = call fastcc i32 @lower_ucs4(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %.03853, i32 noundef %.0.i45, ptr noundef %i.a) ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph51.preheader, label %._crit_edge

end_hunk_14
begin_hunk_15_@do_title
define internal i64 @do_title(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %bb.a, %._crit_edge
  %.02636 = phi i64 [ %i.af, %._crit_edge ], [ 0, %bb.a ] ; 5 uses
  %.02735 = phi i32 [ %i.ae, %._crit_edge ], [ 0, %bb.a ]
  %.02834 = phi i64 [ %.1.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  switch i32 %0, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph38
  %i.c = getelementptr i8, ptr %1, i64 %.02636
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205
  %i.e = zext i8 %i.d to i32
  br label %PyUnicode_READ.exit

bb.c:                                             ; preds = %.lr.ph38
  %i.f = getelementptr [2 x i8], ptr %1, i64 %.02636
  %i.g = load i16, ptr %i.f, align 2, !tbaa !208
  %i.h = zext i16 %i.g to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %.lr.ph38
  %i.i = getelementptr [4 x i8], ptr %1, i64 %.02636
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %.not = icmp eq i32 %.02735, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %PyUnicode_READ.exit
  %i.k = call fastcc i32 @lower_ucs4(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %.02636, i32 noundef %.0.i, ptr noundef %i.a)
  br label %bb.g

bb.f:                                             ; preds = %PyUnicode_READ.exit
  %i.l = call i32 @_PyUnicode_ToTitleFull(i32 noundef %.0.i, ptr noundef nonnull %i.a) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.025 = phi i32 [ %i.k, %bb.e ], [ %i.l, %bb.f ] ; 4 uses
  %i.m = icmp sgt i32 %.025, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %wide.trip.count = zext nneg i32 %.025 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.n = icmp eq i32 %.025, 1
  br i1 %i.n, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.132 = phi i64 [ %.02834, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.o = load i32, ptr %4, align 4, !tbaa !7
  %i.p = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7    ; 2 uses
  %. = call i32 @llvm.umax.i32(i32 %i.o, i32 %i.q)
  store i32 %., ptr %4, align 4, !tbaa !7
  %i.r = getelementptr [4 x i8], ptr %3, i64 %.132
  store i32 %i.q, ptr %i.r, align 4, !tbaa !7
  %i.s = load i32, ptr %4, align 4, !tbaa !7
  %i.t = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7    ; 2 uses
  %..1 = call i32 @llvm.umax.i32(i32 %i.s, i32 %i.v)
  store i32 %..1, ptr %4, align 4, !tbaa !7
  %i.w = add i64 %.132, 2                         ; 3 uses
  %i.x = getelementptr [4 x i8], ptr %3, i64 %.132
  %i.y = getelementptr i8, ptr %i.x, i64 4
  store i32 %i.v, ptr %i.y, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !966

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.132.epil.init = phi i64 [ %.02834, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod45 = trunc i32 %.025 to i1
  call void @llvm.assume(i1 %lcmp.mod45)
  %i.z = load i32, ptr %4, align 4, !tbaa !7
  %i.aa = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7  ; 2 uses
  %..epil = call i32 @llvm.umax.i32(i32 %i.z, i32 %i.ab)
  store i32 %..epil, ptr %4, align 4, !tbaa !7
  %i.ac = add i64 %.132.epil.init, 1
  %i.ad = getelementptr [4 x i8], ptr %3, i64 %.132.epil.init
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.g
  %.1.lcssa = phi i64 [ %.02834, %bb.g ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.epil.preheader ] ; 2 uses
  %i.ae = call i32 @_PyUnicode_IsCased(i32 noundef %.0.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.af = add nuw nsw i64 %.02636, 1              ; 2 uses
  %exitcond42.not = icmp eq i64 %i.af, %2
  br i1 %exitcond42.not, label %._crit_edge39, label %.lr.ph38, !llvm.loop !967

._crit_edge39:                                    ; preds = %._crit_edge, %bb.a
  %.028.lcssa = phi i64 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  ret i64 %.028.lcssa
}

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pad(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %1, i64 0) ; 9 uses
  %spec.store.select2 = tail call i64 @llvm.smax.i64(i64 %2, i64 0) ; 7 uses
  %i.a = icmp slt i64 %1, 1                       ; 2 uses
  %i.b = icmp slt i64 %2, 1                       ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @unicode_result_unchanged(ptr noundef %0)
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !207  ; 2 uses
  %i.f = sub i64 9223372036854775807, %i.e
  %i.g = icmp sgt i64 %spec.store.select, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add i64 %i.e, %spec.store.select         ; 2 uses
  %i.i = sub i64 9223372036854775807, %i.h
  %i.j = icmp sgt i64 %spec.store.select2, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.264) #33
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 32
  %.val = load i32, ptr %i.l, align 8             ; 2 uses
  %i.m = and i32 %.val, 64
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.g, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.g:                                             ; preds = %bb.f
  %i.n = lshr i32 %.val, 2
  %i.o = and i32 %i.n, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.o, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.o, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %switch.select6.i, %bb.g ], [ 127, %bb.f ]
  %i.p = tail call i32 @llvm.umax.i32(i32 %.0.i, i32 %3)
  %i.q = add i64 %i.h, %spec.store.select2
  %i.r = tail call ptr @PyUnicode_New(i64 noundef %i.q, i32 noundef %i.p) ; 6 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.u, label %bb.h

bb.h:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.s = getelementptr i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8              ; 3 uses
  %i.u = lshr i32 %i.t, 2
  %i.v = and i32 %i.u, 7                          ; 2 uses
  %i.w = and i32 %i.t, 32
  %.not.i44 = icmp eq i32 %i.w, 0
  br i1 %.not.i44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = and i32 %i.t, 64
  %.not.i.i = icmp eq i32 %i.x, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.r, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.r, i64 56
  %.val4.i = load ptr, ptr %i.y, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.i, %bb.j
  %.0.i45 = phi ptr [ %.0.i.i, %bb.i ], [ %.val4.i, %bb.j ] ; 17 uses
  %.0.i4567 = ptrtoaddr ptr %.0.i45 to i64        ; 12 uses
  br i1 %i.a, label %_PyUnicode_Fill.exit, label %bb.k

bb.k:                                             ; preds = %_PyUnicode_DATA.exit
  switch i32 %i.v, label %bb.o [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 4, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.z = trunc i32 %3 to i8
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.i45, i8 %i.z, i64 %spec.store.select, i1 false)
  br label %_PyUnicode_Fill.exit

bb.m:                                             ; preds = %bb.k
  %i.aa = trunc i32 %3 to i16                     ; 3 uses
  %i.ab = getelementptr [2 x i8], ptr %.0.i45, i64 %spec.store.select ; 2 uses
  %i.ac = icmp ult ptr %.0.i45, %i.ab
  br i1 %i.ac, label %iter.check, label %_PyUnicode_Fill.exit

iter.check:                                       ; preds = %bb.m
  %i.ad = shl nuw i64 %spec.store.select, 1
  %i.ae = add i64 %i.ad, %.0.i4567
  %i.af = add i64 %.0.i4567, 2
  %umax68 = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.af)
  %i.ag = xor i64 %.0.i4567, -1
  %i.ah = add i64 %umax68, %i.ag                  ; 3 uses
  %i.ai = lshr i64 %i.ah, 1
  %i.aj = add nuw i64 %i.ai, 1                    ; 5 uses
  %min.iters.check70 = icmp ult i64 %i.ah, 6
  br i1 %min.iters.check70, label %.lr.ph30.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check71 = icmp ult i64 %i.ah, 30
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.ph72

vector.ph72:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf73 = and i64 %i.aj, 12
  %n.vec74 = and i64 %i.aj, -16                   ; 4 uses
  %i.ak = shl i64 %n.vec74, 1
  %i.al = getelementptr i8, ptr %.0.i45, i64 %i.ak
  %broadcast.splatinsert75 = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat76 = shufflevector <8 x i16> %broadcast.splatinsert75, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph72
  %index78 = phi i64 [ 0, %vector.ph72 ], [ %index.next80, %vector.body77 ] ; 2 uses
  %i.am = shl i64 %index78, 1
  %next.gep79 = getelementptr i8, ptr %.0.i45, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep79, i64 16
  store <8 x i16> %broadcast.splat76, ptr %next.gep79, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat76, ptr %i.an, align 2, !tbaa !208
  %index.next80 = add nuw i64 %index78, 16        ; 2 uses
  %i.ao = icmp eq i64 %index.next80, %n.vec74
  br i1 %i.ao, label %middle.block81, label %vector.body77, !llvm.loop !968

middle.block81:                                   ; preds = %vector.body77
  %cmp.n82 = icmp eq i64 %i.aj, %n.vec74
  br i1 %cmp.n82, label %_PyUnicode_Fill.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block81
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf73, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec74, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec85 = and i64 %i.aj, -4                    ; 3 uses
  %i.ap = shl i64 %n.vec85, 1
  %i.aq = getelementptr i8, ptr %.0.i45, i64 %i.ap
  %broadcast.splatinsert86 = insertelement <4 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat87 = shufflevector <4 x i16> %broadcast.splatinsert86, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 2 uses
  %i.ar = shl i64 %index88, 1
  %next.gep89 = getelementptr i8, ptr %.0.i45, i64 %i.ar
  store <4 x i16> %broadcast.splat87, ptr %next.gep89, align 2, !tbaa !208
  %index.next90 = add nuw i64 %index88, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next90, %n.vec85
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !969

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n91 = icmp eq i64 %i.aj, %n.vec85
  br i1 %cmp.n91, label %_PyUnicode_Fill.exit, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i.ph = phi ptr [ %.0.i45, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.029.i = phi ptr [ %i.at, %.lr.ph30.i ], [ %.029.i.ph, %.lr.ph30.i.preheader ] ; 2 uses
  store i16 %i.aa, ptr %.029.i, align 2, !tbaa !208
  %i.at = getelementptr i8, ptr %.029.i, i64 2    ; 2 uses
  %i.au = icmp ult ptr %i.at, %i.ab
  br i1 %i.au, label %.lr.ph30.i, label %_PyUnicode_Fill.exit, !llvm.loop !970

bb.n:                                             ; preds = %bb.k
  %i.av = getelementptr [4 x i8], ptr %.0.i45, i64 %spec.store.select ; 2 uses
  %i.aw = icmp ult ptr %.0.i45, %i.av
  br i1 %i.aw, label %.lr.ph.i.preheader, label %_PyUnicode_Fill.exit

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.ax = shl i64 %spec.store.select, 2
  %i.ay = add i64 %i.ax, %.0.i4567
  %i.az = add i64 %.0.i4567, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.az)
  %i.ba = xor i64 %.0.i4567, -1
  %i.bb = add i64 %umax, %i.ba                    ; 2 uses
  %i.bc = lshr i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader144, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bd, 9223372036854775800     ; 3 uses
  %i.be = shl i64 %n.vec, 2
  %i.bf = getelementptr i8, ptr %.0.i45, i64 %i.be
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.i45, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.bh, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !971

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit, label %.lr.ph.i.preheader144

.lr.ph.i.preheader144:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.02628.i.ph = phi ptr [ %.0.i45, %.lr.ph.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader144, %.lr.ph.i
  %.02628.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %.02628.i.ph, %.lr.ph.i.preheader144 ] ; 2 uses
  store i32 %3, ptr %.02628.i, align 4, !tbaa !7
  %i.bj = getelementptr i8, ptr %.02628.i, i64 4  ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %i.av
  br i1 %i.bk, label %.lr.ph.i, label %_PyUnicode_Fill.exit, !llvm.loop !972

bb.o:                                             ; preds = %bb.k
  unreachable

_PyUnicode_Fill.exit:                             ; preds = %.lr.ph.i, %.lr.ph30.i, %middle.block, %middle.block81, %vec.epilog.middle.block, %bb.n, %bb.m, %bb.l, %_PyUnicode_DATA.exit
  %.pre55 = load i64, ptr %i.d, align 8, !tbaa !207 ; 9 uses
  br i1 %i.b, label %_PyUnicode_Fill.exit50, label %bb.p

bb.p:                                             ; preds = %_PyUnicode_Fill.exit
  %i.bl = add i64 %.pre55, %spec.store.select     ; 5 uses
  switch i32 %i.v, label %bb.t [
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 4, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.bm = trunc i32 %3 to i8
  %i.bn = getelementptr i8, ptr %.0.i45, i64 %i.bl
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bn, i8 %i.bm, i64 %spec.store.select2, i1 false)
  %.pre = load i64, ptr %i.d, align 8, !tbaa !207
  br label %_PyUnicode_Fill.exit50

bb.r:                                             ; preds = %bb.p
  %i.bo = trunc i32 %3 to i16                     ; 3 uses
  %i.bp = getelementptr [2 x i8], ptr %.0.i45, i64 %i.bl ; 7 uses
  %i.bq = getelementptr [2 x i8], ptr %i.bp, i64 %spec.store.select2 ; 2 uses
  %i.br = icmp ult ptr %i.bp, %i.bq
  br i1 %i.br, label %iter.check126, label %_PyUnicode_Fill.exit50

iter.check126:                                    ; preds = %bb.r
  %i.bs = shl nuw i64 %spec.store.select2, 1
  %i.bt = add i64 %i.bs, %.0.i4567
  %i.bu = shl i64 %i.bl, 1                        ; 3 uses
  %i.bv = add i64 %i.bt, %i.bu
  %i.bw = add i64 %i.bu, %.0.i4567
  %i.bx = add i64 %i.bw, 2
  %umax108 = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 %i.bx)
  %i.by = xor i64 %.0.i4567, -1
  %i.bz = add i64 %umax108, %i.by
  %i.ca = sub i64 %i.bz, %i.bu                    ; 3 uses
  %i.cb = lshr i64 %i.ca, 1
  %i.cc = add nuw i64 %i.cb, 1                    ; 5 uses
  %min.iters.check110 = icmp ult i64 %i.ca, 6
  br i1 %min.iters.check110, label %.lr.ph30.i48.preheader, label %vector.main.loop.iter.check111

vector.main.loop.iter.check111:                   ; preds = %iter.check126
  %min.iters.check112 = icmp ult i64 %i.ca, 30
  br i1 %min.iters.check112, label %vec.epilog.ph130, label %vector.ph113

vector.ph113:                                     ; preds = %vector.main.loop.iter.check111
  %n.mod.vf114 = and i64 %i.cc, 12
  %n.vec115 = and i64 %i.cc, -16                  ; 4 uses
end_hunk_15
