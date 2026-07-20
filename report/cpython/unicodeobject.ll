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
  %.0.i.i285.pn693 = ptrtoaddr ptr %.0.i.i285.pn to i64 ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.i.i285.pn, i64 %3 ; 5 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 %4     ; 2 uses
  %i.ar = and i64 %4, -4
  %i.as = getelementptr i8, ptr %i.ap, i64 %i.ar  ; 2 uses
  %i.at = icmp ult ptr %i.ap, %i.as
  br i1 %i.at, label %.lr.ph488, label %.preheader

.preheader:                                       ; preds = %.lr.ph488, %_PyUnicode_DATA.exit296
  %.0231.lcssa = phi ptr [ %i.ap, %_PyUnicode_DATA.exit296 ], [ %i.cg, %.lr.ph488 ] ; 10 uses
  %.0229.lcssa = phi ptr [ %i.am, %_PyUnicode_DATA.exit296 ], [ %i.ch, %.lr.ph488 ] ; 8 uses
  %.0231.lcssa694 = ptrtoaddr ptr %.0231.lcssa to i64 ; 3 uses
  %i.au = icmp ult ptr %.0231.lcssa, %i.aq
  br i1 %i.au, label %iter.check719, label %ucs1lib_find_max_char.exit

iter.check719:                                    ; preds = %.preheader
  %i.av = add i64 %4, %3
  %i.aw = add i64 %i.av, %.0.i.i285.pn693
  %i.ax = sub i64 %i.aw, %.0231.lcssa694          ; 7 uses
  %min.iters.check701 = icmp ult i64 %i.ax, 4
  br i1 %min.iters.check701, label %.lr.ph493.preheader, label %vector.memcheck692

vector.memcheck692:                               ; preds = %iter.check719
  %i.ay = add i64 %4, %3
  %i.az = add i64 %i.ay, %.0.i.i285.pn693         ; 2 uses
  %i.ba = sub i64 %i.az, %.0231.lcssa694
  %i.bb = shl i64 %i.ba, 1
  %scevgep695 = getelementptr i8, ptr %.0229.lcssa, i64 %i.bb
  %i.bc = sub i64 %i.az, %.0231.lcssa694
  %scevgep696 = getelementptr i8, ptr %.0231.lcssa, i64 %i.bc
  %bound0697 = icmp ult ptr %.0229.lcssa, %scevgep696
  %bound1698 = icmp ult ptr %.0231.lcssa, %scevgep695
  %found.conflict699 = and i1 %bound0697, %bound1698
  br i1 %found.conflict699, label %.lr.ph493.preheader, label %vector.main.loop.iter.check702

vector.main.loop.iter.check702:                   ; preds = %vector.memcheck692
  %min.iters.check703 = icmp ult i64 %i.ax, 16
  br i1 %min.iters.check703, label %vec.epilog.ph723, label %vector.ph704

vector.ph704:                                     ; preds = %vector.main.loop.iter.check702
  %n.mod.vf705 = and i64 %i.ax, 12
  %n.vec706 = and i64 %i.ax, -16                  ; 5 uses
  %i.bd = shl i64 %n.vec706, 1
  %i.be = getelementptr i8, ptr %.0229.lcssa, i64 %i.bd
  %i.bf = getelementptr i8, ptr %.0231.lcssa, i64 %n.vec706
  br label %vector.body707

vector.body707:                                   ; preds = %vector.body707, %vector.ph704
  %index708 = phi i64 [ 0, %vector.ph704 ], [ %index.next713, %vector.body707 ] ; 3 uses
  %i.bg = shl i64 %index708, 1
  %next.gep709 = getelementptr i8, ptr %.0229.lcssa, i64 %i.bg ; 2 uses
  %next.gep710 = getelementptr i8, ptr %.0231.lcssa, i64 %index708 ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep710, i64 8
  %wide.load711 = load <8 x i8>, ptr %next.gep710, align 1, !tbaa !205, !alias.scope !222
  %wide.load712 = load <8 x i8>, ptr %i.bh, align 1, !tbaa !205, !alias.scope !222
  %i.bi = zext <8 x i8> %wide.load711 to <8 x i16>
  %i.bj = zext <8 x i8> %wide.load712 to <8 x i16>
  %i.bk = getelementptr i8, ptr %next.gep709, i64 16
  store <8 x i16> %i.bi, ptr %next.gep709, align 2, !tbaa !208, !alias.scope !225, !noalias !222
  store <8 x i16> %i.bj, ptr %i.bk, align 2, !tbaa !208, !alias.scope !225, !noalias !222
  %index.next713 = add nuw i64 %index708, 16      ; 2 uses
  %i.bl = icmp eq i64 %index.next713, %n.vec706
  br i1 %i.bl, label %middle.block714, label %vector.body707, !llvm.loop !227

middle.block714:                                  ; preds = %vector.body707
  %cmp.n715 = icmp eq i64 %i.ax, %n.vec706
  br i1 %cmp.n715, label %ucs1lib_find_max_char.exit, label %vec.epilog.iter.check721

vec.epilog.iter.check721:                         ; preds = %middle.block714
  %min.epilog.iters.check722 = icmp eq i64 %n.mod.vf705, 0
  br i1 %min.epilog.iters.check722, label %.lr.ph493.preheader, label %vec.epilog.ph723, !prof !228

vec.epilog.ph723:                                 ; preds = %vector.main.loop.iter.check702, %vec.epilog.iter.check721
  %vec.epilog.resume.val716 = phi i64 [ %n.vec706, %vec.epilog.iter.check721 ], [ 0, %vector.main.loop.iter.check702 ]
  %n.vec725 = and i64 %i.ax, -4                   ; 4 uses
  %i.bm = shl i64 %n.vec725, 1
  %i.bn = getelementptr i8, ptr %.0229.lcssa, i64 %i.bm
  %i.bo = getelementptr i8, ptr %.0231.lcssa, i64 %n.vec725
  br label %vec.epilog.vector.body726

vec.epilog.vector.body726:                        ; preds = %vec.epilog.vector.body726, %vec.epilog.ph723
  %index727 = phi i64 [ %vec.epilog.resume.val716, %vec.epilog.ph723 ], [ %index.next731, %vec.epilog.vector.body726 ] ; 3 uses
  %i.bp = shl i64 %index727, 1
  %next.gep728 = getelementptr i8, ptr %.0229.lcssa, i64 %i.bp
  %next.gep729 = getelementptr i8, ptr %.0231.lcssa, i64 %index727
  %wide.load730 = load <4 x i8>, ptr %next.gep729, align 1, !tbaa !205, !alias.scope !222
  %i.bq = zext <4 x i8> %wide.load730 to <4 x i16>
  store <4 x i16> %i.bq, ptr %next.gep728, align 2, !tbaa !208, !alias.scope !225, !noalias !222
  %index.next731 = add nuw i64 %index727, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next731, %n.vec725
  br i1 %i.br, label %vec.epilog.middle.block732, label %vec.epilog.vector.body726, !llvm.loop !229

vec.epilog.middle.block732:                       ; preds = %vec.epilog.vector.body726
  %cmp.n733 = icmp eq i64 %i.ax, %n.vec725
  br i1 %cmp.n733, label %ucs1lib_find_max_char.exit, label %.lr.ph493.preheader

.lr.ph493.preheader:                              ; preds = %vector.memcheck692, %iter.check719, %vec.epilog.iter.check721, %vec.epilog.middle.block732
  %.1230492.ph = phi ptr [ %.0229.lcssa, %iter.check719 ], [ %.0229.lcssa, %vector.memcheck692 ], [ %i.be, %vec.epilog.iter.check721 ], [ %i.bn, %vec.epilog.middle.block732 ]
  %.1232491.ph = phi ptr [ %.0231.lcssa, %iter.check719 ], [ %.0231.lcssa, %vector.memcheck692 ], [ %i.bf, %vec.epilog.iter.check721 ], [ %i.bo, %vec.epilog.middle.block732 ]
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
  %.0.i.i309.pn = phi ptr [ %.0.i.i309, %bb.w ], [ %.val4.i311, %bb.x ] ; 3 uses
  %.0.i.i309.pn669 = ptrtoaddr ptr %.0.i.i309.pn to i64
  %i.cu = getelementptr i8, ptr %.0.i.i309.pn, i64 %3 ; 5 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 %4     ; 2 uses
  %i.cw = and i64 %4, -4
  %i.cx = getelementptr i8, ptr %i.cu, i64 %i.cw  ; 2 uses
  %i.cy = icmp ult ptr %i.cu, %i.cx
  br i1 %i.cy, label %.lr.ph480, label %.preheader431

.preheader431:                                    ; preds = %.lr.ph480, %_PyUnicode_DATA.exit320
  %.0239.lcssa = phi ptr [ %i.cu, %_PyUnicode_DATA.exit320 ], [ %i.ef, %.lr.ph480 ] ; 9 uses
  %.0233.lcssa = phi ptr [ %i.cr, %_PyUnicode_DATA.exit320 ], [ %i.eg, %.lr.ph480 ] ; 6 uses
  %.0239.lcssa670 = ptrtoaddr ptr %.0239.lcssa to i64 ; 2 uses
  %i.cz = icmp ult ptr %.0239.lcssa, %i.cv
  br i1 %i.cz, label %.lr.ph485.preheader, label %ucs1lib_find_max_char.exit

.lr.ph485.preheader:                              ; preds = %.preheader431
  %6 = ptrtoaddr ptr %.0.i.i309.pn to i64
  %7 = ptrtoaddr ptr %.0239.lcssa to i64
  %i.da = add i64 %4, %3
  %i.db = add i64 %i.da, %6
  %i.dc = sub i64 %i.db, %7                       ; 3 uses
  %min.iters.check677 = icmp ult i64 %i.dc, 32
  br i1 %min.iters.check677, label %.lr.ph485.preheader740, label %vector.memcheck668

vector.memcheck668:                               ; preds = %.lr.ph485.preheader
  %i.dd = add i64 %4, %3
  %i.de = add i64 %i.dd, %.0.i.i309.pn669         ; 2 uses
  %i.df = sub i64 %i.de, %.0239.lcssa670
  %i.dg = shl i64 %i.df, 2
  %scevgep671 = getelementptr i8, ptr %.0233.lcssa, i64 %i.dg
  %i.dh = sub i64 %i.de, %.0239.lcssa670
  %scevgep672 = getelementptr i8, ptr %.0239.lcssa, i64 %i.dh
  %bound0673 = icmp ult ptr %.0233.lcssa, %scevgep672
  %bound1674 = icmp ult ptr %.0239.lcssa, %scevgep671
  %found.conflict675 = and i1 %bound0673, %bound1674
  br i1 %found.conflict675, label %.lr.ph485.preheader740, label %vector.ph678

vector.ph678:                                     ; preds = %vector.memcheck668
  %n.vec680 = and i64 %i.dc, -8                   ; 4 uses
  %i.di = shl i64 %n.vec680, 2
  %i.dj = getelementptr i8, ptr %.0233.lcssa, i64 %i.di
  %i.dk = getelementptr i8, ptr %.0239.lcssa, i64 %n.vec680
  br label %vector.body681

vector.body681:                                   ; preds = %vector.body681, %vector.ph678
  %index682 = phi i64 [ 0, %vector.ph678 ], [ %index.next687, %vector.body681 ] ; 3 uses
  %i.dl = shl i64 %index682, 2
  %next.gep683 = getelementptr i8, ptr %.0233.lcssa, i64 %i.dl ; 2 uses
  %next.gep684 = getelementptr i8, ptr %.0239.lcssa, i64 %index682 ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep684, i64 4
  %wide.load685 = load <4 x i8>, ptr %next.gep684, align 1, !tbaa !205, !alias.scope !232
  %wide.load686 = load <4 x i8>, ptr %i.dm, align 1, !tbaa !205, !alias.scope !232
  %i.dn = zext <4 x i8> %wide.load685 to <4 x i32>
  %i.do = zext <4 x i8> %wide.load686 to <4 x i32>
  %i.dp = getelementptr i8, ptr %next.gep683, i64 16
  store <4 x i32> %i.dn, ptr %next.gep683, align 4, !tbaa !7, !alias.scope !235, !noalias !232
  store <4 x i32> %i.do, ptr %i.dp, align 4, !tbaa !7, !alias.scope !235, !noalias !232
  %index.next687 = add nuw i64 %index682, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next687, %n.vec680
  br i1 %i.dq, label %middle.block688, label %vector.body681, !llvm.loop !237

middle.block688:                                  ; preds = %vector.body681
  %cmp.n689 = icmp eq i64 %i.dc, %n.vec680
  br i1 %cmp.n689, label %ucs1lib_find_max_char.exit, label %.lr.ph485.preheader740

.lr.ph485.preheader740:                           ; preds = %vector.memcheck668, %.lr.ph485.preheader, %middle.block688
  %.1234484.ph = phi ptr [ %.0233.lcssa, %vector.memcheck668 ], [ %.0233.lcssa, %.lr.ph485.preheader ], [ %i.dj, %middle.block688 ]
  %.1240483.ph = phi ptr [ %.0239.lcssa, %vector.memcheck668 ], [ %.0239.lcssa, %.lr.ph485.preheader ], [ %i.dk, %middle.block688 ]
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

.lr.ph485:                                        ; preds = %.lr.ph485.preheader740, %.lr.ph485
  %.1234484 = phi ptr [ %i.el, %.lr.ph485 ], [ %.1234484.ph, %.lr.ph485.preheader740 ] ; 2 uses
  %.1240483 = phi ptr [ %i.ei, %.lr.ph485 ], [ %.1240483.ph, %.lr.ph485.preheader740 ] ; 2 uses
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
  %i.et = getelementptr [2 x i8], ptr %.0.i.i333.pn, i64 %3 ; 5 uses
  %i.eu = getelementptr [2 x i8], ptr %i.et, i64 %4 ; 2 uses
  %.idx552 = shl i64 %4, 1                        ; 2 uses
  %i.ev = ashr exact i64 %.idx552, 1
  %i.ew = and i64 %i.ev, -4
  %i.ex = getelementptr [2 x i8], ptr %i.et, i64 %i.ew ; 2 uses
  %i.ey = icmp ult ptr %i.et, %i.ex
  br i1 %i.ey, label %.lr.ph472, label %.preheader433

.preheader433:                                    ; preds = %.lr.ph472, %_PyUnicode_DATA.exit344
  %.0243.lcssa = phi ptr [ %i.et, %_PyUnicode_DATA.exit344 ], [ %i.fw, %.lr.ph472 ] ; 5 uses
  %.0241.lcssa = phi ptr [ %i.eq, %_PyUnicode_DATA.exit344 ], [ %i.fx, %.lr.ph472 ] ; 3 uses
  %i.ez = icmp ult ptr %.0243.lcssa, %i.eu
  br i1 %i.ez, label %.lr.ph477.preheader, label %ucs1lib_find_max_char.exit

.lr.ph477.preheader:                              ; preds = %.preheader433
  %8 = ptrtoaddr ptr %.0.i.i333.pn to i64
  %i.fa = shl i64 %3, 1
  %i.fb = add i64 %.idx552, %8
  %i.fc = add i64 %i.fb, %i.fa
  %9 = ptrtoaddr ptr %.0243.lcssa to i64          ; 2 uses
  %i.fd = add i64 %9, 2
  %i.fe = tail call i64 @llvm.umax.i64(i64 %i.fc, i64 %i.fd)
  %i.ff = xor i64 %9, -1
  %i.fg = add i64 %i.fe, %i.ff                    ; 2 uses
  %i.fh = lshr i64 %i.fg, 1
  %i.fi = add nuw i64 %i.fh, 1                    ; 2 uses
  %min.iters.check653 = icmp ult i64 %i.fg, 14
  br i1 %min.iters.check653, label %.lr.ph477.preheader744, label %vector.ph654

vector.ph654:                                     ; preds = %.lr.ph477.preheader
  %n.vec656 = and i64 %i.fi, -8                   ; 4 uses
  %i.fj = shl i64 %n.vec656, 2
  %i.fk = getelementptr i8, ptr %.0241.lcssa, i64 %i.fj
  %i.fl = shl i64 %n.vec656, 1
  %i.fm = getelementptr i8, ptr %.0243.lcssa, i64 %i.fl
  br label %vector.body657

vector.body657:                                   ; preds = %vector.body657, %vector.ph654
  %index658 = phi i64 [ 0, %vector.ph654 ], [ %index.next663, %vector.body657 ] ; 3 uses
  %i.fn = shl i64 %index658, 2
  %next.gep659 = getelementptr i8, ptr %.0241.lcssa, i64 %i.fn ; 2 uses
  %i.fo = shl i64 %index658, 1
  %next.gep660 = getelementptr i8, ptr %.0243.lcssa, i64 %i.fo ; 2 uses
  %i.fp = getelementptr i8, ptr %next.gep660, i64 8
  %wide.load661 = load <4 x i16>, ptr %next.gep660, align 2, !tbaa !208
  %wide.load662 = load <4 x i16>, ptr %i.fp, align 2, !tbaa !208
  %i.fq = zext <4 x i16> %wide.load661 to <4 x i32>
  %i.fr = zext <4 x i16> %wide.load662 to <4 x i32>
  %i.fs = getelementptr i8, ptr %next.gep659, i64 16
  store <4 x i32> %i.fq, ptr %next.gep659, align 4, !tbaa !7
  store <4 x i32> %i.fr, ptr %i.fs, align 4, !tbaa !7
  %index.next663 = add nuw i64 %index658, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next663, %n.vec656
  br i1 %i.ft, label %middle.block664, label %vector.body657, !llvm.loop !240

middle.block664:                                  ; preds = %vector.body657
  %cmp.n665 = icmp eq i64 %i.fi, %n.vec656
  br i1 %cmp.n665, label %ucs1lib_find_max_char.exit, label %.lr.ph477.preheader744

.lr.ph477.preheader744:                           ; preds = %.lr.ph477.preheader, %middle.block664
  %.1242476.ph = phi ptr [ %.0241.lcssa, %.lr.ph477.preheader ], [ %i.fk, %middle.block664 ]
  %.1244475.ph = phi ptr [ %.0243.lcssa, %.lr.ph477.preheader ], [ %i.fm, %middle.block664 ]
  br label %.lr.ph477

.lr.ph472:                                        ; preds = %_PyUnicode_DATA.exit344, %.lr.ph472
  %.0241471 = phi ptr [ %i.fx, %.lr.ph472 ], [ %i.eq, %_PyUnicode_DATA.exit344 ] ; 2 uses
  %.0243470 = phi ptr [ %i.fw, %.lr.ph472 ], [ %i.et, %_PyUnicode_DATA.exit344 ] ; 2 uses
  %i.fu = load <4 x i16>, ptr %.0243470, align 2, !tbaa !208
  %i.fv = zext <4 x i16> %i.fu to <4 x i32>
  store <4 x i32> %i.fv, ptr %.0241471, align 4, !tbaa !7
  %i.fw = getelementptr i8, ptr %.0243470, i64 8  ; 3 uses
  %i.fx = getelementptr i8, ptr %.0241471, i64 16 ; 2 uses
  %i.fy = icmp ult ptr %i.fw, %i.ex
  br i1 %i.fy, label %.lr.ph472, label %.preheader433, !llvm.loop !241

.lr.ph477:                                        ; preds = %.lr.ph477.preheader744, %.lr.ph477
  %.1242476 = phi ptr [ %i.gc, %.lr.ph477 ], [ %.1242476.ph, %.lr.ph477.preheader744 ] ; 2 uses
  %.1244475 = phi ptr [ %i.fz, %.lr.ph477 ], [ %.1244475.ph, %.lr.ph477.preheader744 ] ; 2 uses
  %i.fz = getelementptr i8, ptr %.1244475, i64 2  ; 2 uses
  %i.ga = load i16, ptr %.1244475, align 2, !tbaa !208
  %i.gb = zext i16 %i.ga to i32
  %i.gc = getelementptr i8, ptr %.1242476, i64 4
  store i32 %i.gb, ptr %.1242476, align 4, !tbaa !7
  %i.gd = icmp ult ptr %i.fz, %i.eu
  br i1 %i.gd, label %.lr.ph477, label %ucs1lib_find_max_char.exit, !llvm.loop !242

bb.ae:                                            ; preds = %bb.y
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.af, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.af:                                            ; preds = %bb.ae
  %i.ge = icmp eq i32 %i.l, 1                     ; 2 uses
  %or.cond8 = and i1 %i.en, %i.ge
  br i1 %or.cond8, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  br i1 %.not.i265, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gf = and i32 %i.j, 64
  %.not.i.i347 = icmp eq i32 %i.gf, 0
  %.0.v.i.i348 = select i1 %.not.i.i347, i64 56, i64 40
  %.0.i.i349 = getelementptr i8, ptr %0, i64 %.0.v.i.i348
  br label %_PyUnicode_DATA.exit352

bb.ai:                                            ; preds = %bb.ag
  %i.gg = getelementptr i8, ptr %0, i64 56
  %.val4.i351 = load ptr, ptr %i.gg, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit352

_PyUnicode_DATA.exit352:                          ; preds = %bb.ah, %bb.ai
  %.0.i350 = phi ptr [ %.0.i.i349, %bb.ah ], [ %.val4.i351, %bb.ai ]
  %i.gh = getelementptr i8, ptr %.0.i350, i64 %1  ; 2 uses
  br i1 %.not.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_PyUnicode_DATA.exit352
  %i.gi = and i32 %i.c, 64
  %.not.i.i355 = icmp eq i32 %i.gi, 0
  %.0.v.i.i356 = select i1 %.not.i.i355, i64 56, i64 40
  %.0.i.i357 = getelementptr i8, ptr %2, i64 %.0.v.i.i356
  br label %_PyUnicode_DATA.exit368

bb.ak:                                            ; preds = %_PyUnicode_DATA.exit352
  %i.gj = getelementptr i8, ptr %2, i64 56
  %.val4.i359 = load ptr, ptr %i.gj, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit368

_PyUnicode_DATA.exit368:                          ; preds = %bb.aj, %bb.ak
  %.0.i.i357.pn = phi ptr [ %.0.i.i357, %bb.aj ], [ %.val4.i359, %bb.ak ] ; 2 uses
  %.0.i.i357.pn616 = ptrtoaddr ptr %.0.i.i357.pn to i64 ; 2 uses
  %i.gk = getelementptr [2 x i8], ptr %.0.i.i357.pn, i64 %3 ; 5 uses
  %i.gl = getelementptr [2 x i8], ptr %i.gk, i64 %4 ; 2 uses
  %.idx551 = shl i64 %4, 1                        ; 3 uses
  %i.gm = ashr exact i64 %.idx551, 1
  %i.gn = and i64 %i.gm, -4
  %i.go = getelementptr [2 x i8], ptr %i.gk, i64 %i.gn ; 2 uses
  %i.gp = icmp ult ptr %i.gk, %i.go
  br i1 %i.gp, label %.lr.ph464, label %.preheader435

.preheader435:                                    ; preds = %.lr.ph464, %_PyUnicode_DATA.exit368
  %.0251.lcssa = phi ptr [ %i.gk, %_PyUnicode_DATA.exit368 ], [ %i.im, %.lr.ph464 ] ; 10 uses
  %.0249.lcssa = phi ptr [ %i.gh, %_PyUnicode_DATA.exit368 ], [ %i.in, %.lr.ph464 ] ; 8 uses
  %.0251.lcssa617 = ptrtoaddr ptr %.0251.lcssa to i64 ; 4 uses
  %i.gq = icmp ult ptr %.0251.lcssa, %i.gl
  br i1 %i.gq, label %iter.check, label %ucs1lib_find_max_char.exit

iter.check:                                       ; preds = %.preheader435
  %i.gr = add i64 %.idx551, %.0.i.i357.pn616
  %i.gs = shl i64 %3, 1
  %i.gt = add i64 %i.gr, %i.gs
  %i.gu = add i64 %.0251.lcssa617, 2
  %umax624 = tail call i64 @llvm.umax.i64(i64 %i.gt, i64 %i.gu)
  %i.gv = xor i64 %.0251.lcssa617, -1
  %i.gw = add i64 %umax624, %i.gv                 ; 3 uses
  %i.gx = lshr i64 %i.gw, 1
  %i.gy = add nuw i64 %i.gx, 1                    ; 5 uses
  %min.iters.check626 = icmp ult i64 %i.gw, 6
  br i1 %min.iters.check626, label %.lr.ph469.preheader, label %vector.memcheck615

vector.memcheck615:                               ; preds = %iter.check
  %i.gz = add i64 %.idx551, %.0.i.i357.pn616
  %i.ha = shl i64 %3, 1
  %i.hb = add i64 %i.gz, %i.ha
  %i.hc = add i64 %.0251.lcssa617, 2
  %umax618 = tail call i64 @llvm.umax.i64(i64 %i.hb, i64 %i.hc)
  %i.hd = xor i64 %.0251.lcssa617, -1
  %i.he = add i64 %umax618, %i.hd                 ; 2 uses
  %i.hf = lshr i64 %i.he, 1
  %i.hg = getelementptr i8, ptr %.0249.lcssa, i64 %i.hf
  %scevgep619 = getelementptr i8, ptr %i.hg, i64 1
  %i.hh = and i64 %i.he, -2
  %i.hi = getelementptr i8, ptr %.0251.lcssa, i64 %i.hh
  %scevgep620 = getelementptr i8, ptr %i.hi, i64 2
  %bound0621 = icmp ult ptr %.0249.lcssa, %scevgep620
  %bound1622 = icmp ult ptr %.0251.lcssa, %scevgep619
  %found.conflict623 = and i1 %bound0621, %bound1622
  br i1 %found.conflict623, label %.lr.ph469.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck615
  %min.iters.check627 = icmp ult i64 %i.gw, 30
  br i1 %min.iters.check627, label %vec.epilog.ph, label %vector.ph628

vector.ph628:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf629 = and i64 %i.gy, 12
  %n.vec630 = and i64 %i.gy, -16                  ; 5 uses
  %i.hj = getelementptr i8, ptr %.0249.lcssa, i64 %n.vec630
  %i.hk = shl i64 %n.vec630, 1
  %i.hl = getelementptr i8, ptr %.0251.lcssa, i64 %i.hk
  br label %vector.body631

vector.body631:                                   ; preds = %vector.body631, %vector.ph628
  %index632 = phi i64 [ 0, %vector.ph628 ], [ %index.next637, %vector.body631 ] ; 3 uses
  %next.gep633 = getelementptr i8, ptr %.0249.lcssa, i64 %index632 ; 2 uses
  %i.hm = shl i64 %index632, 1
  %next.gep634 = getelementptr i8, ptr %.0251.lcssa, i64 %i.hm ; 2 uses
  %i.hn = getelementptr i8, ptr %next.gep634, i64 16
  %wide.load635 = load <8 x i16>, ptr %next.gep634, align 2, !tbaa !208, !alias.scope !243
  %wide.load636 = load <8 x i16>, ptr %i.hn, align 2, !tbaa !208, !alias.scope !243
  %i.ho = trunc <8 x i16> %wide.load635 to <8 x i8>
  %i.hp = trunc <8 x i16> %wide.load636 to <8 x i8>
  %i.hq = getelementptr i8, ptr %next.gep633, i64 8
  store <8 x i8> %i.ho, ptr %next.gep633, align 1, !tbaa !205, !alias.scope !246, !noalias !243
  store <8 x i8> %i.hp, ptr %i.hq, align 1, !tbaa !205, !alias.scope !246, !noalias !243
  %index.next637 = add nuw i64 %index632, 16      ; 2 uses
  %i.hr = icmp eq i64 %index.next637, %n.vec630
  br i1 %i.hr, label %middle.block638, label %vector.body631, !llvm.loop !248

middle.block638:                                  ; preds = %vector.body631
  %cmp.n639 = icmp eq i64 %i.gy, %n.vec630
  br i1 %cmp.n639, label %ucs1lib_find_max_char.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block638
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf629, 0
  br i1 %min.epilog.iters.check, label %.lr.ph469.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec630, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec643 = and i64 %i.gy, -4                   ; 4 uses
  %i.hs = getelementptr i8, ptr %.0249.lcssa, i64 %n.vec643
  %i.ht = shl i64 %n.vec643, 1
  %i.hu = getelementptr i8, ptr %.0251.lcssa, i64 %i.ht
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index644 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next648, %vec.epilog.vector.body ] ; 3 uses
  %next.gep645 = getelementptr i8, ptr %.0249.lcssa, i64 %index644
  %i.hv = shl i64 %index644, 1
  %next.gep646 = getelementptr i8, ptr %.0251.lcssa, i64 %i.hv
  %wide.load647 = load <4 x i16>, ptr %next.gep646, align 2, !tbaa !208, !alias.scope !243
  %i.hw = trunc <4 x i16> %wide.load647 to <4 x i8>
  store <4 x i8> %i.hw, ptr %next.gep645, align 1, !tbaa !205, !alias.scope !246, !noalias !243
  %index.next648 = add nuw i64 %index644, 4       ; 2 uses
  %i.hx = icmp eq i64 %index.next648, %n.vec643
  br i1 %i.hx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !249

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n649 = icmp eq i64 %i.gy, %n.vec643
  br i1 %cmp.n649, label %ucs1lib_find_max_char.exit, label %.lr.ph469.preheader

.lr.ph469.preheader:                              ; preds = %vector.memcheck615, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1250468.ph = phi ptr [ %.0249.lcssa, %iter.check ], [ %.0249.lcssa, %vector.memcheck615 ], [ %i.hj, %vec.epilog.iter.check ], [ %i.hs, %vec.epilog.middle.block ]
  %.1252467.ph = phi ptr [ %.0251.lcssa, %iter.check ], [ %.0251.lcssa, %vector.memcheck615 ], [ %i.hl, %vec.epilog.iter.check ], [ %i.hu, %vec.epilog.middle.block ]
  br label %.lr.ph469

.lr.ph464:                                        ; preds = %_PyUnicode_DATA.exit368, %.lr.ph464
  %.0249463 = phi ptr [ %i.in, %.lr.ph464 ], [ %i.gh, %_PyUnicode_DATA.exit368 ] ; 5 uses
  %.0251462 = phi ptr [ %i.im, %.lr.ph464 ], [ %i.gk, %_PyUnicode_DATA.exit368 ] ; 5 uses
  %i.hy = load i16, ptr %.0251462, align 2, !tbaa !208
  %i.hz = trunc i16 %i.hy to i8
  store i8 %i.hz, ptr %.0249463, align 1, !tbaa !205
  %i.ia = getelementptr i8, ptr %.0251462, i64 2
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !208
  %i.ic = trunc i16 %i.ib to i8
  %i.id = getelementptr i8, ptr %.0249463, i64 1
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !205
  %i.ie = getelementptr i8, ptr %.0251462, i64 4
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !208
  %i.ig = trunc i16 %i.if to i8
  %i.ih = getelementptr i8, ptr %.0249463, i64 2
  store i8 %i.ig, ptr %i.ih, align 1, !tbaa !205
  %i.ii = getelementptr i8, ptr %.0251462, i64 6
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !208
  %i.ik = trunc i16 %i.ij to i8
  %i.il = getelementptr i8, ptr %.0249463, i64 3
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !205
  %i.im = getelementptr i8, ptr %.0251462, i64 8  ; 3 uses
  %i.in = getelementptr i8, ptr %.0249463, i64 4  ; 2 uses
  %i.io = icmp ult ptr %i.im, %i.go
  br i1 %i.io, label %.lr.ph464, label %.preheader435, !llvm.loop !250

.lr.ph469:                                        ; preds = %.lr.ph469.preheader, %.lr.ph469
  %.1250468 = phi ptr [ %i.is, %.lr.ph469 ], [ %.1250468.ph, %.lr.ph469.preheader ] ; 2 uses
  %.1252467 = phi ptr [ %i.ip, %.lr.ph469 ], [ %.1252467.ph, %.lr.ph469.preheader ] ; 2 uses
  %i.ip = getelementptr i8, ptr %.1252467, i64 2  ; 2 uses
  %i.iq = load i16, ptr %.1252467, align 2, !tbaa !208
  %i.ir = trunc i16 %i.iq to i8
  %i.is = getelementptr i8, ptr %.1250468, i64 1
  store i8 %i.ir, ptr %.1250468, align 1, !tbaa !205
  %i.it = icmp ult ptr %i.ip, %i.gl
  br i1 %i.it, label %.lr.ph469, label %ucs1lib_find_max_char.exit, !llvm.loop !251

bb.al:                                            ; preds = %bb.af
  %i.iu = icmp eq i32 %i.e, 4                     ; 2 uses
  %or.cond10 = and i1 %i.iu, %i.ge
  br i1 %or.cond10, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  br i1 %.not.i265, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iv = and i32 %i.j, 64
  %.not.i.i371 = icmp eq i32 %i.iv, 0
  %.0.v.i.i372 = select i1 %.not.i.i371, i64 56, i64 40
  %.0.i.i373 = getelementptr i8, ptr %0, i64 %.0.v.i.i372
  br label %_PyUnicode_DATA.exit376

bb.ao:                                            ; preds = %bb.am
  %i.iw = getelementptr i8, ptr %0, i64 56
  %.val4.i375 = load ptr, ptr %i.iw, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit376

_PyUnicode_DATA.exit376:                          ; preds = %bb.an, %bb.ao
  %.0.i374 = phi ptr [ %.0.i.i373, %bb.an ], [ %.val4.i375, %bb.ao ]
  %i.ix = getelementptr i8, ptr %.0.i374, i64 %1  ; 2 uses
  br i1 %.not.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_PyUnicode_DATA.exit376
  %i.iy = and i32 %i.c, 64
  %.not.i.i379 = icmp eq i32 %i.iy, 0
  %.0.v.i.i380 = select i1 %.not.i.i379, i64 56, i64 40
  %.0.i.i381 = getelementptr i8, ptr %2, i64 %.0.v.i.i380
  br label %_PyUnicode_DATA.exit392

bb.aq:                                            ; preds = %_PyUnicode_DATA.exit376
  %i.iz = getelementptr i8, ptr %2, i64 56
  %.val4.i383 = load ptr, ptr %i.iz, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit392

_PyUnicode_DATA.exit392:                          ; preds = %bb.ap, %bb.aq
  %.0.i.i381.pn = phi ptr [ %.0.i.i381, %bb.ap ], [ %.val4.i383, %bb.aq ] ; 3 uses
  %.0.i.i381.pn596 = ptrtoaddr ptr %.0.i.i381.pn to i64
  %i.ja = getelementptr [4 x i8], ptr %.0.i.i381.pn, i64 %3 ; 5 uses
  %i.jb = getelementptr [4 x i8], ptr %i.ja, i64 %4 ; 2 uses
  %.idx550 = shl i64 %4, 2                        ; 3 uses
  %i.jc = ashr exact i64 %.idx550, 2
  %i.jd = and i64 %i.jc, -4
  %i.je = getelementptr [4 x i8], ptr %i.ja, i64 %i.jd ; 2 uses
  %i.jf = icmp ult ptr %i.ja, %i.je
  br i1 %i.jf, label %.lr.ph456, label %.preheader437

.preheader437:                                    ; preds = %.lr.ph456, %_PyUnicode_DATA.exit392
  %.0247.lcssa = phi ptr [ %i.ix, %_PyUnicode_DATA.exit392 ], [ %i.ky, %.lr.ph456 ] ; 6 uses
  %.0245.lcssa = phi ptr [ %i.ja, %_PyUnicode_DATA.exit392 ], [ %i.kx, %.lr.ph456 ] ; 9 uses
  %.0245.lcssa597 = ptrtoaddr ptr %.0245.lcssa to i64 ; 2 uses
  %i.jg = icmp ult ptr %.0245.lcssa, %i.jb
  br i1 %i.jg, label %.lr.ph461.preheader, label %ucs1lib_find_max_char.exit

.lr.ph461.preheader:                              ; preds = %.preheader437
  %10 = ptrtoaddr ptr %.0.i.i381.pn to i64
  %i.jh = shl i64 %3, 2
  %i.ji = add i64 %.idx550, %10
  %i.jj = add i64 %i.ji, %i.jh
  %11 = ptrtoaddr ptr %.0245.lcssa to i64         ; 2 uses
  %i.jk = add i64 %11, 4
  %i.jl = tail call i64 @llvm.umax.i64(i64 %i.jj, i64 %i.jk)
  %i.jm = xor i64 %11, -1
  %i.jn = add i64 %i.jl, %i.jm                    ; 2 uses
  %i.jo = lshr i64 %i.jn, 2
  %i.jp = add nuw nsw i64 %i.jo, 1                ; 2 uses
  %min.iters.check600 = icmp ult i64 %i.jn, 188
  br i1 %min.iters.check600, label %.lr.ph461.preheader751, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph461.preheader
  %i.jq = add i64 %.idx550, %.0.i.i381.pn596
  %i.jr = shl i64 %3, 2
  %i.js = add i64 %i.jq, %i.jr
  %i.jt = add i64 %.0245.lcssa597, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.js, i64 %i.jt)
  %i.ju = xor i64 %.0245.lcssa597, -1
  %i.jv = add i64 %umax, %i.ju                    ; 2 uses
  %i.jw = lshr i64 %i.jv, 2
  %i.jx = getelementptr i8, ptr %.0247.lcssa, i64 %i.jw
  %scevgep = getelementptr i8, ptr %i.jx, i64 1
  %i.jy = and i64 %i.jv, -4
  %i.jz = getelementptr i8, ptr %.0245.lcssa, i64 %i.jy
  %scevgep598 = getelementptr i8, ptr %i.jz, i64 4
  %bound0 = icmp ult ptr %.0247.lcssa, %scevgep598
  %bound1 = icmp ult ptr %.0245.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph461.preheader751, label %vector.ph601

vector.ph601:                                     ; preds = %vector.memcheck
  %n.vec603 = and i64 %i.jp, 9223372036854775800  ; 4 uses
  %i.ka = shl i64 %n.vec603, 2
  %i.kb = getelementptr i8, ptr %.0245.lcssa, i64 %i.ka
  %i.kc = getelementptr i8, ptr %.0247.lcssa, i64 %n.vec603
  br label %vector.body604

vector.body604:                                   ; preds = %vector.body604, %vector.ph601
  %index605 = phi i64 [ 0, %vector.ph601 ], [ %index.next610, %vector.body604 ] ; 3 uses
  %i.kd = shl i64 %index605, 2
  %next.gep606 = getelementptr i8, ptr %.0245.lcssa, i64 %i.kd ; 2 uses
  %next.gep607 = getelementptr i8, ptr %.0247.lcssa, i64 %index605 ; 2 uses
  %i.ke = getelementptr i8, ptr %next.gep606, i64 16
  %wide.load608 = load <4 x i32>, ptr %next.gep606, align 4, !tbaa !7, !alias.scope !252
  %wide.load609 = load <4 x i32>, ptr %i.ke, align 4, !tbaa !7, !alias.scope !252
  %i.kf = trunc <4 x i32> %wide.load608 to <4 x i8>
  %i.kg = trunc <4 x i32> %wide.load609 to <4 x i8>
  %i.kh = getelementptr i8, ptr %next.gep607, i64 4
  store <4 x i8> %i.kf, ptr %next.gep607, align 1, !tbaa !205, !alias.scope !255, !noalias !252
  store <4 x i8> %i.kg, ptr %i.kh, align 1, !tbaa !205, !alias.scope !255, !noalias !252
  %index.next610 = add nuw i64 %index605, 8       ; 2 uses
  %i.ki = icmp eq i64 %index.next610, %n.vec603
  br i1 %i.ki, label %middle.block611, label %vector.body604, !llvm.loop !257

middle.block611:                                  ; preds = %vector.body604
  %cmp.n612 = icmp eq i64 %i.jp, %n.vec603
  br i1 %cmp.n612, label %ucs1lib_find_max_char.exit, label %.lr.ph461.preheader751

.lr.ph461.preheader751:                           ; preds = %vector.memcheck, %.lr.ph461.preheader, %middle.block611
  %.1246460.ph = phi ptr [ %.0245.lcssa, %vector.memcheck ], [ %.0245.lcssa, %.lr.ph461.preheader ], [ %i.kb, %middle.block611 ]
  %.1248459.ph = phi ptr [ %.0247.lcssa, %vector.memcheck ], [ %.0247.lcssa, %.lr.ph461.preheader ], [ %i.kc, %middle.block611 ]
  br label %.lr.ph461

.lr.ph456:                                        ; preds = %_PyUnicode_DATA.exit392, %.lr.ph456
  %.0245455 = phi ptr [ %i.kx, %.lr.ph456 ], [ %i.ja, %_PyUnicode_DATA.exit392 ] ; 5 uses
  %.0247454 = phi ptr [ %i.ky, %.lr.ph456 ], [ %i.ix, %_PyUnicode_DATA.exit392 ] ; 5 uses
  %i.kj = load i32, ptr %.0245455, align 4, !tbaa !7
  %i.kk = trunc i32 %i.kj to i8
  store i8 %i.kk, ptr %.0247454, align 1, !tbaa !205
  %i.kl = getelementptr i8, ptr %.0245455, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !7
  %i.kn = trunc i32 %i.km to i8
  %i.ko = getelementptr i8, ptr %.0247454, i64 1
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !205
  %i.kp = getelementptr i8, ptr %.0245455, i64 8
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !7
  %i.kr = trunc i32 %i.kq to i8
  %i.ks = getelementptr i8, ptr %.0247454, i64 2
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !205
  %i.kt = getelementptr i8, ptr %.0245455, i64 12
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !7
  %i.kv = trunc i32 %i.ku to i8
  %i.kw = getelementptr i8, ptr %.0247454, i64 3
  store i8 %i.kv, ptr %i.kw, align 1, !tbaa !205
  %i.kx = getelementptr i8, ptr %.0245455, i64 16 ; 3 uses
  %i.ky = getelementptr i8, ptr %.0247454, i64 4  ; 2 uses
  %i.kz = icmp ult ptr %i.kx, %i.je
  br i1 %i.kz, label %.lr.ph456, label %.preheader437, !llvm.loop !258

.lr.ph461:                                        ; preds = %.lr.ph461.preheader751, %.lr.ph461
  %.1246460 = phi ptr [ %i.la, %.lr.ph461 ], [ %.1246460.ph, %.lr.ph461.preheader751 ] ; 2 uses
  %.1248459 = phi ptr [ %i.ld, %.lr.ph461 ], [ %.1248459.ph, %.lr.ph461.preheader751 ] ; 2 uses
  %i.la = getelementptr i8, ptr %.1246460, i64 4  ; 2 uses
  %i.lb = load i32, ptr %.1246460, align 4, !tbaa !7
  %i.lc = trunc i32 %i.lb to i8
  %i.ld = getelementptr i8, ptr %.1248459, i64 1
  store i8 %i.lc, ptr %.1248459, align 1, !tbaa !205
  %i.le = icmp ult ptr %i.la, %i.jb
  br i1 %i.le, label %.lr.ph461, label %ucs1lib_find_max_char.exit, !llvm.loop !259

bb.ar:                                            ; preds = %bb.al
  tail call void @llvm.assume(i1 %i.iu)
  tail call void @llvm.assume(i1 %i.aj)
  br i1 %.not.i265, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lf = and i32 %i.j, 64
  %.not.i.i395 = icmp eq i32 %i.lf, 0
  %.0.v.i.i396 = select i1 %.not.i.i395, i64 56, i64 40
  %.0.i.i397 = getelementptr i8, ptr %0, i64 %.0.v.i.i396
  br label %_PyUnicode_DATA.exit400

bb.at:                                            ; preds = %bb.ar
  %i.lg = getelementptr i8, ptr %0, i64 56
  %.val4.i399 = load ptr, ptr %i.lg, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit400

_PyUnicode_DATA.exit400:                          ; preds = %bb.as, %bb.at
  %.0.i398 = phi ptr [ %.0.i.i397, %bb.as ], [ %.val4.i399, %bb.at ]
  %i.lh = getelementptr [2 x i8], ptr %.0.i398, i64 %1 ; 2 uses
  br i1 %.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_PyUnicode_DATA.exit400
  %i.li = and i32 %i.c, 64
  %.not.i.i403 = icmp eq i32 %i.li, 0
  %.0.v.i.i404 = select i1 %.not.i.i403, i64 56, i64 40
  %.0.i.i405 = getelementptr i8, ptr %2, i64 %.0.v.i.i404
  br label %_PyUnicode_DATA.exit416

bb.av:                                            ; preds = %_PyUnicode_DATA.exit400
  %i.lj = getelementptr i8, ptr %2, i64 56
  %.val4.i407 = load ptr, ptr %i.lj, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit416

_PyUnicode_DATA.exit416:                          ; preds = %bb.au, %bb.av
  %.0.i.i405.pn = phi ptr [ %.0.i.i405, %bb.au ], [ %.val4.i407, %bb.av ] ; 2 uses
  %i.lk = getelementptr [4 x i8], ptr %.0.i.i405.pn, i64 %3 ; 5 uses
  %i.ll = getelementptr [4 x i8], ptr %i.lk, i64 %4 ; 2 uses
  %.idx = shl i64 %4, 2                           ; 2 uses
  %i.lm = ashr exact i64 %.idx, 2
  %i.ln = and i64 %i.lm, -4
  %i.lo = getelementptr [4 x i8], ptr %i.lk, i64 %i.ln ; 2 uses
  %i.lp = icmp ult ptr %i.lk, %i.lo
  br i1 %i.lp, label %.lr.ph448, label %.preheader439

.preheader439:                                    ; preds = %.lr.ph448, %_PyUnicode_DATA.exit416
  %.0237.lcssa = phi ptr [ %i.lh, %_PyUnicode_DATA.exit416 ], [ %i.mo, %.lr.ph448 ] ; 3 uses
  %.0235.lcssa = phi ptr [ %i.lk, %_PyUnicode_DATA.exit416 ], [ %i.mn, %.lr.ph448 ] ; 5 uses
  %i.lq = icmp ult ptr %.0235.lcssa, %i.ll
  br i1 %i.lq, label %.lr.ph453.preheader, label %ucs1lib_find_max_char.exit

.lr.ph453.preheader:                              ; preds = %.preheader439
  %12 = ptrtoaddr ptr %.0.i.i405.pn to i64
  %i.lr = shl i64 %3, 2
  %i.ls = add i64 %.idx, %12
  %i.lt = add i64 %i.ls, %i.lr
  %13 = ptrtoaddr ptr %.0235.lcssa to i64         ; 2 uses
  %i.lu = add i64 %13, 4
  %i.lv = tail call i64 @llvm.umax.i64(i64 %i.lt, i64 %i.lu)
  %i.lw = xor i64 %13, -1
  %i.lx = add i64 %i.lv, %i.lw                    ; 2 uses
  %i.ly = lshr i64 %i.lx, 2
  %i.lz = add nuw nsw i64 %i.ly, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.lx, 28
  br i1 %min.iters.check, label %.lr.ph453.preheader755, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph453.preheader
  %n.vec = and i64 %i.lz, 9223372036854775800     ; 4 uses
  %i.ma = shl i64 %n.vec, 2
  %i.mb = getelementptr i8, ptr %.0235.lcssa, i64 %i.ma
  %i.mc = shl nuw i64 %n.vec, 1
  %i.md = getelementptr i8, ptr %.0237.lcssa, i64 %i.mc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.me = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0235.lcssa, i64 %i.me ; 2 uses
  %i.mf = shl i64 %index, 1
  %next.gep593 = getelementptr i8, ptr %.0237.lcssa, i64 %i.mf ; 2 uses
  %i.mg = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load594 = load <4 x i32>, ptr %i.mg, align 4, !tbaa !7
  %i.mh = trunc <4 x i32> %wide.load to <4 x i16>
  %i.mi = trunc <4 x i32> %wide.load594 to <4 x i16>
  %i.mj = getelementptr i8, ptr %next.gep593, i64 8
  store <4 x i16> %i.mh, ptr %next.gep593, align 2, !tbaa !208
  store <4 x i16> %i.mi, ptr %i.mj, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mk = icmp eq i64 %index.next, %n.vec
  br i1 %i.mk, label %middle.block, label %vector.body, !llvm.loop !260

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lz, %n.vec
  br i1 %cmp.n, label %ucs1lib_find_max_char.exit, label %.lr.ph453.preheader755

.lr.ph453.preheader755:                           ; preds = %.lr.ph453.preheader, %middle.block
  %.1236452.ph = phi ptr [ %.0235.lcssa, %.lr.ph453.preheader ], [ %i.mb, %middle.block ]
  %.1238451.ph = phi ptr [ %.0237.lcssa, %.lr.ph453.preheader ], [ %i.md, %middle.block ]
  br label %.lr.ph453

.lr.ph448:                                        ; preds = %_PyUnicode_DATA.exit416, %.lr.ph448
  %.0235447 = phi ptr [ %i.mn, %.lr.ph448 ], [ %i.lk, %_PyUnicode_DATA.exit416 ] ; 2 uses
  %.0237446 = phi ptr [ %i.mo, %.lr.ph448 ], [ %i.lh, %_PyUnicode_DATA.exit416 ] ; 2 uses
  %i.ml = load <4 x i32>, ptr %.0235447, align 4, !tbaa !7
  %i.mm = trunc <4 x i32> %i.ml to <4 x i16>
  store <4 x i16> %i.mm, ptr %.0237446, align 2, !tbaa !208
  %i.mn = getelementptr i8, ptr %.0235447, i64 16 ; 3 uses
  %i.mo = getelementptr i8, ptr %.0237446, i64 8  ; 2 uses
  %i.mp = icmp ult ptr %i.mn, %i.lo
  br i1 %i.mp, label %.lr.ph448, label %.preheader439, !llvm.loop !261

.lr.ph453:                                        ; preds = %.lr.ph453.preheader755, %.lr.ph453
  %.1236452 = phi ptr [ %i.mq, %.lr.ph453 ], [ %.1236452.ph, %.lr.ph453.preheader755 ] ; 2 uses
  %.1238451 = phi ptr [ %i.mt, %.lr.ph453 ], [ %.1238451.ph, %.lr.ph453.preheader755 ] ; 2 uses
  %i.mq = getelementptr i8, ptr %.1236452, i64 4  ; 2 uses
  %i.mr = load i32, ptr %.1236452, align 4, !tbaa !7
  %i.ms = trunc i32 %i.mr to i16
  %i.mt = getelementptr i8, ptr %.1238451, i64 2
  store i16 %i.ms, ptr %.1238451, align 2, !tbaa !208
  %i.mu = icmp ult ptr %i.mq, %i.ll
  br i1 %i.mu, label %.lr.ph453, label %ucs1lib_find_max_char.exit, !llvm.loop !262

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.ae
  %i.mv = and i32 %i.j, 64
  %.not.i417 = icmp eq i32 %i.mv, 0
  %switch.select.i = select i1 %i.aj, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.l, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  %.0.i418 = select i1 %.not.i417, i32 %switch.select6.i, i32 127
  %.not258443 = icmp sgt i64 %4, 0
  br i1 %.not258443, label %.lr.ph, label %ucs1lib_find_max_char.exit

.lr.ph:                                           ; preds = %PyUnicode_MAX_CHAR_VALUE.exit, %PyUnicode_WRITE.exit
  %.0444 = phi i64 [ %i.nm, %PyUnicode_WRITE.exit ], [ 0, %PyUnicode_MAX_CHAR_VALUE.exit ] ; 3 uses
  %i.mw = add i64 %.0444, %3                      ; 3 uses
  switch i32 %i.e, label %bb.ay [
    i32 1, label %bb.aw
    i32 2, label %bb.ax
  ]

bb.aw:                                            ; preds = %.lr.ph
  %i.mx = getelementptr i8, ptr %.0.i, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !205
  %i.mz = zext i8 %i.my to i32
  br label %PyUnicode_READ.exit

bb.ax:                                            ; preds = %.lr.ph
  %i.na = getelementptr [2 x i8], ptr %.0.i, i64 %i.mw
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !208
  %i.nc = zext i16 %i.nb to i32
  br label %PyUnicode_READ.exit

bb.ay:                                            ; preds = %.lr.ph
  %i.nd = getelementptr [4 x i8], ptr %.0.i, i64 %i.mw
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.aw, %bb.ax, %bb.ay
  %.0.i419 = phi i32 [ %i.mz, %bb.aw ], [ %i.nc, %bb.ax ], [ %i.ne, %bb.ay ] ; 4 uses
  %i.nf = icmp ugt i32 %.0.i419, %.0.i418
  br i1 %i.nf, label %ucs1lib_find_max_char.exit, label %bb.az

bb.az:                                            ; preds = %PyUnicode_READ.exit
  %i.ng = add i64 %.0444, %1                      ; 3 uses
  switch i32 %i.l, label %bb.bc [
    i32 1, label %bb.ba
    i32 2, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.nh = trunc i32 %.0.i419 to i8
  %i.ni = getelementptr i8, ptr %.0.i269, i64 %i.ng
  store i8 %i.nh, ptr %i.ni, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit

bb.bb:                                            ; preds = %bb.az
  %i.nj = trunc i32 %.0.i419 to i16
  %i.nk = getelementptr [2 x i8], ptr %.0.i269, i64 %i.ng
  store i16 %i.nj, ptr %i.nk, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit

bb.bc:                                            ; preds = %bb.az
  %i.nl = getelementptr [4 x i8], ptr %.0.i269, i64 %i.ng
  store i32 %.0.i419, ptr %i.nl, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit

PyUnicode_WRITE.exit:                             ; preds = %bb.ba, %bb.bb, %bb.bc
  %i.nm = add nuw nsw i64 %.0444, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.nm, %4
  br i1 %exitcond.not, label %ucs1lib_find_max_char.exit, label %.lr.ph, !llvm.loop !263

ucs1lib_find_max_char.exit:                       ; preds = %PyUnicode_READ.exit, %PyUnicode_WRITE.exit, %.lr.ph453, %.lr.ph461, %.lr.ph469, %.lr.ph477, %.lr.ph485, %.lr.ph493, %.thread31.i, %bb.k, %middle.block, %middle.block611, %middle.block638, %vec.epilog.middle.block, %middle.block664, %middle.block688, %middle.block714, %vec.epilog.middle.block732, %PyUnicode_MAX_CHAR_VALUE.exit, %.preheader439, %.preheader437, %.preheader435, %.preheader433, %.preheader431, %.preheader, %ucs1lib_find_max_char.exit.thread, %bb.a
  %.2 = phi i32 [ 0, %.preheader439 ], [ 0, %PyUnicode_MAX_CHAR_VALUE.exit ], [ 0, %bb.a ], [ 0, %ucs1lib_find_max_char.exit.thread ], [ 0, %.preheader437 ], [ 0, %.preheader435 ], [ 0, %.preheader433 ], [ 0, %.preheader431 ], [ 0, %.preheader ], [ 0, %middle.block688 ], [ 0, %middle.block664 ], [ 0, %middle.block638 ], [ 0, %middle.block611 ], [ 0, %middle.block ], [ 0, %.lr.ph461 ], [ 0, %.lr.ph453 ], [ 0, %middle.block714 ], [ -1, %bb.k ], [ 0, %vec.epilog.middle.block732 ], [ -1, %.thread31.i ], [ 0, %.lr.ph493 ], [ 0, %.lr.ph485 ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph477 ], [ 0, %.lr.ph469 ], [ -1, %PyUnicode_READ.exit ], [ 0, %PyUnicode_WRITE.exit ]
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
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.o, i64 %4) ; 5 uses
  %i.p = add i64 %spec.select, %1
  %i.q = icmp sgt i64 %i.p, %.val44
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
  %2 = ptrtoaddr ptr %0 to i64
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
  %.051.lcssa.i = phi ptr [ %0, %bb.p ], [ %i.bx, %.lr.ph68.i ] ; 9 uses
  %.0.lcssa.i = phi ptr [ %.0.i23, %bb.p ], [ %i.by, %.lr.ph68.i ] ; 6 uses
  %.051.lcssa.i82 = ptrtoaddr ptr %.051.lcssa.i to i64 ; 2 uses
  %i.ak = icmp ult ptr %.051.lcssa.i, %i.n
  br i1 %i.ak, label %.lr.ph73.i.preheader, label %unicode_write_widechar.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %3 = ptrtoaddr ptr %0 to i64
  %i.al = add i64 %.idx57.i, %3
  %4 = ptrtoaddr ptr %.051.lcssa.i to i64         ; 2 uses
  %i.am = add i64 %4, 4
  %i.an = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.am)
  %i.ao = xor i64 %4, -1
  %i.ap = add i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check85 = icmp ult i64 %i.ap, 156
  br i1 %min.iters.check85, label %.lr.ph73.i.preheader100, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph73.i.preheader
  %i.as = add i64 %.idx57.i, %2
  %i.at = add i64 %.051.lcssa.i82, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %i.at)
  %i.au = xor i64 %.051.lcssa.i82, -1
  %i.av = add i64 %umax, %i.au                    ; 2 uses
  %i.aw = lshr i64 %i.av, 2
  %i.ax = getelementptr i8, ptr %.0.lcssa.i, i64 %i.aw
  %scevgep = getelementptr i8, ptr %i.ax, i64 1
  %i.ay = and i64 %i.av, -4
  %i.az = getelementptr i8, ptr %.051.lcssa.i, i64 %i.ay
  %scevgep83 = getelementptr i8, ptr %i.az, i64 4
  %bound0 = icmp ult ptr %.0.lcssa.i, %scevgep83
  %bound1 = icmp ult ptr %.051.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.i.preheader100, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck
  %n.vec88 = and i64 %i.ar, 9223372036854775800   ; 4 uses
  %i.ba = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec88
  %i.bb = shl i64 %n.vec88, 2
  %i.bc = getelementptr i8, ptr %.051.lcssa.i, i64 %i.bb
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph86
  %index90 = phi i64 [ 0, %vector.ph86 ], [ %index.next95, %vector.body89 ] ; 3 uses
  %next.gep91 = getelementptr i8, ptr %.0.lcssa.i, i64 %index90 ; 2 uses
  %i.bd = shl i64 %index90, 2
  %next.gep92 = getelementptr i8, ptr %.051.lcssa.i, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep92, i64 16
  %wide.load93 = load <4 x i32>, ptr %next.gep92, align 4, !tbaa !7, !alias.scope !265
  %wide.load94 = load <4 x i32>, ptr %i.be, align 4, !tbaa !7, !alias.scope !265
  %i.bf = trunc <4 x i32> %wide.load93 to <4 x i8>
  %i.bg = trunc <4 x i32> %wide.load94 to <4 x i8>
  %i.bh = getelementptr i8, ptr %next.gep91, i64 4
  store <4 x i8> %i.bf, ptr %next.gep91, align 1, !tbaa !205, !alias.scope !268, !noalias !265
  store <4 x i8> %i.bg, ptr %i.bh, align 1, !tbaa !205, !alias.scope !268, !noalias !265
  %index.next95 = add nuw i64 %index90, 8         ; 2 uses
  %i.bi = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.bi, label %middle.block96, label %vector.body89, !llvm.loop !270

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %i.ar, %n.vec88
  br i1 %cmp.n97, label %unicode_write_widechar.exit, label %.lr.ph73.i.preheader100

.lr.ph73.i.preheader100:                          ; preds = %vector.memcheck, %.lr.ph73.i.preheader, %middle.block96
  %.172.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck ], [ %.0.lcssa.i, %.lr.ph73.i.preheader ], [ %i.ba, %middle.block96 ]
  %.15271.i.ph = phi ptr [ %.051.lcssa.i, %vector.memcheck ], [ %.051.lcssa.i, %.lr.ph73.i.preheader ], [ %i.bc, %middle.block96 ]
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %bb.p, %.lr.ph68.i
  %.067.i = phi ptr [ %i.by, %.lr.ph68.i ], [ %.0.i23, %bb.p ] ; 5 uses
  %.05166.i = phi ptr [ %i.bx, %.lr.ph68.i ], [ %0, %bb.p ] ; 5 uses
  %i.bj = load i32, ptr %.05166.i, align 4, !tbaa !7
  %i.bk = trunc i32 %i.bj to i8
  store i8 %i.bk, ptr %.067.i, align 1, !tbaa !205
  %i.bl = getelementptr i8, ptr %.05166.i, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr i8, ptr %.067.i, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !205
  %i.bp = getelementptr i8, ptr %.05166.i, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr i8, ptr %.067.i, i64 2
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !205
  %i.bt = getelementptr i8, ptr %.05166.i, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr i8, ptr %.067.i, i64 3
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !205
  %i.bx = getelementptr i8, ptr %.05166.i, i64 16 ; 3 uses
  %i.by = getelementptr i8, ptr %.067.i, i64 4    ; 2 uses
  %i.bz = icmp ult ptr %i.bx, %i.ai
  br i1 %i.bz, label %.lr.ph68.i, label %.preheader.i, !llvm.loop !271

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader100, %.lr.ph73.i
  %.172.i = phi ptr [ %i.cd, %.lr.ph73.i ], [ %.172.i.ph, %.lr.ph73.i.preheader100 ] ; 2 uses
  %.15271.i = phi ptr [ %i.ca, %.lr.ph73.i ], [ %.15271.i.ph, %.lr.ph73.i.preheader100 ] ; 2 uses
  %i.ca = getelementptr i8, ptr %.15271.i, i64 4  ; 2 uses
  %i.cb = load i32, ptr %.15271.i, align 4, !tbaa !7
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = getelementptr i8, ptr %.172.i, i64 1
  store i8 %i.cc, ptr %.172.i, align 1, !tbaa !205
  %i.ce = icmp ult ptr %i.ca, %i.n
  br i1 %i.ce, label %.lr.ph73.i, label %unicode_write_widechar.exit, !llvm.loop !272

bb.q:                                             ; preds = %_PyUnicode_DATA.exit
  %i.cf = ashr exact i64 %.idx57.i, 2
  %i.cg = and i64 %i.cf, -4
  %i.ch = getelementptr [4 x i8], ptr %0, i64 %i.cg ; 2 uses
  %i.ci = icmp ult ptr %0, %i.ch
  br i1 %i.ci, label %.lr.ph.i24, label %.preheader58.i

.preheader58.i:                                   ; preds = %.lr.ph.i24, %bb.q
  %.055.lcssa.i = phi ptr [ %0, %bb.q ], [ %i.de, %.lr.ph.i24 ] ; 5 uses
  %.053.lcssa.i = phi ptr [ %.0.i23, %bb.q ], [ %i.df, %.lr.ph.i24 ] ; 3 uses
  %i.cj = icmp ult ptr %.055.lcssa.i, %i.n
  br i1 %i.cj, label %.lr.ph65.i.preheader, label %unicode_write_widechar.exit

.lr.ph65.i.preheader:                             ; preds = %.preheader58.i
  %5 = ptrtoaddr ptr %0 to i64
  %i.ck = add i64 %.idx57.i, %5
  %6 = ptrtoaddr ptr %.055.lcssa.i to i64         ; 2 uses
  %i.cl = add i64 %6, 4
  %i.cm = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %i.cl)
  %i.cn = xor i64 %6, -1
  %i.co = add i64 %i.cm, %i.cn                    ; 2 uses
  %i.cp = lshr i64 %i.co, 2
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.co, 28
  br i1 %min.iters.check, label %.lr.ph65.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.i.preheader
  %n.vec = and i64 %i.cq, 9223372036854775800     ; 4 uses
  %i.cr = shl nuw i64 %n.vec, 1
  %i.cs = getelementptr i8, ptr %.053.lcssa.i, i64 %i.cr
  %i.ct = shl i64 %n.vec, 2
  %i.cu = getelementptr i8, ptr %.055.lcssa.i, i64 %i.ct
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cv = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.053.lcssa.i, i64 %i.cv ; 2 uses
  %i.cw = shl i64 %index, 2
  %next.gep79 = getelementptr i8, ptr %.055.lcssa.i, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !7
  %wide.load80 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !7
  %i.cy = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cz = trunc <4 x i32> %wide.load80 to <4 x i16>
  %i.da = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.cy, ptr %next.gep, align 2, !tbaa !208
  store <4 x i16> %i.cz, ptr %i.da, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !273

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %unicode_write_widechar.exit, label %.lr.ph65.i.preheader102

.lr.ph65.i.preheader102:                          ; preds = %.lr.ph65.i.preheader, %middle.block
  %.15464.i.ph = phi ptr [ %.053.lcssa.i, %.lr.ph65.i.preheader ], [ %i.cs, %middle.block ]
  %.15663.i.ph = phi ptr [ %.055.lcssa.i, %.lr.ph65.i.preheader ], [ %i.cu, %middle.block ]
  br label %.lr.ph65.i

.lr.ph.i24:                                       ; preds = %bb.q, %.lr.ph.i24
  %.05361.i = phi ptr [ %i.df, %.lr.ph.i24 ], [ %.0.i23, %bb.q ] ; 2 uses
  %.05560.i = phi ptr [ %i.de, %.lr.ph.i24 ], [ %0, %bb.q ] ; 2 uses
  %i.dc = load <4 x i32>, ptr %.05560.i, align 4, !tbaa !7
  %i.dd = trunc <4 x i32> %i.dc to <4 x i16>
  store <4 x i16> %i.dd, ptr %.05361.i, align 2, !tbaa !208
  %i.de = getelementptr i8, ptr %.05560.i, i64 16 ; 3 uses
  %i.df = getelementptr i8, ptr %.05361.i, i64 8  ; 2 uses
  %i.dg = icmp ult ptr %i.de, %i.ch
  br i1 %i.dg, label %.lr.ph.i24, label %.preheader58.i, !llvm.loop !274

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader102, %.lr.ph65.i
  %.15464.i = phi ptr [ %i.dk, %.lr.ph65.i ], [ %.15464.i.ph, %.lr.ph65.i.preheader102 ] ; 2 uses
  %.15663.i = phi ptr [ %i.dh, %.lr.ph65.i ], [ %.15663.i.ph, %.lr.ph65.i.preheader102 ] ; 2 uses
  %i.dh = getelementptr i8, ptr %.15663.i, i64 4  ; 2 uses
  %i.di = load i32, ptr %.15663.i, align 4, !tbaa !7
  %i.dj = trunc i32 %i.di to i16
  %i.dk = getelementptr i8, ptr %.15464.i, i64 2
  store i16 %i.dj, ptr %.15464.i, align 2, !tbaa !208
  %i.dl = icmp ult ptr %i.dh, %i.n
  br i1 %i.dl, label %.lr.ph65.i, label %unicode_write_widechar.exit, !llvm.loop !275

bb.r:                                             ; preds = %_PyUnicode_DATA.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i23, ptr readonly align 4 %0, i64 %.idx57.i, i1 false)
  br label %unicode_write_widechar.exit

bb.s:                                             ; preds = %_PyUnicode_DATA.exit
  unreachable

unicode_write_widechar.exit:                      ; preds = %.lr.ph65.i, %.lr.ph73.i, %middle.block, %middle.block96, %.preheader.i, %.preheader58.i, %bb.r
  %i.dm = getelementptr i8, ptr %i.y, i64 16
  %.val.i25 = load i64, ptr %i.dm, align 8, !tbaa !207
  switch i64 %.val.i25, label %get_latin1_char.exit [
    i64 0, label %bb.t
    i64 1, label %bb.w
  ]

bb.t:                                             ; preds = %unicode_write_widechar.exit
  %.not26.i = icmp eq ptr %i.y, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %.not26.i, label %get_latin1_char.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dn = load i32, ptr %i.y, align 8, !tbaa !205 ; 2 uses
  %.not.i27.i = icmp sgt i32 %i.dn, -1
  br i1 %.not.i27.i, label %bb.v, label %get_latin1_char.exit

bb.v:                                             ; preds = %bb.u
  %i.do = add nsw i32 %i.dn, -1                   ; 2 uses
  store i32 %i.do, ptr %i.y, align 8, !tbaa !205
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %Py_DECREF.exit28.sink.split.i, label %get_latin1_char.exit

bb.w:                                             ; preds = %unicode_write_widechar.exit
  %i.dq = load i32, ptr %i.z, align 8             ; 3 uses
  %i.dr = and i32 %i.dq, 28
  %.not25.i = icmp eq i32 %i.dr, 4
  br i1 %.not25.i, label %bb.x, label %get_latin1_char.exit

bb.x:                                             ; preds = %bb.w
  %i.ds = and i32 %i.dq, 32
  %.not.i30.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i30.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = and i32 %i.dq, 64
  %.not.i.i.i = icmp eq i32 %i.dt, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.y, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.z:                                             ; preds = %bb.x
  %i.du = getelementptr i8, ptr %i.y, i64 56
  %.val4.i.i = load ptr, ptr %i.du, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.z, %bb.y
  %.0.i.i26 = phi ptr [ %.0.i.i.i, %bb.y ], [ %.val4.i.i, %bb.z ]
  %i.dv = load i8, ptr %.0.i.i26, align 1, !tbaa !205 ; 3 uses
  %i.dw = zext nneg i8 %i.dv to i64
  %i.dx = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.dw
  %i.dy = and i8 %i.dv, 127
  %i.dz = zext nneg i8 %i.dy to i64
  %i.ea = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.dz
  %i.eb = icmp slt i8 %i.dv, 0
  %i.ec = select i1 %i.eb, ptr %i.ea, ptr %i.dx   ; 5 uses
  %.not.i27 = icmp eq ptr %i.y, %i.ec
  br i1 %.not.i27, label %get_latin1_char.exit, label %bb.aa

bb.aa:                                            ; preds = %_PyUnicode_DATA.exit.i
  %i.ed = load i32, ptr %i.y, align 8, !tbaa !205 ; 2 uses
  %.not.i.i28 = icmp sgt i32 %i.ed, -1
  br i1 %.not.i.i28, label %bb.ab, label %get_latin1_char.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ee = add nsw i32 %i.ed, -1                   ; 2 uses
  store i32 %i.ee, ptr %i.y, align 8, !tbaa !205
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %Py_DECREF.exit28.sink.split.i, label %get_latin1_char.exit

Py_DECREF.exit28.sink.split.i:                    ; preds = %bb.ab, %bb.v
  %.1.ph.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.v ], [ %i.ec, %bb.ab ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.y) #33
  br label %get_latin1_char.exit

get_latin1_char.exit:                             ; preds = %Py_DECREF.exit28.sink.split.i, %bb.ab, %bb.aa, %_PyUnicode_DATA.exit.i, %bb.w, %bb.v, %bb.u, %bb.t, %unicode_write_widechar.exit, %find_maxchar_surrogates.exit, %bb.i, %bb.h, %bb.e, %.loopexit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.loopexit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.e ], [ null, %find_maxchar_surrogates.exit ], [ %i.m, %bb.i ], [ %i.j, %bb.h ], [ %i.y, %unicode_write_widechar.exit ], [ %i.ec, %bb.aa ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.v ], [ %i.y, %bb.w ], [ %i.ec, %_PyUnicode_DATA.exit.i ], [ %i.ec, %bb.ab ], [ %.1.ph.i, %Py_DECREF.exit28.sink.split.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyUnicodeWriter_WriteWideChar(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = ptrtoaddr ptr %1 to i64
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
  %.051.lcssa.i = phi ptr [ %1, %bb.i ], [ %i.bx, %.lr.ph68.i ] ; 9 uses
  %.0.lcssa.i = phi ptr [ %i.af, %bb.i ], [ %i.by, %.lr.ph68.i ] ; 6 uses
  %.051.lcssa.i82 = ptrtoaddr ptr %.051.lcssa.i to i64 ; 2 uses
  %i.ak = icmp ult ptr %.051.lcssa.i, %i.d
  br i1 %i.ak, label %.lr.ph73.i.preheader, label %unicode_write_widechar.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %4 = ptrtoaddr ptr %1 to i64
  %i.al = add i64 %.idx57.i, %4
  %5 = ptrtoaddr ptr %.051.lcssa.i to i64         ; 2 uses
  %i.am = add i64 %5, 4
  %i.an = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.am)
  %i.ao = xor i64 %5, -1
  %i.ap = add i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check85 = icmp ult i64 %i.ap, 156
  br i1 %min.iters.check85, label %.lr.ph73.i.preheader100, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph73.i.preheader
  %i.as = add i64 %.idx57.i, %3
  %i.at = add i64 %.051.lcssa.i82, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %i.at)
  %i.au = xor i64 %.051.lcssa.i82, -1
  %i.av = add i64 %umax, %i.au                    ; 2 uses
  %i.aw = lshr i64 %i.av, 2
  %i.ax = getelementptr i8, ptr %.0.lcssa.i, i64 %i.aw
  %scevgep = getelementptr i8, ptr %i.ax, i64 1
  %i.ay = and i64 %i.av, -4
  %i.az = getelementptr i8, ptr %.051.lcssa.i, i64 %i.ay
  %scevgep83 = getelementptr i8, ptr %i.az, i64 4
  %bound0 = icmp ult ptr %.0.lcssa.i, %scevgep83
  %bound1 = icmp ult ptr %.051.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.i.preheader100, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck
  %n.vec88 = and i64 %i.ar, 9223372036854775800   ; 4 uses
  %i.ba = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec88
  %i.bb = shl i64 %n.vec88, 2
  %i.bc = getelementptr i8, ptr %.051.lcssa.i, i64 %i.bb
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph86
  %index90 = phi i64 [ 0, %vector.ph86 ], [ %index.next95, %vector.body89 ] ; 3 uses
  %next.gep91 = getelementptr i8, ptr %.0.lcssa.i, i64 %index90 ; 2 uses
  %i.bd = shl i64 %index90, 2
  %next.gep92 = getelementptr i8, ptr %.051.lcssa.i, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep92, i64 16
  %wide.load93 = load <4 x i32>, ptr %next.gep92, align 4, !tbaa !7, !alias.scope !282
  %wide.load94 = load <4 x i32>, ptr %i.be, align 4, !tbaa !7, !alias.scope !282
  %i.bf = trunc <4 x i32> %wide.load93 to <4 x i8>
  %i.bg = trunc <4 x i32> %wide.load94 to <4 x i8>
  %i.bh = getelementptr i8, ptr %next.gep91, i64 4
  store <4 x i8> %i.bf, ptr %next.gep91, align 1, !tbaa !205, !alias.scope !285, !noalias !282
  store <4 x i8> %i.bg, ptr %i.bh, align 1, !tbaa !205, !alias.scope !285, !noalias !282
  %index.next95 = add nuw i64 %index90, 8         ; 2 uses
  %i.bi = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.bi, label %middle.block96, label %vector.body89, !llvm.loop !287

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %i.ar, %n.vec88
  br i1 %cmp.n97, label %unicode_write_widechar.exit, label %.lr.ph73.i.preheader100

.lr.ph73.i.preheader100:                          ; preds = %vector.memcheck, %.lr.ph73.i.preheader, %middle.block96
  %.172.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck ], [ %.0.lcssa.i, %.lr.ph73.i.preheader ], [ %i.ba, %middle.block96 ]
  %.15271.i.ph = phi ptr [ %.051.lcssa.i, %vector.memcheck ], [ %.051.lcssa.i, %.lr.ph73.i.preheader ], [ %i.bc, %middle.block96 ]
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %bb.i, %.lr.ph68.i
  %.067.i = phi ptr [ %i.by, %.lr.ph68.i ], [ %i.af, %bb.i ] ; 5 uses
  %.05166.i = phi ptr [ %i.bx, %.lr.ph68.i ], [ %1, %bb.i ] ; 5 uses
  %i.bj = load i32, ptr %.05166.i, align 4, !tbaa !7
  %i.bk = trunc i32 %i.bj to i8
  store i8 %i.bk, ptr %.067.i, align 1, !tbaa !205
  %i.bl = getelementptr i8, ptr %.05166.i, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr i8, ptr %.067.i, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !205
  %i.bp = getelementptr i8, ptr %.05166.i, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr i8, ptr %.067.i, i64 2
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !205
  %i.bt = getelementptr i8, ptr %.05166.i, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr i8, ptr %.067.i, i64 3
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !205
  %i.bx = getelementptr i8, ptr %.05166.i, i64 16 ; 3 uses
  %i.by = getelementptr i8, ptr %.067.i, i64 4    ; 2 uses
  %i.bz = icmp ult ptr %i.bx, %i.ai
  br i1 %i.bz, label %.lr.ph68.i, label %.preheader.i, !llvm.loop !271

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader100, %.lr.ph73.i
  %.172.i = phi ptr [ %i.cd, %.lr.ph73.i ], [ %.172.i.ph, %.lr.ph73.i.preheader100 ] ; 2 uses
  %.15271.i = phi ptr [ %i.ca, %.lr.ph73.i ], [ %.15271.i.ph, %.lr.ph73.i.preheader100 ] ; 2 uses
  %i.ca = getelementptr i8, ptr %.15271.i, i64 4  ; 2 uses
  %i.cb = load i32, ptr %.15271.i, align 4, !tbaa !7
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = getelementptr i8, ptr %.172.i, i64 1
  store i8 %i.cc, ptr %.172.i, align 1, !tbaa !205
  %i.ce = icmp ult ptr %i.ca, %i.d
  br i1 %i.ce, label %.lr.ph73.i, label %unicode_write_widechar.exit, !llvm.loop !288

bb.j:                                             ; preds = %.critedge
  %i.cf = ashr exact i64 %.idx57.i, 2
  %i.cg = and i64 %i.cf, -4
  %i.ch = getelementptr [4 x i8], ptr %1, i64 %i.cg ; 2 uses
  %i.ci = icmp ult ptr %1, %i.ch
  br i1 %i.ci, label %.lr.ph.i28, label %.preheader58.i

.preheader58.i:                                   ; preds = %.lr.ph.i28, %bb.j
  %.055.lcssa.i = phi ptr [ %1, %bb.j ], [ %i.de, %.lr.ph.i28 ] ; 5 uses
  %.053.lcssa.i = phi ptr [ %i.af, %bb.j ], [ %i.df, %.lr.ph.i28 ] ; 3 uses
  %i.cj = icmp ult ptr %.055.lcssa.i, %i.d
  br i1 %i.cj, label %.lr.ph65.i.preheader, label %unicode_write_widechar.exit

.lr.ph65.i.preheader:                             ; preds = %.preheader58.i
  %6 = ptrtoaddr ptr %1 to i64
  %i.ck = add i64 %.idx57.i, %6
  %7 = ptrtoaddr ptr %.055.lcssa.i to i64         ; 2 uses
  %i.cl = add i64 %7, 4
  %i.cm = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %i.cl)
  %i.cn = xor i64 %7, -1
  %i.co = add i64 %i.cm, %i.cn                    ; 2 uses
  %i.cp = lshr i64 %i.co, 2
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.co, 28
  br i1 %min.iters.check, label %.lr.ph65.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.i.preheader
  %n.vec = and i64 %i.cq, 9223372036854775800     ; 4 uses
  %i.cr = shl nuw i64 %n.vec, 1
  %i.cs = getelementptr i8, ptr %.053.lcssa.i, i64 %i.cr
  %i.ct = shl i64 %n.vec, 2
  %i.cu = getelementptr i8, ptr %.055.lcssa.i, i64 %i.ct
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cv = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.053.lcssa.i, i64 %i.cv ; 2 uses
  %i.cw = shl i64 %index, 2
  %next.gep79 = getelementptr i8, ptr %.055.lcssa.i, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !7
  %wide.load80 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !7
  %i.cy = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cz = trunc <4 x i32> %wide.load80 to <4 x i16>
  %i.da = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.cy, ptr %next.gep, align 2, !tbaa !208
  store <4 x i16> %i.cz, ptr %i.da, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !289

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %unicode_write_widechar.exit, label %.lr.ph65.i.preheader102

.lr.ph65.i.preheader102:                          ; preds = %.lr.ph65.i.preheader, %middle.block
  %.15464.i.ph = phi ptr [ %.053.lcssa.i, %.lr.ph65.i.preheader ], [ %i.cs, %middle.block ]
  %.15663.i.ph = phi ptr [ %.055.lcssa.i, %.lr.ph65.i.preheader ], [ %i.cu, %middle.block ]
  br label %.lr.ph65.i

.lr.ph.i28:                                       ; preds = %bb.j, %.lr.ph.i28
  %.05361.i = phi ptr [ %i.df, %.lr.ph.i28 ], [ %i.af, %bb.j ] ; 2 uses
  %.05560.i = phi ptr [ %i.de, %.lr.ph.i28 ], [ %1, %bb.j ] ; 2 uses
  %i.dc = load <4 x i32>, ptr %.05560.i, align 4, !tbaa !7
  %i.dd = trunc <4 x i32> %i.dc to <4 x i16>
  store <4 x i16> %i.dd, ptr %.05361.i, align 2, !tbaa !208
  %i.de = getelementptr i8, ptr %.05560.i, i64 16 ; 3 uses
  %i.df = getelementptr i8, ptr %.05361.i, i64 8  ; 2 uses
  %i.dg = icmp ult ptr %i.de, %i.ch
  br i1 %i.dg, label %.lr.ph.i28, label %.preheader58.i, !llvm.loop !274

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader102, %.lr.ph65.i
  %.15464.i = phi ptr [ %i.dk, %.lr.ph65.i ], [ %.15464.i.ph, %.lr.ph65.i.preheader102 ] ; 2 uses
  %.15663.i = phi ptr [ %i.dh, %.lr.ph65.i ], [ %.15663.i.ph, %.lr.ph65.i.preheader102 ] ; 2 uses
  %i.dh = getelementptr i8, ptr %.15663.i, i64 4  ; 2 uses
  %i.di = load i32, ptr %.15663.i, align 4, !tbaa !7
  %i.dj = trunc i32 %i.di to i16
  %i.dk = getelementptr i8, ptr %.15464.i, i64 2
  store i16 %i.dj, ptr %.15464.i, align 2, !tbaa !208
  %i.dl = icmp ult ptr %i.dh, %i.d
  br i1 %i.dl, label %.lr.ph65.i, label %unicode_write_widechar.exit, !llvm.loop !290

bb.k:                                             ; preds = %.critedge
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr readonly align 4 %1, i64 %.idx57.i, i1 false)
  br label %unicode_write_widechar.exit

bb.l:                                             ; preds = %.critedge
  unreachable

unicode_write_widechar.exit:                      ; preds = %.lr.ph65.i, %.lr.ph73.i, %middle.block, %middle.block96, %.preheader.i, %.preheader58.i, %bb.k
  %i.dm = load i64, ptr %i.ac, align 8, !tbaa !279
  %i.dn = add i64 %i.dm, %.024
  store i64 %i.dn, ptr %i.ac, align 8, !tbaa !279
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
  %3 = ptrtoaddr ptr %1 to i64
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
  %.082.lcssa = phi ptr [ %1, %bb.m ], [ %i.ch, %.lr.ph101 ] ; 9 uses
  %.076.lcssa = phi ptr [ %i.at, %bb.m ], [ %i.ci, %.lr.ph101 ] ; 6 uses
  %.082.lcssa145 = ptrtoaddr ptr %.082.lcssa to i64 ; 2 uses
  %i.au = icmp ult ptr %.082.lcssa, %i.d
  br i1 %i.au, label %.lr.ph106.preheader, label %.loopexit

.lr.ph106.preheader:                              ; preds = %.preheader
  %4 = ptrtoaddr ptr %1 to i64
  %i.av = add i64 %.idx88, %4
  %5 = ptrtoaddr ptr %.082.lcssa to i64           ; 2 uses
  %i.aw = add i64 %5, 4
  %i.ax = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %i.aw)
  %i.ay = xor i64 %5, -1
  %i.az = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check148 = icmp ult i64 %i.az, 156
  br i1 %min.iters.check148, label %.lr.ph106.preheader163, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph106.preheader
  %i.bc = add i64 %.idx88, %3
  %i.bd = add i64 %.082.lcssa145, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.bd)
  %i.be = xor i64 %.082.lcssa145, -1
  %i.bf = add i64 %umax, %i.be                    ; 2 uses
  %i.bg = lshr i64 %i.bf, 2
  %i.bh = getelementptr i8, ptr %.076.lcssa, i64 %i.bg
  %scevgep = getelementptr i8, ptr %i.bh, i64 1
  %i.bi = and i64 %i.bf, -4
  %i.bj = getelementptr i8, ptr %.082.lcssa, i64 %i.bi
  %scevgep146 = getelementptr i8, ptr %i.bj, i64 4
  %bound0 = icmp ult ptr %.076.lcssa, %scevgep146
  %bound1 = icmp ult ptr %.082.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph106.preheader163, label %vector.ph149

vector.ph149:                                     ; preds = %vector.memcheck
  %n.vec151 = and i64 %i.bb, 9223372036854775800  ; 4 uses
  %i.bk = getelementptr i8, ptr %.076.lcssa, i64 %n.vec151
  %i.bl = shl i64 %n.vec151, 2
  %i.bm = getelementptr i8, ptr %.082.lcssa, i64 %i.bl
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph149
  %index153 = phi i64 [ 0, %vector.ph149 ], [ %index.next158, %vector.body152 ] ; 3 uses
  %next.gep154 = getelementptr i8, ptr %.076.lcssa, i64 %index153 ; 2 uses
  %i.bn = shl i64 %index153, 2
  %next.gep155 = getelementptr i8, ptr %.082.lcssa, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep155, i64 16
  %wide.load156 = load <4 x i32>, ptr %next.gep155, align 4, !tbaa !7, !alias.scope !300
  %wide.load157 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !7, !alias.scope !300
  %i.bp = trunc <4 x i32> %wide.load156 to <4 x i8>
  %i.bq = trunc <4 x i32> %wide.load157 to <4 x i8>
  %i.br = getelementptr i8, ptr %next.gep154, i64 4
  store <4 x i8> %i.bp, ptr %next.gep154, align 1, !tbaa !205, !alias.scope !303, !noalias !300
  store <4 x i8> %i.bq, ptr %i.br, align 1, !tbaa !205, !alias.scope !303, !noalias !300
  %index.next158 = add nuw i64 %index153, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next158, %n.vec151
  br i1 %i.bs, label %middle.block159, label %vector.body152, !llvm.loop !305

middle.block159:                                  ; preds = %vector.body152
  %cmp.n160 = icmp eq i64 %i.bb, %n.vec151
  br i1 %cmp.n160, label %.loopexit, label %.lr.ph106.preheader163

.lr.ph106.preheader163:                           ; preds = %vector.memcheck, %.lr.ph106.preheader, %middle.block159
  %.177105.ph = phi ptr [ %.076.lcssa, %vector.memcheck ], [ %.076.lcssa, %.lr.ph106.preheader ], [ %i.bk, %middle.block159 ]
  %.183104.ph = phi ptr [ %.082.lcssa, %vector.memcheck ], [ %.082.lcssa, %.lr.ph106.preheader ], [ %i.bm, %middle.block159 ]
  br label %.lr.ph106

.lr.ph101:                                        ; preds = %bb.m, %.lr.ph101
  %.076100 = phi ptr [ %i.ci, %.lr.ph101 ], [ %i.at, %bb.m ] ; 5 uses
  %.08299 = phi ptr [ %i.ch, %.lr.ph101 ], [ %1, %bb.m ] ; 5 uses
  %i.bt = load i32, ptr %.08299, align 4, !tbaa !7
  %i.bu = trunc i32 %i.bt to i8
  store i8 %i.bu, ptr %.076100, align 1, !tbaa !205
  %i.bv = getelementptr i8, ptr %.08299, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr i8, ptr %.076100, i64 1
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !205
  %i.bz = getelementptr i8, ptr %.08299, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = getelementptr i8, ptr %.076100, i64 2
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !205
  %i.cd = getelementptr i8, ptr %.08299, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = getelementptr i8, ptr %.076100, i64 3
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !205
  %i.ch = getelementptr i8, ptr %.08299, i64 16   ; 3 uses
  %i.ci = getelementptr i8, ptr %.076100, i64 4   ; 2 uses
  %i.cj = icmp ult ptr %i.ch, %i.g
  br i1 %i.cj, label %.lr.ph101, label %.preheader, !llvm.loop !306

.lr.ph106:                                        ; preds = %.lr.ph106.preheader163, %.lr.ph106
  %.177105 = phi ptr [ %i.cn, %.lr.ph106 ], [ %.177105.ph, %.lr.ph106.preheader163 ] ; 2 uses
  %.183104 = phi ptr [ %i.ck, %.lr.ph106 ], [ %.183104.ph, %.lr.ph106.preheader163 ] ; 2 uses
  %i.ck = getelementptr i8, ptr %.183104, i64 4   ; 2 uses
  %i.cl = load i32, ptr %.183104, align 4, !tbaa !7
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = getelementptr i8, ptr %.177105, i64 1
  store i8 %i.cm, ptr %.177105, align 1, !tbaa !205
  %i.co = icmp ult ptr %i.ck, %i.d
  br i1 %i.co, label %.lr.ph106, label %.loopexit, !llvm.loop !307

bb.n:                                             ; preds = %.critedge
  br i1 %i.h, label %.lr.ph, label %.preheader89

.preheader89:                                     ; preds = %.lr.ph, %bb.n
  %.080.lcssa = phi ptr [ %i.at, %bb.n ], [ %i.dl, %.lr.ph ] ; 3 uses
  %.078.lcssa = phi ptr [ %1, %bb.n ], [ %i.dk, %.lr.ph ] ; 5 uses
  %i.cp = icmp ult ptr %.078.lcssa, %i.d
  br i1 %i.cp, label %.lr.ph98.preheader, label %.loopexit

.lr.ph98.preheader:                               ; preds = %.preheader89
  %6 = ptrtoaddr ptr %1 to i64
  %i.cq = add i64 %.idx88, %6
  %7 = ptrtoaddr ptr %.078.lcssa to i64           ; 2 uses
  %i.cr = add i64 %7, 4
  %i.cs = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cr)
  %i.ct = xor i64 %7, -1
  %i.cu = add i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = lshr i64 %i.cu, 2
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cu, 28
  br i1 %min.iters.check, label %.lr.ph98.preheader165, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph98.preheader
  %n.vec = and i64 %i.cw, 9223372036854775800     ; 4 uses
  %i.cx = shl i64 %n.vec, 2
  %i.cy = getelementptr i8, ptr %.078.lcssa, i64 %i.cx
  %i.cz = shl nuw i64 %n.vec, 1
  %i.da = getelementptr i8, ptr %.080.lcssa, i64 %i.cz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.db = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.078.lcssa, i64 %i.db ; 2 uses
  %i.dc = shl i64 %index, 1
  %next.gep142 = getelementptr i8, ptr %.080.lcssa, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load143 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !7
  %i.de = trunc <4 x i32> %wide.load to <4 x i16>
  %i.df = trunc <4 x i32> %wide.load143 to <4 x i16>
  %i.dg = getelementptr i8, ptr %next.gep142, i64 8
  store <4 x i16> %i.de, ptr %next.gep142, align 2, !tbaa !208
  store <4 x i16> %i.df, ptr %i.dg, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph98.preheader165

.lr.ph98.preheader165:                            ; preds = %.lr.ph98.preheader, %middle.block
  %.17997.ph = phi ptr [ %.078.lcssa, %.lr.ph98.preheader ], [ %i.cy, %middle.block ]
  %.18196.ph = phi ptr [ %.080.lcssa, %.lr.ph98.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph98

.lr.ph:                                           ; preds = %bb.n, %.lr.ph
  %.07894 = phi ptr [ %i.dk, %.lr.ph ], [ %1, %bb.n ] ; 2 uses
  %.08093 = phi ptr [ %i.dl, %.lr.ph ], [ %i.at, %bb.n ] ; 2 uses
  %i.di = load <4 x i32>, ptr %.07894, align 4, !tbaa !7
  %i.dj = trunc <4 x i32> %i.di to <4 x i16>
  store <4 x i16> %i.dj, ptr %.08093, align 2, !tbaa !208
  %i.dk = getelementptr i8, ptr %.07894, i64 16   ; 3 uses
  %i.dl = getelementptr i8, ptr %.08093, i64 8    ; 2 uses
  %i.dm = icmp ult ptr %i.dk, %i.g
  br i1 %i.dm, label %.lr.ph, label %.preheader89, !llvm.loop !309

.lr.ph98:                                         ; preds = %.lr.ph98.preheader165, %.lr.ph98
  %.17997 = phi ptr [ %i.dn, %.lr.ph98 ], [ %.17997.ph, %.lr.ph98.preheader165 ] ; 2 uses
  %.18196 = phi ptr [ %i.dq, %.lr.ph98 ], [ %.18196.ph, %.lr.ph98.preheader165 ] ; 2 uses
  %i.dn = getelementptr i8, ptr %.17997, i64 4    ; 2 uses
  %i.do = load i32, ptr %.17997, align 4, !tbaa !7
  %i.dp = trunc i32 %i.do to i16
  %i.dq = getelementptr i8, ptr %.18196, i64 2
  store i16 %i.dp, ptr %.18196, align 2, !tbaa !208
  %i.dr = icmp ult ptr %i.dn, %i.d
  br i1 %i.dr, label %.lr.ph98, label %.loopexit, !llvm.loop !310

bb.o:                                             ; preds = %.critedge
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 4 %1, i64 %.idx88, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph98, %.lr.ph106, %middle.block, %middle.block159, %.preheader89, %.preheader, %bb.o
  %i.ds = load i64, ptr %i.aq, align 8, !tbaa !279
  %i.dt = add i64 %i.ds, %2
  store i64 %i.dt, ptr %i.aq, align 8, !tbaa !279
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
  %2 = ptrtoaddr ptr %0 to i64
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
  %.068.lcssa = phi ptr [ %0, %_PyUnicode_DATA.exit ], [ %i.co, %.lr.ph106 ] ; 9 uses
  %.063.lcssa = phi ptr [ %.0.i76, %_PyUnicode_DATA.exit ], [ %i.cp, %.lr.ph106 ] ; 6 uses
  %.068.lcssa154 = ptrtoaddr ptr %.068.lcssa to i64 ; 2 uses
  %i.bb = icmp ult ptr %.068.lcssa, %i.w
  br i1 %i.bb, label %.lr.ph111.preheader, label %unicode_char.exit

.lr.ph111.preheader:                              ; preds = %.preheader
  %3 = ptrtoaddr ptr %0 to i64
  %i.bc = add i64 %.idx93, %3
  %4 = ptrtoaddr ptr %.068.lcssa to i64           ; 2 uses
  %i.bd = add i64 %4, 4
  %i.be = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.bd)
  %i.bf = xor i64 %4, -1
  %i.bg = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check157 = icmp ult i64 %i.bg, 156
  br i1 %min.iters.check157, label %.lr.ph111.preheader172, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph111.preheader
  %i.bj = add i64 %.idx93, %2
  %i.bk = add i64 %.068.lcssa154, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bk)
  %i.bl = xor i64 %.068.lcssa154, -1
  %i.bm = add i64 %umax, %i.bl                    ; 2 uses
  %i.bn = lshr i64 %i.bm, 2
  %i.bo = getelementptr i8, ptr %.063.lcssa, i64 %i.bn
  %scevgep = getelementptr i8, ptr %i.bo, i64 1
  %i.bp = and i64 %i.bm, -4
  %i.bq = getelementptr i8, ptr %.068.lcssa, i64 %i.bp
  %scevgep155 = getelementptr i8, ptr %i.bq, i64 4
  %bound0 = icmp ult ptr %.063.lcssa, %scevgep155
  %bound1 = icmp ult ptr %.068.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph111.preheader172, label %vector.ph158

vector.ph158:                                     ; preds = %vector.memcheck
  %n.vec160 = and i64 %i.bi, 9223372036854775800  ; 4 uses
  %i.br = getelementptr i8, ptr %.063.lcssa, i64 %n.vec160
  %i.bs = shl i64 %n.vec160, 2
  %i.bt = getelementptr i8, ptr %.068.lcssa, i64 %i.bs
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph158
  %index162 = phi i64 [ 0, %vector.ph158 ], [ %index.next167, %vector.body161 ] ; 3 uses
  %next.gep163 = getelementptr i8, ptr %.063.lcssa, i64 %index162 ; 2 uses
  %i.bu = shl i64 %index162, 2
  %next.gep164 = getelementptr i8, ptr %.068.lcssa, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep164, i64 16
  %wide.load165 = load <4 x i32>, ptr %next.gep164, align 4, !tbaa !7, !alias.scope !324
  %wide.load166 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !7, !alias.scope !324
  %i.bw = trunc <4 x i32> %wide.load165 to <4 x i8>
  %i.bx = trunc <4 x i32> %wide.load166 to <4 x i8>
  %i.by = getelementptr i8, ptr %next.gep163, i64 4
  store <4 x i8> %i.bw, ptr %next.gep163, align 1, !tbaa !205, !alias.scope !327, !noalias !324
  store <4 x i8> %i.bx, ptr %i.by, align 1, !tbaa !205, !alias.scope !327, !noalias !324
  %index.next167 = add nuw i64 %index162, 8       ; 2 uses
  %i.bz = icmp eq i64 %index.next167, %n.vec160
  br i1 %i.bz, label %middle.block168, label %vector.body161, !llvm.loop !329

middle.block168:                                  ; preds = %vector.body161
  %cmp.n169 = icmp eq i64 %i.bi, %n.vec160
  br i1 %cmp.n169, label %unicode_char.exit, label %.lr.ph111.preheader172

.lr.ph111.preheader172:                           ; preds = %vector.memcheck, %.lr.ph111.preheader, %middle.block168
  %.1110.ph = phi ptr [ %.063.lcssa, %vector.memcheck ], [ %.063.lcssa, %.lr.ph111.preheader ], [ %i.br, %middle.block168 ]
  %.169109.ph = phi ptr [ %.068.lcssa, %vector.memcheck ], [ %.068.lcssa, %.lr.ph111.preheader ], [ %i.bt, %middle.block168 ]
  br label %.lr.ph111

.lr.ph106:                                        ; preds = %_PyUnicode_DATA.exit, %.lr.ph106
  %.063105 = phi ptr [ %i.cp, %.lr.ph106 ], [ %.0.i76, %_PyUnicode_DATA.exit ] ; 5 uses
  %.068104 = phi ptr [ %i.co, %.lr.ph106 ], [ %0, %_PyUnicode_DATA.exit ] ; 5 uses
  %i.ca = load i32, ptr %.068104, align 4, !tbaa !7
  %i.cb = trunc i32 %i.ca to i8
  store i8 %i.cb, ptr %.063105, align 1, !tbaa !205
  %i.cc = getelementptr i8, ptr %.068104, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr i8, ptr %.063105, i64 1
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !205
  %i.cg = getelementptr i8, ptr %.068104, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = getelementptr i8, ptr %.063105, i64 2
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !205
  %i.ck = getelementptr i8, ptr %.068104, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !7
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = getelementptr i8, ptr %.063105, i64 3
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !205
  %i.co = getelementptr i8, ptr %.068104, i64 16  ; 3 uses
  %i.cp = getelementptr i8, ptr %.063105, i64 4   ; 2 uses
  %i.cq = icmp ult ptr %i.co, %i.z
  br i1 %i.cq, label %.lr.ph106, label %.preheader, !llvm.loop !330

.lr.ph111:                                        ; preds = %.lr.ph111.preheader172, %.lr.ph111
  %.1110 = phi ptr [ %i.cu, %.lr.ph111 ], [ %.1110.ph, %.lr.ph111.preheader172 ] ; 2 uses
  %.169109 = phi ptr [ %i.cr, %.lr.ph111 ], [ %.169109.ph, %.lr.ph111.preheader172 ] ; 2 uses
  %i.cr = getelementptr i8, ptr %.169109, i64 4   ; 2 uses
  %i.cs = load i32, ptr %.169109, align 4, !tbaa !7
  %i.ct = trunc i32 %i.cs to i8
  %i.cu = getelementptr i8, ptr %.1110, i64 1
  store i8 %i.ct, ptr %.1110, align 1, !tbaa !205
  %i.cv = icmp ult ptr %i.cr, %i.w
  br i1 %i.cv, label %.lr.ph111, label %unicode_char.exit, !llvm.loop !331

bb.y:                                             ; preds = %bb.u
  %i.cw = icmp ult i32 %.2.i, 65536
  %i.cx = getelementptr i8, ptr %i.av, i64 32
  %.val.i77 = load i32, ptr %i.cx, align 8        ; 3 uses
  %i.cy = and i32 %.val.i77, 32
  %.not.i78 = icmp eq i32 %i.cy, 0                ; 2 uses
  br i1 %i.cw, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %.not.i78, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = and i32 %.val.i77, 64
  %.not.i.i79 = icmp eq i32 %i.cz, 0
  %.0.v.i.i80 = select i1 %.not.i.i79, i64 56, i64 40
  %.0.i.i81 = getelementptr i8, ptr %i.av, i64 %.0.v.i.i80
  br label %_PyUnicode_DATA.exit84

bb.ab:                                            ; preds = %bb.z
  %i.da = getelementptr i8, ptr %i.av, i64 56
  %.val4.i83 = load ptr, ptr %i.da, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit84

_PyUnicode_DATA.exit84:                           ; preds = %bb.aa, %bb.ab
  %.0.i82 = phi ptr [ %.0.i.i81, %bb.aa ], [ %.val4.i83, %bb.ab ] ; 2 uses
  br i1 %i.aa, label %.lr.ph, label %.preheader94

.preheader94:                                     ; preds = %.lr.ph, %_PyUnicode_DATA.exit84
  %.066.lcssa = phi ptr [ %.0.i82, %_PyUnicode_DATA.exit84 ], [ %i.dx, %.lr.ph ] ; 3 uses
  %.064.lcssa = phi ptr [ %0, %_PyUnicode_DATA.exit84 ], [ %i.dw, %.lr.ph ] ; 5 uses
  %i.db = icmp ult ptr %.064.lcssa, %i.w
  br i1 %i.db, label %.lr.ph103.preheader, label %unicode_char.exit

.lr.ph103.preheader:                              ; preds = %.preheader94
  %5 = ptrtoaddr ptr %0 to i64
  %i.dc = add i64 %.idx93, %5
  %6 = ptrtoaddr ptr %.064.lcssa to i64           ; 2 uses
  %i.dd = add i64 %6, 4
  %i.de = tail call i64 @llvm.umax.i64(i64 %i.dc, i64 %i.dd)
  %i.df = xor i64 %6, -1
  %i.dg = add i64 %i.de, %i.df                    ; 2 uses
  %i.dh = lshr i64 %i.dg, 2
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dg, 28
  br i1 %min.iters.check, label %.lr.ph103.preheader174, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph103.preheader
  %n.vec = and i64 %i.di, 9223372036854775800     ; 4 uses
  %i.dj = shl i64 %n.vec, 2
  %i.dk = getelementptr i8, ptr %.064.lcssa, i64 %i.dj
  %i.dl = shl nuw i64 %n.vec, 1
  %i.dm = getelementptr i8, ptr %.066.lcssa, i64 %i.dl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.064.lcssa, i64 %i.dn ; 2 uses
  %i.do = shl i64 %index, 1
  %next.gep151 = getelementptr i8, ptr %.066.lcssa, i64 %i.do ; 2 uses
  %i.dp = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load152 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !7
  %i.dq = trunc <4 x i32> %wide.load to <4 x i16>
  %i.dr = trunc <4 x i32> %wide.load152 to <4 x i16>
  %i.ds = getelementptr i8, ptr %next.gep151, i64 8
  store <4 x i16> %i.dq, ptr %next.gep151, align 2, !tbaa !208
  store <4 x i16> %i.dr, ptr %i.ds, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !332

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %unicode_char.exit, label %.lr.ph103.preheader174

.lr.ph103.preheader174:                           ; preds = %.lr.ph103.preheader, %middle.block
  %.165102.ph = phi ptr [ %.064.lcssa, %.lr.ph103.preheader ], [ %i.dk, %middle.block ]
  %.167101.ph = phi ptr [ %.066.lcssa, %.lr.ph103.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph103

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit84, %.lr.ph
  %.06499 = phi ptr [ %i.dw, %.lr.ph ], [ %0, %_PyUnicode_DATA.exit84 ] ; 2 uses
  %.06698 = phi ptr [ %i.dx, %.lr.ph ], [ %.0.i82, %_PyUnicode_DATA.exit84 ] ; 2 uses
  %i.du = load <4 x i32>, ptr %.06499, align 4, !tbaa !7
  %i.dv = trunc <4 x i32> %i.du to <4 x i16>
  store <4 x i16> %i.dv, ptr %.06698, align 2, !tbaa !208
  %i.dw = getelementptr i8, ptr %.06499, i64 16   ; 3 uses
  %i.dx = getelementptr i8, ptr %.06698, i64 8    ; 2 uses
  %i.dy = icmp ult ptr %i.dw, %i.z
  br i1 %i.dy, label %.lr.ph, label %.preheader94, !llvm.loop !333

.lr.ph103:                                        ; preds = %.lr.ph103.preheader174, %.lr.ph103
  %.165102 = phi ptr [ %i.dz, %.lr.ph103 ], [ %.165102.ph, %.lr.ph103.preheader174 ] ; 2 uses
  %.167101 = phi ptr [ %i.ec, %.lr.ph103 ], [ %.167101.ph, %.lr.ph103.preheader174 ] ; 2 uses
  %i.dz = getelementptr i8, ptr %.165102, i64 4   ; 2 uses
  %i.ea = load i32, ptr %.165102, align 4, !tbaa !7
  %i.eb = trunc i32 %i.ea to i16
  %i.ec = getelementptr i8, ptr %.167101, i64 2
  store i16 %i.eb, ptr %.167101, align 2, !tbaa !208
  %i.ed = icmp ult ptr %i.dz, %i.w
  br i1 %i.ed, label %.lr.ph103, label %unicode_char.exit, !llvm.loop !334

bb.ac:                                            ; preds = %bb.y
  br i1 %.not.i78, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ee = and i32 %.val.i77, 64
  %.not.i.i87 = icmp eq i32 %i.ee, 0
  %.0.v.i.i88 = select i1 %.not.i.i87, i64 56, i64 40
  %.0.i.i89 = getelementptr i8, ptr %i.av, i64 %.0.v.i.i88
  br label %_PyUnicode_DATA.exit92

bb.ae:                                            ; preds = %bb.ac
  %i.ef = getelementptr i8, ptr %i.av, i64 56
  %.val4.i91 = load ptr, ptr %i.ef, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit92

_PyUnicode_DATA.exit92:                           ; preds = %bb.ad, %bb.ae
  %.0.i90 = phi ptr [ %.0.i.i89, %bb.ad ], [ %.val4.i91, %bb.ae ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0.i90, ptr align 4 %0, i64 %.idx93, i1 false)
  br label %unicode_char.exit

unicode_char.exit:                                ; preds = %.lr.ph103, %.lr.ph111, %middle.block, %middle.block168, %.preheader94, %.preheader, %_PyUnicode_DATA.exit19.i, %_PyUnicode_DATA.exit.i, %bb.f, %bb.e, %bb.d, %bb.a, %_PyUnicode_DATA.exit92, %ucs4lib_find_max_char.exit
  %.0 = phi ptr [ %i.av, %_PyUnicode_DATA.exit92 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ null, %ucs4lib_find_max_char.exit ], [ %i.av, %.preheader ], [ %i.i, %bb.e ], [ %i.j, %_PyUnicode_DATA.exit.i ], [ null, %bb.f ], [ %i.j, %_PyUnicode_DATA.exit19.i ], [ %i.f, %bb.d ], [ %i.av, %.preheader94 ], [ %i.av, %middle.block168 ], [ %i.av, %middle.block ], [ %i.av, %.lr.ph111 ], [ %i.av, %.lr.ph103 ]
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
  %.029.lcssa.i = phi i32 [ -128, %bb.l ], [ -65536, %.loopexit.i.jt4294901760 ], [ -256, %.loopexit.i.jt4294967040 ], [ %.0294982.i, %.loopexit.i ]
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
  %min.iters.check134 = icmp ult i64 %i.y, 20
  br i1 %min.iters.check134, label %.lr.ph106.preheader149, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph106.preheader
  %i.z = sub i64 %i.x, %.083.lcssa112.pre-phi
  %i.aa = shl i64 %i.z, 2
  %scevgep132 = getelementptr i8, ptr %.081.lcssa, i64 %i.aa
  %bound0 = icmp ult ptr %.081.lcssa, %scevgep
  %bound1 = icmp ult ptr %.083.lcssa, %scevgep132
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph106.preheader149, label %vector.ph135

vector.ph135:                                     ; preds = %vector.memcheck
  %n.vec137 = and i64 %i.y, -8                    ; 4 uses
  %i.ab = shl i64 %n.vec137, 2
  %i.ac = getelementptr i8, ptr %.081.lcssa, i64 %i.ab
  %i.ad = getelementptr i8, ptr %.083.lcssa, i64 %n.vec137
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph135
  %index139 = phi i64 [ 0, %vector.ph135 ], [ %index.next144, %vector.body138 ] ; 3 uses
  %i.ae = shl i64 %index139, 2
  %next.gep140 = getelementptr i8, ptr %.081.lcssa, i64 %i.ae ; 2 uses
  %next.gep141 = getelementptr i8, ptr %.083.lcssa, i64 %index139 ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep141, i64 4
  %wide.load142 = load <4 x i8>, ptr %next.gep141, align 1, !tbaa !205, !alias.scope !335
  %wide.load143 = load <4 x i8>, ptr %i.af, align 1, !tbaa !205, !alias.scope !335
  %i.ag = zext <4 x i8> %wide.load142 to <4 x i32>
  %i.ah = zext <4 x i8> %wide.load143 to <4 x i32>
  %i.ai = getelementptr i8, ptr %next.gep140, i64 16
  store <4 x i32> %i.ag, ptr %next.gep140, align 4, !tbaa !7, !alias.scope !338, !noalias !335
  store <4 x i32> %i.ah, ptr %i.ai, align 4, !tbaa !7, !alias.scope !338, !noalias !335
  %index.next144 = add nuw i64 %index139, 8       ; 2 uses
  %i.aj = icmp eq i64 %index.next144, %n.vec137
  br i1 %i.aj, label %middle.block145, label %vector.body138, !llvm.loop !340

middle.block145:                                  ; preds = %vector.body138
  %cmp.n146 = icmp eq i64 %i.y, %n.vec137
  br i1 %cmp.n146, label %.loopexit, label %.lr.ph106.preheader149

.lr.ph106.preheader149:                           ; preds = %vector.memcheck, %.lr.ph106.preheader, %middle.block145
  %.182105.ph = phi ptr [ %.081.lcssa, %vector.memcheck ], [ %.081.lcssa, %.lr.ph106.preheader ], [ %i.ac, %middle.block145 ]
  %.184104.ph = phi ptr [ %.083.lcssa, %vector.memcheck ], [ %.083.lcssa, %.lr.ph106.preheader ], [ %i.ad, %middle.block145 ]
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

.lr.ph106:                                        ; preds = %.lr.ph106.preheader149, %.lr.ph106
  %.182105 = phi ptr [ %i.be, %.lr.ph106 ], [ %.182105.ph, %.lr.ph106.preheader149 ] ; 2 uses
  %.184104 = phi ptr [ %i.bb, %.lr.ph106 ], [ %.184104.ph, %.lr.ph106.preheader149 ] ; 2 uses
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
  %.079.lcssa = phi ptr [ %.076, %bb.k ], [ %i.cg, %.lr.ph ] ; 3 uses
  %.078.lcssa = phi ptr [ %.0.i, %bb.k ], [ %i.cf, %.lr.ph ] ; 5 uses
  %i.bk = icmp ult ptr %.078.lcssa, %i.bf
  br i1 %i.bk, label %.lr.ph98.preheader, label %.loopexit

.lr.ph98.preheader:                               ; preds = %.preheader91
  %i.bl = add i64 %.idx, %.0.i111
  %4 = ptrtoaddr ptr %.078.lcssa to i64           ; 2 uses
  %i.bm = add i64 %4, 2
  %i.bn = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 %i.bm)
  %i.bo = xor i64 %4, -1
  %i.bp = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = lshr i64 %i.bp, 1
  %i.br = add nuw i64 %i.bq, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bp, 14
  br i1 %min.iters.check, label %.lr.ph98.preheader151, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph98.preheader
  %n.vec = and i64 %i.br, -8                      ; 4 uses
  %i.bs = shl i64 %n.vec, 1
  %i.bt = getelementptr i8, ptr %.078.lcssa, i64 %i.bs
  %i.bu = shl i64 %n.vec, 2
  %i.bv = getelementptr i8, ptr %.079.lcssa, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bw = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.078.lcssa, i64 %i.bw ; 2 uses
  %i.bx = shl i64 %index, 2
  %next.gep129 = getelementptr i8, ptr %.079.lcssa, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !208
  %wide.load130 = load <4 x i16>, ptr %i.by, align 2, !tbaa !208
  %i.bz = zext <4 x i16> %wide.load to <4 x i32>
  %i.ca = zext <4 x i16> %wide.load130 to <4 x i32>
  %i.cb = getelementptr i8, ptr %next.gep129, i64 16
  store <4 x i32> %i.bz, ptr %next.gep129, align 4, !tbaa !7
  store <4 x i32> %i.ca, ptr %i.cb, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph98.preheader151

.lr.ph98.preheader151:                            ; preds = %.lr.ph98.preheader, %middle.block
  %.197.ph = phi ptr [ %.078.lcssa, %.lr.ph98.preheader ], [ %i.bt, %middle.block ]
  %.18096.ph = phi ptr [ %.079.lcssa, %.lr.ph98.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph98

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.07894 = phi ptr [ %i.cf, %.lr.ph ], [ %.0.i, %bb.k ] ; 2 uses
  %.07993 = phi ptr [ %i.cg, %.lr.ph ], [ %.076, %bb.k ] ; 2 uses
  %i.cd = load <4 x i16>, ptr %.07894, align 2, !tbaa !208
  %i.ce = zext <4 x i16> %i.cd to <4 x i32>
  store <4 x i32> %i.ce, ptr %.07993, align 4, !tbaa !7
  %i.cf = getelementptr i8, ptr %.07894, i64 8    ; 3 uses
  %i.cg = getelementptr i8, ptr %.07993, i64 16   ; 2 uses
  %i.ch = icmp ult ptr %i.cf, %i.bi
  br i1 %i.ch, label %.lr.ph, label %.preheader91, !llvm.loop !344

.lr.ph98:                                         ; preds = %.lr.ph98.preheader151, %.lr.ph98
  %.197 = phi ptr [ %i.ci, %.lr.ph98 ], [ %.197.ph, %.lr.ph98.preheader151 ] ; 2 uses
  %.18096 = phi ptr [ %i.cl, %.lr.ph98 ], [ %.18096.ph, %.lr.ph98.preheader151 ] ; 2 uses
  %i.ci = getelementptr i8, ptr %.197, i64 2      ; 2 uses
  %i.cj = load i16, ptr %.197, align 2, !tbaa !208
  %i.ck = zext i16 %i.cj to i32
  %i.cl = getelementptr i8, ptr %.18096, i64 4
  store i32 %i.ck, ptr %.18096, align 4, !tbaa !7
  %i.cm = icmp ult ptr %i.ci, %i.bf
  br i1 %i.cm, label %.lr.ph98, label %.loopexit, !llvm.loop !345

bb.l:                                             ; preds = %bb.i
  %i.cn = icmp eq i32 %i.d, 4
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = shl i64 %.val, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.076, ptr align 1 %.0.i, i64 %i.co, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph98, %.lr.ph106, %middle.block, %middle.block145, %.preheader91, %.preheader, %bb.l
  br i1 %i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.cp = getelementptr [4 x i8], ptr %.076, i64 %.val
  store i32 0, ptr %i.cp, align 4, !tbaa !7
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
  %i.o = getelementptr i8, ptr %0, i64 16
  %.val135 = load i64, ptr %i.o, align 8, !tbaa !207 ; 16 uses
  %i.p = icmp eq i32 %i.k, 4
  br i1 %i.p, label %bb.f, label %.loopexit243

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.q = getelementptr [4 x i8], ptr %.0.i, i64 %.val135 ; 2 uses
  %i.r = icmp ult ptr %.0.i, %i.q
  br i1 %i.r, label %.lr.ph.preheader, label %.loopexit243

.lr.ph.preheader:                                 ; preds = %bb.f
  %3 = ptrtoaddr ptr %.0.i to i64                 ; 3 uses
  %i.s = shl i64 %.val135, 2
  %i.t = add i64 %i.s, %3
  %i.u = add i64 %3, 4
  %i.v = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.u)
  %i.w = xor i64 %3, -1
  %i.x = add i64 %i.v, %i.w                       ; 2 uses
  %i.y = lshr i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 12
  br i1 %min.iters.check, label %.lr.ph.preheader656, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.z, 9223372036854775804      ; 3 uses
  %i.aa = shl i64 %n.vec, 2
  %i.ab = getelementptr i8, ptr %.0.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi464 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ac = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.i, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load465 = load <2 x i32>, ptr %i.ad, align 4, !tbaa !7
  %i.ae = icmp ugt <2 x i32> %wide.load, splat (i32 65535)
  %i.af = icmp ugt <2 x i32> %wide.load465, splat (i32 65535)
  %i.ag = zext <2 x i1> %i.ae to <2 x i64>
  %i.ah = zext <2 x i1> %i.af to <2 x i64>
  %i.ai = add <2 x i64> %vec.phi, %i.ag           ; 2 uses
  %i.aj = add <2 x i64> %vec.phi464, %i.ah        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !399

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aj, %i.ai
  %i.al = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.loopexit243, label %.lr.ph.preheader656

.lr.ph.preheader656:                              ; preds = %.lr.ph.preheader, %middle.block
  %.086277.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  %.096276.ph = phi ptr [ %.0.i, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader656, %.lr.ph
  %.086277 = phi i64 [ %spec.select, %.lr.ph ], [ %.086277.ph, %.lr.ph.preheader656 ]
  %.096276 = phi ptr [ %i.am, %.lr.ph ], [ %.096276.ph, %.lr.ph.preheader656 ] ; 2 uses
  %i.am = getelementptr i8, ptr %.096276, i64 4   ; 2 uses
  %i.an = load i32, ptr %.096276, align 4, !tbaa !7
  %i.ao = icmp ugt i32 %i.an, 65535
  %i.ap = zext i1 %i.ao to i64
  %spec.select = add i64 %.086277, %i.ap          ; 2 uses
  %i.aq = icmp ult ptr %i.am, %i.q
  br i1 %i.aq, label %.lr.ph, label %.loopexit243, !llvm.loop !400

.loopexit243:                                     ; preds = %.lr.ph, %middle.block, %bb.f, %_PyUnicode_DATA.exit
  %.288 = phi i64 [ 0, %_PyUnicode_DATA.exit ], [ 0, %bb.f ], [ %i.al, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.ar = icmp eq i32 %2, 0                       ; 5 uses
  %.neg235 = select i1 %i.ar, i64 4611686018427387902, i64 4611686018427387903
  %i.as = sub i64 %.neg235, %.288
  %i.at = icmp sgt i64 %.val135, %i.as
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit243
  %i.au = tail call ptr @PyErr_NoMemory() #33
  br label %ucs1lib_utf16_encode.exit

bb.h:                                             ; preds = %.loopexit243
  %i.av = zext i1 %i.ar to i64
  %i.aw = add i64 %.val135, %i.av
  %i.ax = add i64 %i.aw, %.288
  %i.ay = icmp sgt i32 %2, 0                      ; 4 uses
  %i.az = icmp eq i32 %i.k, 1
  %i.ba = shl i64 %i.ax, 1                        ; 2 uses
  br i1 %i.az, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bb = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.ba) #33 ; 12 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %ucs1lib_utf16_encode.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr i8, ptr %i.bb, i64 32     ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr i8, ptr %i.bb, i64 34
  store i16 -257, ptr %i.bd, align 2, !tbaa !208
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0219 = phi ptr [ %i.be, %bb.k ], [ %i.bd, %bb.j ] ; 4 uses
  %i.bf = icmp sgt i64 %.val135, 0
  br i1 %i.bf, label %bb.m, label %ucs1lib_utf16_encode.exit

bb.m:                                             ; preds = %bb.l
  %4 = ptrtoaddr ptr %.0.i to i64                 ; 4 uses
  %i.bg = getelementptr i8, ptr %.0.i, i64 %.val135 ; 2 uses
  %i.bh = and i64 %.val135, 9223372036854775804
  %i.bi = getelementptr i8, ptr %.0.i, i64 %i.bh  ; 3 uses
  %i.bj = icmp ult ptr %.0.i, %i.bi               ; 2 uses
  br i1 %i.ay, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.bj, label %.lr.ph.i, label %.preheader47.i

.preheader47.loopexit.i:                          ; preds = %.lr.ph.i
  %.pre75.i = ptrtoaddr ptr %i.cs to i64
  br label %.preheader47.i

.preheader47.i:                                   ; preds = %.preheader47.loopexit.i, %bb.n
  %.0.lcssa71.pre-phi.i = phi i64 [ %.pre75.i, %.preheader47.loopexit.i ], [ %4, %bb.n ] ; 2 uses
  %.043.lcssa.i = phi ptr [ %i.ct, %.preheader47.loopexit.i ], [ %.0219, %bb.n ] ; 8 uses
  %.0.lcssa.i = phi ptr [ %i.cs, %.preheader47.loopexit.i ], [ %.0.i, %bb.n ] ; 9 uses
  %i.bk = icmp ult ptr %.0.lcssa.i, %i.bg
  br i1 %i.bk, label %iter.check558, label %ucs1lib_utf16_encode.exit

iter.check558:                                    ; preds = %.preheader47.i
  %i.bl = add i64 %.val135, %4                    ; 2 uses
  %i.bm = sub i64 %i.bl, %.0.lcssa71.pre-phi.i    ; 8 uses
  %scevgep.i = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bm ; 2 uses
  %min.iters.check540 = icmp ult i64 %i.bm, 4
  br i1 %min.iters.check540, label %.lr.ph54.i.preheader, label %vector.memcheck534

vector.memcheck534:                               ; preds = %iter.check558
  %i.bn = sub i64 %i.bl, %.0.lcssa71.pre-phi.i
  %i.bo = shl i64 %i.bn, 1
  %scevgep535 = getelementptr i8, ptr %.043.lcssa.i, i64 %i.bo
  %bound0536 = icmp ult ptr %.043.lcssa.i, %scevgep.i
  %bound1537 = icmp ult ptr %.0.lcssa.i, %scevgep535
  %found.conflict538 = and i1 %bound0536, %bound1537
  br i1 %found.conflict538, label %.lr.ph54.i.preheader, label %vector.main.loop.iter.check541

vector.main.loop.iter.check541:                   ; preds = %vector.memcheck534
  %min.iters.check542 = icmp ult i64 %i.bm, 16
  br i1 %min.iters.check542, label %vec.epilog.ph562, label %vector.ph543

vector.ph543:                                     ; preds = %vector.main.loop.iter.check541
  %n.mod.vf544 = and i64 %i.bm, 12
  %n.vec545 = and i64 %i.bm, -16                  ; 5 uses
  %i.bp = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec545
  %i.bq = shl i64 %n.vec545, 1
  %i.br = getelementptr i8, ptr %.043.lcssa.i, i64 %i.bq
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph543
  %index547 = phi i64 [ 0, %vector.ph543 ], [ %index.next552, %vector.body546 ] ; 3 uses
  %next.gep548 = getelementptr i8, ptr %.0.lcssa.i, i64 %index547 ; 2 uses
  %i.bs = shl i64 %index547, 1
  %next.gep549 = getelementptr i8, ptr %.043.lcssa.i, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep548, i64 8
  %wide.load550 = load <8 x i8>, ptr %next.gep548, align 1, !tbaa !205, !alias.scope !401
  %wide.load551 = load <8 x i8>, ptr %i.bt, align 1, !tbaa !205, !alias.scope !401
  %i.bu = zext <8 x i8> %wide.load550 to <8 x i16>
  %i.bv = zext <8 x i8> %wide.load551 to <8 x i16>
  %i.bw = getelementptr i8, ptr %next.gep549, i64 16
  store <8 x i16> %i.bu, ptr %next.gep549, align 2, !tbaa !208, !alias.scope !404, !noalias !401
  store <8 x i16> %i.bv, ptr %i.bw, align 2, !tbaa !208, !alias.scope !404, !noalias !401
  %index.next552 = add nuw i64 %index547, 16      ; 2 uses
  %i.bx = icmp eq i64 %index.next552, %n.vec545
  br i1 %i.bx, label %middle.block553, label %vector.body546, !llvm.loop !406

middle.block553:                                  ; preds = %vector.body546
  %cmp.n554 = icmp eq i64 %i.bm, %n.vec545
  br i1 %cmp.n554, label %ucs1lib_utf16_encode.exit, label %vec.epilog.iter.check560

vec.epilog.iter.check560:                         ; preds = %middle.block553
  %min.epilog.iters.check561 = icmp eq i64 %n.mod.vf544, 0
  br i1 %min.epilog.iters.check561, label %.lr.ph54.i.preheader, label %vec.epilog.ph562, !prof !228

vec.epilog.ph562:                                 ; preds = %vector.main.loop.iter.check541, %vec.epilog.iter.check560
  %vec.epilog.resume.val555 = phi i64 [ %n.vec545, %vec.epilog.iter.check560 ], [ 0, %vector.main.loop.iter.check541 ]
  %n.vec564 = and i64 %i.bm, -4                   ; 4 uses
  %i.by = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec564
  %i.bz = shl i64 %n.vec564, 1
  %i.ca = getelementptr i8, ptr %.043.lcssa.i, i64 %i.bz
  br label %vec.epilog.vector.body565

vec.epilog.vector.body565:                        ; preds = %vec.epilog.vector.body565, %vec.epilog.ph562
  %index566 = phi i64 [ %vec.epilog.resume.val555, %vec.epilog.ph562 ], [ %index.next570, %vec.epilog.vector.body565 ] ; 3 uses
  %next.gep567 = getelementptr i8, ptr %.0.lcssa.i, i64 %index566
  %i.cb = shl i64 %index566, 1
  %next.gep568 = getelementptr i8, ptr %.043.lcssa.i, i64 %i.cb
  %wide.load569 = load <4 x i8>, ptr %next.gep567, align 1, !tbaa !205, !alias.scope !401
  %i.cc = zext <4 x i8> %wide.load569 to <4 x i16>
  store <4 x i16> %i.cc, ptr %next.gep568, align 2, !tbaa !208, !alias.scope !404, !noalias !401
  %index.next570 = add nuw i64 %index566, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next570, %n.vec564
  br i1 %i.cd, label %vec.epilog.middle.block571, label %vec.epilog.vector.body565, !llvm.loop !407

vec.epilog.middle.block571:                       ; preds = %vec.epilog.vector.body565
  %cmp.n572 = icmp eq i64 %i.bm, %n.vec564
  br i1 %cmp.n572, label %ucs1lib_utf16_encode.exit, label %.lr.ph54.i.preheader

.lr.ph54.i.preheader:                             ; preds = %vector.memcheck534, %iter.check558, %vec.epilog.iter.check560, %vec.epilog.middle.block571
  %.153.i.ph = phi ptr [ %.0.lcssa.i, %iter.check558 ], [ %.0.lcssa.i, %vector.memcheck534 ], [ %i.bp, %vec.epilog.iter.check560 ], [ %i.by, %vec.epilog.middle.block571 ]
  %.14452.i.ph = phi ptr [ %.043.lcssa.i, %iter.check558 ], [ %.043.lcssa.i, %vector.memcheck534 ], [ %i.br, %vec.epilog.iter.check560 ], [ %i.ca, %vec.epilog.middle.block571 ]
  br label %.lr.ph54.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.050.i = phi ptr [ %i.cs, %.lr.ph.i ], [ %.0.i, %bb.n ] ; 5 uses
  %.04349.i = phi ptr [ %i.ct, %.lr.ph.i ], [ %.0219, %bb.n ] ; 5 uses
  %i.ce = load i8, ptr %.050.i, align 1, !tbaa !205
  %i.cf = zext i8 %i.ce to i16
  store i16 %i.cf, ptr %.04349.i, align 2, !tbaa !208
  %i.cg = getelementptr i8, ptr %.050.i, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !205
  %i.ci = zext i8 %i.ch to i16
  %i.cj = getelementptr i8, ptr %.04349.i, i64 2
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !208
  %i.ck = getelementptr i8, ptr %.050.i, i64 2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !205
  %i.cm = zext i8 %i.cl to i16
  %i.cn = getelementptr i8, ptr %.04349.i, i64 4
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !208
  %i.co = getelementptr i8, ptr %.050.i, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !205
  %i.cq = zext i8 %i.cp to i16
  %i.cr = getelementptr i8, ptr %.04349.i, i64 6
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !208
  %i.cs = getelementptr i8, ptr %.050.i, i64 4    ; 4 uses
  %i.ct = getelementptr i8, ptr %.04349.i, i64 8  ; 2 uses
  %i.cu = icmp ult ptr %i.cs, %i.bi
  br i1 %i.cu, label %.lr.ph.i, label %.preheader47.loopexit.i, !llvm.loop !408

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader, %.lr.ph54.i
  %.153.i = phi ptr [ %i.cv, %.lr.ph54.i ], [ %.153.i.ph, %.lr.ph54.i.preheader ] ; 2 uses
  %.14452.i = phi ptr [ %i.cy, %.lr.ph54.i ], [ %.14452.i.ph, %.lr.ph54.i.preheader ] ; 2 uses
  %i.cv = getelementptr i8, ptr %.153.i, i64 1    ; 2 uses
  %i.cw = load i8, ptr %.153.i, align 1, !tbaa !205
  %i.cx = zext i8 %i.cw to i16
  %i.cy = getelementptr i8, ptr %.14452.i, i64 2
  store i16 %i.cx, ptr %.14452.i, align 2, !tbaa !208
  %exitcond.not.i = icmp eq ptr %i.cv, %scevgep.i
  br i1 %exitcond.not.i, label %ucs1lib_utf16_encode.exit, label %.lr.ph54.i, !llvm.loop !409

bb.o:                                             ; preds = %bb.m
  br i1 %i.bj, label %.lr.ph58.i, label %.preheader.i

.preheader.loopexit.i:                            ; preds = %.lr.ph58.i
  %.pre.i = ptrtoaddr ptr %i.eo to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.o
  %.2.lcssa72.pre-phi.i = phi i64 [ %.pre.i, %.preheader.loopexit.i ], [ %4, %bb.o ] ; 2 uses
  %.245.lcssa.i = phi ptr [ %i.ep, %.preheader.loopexit.i ], [ %.0219, %bb.o ] ; 8 uses
  %.2.lcssa.i = phi ptr [ %i.eo, %.preheader.loopexit.i ], [ %.0.i, %bb.o ] ; 9 uses
  %i.cz = icmp ult ptr %.2.lcssa.i, %i.bg
  br i1 %i.cz, label %iter.check599, label %ucs1lib_utf16_encode.exit

iter.check599:                                    ; preds = %.preheader.i
  %i.da = add i64 %.val135, %4                    ; 2 uses
  %i.db = sub i64 %i.da, %.2.lcssa72.pre-phi.i    ; 8 uses
  %scevgep73.i = getelementptr i8, ptr %.2.lcssa.i, i64 %i.db ; 2 uses
  %min.iters.check581 = icmp ult i64 %i.db, 4
  br i1 %min.iters.check581, label %.lr.ph63.i.preheader, label %vector.memcheck575

vector.memcheck575:                               ; preds = %iter.check599
  %i.dc = sub i64 %i.da, %.2.lcssa72.pre-phi.i
  %i.dd = shl i64 %i.dc, 1
  %scevgep576 = getelementptr i8, ptr %.245.lcssa.i, i64 %i.dd
  %bound0577 = icmp ult ptr %.245.lcssa.i, %scevgep73.i
  %bound1578 = icmp ult ptr %.2.lcssa.i, %scevgep576
  %found.conflict579 = and i1 %bound0577, %bound1578
  br i1 %found.conflict579, label %.lr.ph63.i.preheader, label %vector.main.loop.iter.check582

vector.main.loop.iter.check582:                   ; preds = %vector.memcheck575
  %min.iters.check583 = icmp ult i64 %i.db, 16
  br i1 %min.iters.check583, label %vec.epilog.ph603, label %vector.ph584

vector.ph584:                                     ; preds = %vector.main.loop.iter.check582
  %n.mod.vf585 = and i64 %i.db, 12
  %n.vec586 = and i64 %i.db, -16                  ; 5 uses
  %i.de = getelementptr i8, ptr %.2.lcssa.i, i64 %n.vec586
  %i.df = shl i64 %n.vec586, 1
  %i.dg = getelementptr i8, ptr %.245.lcssa.i, i64 %i.df
  br label %vector.body587

vector.body587:                                   ; preds = %vector.body587, %vector.ph584
  %index588 = phi i64 [ 0, %vector.ph584 ], [ %index.next593, %vector.body587 ] ; 3 uses
  %next.gep589 = getelementptr i8, ptr %.2.lcssa.i, i64 %index588 ; 2 uses
  %i.dh = shl i64 %index588, 1
  %next.gep590 = getelementptr i8, ptr %.245.lcssa.i, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep589, i64 8
  %wide.load591 = load <8 x i8>, ptr %next.gep589, align 1, !tbaa !205, !alias.scope !410
  %wide.load592 = load <8 x i8>, ptr %i.di, align 1, !tbaa !205, !alias.scope !410
  %i.dj = zext <8 x i8> %wide.load591 to <8 x i16>
  %i.dk = zext <8 x i8> %wide.load592 to <8 x i16>
  %i.dl = shl nuw <8 x i16> %i.dj, splat (i16 8)
  %i.dm = shl nuw <8 x i16> %i.dk, splat (i16 8)
  %i.dn = getelementptr i8, ptr %next.gep590, i64 16
  store <8 x i16> %i.dl, ptr %next.gep590, align 2, !tbaa !208, !alias.scope !413, !noalias !410
  store <8 x i16> %i.dm, ptr %i.dn, align 2, !tbaa !208, !alias.scope !413, !noalias !410
  %index.next593 = add nuw i64 %index588, 16      ; 2 uses
  %i.do = icmp eq i64 %index.next593, %n.vec586
  br i1 %i.do, label %middle.block594, label %vector.body587, !llvm.loop !415

middle.block594:                                  ; preds = %vector.body587
  %cmp.n595 = icmp eq i64 %i.db, %n.vec586
  br i1 %cmp.n595, label %ucs1lib_utf16_encode.exit, label %vec.epilog.iter.check601

vec.epilog.iter.check601:                         ; preds = %middle.block594
  %min.epilog.iters.check602 = icmp eq i64 %n.mod.vf585, 0
  br i1 %min.epilog.iters.check602, label %.lr.ph63.i.preheader, label %vec.epilog.ph603, !prof !228

vec.epilog.ph603:                                 ; preds = %vector.main.loop.iter.check582, %vec.epilog.iter.check601
  %vec.epilog.resume.val596 = phi i64 [ %n.vec586, %vec.epilog.iter.check601 ], [ 0, %vector.main.loop.iter.check582 ]
  %n.vec605 = and i64 %i.db, -4                   ; 4 uses
  %i.dp = getelementptr i8, ptr %.2.lcssa.i, i64 %n.vec605
  %i.dq = shl i64 %n.vec605, 1
  %i.dr = getelementptr i8, ptr %.245.lcssa.i, i64 %i.dq
  br label %vec.epilog.vector.body606

vec.epilog.vector.body606:                        ; preds = %vec.epilog.vector.body606, %vec.epilog.ph603
  %index607 = phi i64 [ %vec.epilog.resume.val596, %vec.epilog.ph603 ], [ %index.next611, %vec.epilog.vector.body606 ] ; 3 uses
  %next.gep608 = getelementptr i8, ptr %.2.lcssa.i, i64 %index607
  %i.ds = shl i64 %index607, 1
  %next.gep609 = getelementptr i8, ptr %.245.lcssa.i, i64 %i.ds
  %wide.load610 = load <4 x i8>, ptr %next.gep608, align 1, !tbaa !205, !alias.scope !410
  %i.dt = zext <4 x i8> %wide.load610 to <4 x i16>
  %i.du = shl nuw <4 x i16> %i.dt, splat (i16 8)
  store <4 x i16> %i.du, ptr %next.gep609, align 2, !tbaa !208, !alias.scope !413, !noalias !410
  %index.next611 = add nuw i64 %index607, 4       ; 2 uses
  %i.dv = icmp eq i64 %index.next611, %n.vec605
  br i1 %i.dv, label %vec.epilog.middle.block612, label %vec.epilog.vector.body606, !llvm.loop !416

vec.epilog.middle.block612:                       ; preds = %vec.epilog.vector.body606
  %cmp.n613 = icmp eq i64 %i.db, %n.vec605
  br i1 %cmp.n613, label %ucs1lib_utf16_encode.exit, label %.lr.ph63.i.preheader

.lr.ph63.i.preheader:                             ; preds = %vector.memcheck575, %iter.check599, %vec.epilog.iter.check601, %vec.epilog.middle.block612
  %.362.i.ph = phi ptr [ %.2.lcssa.i, %iter.check599 ], [ %.2.lcssa.i, %vector.memcheck575 ], [ %i.de, %vec.epilog.iter.check601 ], [ %i.dp, %vec.epilog.middle.block612 ]
  %.34661.i.ph = phi ptr [ %.245.lcssa.i, %iter.check599 ], [ %.245.lcssa.i, %vector.memcheck575 ], [ %i.dg, %vec.epilog.iter.check601 ], [ %i.dr, %vec.epilog.middle.block612 ]
  br label %.lr.ph63.i

.lr.ph58.i:                                       ; preds = %bb.o, %.lr.ph58.i
  %.257.i = phi ptr [ %i.eo, %.lr.ph58.i ], [ %.0.i, %bb.o ] ; 5 uses
  %.24556.i = phi ptr [ %i.ep, %.lr.ph58.i ], [ %.0219, %bb.o ] ; 5 uses
  %i.dw = load i8, ptr %.257.i, align 1, !tbaa !205
  %i.dx = zext i8 %i.dw to i16
  %i.dy = shl nuw i16 %i.dx, 8
  store i16 %i.dy, ptr %.24556.i, align 2, !tbaa !208
  %i.dz = getelementptr i8, ptr %.257.i, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !205
  %i.eb = zext i8 %i.ea to i16
  %i.ec = shl nuw i16 %i.eb, 8
  %i.ed = getelementptr i8, ptr %.24556.i, i64 2
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !208
  %i.ee = getelementptr i8, ptr %.257.i, i64 2
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !205
  %i.eg = zext i8 %i.ef to i16
  %i.eh = shl nuw i16 %i.eg, 8
  %i.ei = getelementptr i8, ptr %.24556.i, i64 4
  store i16 %i.eh, ptr %i.ei, align 2, !tbaa !208
  %i.ej = getelementptr i8, ptr %.257.i, i64 3
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !205
  %i.el = zext i8 %i.ek to i16
  %i.em = shl nuw i16 %i.el, 8
  %i.en = getelementptr i8, ptr %.24556.i, i64 6
  store i16 %i.em, ptr %i.en, align 2, !tbaa !208
  %i.eo = getelementptr i8, ptr %.257.i, i64 4    ; 4 uses
  %i.ep = getelementptr i8, ptr %.24556.i, i64 8  ; 2 uses
  %i.eq = icmp ult ptr %i.eo, %i.bi
  br i1 %i.eq, label %.lr.ph58.i, label %.preheader.loopexit.i, !llvm.loop !417

.lr.ph63.i:                                       ; preds = %.lr.ph63.i.preheader, %.lr.ph63.i
  %.362.i = phi ptr [ %i.er, %.lr.ph63.i ], [ %.362.i.ph, %.lr.ph63.i.preheader ] ; 2 uses
  %.34661.i = phi ptr [ %i.ev, %.lr.ph63.i ], [ %.34661.i.ph, %.lr.ph63.i.preheader ] ; 2 uses
  %i.er = getelementptr i8, ptr %.362.i, i64 1    ; 2 uses
  %i.es = load i8, ptr %.362.i, align 1, !tbaa !205
  %i.et = zext i8 %i.es to i16
  %i.eu = shl nuw i16 %i.et, 8
  %i.ev = getelementptr i8, ptr %.34661.i, i64 2
  store i16 %i.eu, ptr %.34661.i, align 2, !tbaa !208
  %exitcond74.not.i = icmp eq ptr %i.er, %scevgep73.i
  br i1 %exitcond74.not.i, label %ucs1lib_utf16_encode.exit, label %.lr.ph63.i, !llvm.loop !418

bb.p:                                             ; preds = %bb.h
  %i.ew = tail call ptr @PyBytesWriter_Create(i64 noundef %i.ba) #33 ; 6 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %ucs1lib_utf16_encode.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ey = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.ew) #33 ; 3 uses
  br i1 %i.ar, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ez = getelementptr i8, ptr %i.ey, i64 2
  store i16 -257, ptr %i.ey, align 2, !tbaa !208
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi ptr [ %i.ez, %bb.r ], [ %i.ey, %bb.q ] ; 2 uses
  %i.fa = icmp eq i64 %.val135, 0
  br i1 %i.fa, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fb = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.ew) #33
  br label %ucs1lib_utf16_encode.exit

bb.u:                                             ; preds = %bb.s
  %i.fc = icmp slt i32 %2, 0
  %.str.82..str.79 = select i1 %i.ar, ptr @.str.82, ptr @.str.79
  %.095 = select i1 %i.fc, ptr @.str.78, ptr %.str.82..str.79 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr null, ptr %i.a, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr null, ptr %i.b, align 8, !tbaa !194
  %i.fd = icmp sgt i64 %.val135, 0
  br i1 %i.fd, label %.lr.ph280, label %Py_XDECREF.exit199

.lr.ph280:                                        ; preds = %bb.u
  %i.fe = icmp eq i32 %i.k, 2
  %i.ff = getelementptr [4 x i8], ptr %.0.i, i64 %.val135 ; 4 uses
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = getelementptr [2 x i8], ptr %.0.i, i64 %.val135 ; 5 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph280, %raise_encode_exception.exit
  %.091279 = phi i64 [ 0, %.lr.ph280 ], [ %i.kc, %raise_encode_exception.exit ] ; 4 uses
  %.1216278 = phi ptr [ %.0, %.lr.ph280 ], [ %.4, %raise_encode_exception.exit ] ; 8 uses
  %i.fj = sub i64 %.val135, %.091279              ; 11 uses
  br i1 %i.fe, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.fk = getelementptr [2 x i8], ptr %.0.i, i64 %.091279 ; 6 uses
  %i.fl = and i64 %i.fj, -4
  %i.fm = getelementptr [2 x i8], ptr %i.fk, i64 %i.fl ; 3 uses
  %i.fn = icmp ult ptr %i.fk, %i.fm               ; 2 uses
  br i1 %i.ay, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.fn, label %.lr.ph.i141, label %._crit_edge.i

.lr.ph.i141:                                      ; preds = %bb.x, %bb.y
  %.077114.i = phi ptr [ %i.gc, %bb.y ], [ %i.fk, %bb.x ] ; 7 uses
  %.082113.i = phi ptr [ %i.gd, %bb.y ], [ %.1216278, %bb.x ] ; 6 uses
  %i.fo = load <4 x i16>, ptr %.077114.i, align 2, !tbaa !208
  %i.fp = xor <4 x i16> %i.fo, splat (i16 -10240)
  %i.fq = call i16 @llvm.vector.reduce.and.v4i16(<4 x i16> %i.fp)
end_hunk_4
begin_hunk_5_@_PyUnicode_EncodeUTF16:bb.a
bb.ag:                                            ; preds = %bb.af
  %i.hx = icmp ugt i32 %i.hs, 65535
  br i1 %i.hx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hy = lshr i32 %i.hs, 10
  %i.hz = trunc i32 %i.hy to i16
  %i.ia = add i16 %i.hz, -10304
  store i16 %i.ia, ptr %.05174.i, align 2, !tbaa !208
  %i.ib = trunc i32 %i.hs to i16
  %i.ic = and i16 %i.ib, 1023
  %i.id = or disjoint i16 %i.ic, -9216
  %i.ie = getelementptr i8, ptr %.05174.i, i64 2
  store i16 %i.id, ptr %i.ie, align 2, !tbaa !208
  %i.if = getelementptr i8, ptr %.05174.i, i64 4
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ig = trunc nuw i32 %i.hs to i16
  %i.ih = getelementptr i8, ptr %.05174.i, i64 2
  store i16 %i.ig, ptr %.05174.i, align 2, !tbaa !208
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ae
  %.253.i = phi ptr [ %i.ih, %bb.ai ], [ %i.hv, %bb.ae ], [ %i.if, %bb.ah ] ; 2 uses
  %i.ii = icmp ult ptr %i.hr, %i.ff
  br i1 %i.ii, label %.lr.ph.i146, label %ucs2lib_utf16_encode.exit

.lr.ph78.i:                                       ; preds = %.preheader.i149, %bb.ap
  %.177.i = phi ptr [ %i.ij, %bb.ap ], [ %i.hp, %.preheader.i149 ] ; 2 uses
  %.376.i = phi ptr [ %.5.i, %bb.ap ], [ %.1216278, %.preheader.i149 ] ; 7 uses
  %i.ij = getelementptr i8, ptr %.177.i, i64 4    ; 3 uses
  %i.ik = load i32, ptr %.177.i, align 4, !tbaa !7 ; 9 uses
  %i.il = icmp ult i32 %i.ik, 55296
  br i1 %i.il, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph78.i
  %i.im = shl nuw nsw i32 %i.ik, 8
  %i.in = lshr i32 %i.ik, 8
  %i.io = or disjoint i32 %i.im, %i.in
  %i.ip = trunc i32 %i.io to i16
  %i.iq = getelementptr i8, ptr %.376.i, i64 2
  store i16 %i.ip, ptr %.376.i, align 2, !tbaa !208
  br label %bb.ap

bb.al:                                            ; preds = %.lr.ph78.i
  %i.ir = icmp ult i32 %i.ik, 57344
  br i1 %i.ir, label %.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.is = icmp ugt i32 %i.ik, 65535
  br i1 %i.is, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.it = lshr i32 %i.ik, 10
  %i.iu = and i32 %i.ik, 1023
  %i.iv = add nuw nsw i32 %i.it, 55232
  %i.iw = insertelement <2 x i32> poison, i32 %i.iv, i64 0
  %i.ix = insertelement <2 x i32> %i.iw, i32 %i.iu, i64 1 ; 2 uses
  %i.iy = shl nuw nsw <2 x i32> %i.ix, splat (i32 8)
  %i.iz = lshr <2 x i32> %i.ix, splat (i32 8)
  %i.ja = and <2 x i32> %i.iz, <i32 255, i32 -1>
  %i.jb = or disjoint <2 x i32> %i.ja, %i.iy
  %i.jc = trunc <2 x i32> %i.jb to <2 x i16>
  %i.jd = or <2 x i16> %i.jc, <i16 0, i16 220>
  store <2 x i16> %i.jd, ptr %.376.i, align 2, !tbaa !208
  %i.je = getelementptr i8, ptr %.376.i, i64 4
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.jf = shl nuw nsw i32 %i.ik, 8
  %i.jg = lshr i32 %i.ik, 8
  %i.jh = or disjoint i32 %i.jf, %i.jg
  %i.ji = trunc i32 %i.jh to i16
  %i.jj = getelementptr i8, ptr %.376.i, i64 2
  store i16 %i.ji, ptr %.376.i, align 2, !tbaa !208
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.ak
  %.5.i = phi ptr [ %i.jj, %bb.ao ], [ %i.iq, %bb.ak ], [ %i.je, %bb.an ] ; 2 uses
  %i.jk = icmp ult ptr %i.ij, %i.ff
  br i1 %i.jk, label %.lr.ph78.i, label %ucs2lib_utf16_encode.exit

.thread.i:                                        ; preds = %bb.af, %bb.al
  %.7.i147 = phi ptr [ %.376.i, %bb.al ], [ %.05174.i, %bb.af ]
  %.2.i = phi ptr [ %i.ij, %bb.al ], [ %i.hr, %bb.af ]
  %i.jl = ptrtoint ptr %.2.i to i64
  %i.jm = sub i64 %i.fg, %i.jl
  %i.jn = ashr exact i64 %i.jm, 2
  %.neg.i148 = xor i64 %i.jn, -1
  %i.jo = add i64 %i.fj, %.neg.i148
  br label %ucs2lib_utf16_encode.exit

ucs2lib_utf16_encode.exit:                        ; preds = %bb.aj, %bb.ap, %bb.z, %bb.ac, %.thread.i, %.preheader.i149, %.preheader68.i, %.loopexit.i, %._crit_edge128.i, %._crit_edge.i
  %.2217 = phi ptr [ %.7.i, %bb.ac ], [ %.11.i, %.loopexit.i ], [ %.5.i, %bb.ap ], [ %.587.lcssa.i, %._crit_edge128.i ], [ %.082.lcssa.i, %._crit_edge.i ], [ %.7.i147, %.thread.i ], [ %.284.i, %bb.z ], [ %.1216278, %.preheader.i149 ], [ %.1216278, %.preheader68.i ], [ %.253.i, %bb.aj ] ; 3 uses
  %.pn = phi i64 [ %i.fj, %bb.ac ], [ %i.ho, %.loopexit.i ], [ %i.fj, %bb.ap ], [ %i.fj, %._crit_edge128.i ], [ %i.fj, %._crit_edge.i ], [ %i.jo, %.thread.i ], [ %i.fj, %bb.z ], [ %i.fj, %.preheader.i149 ], [ %i.fj, %.preheader68.i ], [ %i.fj, %bb.aj ]
  %.192 = add i64 %.pn, %.091279                  ; 6 uses
  %i.jp = icmp eq i64 %.192, %.val135
  br i1 %i.jp, label %._crit_edge, label %bb.aq

bb.aq:                                            ; preds = %ucs2lib_utf16_encode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.jq = add i64 %.192, 1                        ; 3 uses
  %i.jr = call fastcc ptr @unicode_encode_call_errorhandler(ptr noundef %1, ptr noundef %i.a, ptr noundef nonnull %.095, ptr noundef nonnull @.str.77, ptr noundef %0, ptr noundef %i.b, i64 noundef %.192, i64 noundef %i.jq, ptr noundef %i.c) ; 13 uses
  %.not123 = icmp eq ptr %i.jr, null
  br i1 %.not123, label %bb.bo, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.js = getelementptr i8, ptr %i.jr, i64 8      ; 2 uses
  %.val128 = load ptr, ptr %i.js, align 8, !tbaa !197
  %i.jt = getelementptr i8, ptr %.val128, i64 168
  %.val131 = load i64, ptr %i.jt, align 8, !tbaa !198 ; 2 uses
  %i.ju = and i64 %.val131, 134217728
  %.not124 = icmp eq i64 %i.ju, 0
  %i.jv = getelementptr i8, ptr %i.jr, i64 16
  %.val134 = load i64, ptr %i.jv, align 8, !tbaa !193 ; 9 uses
  br i1 %.not124, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jw = and i64 %.val134, 1
  %.not126 = icmp eq i64 %i.jw, 0
  br i1 %.not126, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call fastcc void @make_encode_exception(ptr noundef nonnull %i.b, ptr noundef nonnull %.095, ptr noundef %0, i64 noundef %.192, i64 noundef %i.jq, ptr noundef nonnull @.str.77)
  %i.jx = load ptr, ptr %i.b, align 8, !tbaa !194 ; 2 uses
  %.not.i150 = icmp eq ptr %i.jx, null
  br i1 %.not.i150, label %.loopexit, label %.loopexit.sink.split

bb.au:                                            ; preds = %bb.as
  %i.jy = ashr exact i64 %.val134, 1
  br label %bb.ax

bb.av:                                            ; preds = %bb.ar
  %i.jz = getelementptr i8, ptr %i.jr, i64 32
  %.val133 = load i32, ptr %i.jz, align 8
  %i.ka = and i32 %.val133, 64
  %.not125 = icmp eq i32 %i.ka, 0
  br i1 %.not125, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call fastcc void @make_encode_exception(ptr noundef nonnull %i.b, ptr noundef nonnull %.095, ptr noundef %0, i64 noundef %.192, i64 noundef %i.jq, ptr noundef nonnull @.str.77)
  %i.kb = load ptr, ptr %i.b, align 8, !tbaa !194 ; 2 uses
  %.not.i151 = icmp eq ptr %i.kb, null
  br i1 %.not.i151, label %.loopexit, label %.loopexit.sink.split

bb.ax:                                            ; preds = %bb.av, %bb.au
  %.089 = phi i64 [ %i.jy, %bb.au ], [ %.val134, %bb.av ]
  %i.kc = load i64, ptr %i.c, align 8, !tbaa !193 ; 3 uses
  %i.kd = sub i64 %.192, %i.kc
  %i.ke = add i64 %i.kd, %.089                    ; 2 uses
  %i.kf = icmp sgt i64 %i.ke, 0
  br i1 %i.kf, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.kg = shl nuw i64 %i.ke, 1
  %i.kh = call ptr @PyBytesWriter_GrowAndUpdatePointer(ptr noundef nonnull %i.ew, i64 noundef %i.kg, ptr noundef %.2217) #33 ; 2 uses
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %.loopexit, label %._crit_edge324

._crit_edge324:                                   ; preds = %bb.ay
  %.val.pre = load ptr, ptr %i.js, align 8, !tbaa !197
  %.phi.trans.insert = getelementptr i8, ptr %.val.pre, i64 168
  %.val130.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !198
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge324, %bb.ax
  %.val130 = phi i64 [ %.val130.pre, %._crit_edge324 ], [ %.val131, %bb.ax ]
  %.3 = phi ptr [ %i.kh, %._crit_edge324 ], [ %.2217, %bb.ax ] ; 6 uses
  %i.kj = and i64 %.val130, 134217728
  %.not127 = icmp eq i64 %i.kj, 0
  %i.kk = getelementptr i8, ptr %i.jr, i64 32     ; 2 uses
  br i1 %.not127, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.3, ptr align 1 %i.kk, i64 %.val134, i1 false)
  %i.kl = sdiv i64 %.val134, 2
  %i.km = getelementptr [2 x i8], ptr %.3, i64 %i.kl
  br label %ucs1lib_utf16_encode.exit194

bb.bb:                                            ; preds = %bb.az
  %.val.i153 = load i32, ptr %i.kk, align 8       ; 2 uses
  %i.kn = and i32 %.val.i153, 32
  %.not.i154 = icmp eq i32 %i.kn, 0
  br i1 %.not.i154, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ko = and i32 %.val.i153, 64
  %.not.i.i155 = icmp eq i32 %i.ko, 0
  %.0.v.i.i156 = select i1 %.not.i.i155, i64 56, i64 40
  %.0.i.i157 = getelementptr i8, ptr %i.jr, i64 %.0.v.i.i156
  br label %_PyUnicode_DATA.exit160

bb.bd:                                            ; preds = %bb.bb
  %i.kp = getelementptr i8, ptr %i.jr, i64 56
  %.val4.i159 = load ptr, ptr %i.kp, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit160

_PyUnicode_DATA.exit160:                          ; preds = %bb.bc, %bb.bd
  %.0.i158 = phi ptr [ %.0.i.i157, %bb.bc ], [ %.val4.i159, %bb.bd ] ; 8 uses
  %5 = ptrtoaddr ptr %.0.i158 to i64              ; 4 uses
  %i.kq = getelementptr i8, ptr %.0.i158, i64 %.val134 ; 2 uses
  %i.kr = and i64 %.val134, -4
  %i.ks = getelementptr i8, ptr %.0.i158, i64 %i.kr ; 3 uses
  %i.kt = icmp ult ptr %.0.i158, %i.ks            ; 2 uses
  br i1 %i.ay, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_PyUnicode_DATA.exit160
  br i1 %i.kt, label %.lr.ph.i174, label %.preheader47.i162

.preheader47.loopexit.i177:                       ; preds = %.lr.ph.i174
  %.pre75.i178 = ptrtoaddr ptr %i.mc to i64
  br label %.preheader47.i162

.preheader47.i162:                                ; preds = %.preheader47.loopexit.i177, %bb.be
  %.0.lcssa71.pre-phi.i163 = phi i64 [ %.pre75.i178, %.preheader47.loopexit.i177 ], [ %5, %bb.be ] ; 2 uses
  %.043.lcssa.i164 = phi ptr [ %i.md, %.preheader47.loopexit.i177 ], [ %.3, %bb.be ] ; 9 uses
  %.0.lcssa.i165 = phi ptr [ %i.mc, %.preheader47.loopexit.i177 ], [ %.0.i158, %bb.be ] ; 9 uses
  %i.ku = icmp ult ptr %.0.lcssa.i165, %i.kq
  br i1 %i.ku, label %iter.check517, label %ucs1lib_utf16_encode.exit194

iter.check517:                                    ; preds = %.preheader47.i162
  %i.kv = add i64 %.val134, %5                    ; 2 uses
  %i.kw = sub i64 %i.kv, %.0.lcssa71.pre-phi.i163 ; 8 uses
  %scevgep.i169 = getelementptr i8, ptr %.0.lcssa.i165, i64 %i.kw ; 2 uses
  %min.iters.check499 = icmp ult i64 %i.kw, 4
  br i1 %min.iters.check499, label %.lr.ph54.i170.preheader, label %vector.memcheck493

vector.memcheck493:                               ; preds = %iter.check517
  %i.kx = sub i64 %i.kv, %.0.lcssa71.pre-phi.i163
  %i.ky = shl i64 %i.kx, 1
  %scevgep494 = getelementptr i8, ptr %.043.lcssa.i164, i64 %i.ky
  %bound0495 = icmp ult ptr %.043.lcssa.i164, %scevgep.i169
  %bound1496 = icmp ult ptr %.0.lcssa.i165, %scevgep494
  %found.conflict497 = and i1 %bound0495, %bound1496
  br i1 %found.conflict497, label %.lr.ph54.i170.preheader, label %vector.main.loop.iter.check500

vector.main.loop.iter.check500:                   ; preds = %vector.memcheck493
  %min.iters.check501 = icmp ult i64 %i.kw, 16
  br i1 %min.iters.check501, label %vec.epilog.ph521, label %vector.ph502

vector.ph502:                                     ; preds = %vector.main.loop.iter.check500
  %n.mod.vf503 = and i64 %i.kw, 12
  %n.vec504 = and i64 %i.kw, -16                  ; 5 uses
  %i.kz = getelementptr i8, ptr %.0.lcssa.i165, i64 %n.vec504
  %i.la = shl i64 %n.vec504, 1
  %i.lb = getelementptr i8, ptr %.043.lcssa.i164, i64 %i.la ; 2 uses
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph502
  %index506 = phi i64 [ 0, %vector.ph502 ], [ %index.next511, %vector.body505 ] ; 3 uses
  %next.gep507 = getelementptr i8, ptr %.0.lcssa.i165, i64 %index506 ; 2 uses
  %i.lc = shl i64 %index506, 1
  %next.gep508 = getelementptr i8, ptr %.043.lcssa.i164, i64 %i.lc ; 2 uses
  %i.ld = getelementptr i8, ptr %next.gep507, i64 8
  %wide.load509 = load <8 x i8>, ptr %next.gep507, align 1, !tbaa !205, !alias.scope !423
  %wide.load510 = load <8 x i8>, ptr %i.ld, align 1, !tbaa !205, !alias.scope !423
  %i.le = zext <8 x i8> %wide.load509 to <8 x i16>
  %i.lf = zext <8 x i8> %wide.load510 to <8 x i16>
  %i.lg = getelementptr i8, ptr %next.gep508, i64 16
  store <8 x i16> %i.le, ptr %next.gep508, align 2, !tbaa !208, !alias.scope !426, !noalias !423
  store <8 x i16> %i.lf, ptr %i.lg, align 2, !tbaa !208, !alias.scope !426, !noalias !423
  %index.next511 = add nuw i64 %index506, 16      ; 2 uses
  %i.lh = icmp eq i64 %index.next511, %n.vec504
  br i1 %i.lh, label %middle.block512, label %vector.body505, !llvm.loop !428

middle.block512:                                  ; preds = %vector.body505
  %cmp.n513 = icmp eq i64 %i.kw, %n.vec504
  br i1 %cmp.n513, label %ucs1lib_utf16_encode.exit194, label %vec.epilog.iter.check519

vec.epilog.iter.check519:                         ; preds = %middle.block512
  %min.epilog.iters.check520 = icmp eq i64 %n.mod.vf503, 0
  br i1 %min.epilog.iters.check520, label %.lr.ph54.i170.preheader, label %vec.epilog.ph521, !prof !228

vec.epilog.ph521:                                 ; preds = %vector.main.loop.iter.check500, %vec.epilog.iter.check519
  %vec.epilog.resume.val514 = phi i64 [ %n.vec504, %vec.epilog.iter.check519 ], [ 0, %vector.main.loop.iter.check500 ]
  %n.vec523 = and i64 %i.kw, -4                   ; 4 uses
  %i.li = getelementptr i8, ptr %.0.lcssa.i165, i64 %n.vec523
  %i.lj = shl i64 %n.vec523, 1
  %i.lk = getelementptr i8, ptr %.043.lcssa.i164, i64 %i.lj ; 2 uses
  br label %vec.epilog.vector.body524

vec.epilog.vector.body524:                        ; preds = %vec.epilog.vector.body524, %vec.epilog.ph521
  %index525 = phi i64 [ %vec.epilog.resume.val514, %vec.epilog.ph521 ], [ %index.next529, %vec.epilog.vector.body524 ] ; 3 uses
  %next.gep526 = getelementptr i8, ptr %.0.lcssa.i165, i64 %index525
  %i.ll = shl i64 %index525, 1
  %next.gep527 = getelementptr i8, ptr %.043.lcssa.i164, i64 %i.ll
  %wide.load528 = load <4 x i8>, ptr %next.gep526, align 1, !tbaa !205, !alias.scope !423
  %i.lm = zext <4 x i8> %wide.load528 to <4 x i16>
  store <4 x i16> %i.lm, ptr %next.gep527, align 2, !tbaa !208, !alias.scope !426, !noalias !423
  %index.next529 = add nuw i64 %index525, 4       ; 2 uses
  %i.ln = icmp eq i64 %index.next529, %n.vec523
  br i1 %i.ln, label %vec.epilog.middle.block530, label %vec.epilog.vector.body524, !llvm.loop !429

vec.epilog.middle.block530:                       ; preds = %vec.epilog.vector.body524
  %cmp.n531 = icmp eq i64 %i.kw, %n.vec523
  br i1 %cmp.n531, label %ucs1lib_utf16_encode.exit194, label %.lr.ph54.i170.preheader

.lr.ph54.i170.preheader:                          ; preds = %vector.memcheck493, %iter.check517, %vec.epilog.iter.check519, %vec.epilog.middle.block530
  %.153.i171.ph = phi ptr [ %.0.lcssa.i165, %iter.check517 ], [ %.0.lcssa.i165, %vector.memcheck493 ], [ %i.kz, %vec.epilog.iter.check519 ], [ %i.li, %vec.epilog.middle.block530 ]
  %.14452.i172.ph = phi ptr [ %.043.lcssa.i164, %iter.check517 ], [ %.043.lcssa.i164, %vector.memcheck493 ], [ %i.lb, %vec.epilog.iter.check519 ], [ %i.lk, %vec.epilog.middle.block530 ]
  br label %.lr.ph54.i170

.lr.ph.i174:                                      ; preds = %bb.be, %.lr.ph.i174
  %.050.i175 = phi ptr [ %i.mc, %.lr.ph.i174 ], [ %.0.i158, %bb.be ] ; 5 uses
  %.04349.i176 = phi ptr [ %i.md, %.lr.ph.i174 ], [ %.3, %bb.be ] ; 5 uses
  %i.lo = load i8, ptr %.050.i175, align 1, !tbaa !205
  %i.lp = zext i8 %i.lo to i16
  store i16 %i.lp, ptr %.04349.i176, align 2, !tbaa !208
  %i.lq = getelementptr i8, ptr %.050.i175, i64 1
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !205
  %i.ls = zext i8 %i.lr to i16
  %i.lt = getelementptr i8, ptr %.04349.i176, i64 2
  store i16 %i.ls, ptr %i.lt, align 2, !tbaa !208
  %i.lu = getelementptr i8, ptr %.050.i175, i64 2
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !205
  %i.lw = zext i8 %i.lv to i16
  %i.lx = getelementptr i8, ptr %.04349.i176, i64 4
  store i16 %i.lw, ptr %i.lx, align 2, !tbaa !208
  %i.ly = getelementptr i8, ptr %.050.i175, i64 3
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !205
  %i.ma = zext i8 %i.lz to i16
  %i.mb = getelementptr i8, ptr %.04349.i176, i64 6
  store i16 %i.ma, ptr %i.mb, align 2, !tbaa !208
  %i.mc = getelementptr i8, ptr %.050.i175, i64 4 ; 4 uses
  %i.md = getelementptr i8, ptr %.04349.i176, i64 8 ; 2 uses
  %i.me = icmp ult ptr %i.mc, %i.ks
  br i1 %i.me, label %.lr.ph.i174, label %.preheader47.loopexit.i177, !llvm.loop !408

.lr.ph54.i170:                                    ; preds = %.lr.ph54.i170.preheader, %.lr.ph54.i170
  %.153.i171 = phi ptr [ %i.mf, %.lr.ph54.i170 ], [ %.153.i171.ph, %.lr.ph54.i170.preheader ] ; 2 uses
  %.14452.i172 = phi ptr [ %i.mi, %.lr.ph54.i170 ], [ %.14452.i172.ph, %.lr.ph54.i170.preheader ] ; 2 uses
  %i.mf = getelementptr i8, ptr %.153.i171, i64 1 ; 2 uses
  %i.mg = load i8, ptr %.153.i171, align 1, !tbaa !205
  %i.mh = zext i8 %i.mg to i16
  %i.mi = getelementptr i8, ptr %.14452.i172, i64 2 ; 2 uses
  store i16 %i.mh, ptr %.14452.i172, align 2, !tbaa !208
  %exitcond.not.i173 = icmp eq ptr %i.mf, %scevgep.i169
  br i1 %exitcond.not.i173, label %ucs1lib_utf16_encode.exit194, label %.lr.ph54.i170, !llvm.loop !430

bb.bf:                                            ; preds = %_PyUnicode_DATA.exit160
  br i1 %i.kt, label %.lr.ph58.i189, label %.preheader.i179

.preheader.loopexit.i192:                         ; preds = %.lr.ph58.i189
  %.pre.i193 = ptrtoaddr ptr %i.ny to i64
  br label %.preheader.i179

.preheader.i179:                                  ; preds = %.preheader.loopexit.i192, %bb.bf
  %.2.lcssa72.pre-phi.i180 = phi i64 [ %.pre.i193, %.preheader.loopexit.i192 ], [ %5, %bb.bf ] ; 2 uses
  %.245.lcssa.i181 = phi ptr [ %i.nz, %.preheader.loopexit.i192 ], [ %.3, %bb.bf ] ; 9 uses
  %.2.lcssa.i182 = phi ptr [ %i.ny, %.preheader.loopexit.i192 ], [ %.0.i158, %bb.bf ] ; 9 uses
  %i.mj = icmp ult ptr %.2.lcssa.i182, %i.kq
  br i1 %i.mj, label %iter.check, label %ucs1lib_utf16_encode.exit194

iter.check:                                       ; preds = %.preheader.i179
  %i.mk = add i64 %.val134, %5                    ; 2 uses
  %i.ml = sub i64 %i.mk, %.2.lcssa72.pre-phi.i180 ; 8 uses
  %scevgep73.i184 = getelementptr i8, ptr %.2.lcssa.i182, i64 %i.ml ; 2 uses
  %min.iters.check467 = icmp ult i64 %i.ml, 4
  br i1 %min.iters.check467, label %.lr.ph63.i185.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.mm = sub i64 %i.mk, %.2.lcssa72.pre-phi.i180
  %i.mn = shl i64 %i.mm, 1
  %scevgep = getelementptr i8, ptr %.245.lcssa.i181, i64 %i.mn
  %bound0 = icmp ult ptr %.245.lcssa.i181, %scevgep73.i184
  %bound1 = icmp ult ptr %.2.lcssa.i182, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph63.i185.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check468 = icmp ult i64 %i.ml, 16
  br i1 %min.iters.check468, label %vec.epilog.ph, label %vector.ph469

vector.ph469:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf470 = and i64 %i.ml, 12
  %n.vec471 = and i64 %i.ml, -16                  ; 5 uses
  %i.mo = getelementptr i8, ptr %.2.lcssa.i182, i64 %n.vec471
  %i.mp = shl i64 %n.vec471, 1
  %i.mq = getelementptr i8, ptr %.245.lcssa.i181, i64 %i.mp ; 2 uses
  br label %vector.body472

vector.body472:                                   ; preds = %vector.body472, %vector.ph469
  %index473 = phi i64 [ 0, %vector.ph469 ], [ %index.next478, %vector.body472 ] ; 3 uses
  %next.gep474 = getelementptr i8, ptr %.2.lcssa.i182, i64 %index473 ; 2 uses
  %i.mr = shl i64 %index473, 1
  %next.gep475 = getelementptr i8, ptr %.245.lcssa.i181, i64 %i.mr ; 2 uses
  %i.ms = getelementptr i8, ptr %next.gep474, i64 8
  %wide.load476 = load <8 x i8>, ptr %next.gep474, align 1, !tbaa !205, !alias.scope !431
  %wide.load477 = load <8 x i8>, ptr %i.ms, align 1, !tbaa !205, !alias.scope !431
  %i.mt = zext <8 x i8> %wide.load476 to <8 x i16>
  %i.mu = zext <8 x i8> %wide.load477 to <8 x i16>
  %i.mv = shl nuw <8 x i16> %i.mt, splat (i16 8)
  %i.mw = shl nuw <8 x i16> %i.mu, splat (i16 8)
  %i.mx = getelementptr i8, ptr %next.gep475, i64 16
  store <8 x i16> %i.mv, ptr %next.gep475, align 2, !tbaa !208, !alias.scope !434, !noalias !431
  store <8 x i16> %i.mw, ptr %i.mx, align 2, !tbaa !208, !alias.scope !434, !noalias !431
  %index.next478 = add nuw i64 %index473, 16      ; 2 uses
  %i.my = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.my, label %middle.block479, label %vector.body472, !llvm.loop !436

middle.block479:                                  ; preds = %vector.body472
  %cmp.n480 = icmp eq i64 %i.ml, %n.vec471
  br i1 %cmp.n480, label %ucs1lib_utf16_encode.exit194, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block479
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf470, 0
  br i1 %min.epilog.iters.check, label %.lr.ph63.i185.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec471, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec484 = and i64 %i.ml, -4                   ; 4 uses
  %i.mz = getelementptr i8, ptr %.2.lcssa.i182, i64 %n.vec484
  %i.na = shl i64 %n.vec484, 1
  %i.nb = getelementptr i8, ptr %.245.lcssa.i181, i64 %i.na ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index485 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next489, %vec.epilog.vector.body ] ; 3 uses
  %next.gep486 = getelementptr i8, ptr %.2.lcssa.i182, i64 %index485
  %i.nc = shl i64 %index485, 1
  %next.gep487 = getelementptr i8, ptr %.245.lcssa.i181, i64 %i.nc
  %wide.load488 = load <4 x i8>, ptr %next.gep486, align 1, !tbaa !205, !alias.scope !431
  %i.nd = zext <4 x i8> %wide.load488 to <4 x i16>
  %i.ne = shl nuw <4 x i16> %i.nd, splat (i16 8)
  store <4 x i16> %i.ne, ptr %next.gep487, align 2, !tbaa !208, !alias.scope !434, !noalias !431
  %index.next489 = add nuw i64 %index485, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next489, %n.vec484
  br i1 %i.nf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !437

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n490 = icmp eq i64 %i.ml, %n.vec484
  br i1 %cmp.n490, label %ucs1lib_utf16_encode.exit194, label %.lr.ph63.i185.preheader

.lr.ph63.i185.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.362.i186.ph = phi ptr [ %.2.lcssa.i182, %iter.check ], [ %.2.lcssa.i182, %vector.memcheck ], [ %i.mo, %vec.epilog.iter.check ], [ %i.mz, %vec.epilog.middle.block ]
  %.34661.i187.ph = phi ptr [ %.245.lcssa.i181, %iter.check ], [ %.245.lcssa.i181, %vector.memcheck ], [ %i.mq, %vec.epilog.iter.check ], [ %i.nb, %vec.epilog.middle.block ]
  br label %.lr.ph63.i185

.lr.ph58.i189:                                    ; preds = %bb.bf, %.lr.ph58.i189
  %.257.i190 = phi ptr [ %i.ny, %.lr.ph58.i189 ], [ %.0.i158, %bb.bf ] ; 5 uses
  %.24556.i191 = phi ptr [ %i.nz, %.lr.ph58.i189 ], [ %.3, %bb.bf ] ; 5 uses
  %i.ng = load i8, ptr %.257.i190, align 1, !tbaa !205
  %i.nh = zext i8 %i.ng to i16
  %i.ni = shl nuw i16 %i.nh, 8
  store i16 %i.ni, ptr %.24556.i191, align 2, !tbaa !208
  %i.nj = getelementptr i8, ptr %.257.i190, i64 1
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !205
  %i.nl = zext i8 %i.nk to i16
  %i.nm = shl nuw i16 %i.nl, 8
  %i.nn = getelementptr i8, ptr %.24556.i191, i64 2
  store i16 %i.nm, ptr %i.nn, align 2, !tbaa !208
  %i.no = getelementptr i8, ptr %.257.i190, i64 2
  %i.np = load i8, ptr %i.no, align 1, !tbaa !205
  %i.nq = zext i8 %i.np to i16
  %i.nr = shl nuw i16 %i.nq, 8
  %i.ns = getelementptr i8, ptr %.24556.i191, i64 4
  store i16 %i.nr, ptr %i.ns, align 2, !tbaa !208
  %i.nt = getelementptr i8, ptr %.257.i190, i64 3
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !205
  %i.nv = zext i8 %i.nu to i16
  %i.nw = shl nuw i16 %i.nv, 8
  %i.nx = getelementptr i8, ptr %.24556.i191, i64 6
  store i16 %i.nw, ptr %i.nx, align 2, !tbaa !208
  %i.ny = getelementptr i8, ptr %.257.i190, i64 4 ; 4 uses
  %i.nz = getelementptr i8, ptr %.24556.i191, i64 8 ; 2 uses
  %i.oa = icmp ult ptr %i.ny, %i.ks
  br i1 %i.oa, label %.lr.ph58.i189, label %.preheader.loopexit.i192, !llvm.loop !417

.lr.ph63.i185:                                    ; preds = %.lr.ph63.i185.preheader, %.lr.ph63.i185
  %.362.i186 = phi ptr [ %i.ob, %.lr.ph63.i185 ], [ %.362.i186.ph, %.lr.ph63.i185.preheader ] ; 2 uses
  %.34661.i187 = phi ptr [ %i.of, %.lr.ph63.i185 ], [ %.34661.i187.ph, %.lr.ph63.i185.preheader ] ; 2 uses
  %i.ob = getelementptr i8, ptr %.362.i186, i64 1 ; 2 uses
  %i.oc = load i8, ptr %.362.i186, align 1, !tbaa !205
  %i.od = zext i8 %i.oc to i16
  %i.oe = shl nuw i16 %i.od, 8
  %i.of = getelementptr i8, ptr %.34661.i187, i64 2 ; 2 uses
  store i16 %i.oe, ptr %.34661.i187, align 2, !tbaa !208
  %exitcond74.not.i188 = icmp eq ptr %i.ob, %scevgep73.i184
  br i1 %exitcond74.not.i188, label %ucs1lib_utf16_encode.exit194, label %.lr.ph63.i185, !llvm.loop !438

ucs1lib_utf16_encode.exit194:                     ; preds = %.lr.ph54.i170, %.lr.ph63.i185, %middle.block512, %vec.epilog.middle.block530, %middle.block479, %vec.epilog.middle.block, %.preheader.i179, %.preheader47.i162, %bb.ba
  %.4 = phi ptr [ %i.km, %bb.ba ], [ %i.of, %.lr.ph63.i185 ], [ %.245.lcssa.i181, %.preheader.i179 ], [ %.043.lcssa.i164, %.preheader47.i162 ], [ %i.nb, %vec.epilog.middle.block ], [ %i.mq, %middle.block479 ], [ %i.lk, %vec.epilog.middle.block530 ], [ %i.lb, %middle.block512 ], [ %i.mi, %.lr.ph54.i170 ] ; 2 uses
  %i.og = load i32, ptr %i.jr, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.og, -1
  br i1 %.not.i, label %bb.bg, label %raise_encode_exception.exit

bb.bg:                                            ; preds = %ucs1lib_utf16_encode.exit194
  %i.oh = add nsw i32 %i.og, -1                   ; 2 uses
  store i32 %i.oh, ptr %i.jr, align 8, !tbaa !205
  %i.oi = icmp eq i32 %i.oh, 0
  br i1 %i.oi, label %bb.bh, label %raise_encode_exception.exit

bb.bh:                                            ; preds = %bb.bg
  call void @_Py_Dealloc(ptr noundef nonnull %i.jr) #33
  br label %raise_encode_exception.exit

raise_encode_exception.exit:                      ; preds = %bb.bh, %bb.bg, %ucs1lib_utf16_encode.exit194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.oj = icmp slt i64 %i.kc, %.val135
  br i1 %i.oj, label %bb.v, label %._crit_edge, !llvm.loop !439

._crit_edge:                                      ; preds = %ucs2lib_utf16_encode.exit, %raise_encode_exception.exit
  %.6218.ph.ph = phi ptr [ %.2217, %ucs2lib_utf16_encode.exit ], [ %.4, %raise_encode_exception.exit ] ; 4 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !194 ; 4 uses
  %.not.i195 = icmp eq ptr %.pre, null
  br i1 %.not.i195, label %Py_XDECREF.exit, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge
  %i.ok = load i32, ptr %.pre, align 8, !tbaa !205 ; 2 uses
  %.not.i.i196 = icmp sgt i32 %i.ok, -1
  br i1 %.not.i.i196, label %bb.bj, label %Py_XDECREF.exit

bb.bj:                                            ; preds = %bb.bi
  %i.ol = add nsw i32 %i.ok, -1                   ; 2 uses
  store i32 %i.ol, ptr %.pre, align 8, !tbaa !205
  %i.om = icmp eq i32 %i.ol, 0
  br i1 %i.om, label %bb.bk, label %Py_XDECREF.exit

bb.bk:                                            ; preds = %bb.bj
  call void @_Py_Dealloc(ptr noundef nonnull %.pre) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %._crit_edge, %bb.bi, %bb.bj, %bb.bk
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !194  ; 4 uses
  %.not.i197 = icmp eq ptr %.pr, null
  br i1 %.not.i197, label %Py_XDECREF.exit199, label %bb.bl

bb.bl:                                            ; preds = %Py_XDECREF.exit
  %i.on = load i32, ptr %.pr, align 8, !tbaa !205 ; 2 uses
  %.not.i.i198 = icmp sgt i32 %i.on, -1
  br i1 %.not.i.i198, label %bb.bm, label %Py_XDECREF.exit199

bb.bm:                                            ; preds = %bb.bl
  %i.oo = add nsw i32 %i.on, -1                   ; 2 uses
  store i32 %i.oo, ptr %.pr, align 8, !tbaa !205
  %i.op = icmp eq i32 %i.oo, 0
  br i1 %i.op, label %bb.bn, label %Py_XDECREF.exit199

bb.bn:                                            ; preds = %bb.bm
  call void @_Py_Dealloc(ptr noundef nonnull %.pr) #33
  br label %Py_XDECREF.exit199

Py_XDECREF.exit199:                               ; preds = %bb.u, %Py_XDECREF.exit, %bb.bl, %bb.bm, %bb.bn
  %.6218.ph380383 = phi ptr [ %.6218.ph.ph, %bb.bn ], [ %.6218.ph.ph, %Py_XDECREF.exit ], [ %.6218.ph.ph, %bb.bl ], [ %.6218.ph.ph, %bb.bm ], [ %.0, %bb.u ]
  %i.oq = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.ew, ptr noundef %.6218.ph380383) #33
  br label %bb.bx

bb.bo:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %Py_XDECREF.exit202

.loopexit.sink.split:                             ; preds = %bb.aw, %bb.at
  %.sink = phi ptr [ %i.jx, %bb.at ], [ %i.kb, %bb.aw ]
  %i.or = call ptr @PyCodec_StrictErrors(ptr noundef nonnull %.sink) #33 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ay, %.loopexit.sink.split, %bb.aw, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.os = load i32, ptr %i.jr, align 8, !tbaa !205 ; 2 uses
  %.not.i.i201 = icmp sgt i32 %i.os, -1
  br i1 %.not.i.i201, label %bb.bp, label %Py_XDECREF.exit202

bb.bp:                                            ; preds = %.loopexit
  %i.ot = add nsw i32 %i.os, -1                   ; 2 uses
  store i32 %i.ot, ptr %i.jr, align 8, !tbaa !205
  %i.ou = icmp eq i32 %i.ot, 0
  br i1 %i.ou, label %bb.bq, label %Py_XDECREF.exit202

bb.bq:                                            ; preds = %bb.bp
  call void @_Py_Dealloc(ptr noundef nonnull %i.jr) #33
  br label %Py_XDECREF.exit202

Py_XDECREF.exit202:                               ; preds = %bb.bo, %.loopexit, %bb.bp, %bb.bq
  %i.ov = load ptr, ptr %i.a, align 8, !tbaa !194 ; 4 uses
  %.not.i203 = icmp eq ptr %i.ov, null
  br i1 %.not.i203, label %Py_XDECREF.exit205, label %bb.br

bb.br:                                            ; preds = %Py_XDECREF.exit202
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !205 ; 2 uses
  %.not.i.i204 = icmp sgt i32 %i.ow, -1
  br i1 %.not.i.i204, label %bb.bs, label %Py_XDECREF.exit205

bb.bs:                                            ; preds = %bb.br
  %i.ox = add nsw i32 %i.ow, -1                   ; 2 uses
  store i32 %i.ox, ptr %i.ov, align 8, !tbaa !205
  %i.oy = icmp eq i32 %i.ox, 0
  br i1 %i.oy, label %bb.bt, label %Py_XDECREF.exit205

bb.bt:                                            ; preds = %bb.bs
  call void @_Py_Dealloc(ptr noundef nonnull %i.ov) #33
  br label %Py_XDECREF.exit205

Py_XDECREF.exit205:                               ; preds = %Py_XDECREF.exit202, %bb.br, %bb.bs, %bb.bt
  %i.oz = load ptr, ptr %i.b, align 8, !tbaa !194 ; 4 uses
  %.not.i206 = icmp eq ptr %i.oz, null
  br i1 %.not.i206, label %Py_XDECREF.exit208, label %bb.bu

bb.bu:                                            ; preds = %Py_XDECREF.exit205
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !205 ; 2 uses
  %.not.i.i207 = icmp sgt i32 %i.pa, -1
  br i1 %.not.i.i207, label %bb.bv, label %Py_XDECREF.exit208

bb.bv:                                            ; preds = %bb.bu
  %i.pb = add nsw i32 %i.pa, -1                   ; 2 uses
  store i32 %i.pb, ptr %i.oz, align 8, !tbaa !205
  %i.pc = icmp eq i32 %i.pb, 0
  br i1 %i.pc, label %bb.bw, label %Py_XDECREF.exit208

bb.bw:                                            ; preds = %bb.bv
  call void @_Py_Dealloc(ptr noundef nonnull %i.oz) #33
  br label %Py_XDECREF.exit208

Py_XDECREF.exit208:                               ; preds = %Py_XDECREF.exit205, %bb.bu, %bb.bv, %bb.bw
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.ew) #33
  br label %bb.bx

bb.bx:                                            ; preds = %Py_XDECREF.exit208, %Py_XDECREF.exit199
  %.1 = phi ptr [ null, %Py_XDECREF.exit208 ], [ %i.oq, %Py_XDECREF.exit199 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %ucs1lib_utf16_encode.exit

ucs1lib_utf16_encode.exit:                        ; preds = %.lr.ph54.i, %.lr.ph63.i, %middle.block553, %vec.epilog.middle.block571, %middle.block594, %vec.epilog.middle.block612, %bb.t, %bb.bx, %bb.l, %.preheader47.i, %.preheader.i, %bb.g, %bb.p, %bb.i, %bb.b
  %.6 = phi ptr [ null, %bb.b ], [ %i.au, %bb.g ], [ null, %bb.i ], [ null, %bb.p ], [ %i.bb, %bb.l ], [ %.1, %bb.bx ], [ %i.bb, %.preheader.i ], [ %i.bb, %middle.block594 ], [ %i.bb, %.preheader47.i ], [ %i.fb, %bb.t ], [ %i.bb, %middle.block553 ], [ %i.bb, %vec.epilog.middle.block612 ], [ %i.bb, %.lr.ph63.i ], [ %i.bb, %vec.epilog.middle.block571 ], [ %i.bb, %.lr.ph54.i ]
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
begin_hunk_7_@unicode_decode_utf8:bb.a
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
  %narrow123 = add nuw nsw i32 %narrow, %i.bh     ; 2 uses
  %i.bi = zext nneg i32 %narrow123 to i64
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
  %narrow124 = add nuw nsw i32 %narrow123, %i.bs  ; 2 uses
  %i.bt = zext nneg i32 %narrow124 to i64
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
  %narrow125 = add nuw nsw i32 %narrow124, %i.cd  ; 2 uses
  %i.ce = zext nneg i32 %narrow125 to i64
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
  %narrow126 = add nuw nsw i32 %narrow125, %i.co  ; 2 uses
  %i.cp = zext nneg i32 %narrow126 to i64
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
  %narrow127 = add nuw nsw i32 %narrow126, %i.cz
  %i.da = zext i32 %narrow127 to i64              ; 2 uses
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
  %6 = ptrtoaddr ptr %0 to i64
  %7 = ptrtoaddr ptr %.3.i to i64
  %i.en = add i64 %1, %6
  %i.eo = sub i64 %i.en, %7                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.eo, 4
  br i1 %min.iters.check, label %.lr.ph60.i.preheader115, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph60.i.preheader
  %n.vec = and i64 %i.eo, -4                      ; 3 uses
  %i.ep = getelementptr i8, ptr %.3.i, i64 %n.vec
  %i.eq = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.232.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.eq, %vector.ph ], [ %i.fg, %vector.body ]
  %vec.phi113 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fh, %vector.body ]
  %next.gep = getelementptr i8, ptr %.3.i, i64 %index ; 2 uses
  %i.er = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !205
  %wide.load114 = load <2 x i8>, ptr %i.er, align 1, !tbaa !205
  %i.es = zext <2 x i8> %wide.load to <2 x i32>   ; 2 uses
  %i.et = zext <2 x i8> %wide.load114 to <2 x i32> ; 2 uses
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
  %i.fh = add <2 x i64> %vec.phi113, %i.ff        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !481

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.fh, %i.fg
  %i.fj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %utf8_count_codepoints.exit, label %.lr.ph60.i.preheader115

.lr.ph60.i.preheader115:                          ; preds = %.lr.ph60.i.preheader, %middle.block
  %.458.i.ph = phi ptr [ %.3.i, %.lr.ph60.i.preheader ], [ %i.ep, %middle.block ]
  %.33357.i.ph = phi i64 [ %.232.i, %.lr.ph60.i.preheader ], [ %i.fj, %middle.block ]
  br label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %.lr.ph60.i.preheader115, %.lr.ph60.i
  %.458.i = phi ptr [ %i.fk, %.lr.ph60.i ], [ %.458.i.ph, %.lr.ph60.i.preheader115 ] ; 2 uses
  %.33357.i = phi i64 [ %i.ft, %.lr.ph60.i ], [ %.33357.i.ph, %.lr.ph60.i.preheader115 ]
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @_PyUnicodeWriter_InitWithBuffer(ptr noundef nonnull %5, ptr noundef nonnull %i.fx) #33
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
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.m, ptr %i.gc, align 8, !tbaa !279
  br label %bb.w

bb.w:                                             ; preds = %_PyUnicode_DATA.exit80, %bb.s
  %.056 = phi ptr [ %i.u, %_PyUnicode_DATA.exit80 ], [ %0, %bb.s ]
  %i.gd = call fastcc i32 @unicode_decode_utf8_impl(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %.056, ptr noundef %i.l, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  %i.ge = icmp slt i32 %i.gd, 0
  br i1 %i.ge, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %5) #33
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gf = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %5) #33
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1 = phi ptr [ null, %bb.x ], [ %i.gf, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
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
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 5 uses
  %.0.i13 = ptrtoaddr ptr %.0.i to i64            ; 3 uses
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
  %umax = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.s)
  %i.t = xor i64 %.0.i13, -1
  %i.u = add i64 %umax, %i.t
  %i.v = sub i64 %i.u, %i.p                       ; 3 uses
  %i.w = lshr i64 %i.v, 1
  %i.x = add nuw i64 %i.w, 1                      ; 5 uses
  %min.iters.check15 = icmp ult i64 %i.v, 6
  br i1 %min.iters.check15, label %.lr.ph30.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check16 = icmp ult i64 %i.v, 30
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph17

vector.ph17:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf18 = and i64 %i.x, 12
  %n.vec19 = and i64 %i.x, -16                    ; 4 uses
  %i.y = shl i64 %n.vec19, 1
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %broadcast.splatinsert20 = insertelement <8 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat21 = shufflevector <8 x i16> %broadcast.splatinsert20, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph17
  %index23 = phi i64 [ 0, %vector.ph17 ], [ %index.next25, %vector.body22 ] ; 2 uses
  %i.aa = shl i64 %index23, 1
  %next.gep24 = getelementptr i8, ptr %i.k, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep24, i64 16
  store <8 x i16> %broadcast.splat21, ptr %next.gep24, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat21, ptr %i.ab, align 2, !tbaa !208
  %index.next25 = add nuw i64 %index23, 16        ; 2 uses
  %i.ac = icmp eq i64 %index.next25, %n.vec19
  br i1 %i.ac, label %middle.block26, label %vector.body22, !llvm.loop !548

middle.block26:                                   ; preds = %vector.body22
  %cmp.n27 = icmp eq i64 %i.x, %n.vec19
  br i1 %cmp.n27, label %_PyUnicode_Fill.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block26
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf18, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec19, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %i.x, -4                     ; 3 uses
  %i.ad = shl i64 %n.vec30, 1
  %i.ae = getelementptr i8, ptr %i.k, i64 %i.ad
  %broadcast.splatinsert31 = insertelement <4 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat32 = shufflevector <4 x i16> %broadcast.splatinsert31, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 2 uses
  %i.af = shl i64 %index33, 1
  %next.gep34 = getelementptr i8, ptr %i.k, i64 %i.af
  store <4 x i16> %broadcast.splat32, ptr %next.gep34, align 2, !tbaa !208
  %index.next35 = add nuw i64 %index33, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next35, %n.vec30
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !549

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %i.x, %n.vec30
  br i1 %cmp.n36, label %_PyUnicode_Fill.exit, label %.lr.ph30.i.preheader

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
  %4 = ptrtoaddr ptr %.0.i to i64                 ; 3 uses
  %i.am = shl i64 %2, 2
  %i.an = shl i64 %1, 2                           ; 2 uses
  %i.ao = add i64 %i.am, %4
  %i.ap = add i64 %i.ao, %i.an
  %i.aq = add i64 %i.an, %4
  %i.ar = add i64 %i.aq, 4
  %i.as = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.ar)
  %i.at = shl i64 %1, 2
  %i.au = add i64 %i.at, %4
  %i.av = xor i64 %i.au, -1
  %i.aw = add i64 %i.as, %i.av                    ; 2 uses
  %i.ax = lshr i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader38, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ay, 9223372036854775800     ; 3 uses
  %i.az = shl i64 %n.vec, 2
  %i.ba = getelementptr i8, ptr %i.aj, i64 %i.az
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.bc, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !551

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit, label %.lr.ph.i.preheader38

.lr.ph.i.preheader38:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.02628.i.ph = phi ptr [ %i.aj, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader38, %.lr.ph.i
  %.02628.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.02628.i.ph, %.lr.ph.i.preheader38 ] ; 2 uses
  store i32 %3, ptr %.02628.i, align 4, !tbaa !7
  %i.be = getelementptr i8, ptr %.02628.i, i64 4  ; 2 uses
  %i.bf = icmp ult ptr %i.be, %i.ak
  br i1 %i.bf, label %.lr.ph.i, label %_PyUnicode_Fill.exit, !llvm.loop !552

bb.g:                                             ; preds = %_PyUnicode_DATA.exit
  unreachable

_PyUnicode_Fill.exit:                             ; preds = %.lr.ph.i, %.lr.ph30.i, %middle.block, %middle.block26, %vec.epilog.middle.block, %bb.d, %bb.e, %bb.f
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
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.m ], [ %.val4.i.i, %bb.n ] ; 5 uses
  %.0.i.i39 = ptrtoaddr ptr %.0.i.i to i64        ; 2 uses
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
  %umax = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.ag)
  %i.ah = xor i64 %.0.i.i39, -1
  %i.ai = add i64 %umax, %i.ah
  %i.aj = sub i64 %i.ai, %i.ac                    ; 3 uses
  %i.ak = lshr i64 %i.aj, 1
  %i.al = add nuw i64 %i.ak, 1                    ; 5 uses
  %min.iters.check41 = icmp ult i64 %i.aj, 6
  br i1 %min.iters.check41, label %.lr.ph30.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check42 = icmp ult i64 %i.aj, 30
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.ph43

vector.ph43:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf44 = and i64 %i.al, 12
  %n.vec45 = and i64 %i.al, -16                   ; 4 uses
  %i.am = shl i64 %n.vec45, 1
  %i.an = getelementptr i8, ptr %i.z, i64 %i.am
  %broadcast.splatinsert46 = insertelement <8 x i16> poison, i16 %i.y, i64 0
  %broadcast.splat47 = shufflevector <8 x i16> %broadcast.splatinsert46, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph43
  %index49 = phi i64 [ 0, %vector.ph43 ], [ %index.next51, %vector.body48 ] ; 2 uses
  %i.ao = shl i64 %index49, 1
  %next.gep50 = getelementptr i8, ptr %i.z, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep50, i64 16
  store <8 x i16> %broadcast.splat47, ptr %next.gep50, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat47, ptr %i.ap, align 2, !tbaa !208
  %index.next51 = add nuw i64 %index49, 16        ; 2 uses
  %i.aq = icmp eq i64 %index.next51, %n.vec45
  br i1 %i.aq, label %middle.block52, label %vector.body48, !llvm.loop !553

middle.block52:                                   ; preds = %vector.body48
  %cmp.n53 = icmp eq i64 %i.al, %n.vec45
  br i1 %cmp.n53, label %_PyUnicode_FastFill.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block52
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf44, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.i.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec45, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec56 = and i64 %i.al, -4                    ; 3 uses
  %i.ar = shl i64 %n.vec56, 1
  %i.as = getelementptr i8, ptr %i.z, i64 %i.ar
  %broadcast.splatinsert57 = insertelement <4 x i16> poison, i16 %i.y, i64 0
  %broadcast.splat58 = shufflevector <4 x i16> %broadcast.splatinsert57, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index59 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next61, %vec.epilog.vector.body ] ; 2 uses
  %i.at = shl i64 %index59, 1
  %next.gep60 = getelementptr i8, ptr %i.z, i64 %i.at
  store <4 x i16> %broadcast.splat58, ptr %next.gep60, align 2, !tbaa !208
  %index.next61 = add nuw i64 %index59, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next61, %n.vec56
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !554

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n62 = icmp eq i64 %i.al, %n.vec56
  br i1 %cmp.n62, label %_PyUnicode_FastFill.exit, label %.lr.ph30.i.i.preheader

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
  %4 = ptrtoaddr ptr %.0.i.i to i64               ; 2 uses
  %i.ba = shl i64 %1, 2
  %i.bb = shl i64 %i.q, 2
  %i.bc = add i64 %i.ba, %4                       ; 2 uses
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = add i64 %i.bc, 4
  %i.bf = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.be)
  %i.bg = shl i64 %1, 2
  %i.bh = add i64 %i.bg, %4
  %i.bi = xor i64 %i.bh, -1
  %i.bj = add i64 %i.bf, %i.bi                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 2
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.bl, 9223372036854775800     ; 3 uses
  %i.bm = shl i64 %n.vec, 2
  %i.bn = getelementptr i8, ptr %i.ax, i64 %i.bm
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.bp, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_PyUnicode_FastFill.exit, label %.lr.ph.i.i.preheader64

.lr.ph.i.i.preheader64:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.02628.i.i.ph = phi ptr [ %i.ax, %.lr.ph.i.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader64, %.lr.ph.i.i
  %.02628.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %.02628.i.i.ph, %.lr.ph.i.i.preheader64 ] ; 2 uses
  store i32 %3, ptr %.02628.i.i, align 4, !tbaa !7
  %i.br = getelementptr i8, ptr %.02628.i.i, i64 4 ; 2 uses
  %i.bs = icmp ult ptr %i.br, %i.ay
  br i1 %i.bs, label %.lr.ph.i.i, label %_PyUnicode_FastFill.exit, !llvm.loop !557

bb.r:                                             ; preds = %_PyUnicode_DATA.exit.i
  unreachable

_PyUnicode_FastFill.exit:                         ; preds = %.lr.ph.i.i, %.lr.ph30.i.i, %middle.block, %middle.block52, %vec.epilog.middle.block, %bb.q, %bb.p, %bb.o, %unicode_check_modifiable.exit, %bb.k, %bb.j, %bb.g, %bb.b
  %.0 = phi i64 [ -1, %bb.b ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %unicode_check_modifiable.exit ], [ 0, %bb.k ], [ %i.q, %bb.o ], [ %i.q, %bb.p ], [ %i.q, %middle.block52 ], [ %i.q, %bb.q ], [ %i.q, %middle.block ], [ %i.q, %vec.epilog.middle.block ], [ %i.q, %.lr.ph30.i.i ], [ %i.q, %.lr.ph.i.i ]
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
  %.0.i.i = getelementptr i8, ptr %0, i64 40
  br label %_PyUnicode_DATA.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.l, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.d, %bb.e
  %.0.i27 = phi ptr [ %.0.i.i, %bb.d ], [ %.val4.i, %bb.e ] ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 16
  %.val24 = load i64, ptr %i.m, align 8, !tbaa !207 ; 6 uses
  %i.n = tail call ptr @PyList_New(i64 noundef 0) #33, !inline_history !558 ; 8 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %asciilib_splitlines.exit, label %.preheader81.i

.preheader81.i:                                   ; preds = %_PyUnicode_DATA.exit
  %.not57.i = icmp eq i32 %1, 0
  br label %bb.f

bb.f:                                             ; preds = %Py_DECREF.exit64.i, %.preheader81.i
  %.049.i = phi i64 [ %.3.i, %Py_DECREF.exit64.i ], [ 0, %.preheader81.i ] ; 5 uses
  %i.p = icmp slt i64 %.049.i, %.val24
  br i1 %i.p, label %.preheader.i, label %asciilib_splitlines.exit

.preheader.i:                                     ; preds = %bb.f, %.thread.i
  %.184.i = phi i64 [ %i.af, %.thread.i ], [ %.049.i, %bb.f ] ; 6 uses
  %i.q = getelementptr i8, ptr %.0.i27, i64 %.184.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !205   ; 4 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = icmp sgt i8 %i.r, -1
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader.i
  %i.u = zext nneg i8 %i.r to i64
  %i.v = getelementptr i8, ptr @ascii_linebreak, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !205
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %.thread.i, label %.critedge.i

bb.h:                                             ; preds = %.preheader.i
  %.b234 = load i1, ptr @bloom_linebreak, align 8
  %i.y = select i1 %.b234, i64 3300413940768, i64 -1
  %i.z = and i32 %i.s, 63
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.y, %i.ab
  %.not.i28 = icmp eq i64 %i.ac, 0
  br i1 %.not.i28, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call i32 @_PyUnicode_IsLinebreak(i32 noundef %i.s) #33, !inline_history !558
  %.not79.i = icmp eq i32 %i.ad, 0
  br i1 %.not79.i, label %.thread.i, label %..critedge.i_crit_edge

..critedge.i_crit_edge:                           ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %.0.i27, i64 %.184.i
  %.pre159 = load i8, ptr %i.ae, align 1, !tbaa !205
  br label %.critedge.i

.thread.i:                                        ; preds = %bb.i, %bb.h, %bb.g
  %i.af = add i64 %.184.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %.val24
  br i1 %exitcond.not.i, label %.critedge61.i, label %.preheader.i, !llvm.loop !559

.critedge.i:                                      ; preds = %bb.g, %..critedge.i_crit_edge
  %i.ag = phi i8 [ %.pre159, %..critedge.i_crit_edge ], [ %i.r, %bb.g ]
  %i.ah = icmp eq i8 %i.ag, 13
  %i.ai = add nsw i64 %.184.i, 1                  ; 4 uses
  %i.aj = icmp slt i64 %i.ai, %.val24
  %or.cond98.i = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond98.i, label %bb.j, label %.critedge._crit_edge.i

bb.j:                                             ; preds = %.critedge.i
  %i.ak = getelementptr i8, ptr %.0.i27, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !205
  %i.am = icmp eq i8 %i.al, 10
  %i.an = add nsw i64 %.184.i, 2
  %spec.select99.i = select i1 %i.am, i64 %i.an, i64 %i.ai
  br label %.critedge._crit_edge.i

.critedge._crit_edge.i:                           ; preds = %bb.j, %.critedge.i
  %.2.i = phi i64 [ %spec.select99.i, %bb.j ], [ %i.ai, %.critedge.i ] ; 2 uses
  %spec.select.i = select i1 %.not57.i, i64 %.184.i, i64 %.2.i
  br label %.critedge61.i

.critedge61.i:                                    ; preds = %.thread.i, %.critedge._crit_edge.i
  %.3.i = phi i64 [ %.2.i, %.critedge._crit_edge.i ], [ %.val24, %.thread.i ]
  %.0.i29 = phi i64 [ %spec.select.i, %.critedge._crit_edge.i ], [ %.val24, %.thread.i ] ; 2 uses
  %i.ao = icmp eq i64 %.049.i, 0
  %i.ap = icmp eq i64 %.0.i29, %.val24
  %or.cond.i = and i1 %i.ao, %i.ap
  br i1 %or.cond.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.critedge61.i
  %.val.i32 = load ptr, ptr %i.a, align 8, !tbaa !197
  %.not80.i = icmp eq ptr %.val.i32, @PyUnicode_Type
  br i1 %.not80.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = tail call i32 @PyList_Append(ptr noundef nonnull %i.n, ptr noundef nonnull %0) #33, !inline_history !558
  %.not60.i = icmp eq i32 %i.aq, 0
  br i1 %.not60.i, label %asciilib_splitlines.exit, label %_PyUnicode_FromASCII.exit.thread.i

bb.m:                                             ; preds = %bb.k, %.critedge61.i
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
  %min.iters.check191 = icmp ult i64 %i.k, 4
  br i1 %min.iters.check191, label %.lr.ph126.preheader, label %vector.memcheck185

vector.memcheck185:                               ; preds = %iter.check
  %i.l = sub i64 %i.j, %.087.lcssa135.pre-phi
  %i.m = shl i64 %i.l, 1
  %scevgep186 = getelementptr i8, ptr %.085.lcssa, i64 %i.m
  %bound0187 = icmp ult ptr %.085.lcssa, %scevgep136
  %bound1188 = icmp ult ptr %.087.lcssa, %scevgep186
  %found.conflict189 = and i1 %bound0187, %bound1188
  br i1 %found.conflict189, label %.lr.ph126.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck185
  %min.iters.check192 = icmp ult i64 %i.k, 16
  br i1 %min.iters.check192, label %vec.epilog.ph, label %vector.ph193

vector.ph193:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf194 = and i64 %i.k, 12
  %n.vec195 = and i64 %i.k, -16                   ; 5 uses
  %i.n = shl i64 %n.vec195, 1
  %i.o = getelementptr i8, ptr %.085.lcssa, i64 %i.n
  %i.p = getelementptr i8, ptr %.087.lcssa, i64 %n.vec195
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph193
  %index197 = phi i64 [ 0, %vector.ph193 ], [ %index.next202, %vector.body196 ] ; 3 uses
  %i.q = shl i64 %index197, 1
  %next.gep198 = getelementptr i8, ptr %.085.lcssa, i64 %i.q ; 2 uses
  %next.gep199 = getelementptr i8, ptr %.087.lcssa, i64 %index197 ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep199, i64 8
  %wide.load200 = load <8 x i8>, ptr %next.gep199, align 1, !tbaa !205, !alias.scope !577
  %wide.load201 = load <8 x i8>, ptr %i.r, align 1, !tbaa !205, !alias.scope !577
  %i.s = zext <8 x i8> %wide.load200 to <8 x i16>
  %i.t = zext <8 x i8> %wide.load201 to <8 x i16>
  %i.u = getelementptr i8, ptr %next.gep198, i64 16
  store <8 x i16> %i.s, ptr %next.gep198, align 2, !tbaa !208, !alias.scope !580, !noalias !577
  store <8 x i16> %i.t, ptr %i.u, align 2, !tbaa !208, !alias.scope !580, !noalias !577
  %index.next202 = add nuw i64 %index197, 16      ; 2 uses
  %i.v = icmp eq i64 %index.next202, %n.vec195
  br i1 %i.v, label %middle.block203, label %vector.body196, !llvm.loop !582

middle.block203:                                  ; preds = %vector.body196
  %cmp.n204 = icmp eq i64 %i.k, %n.vec195
  br i1 %cmp.n204, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block203
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf194, 0
  br i1 %min.epilog.iters.check, label %.lr.ph126.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec195, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec208 = and i64 %i.k, -4                    ; 4 uses
  %i.w = shl i64 %n.vec208, 1
  %i.x = getelementptr i8, ptr %.085.lcssa, i64 %i.w
  %i.y = getelementptr i8, ptr %.087.lcssa, i64 %n.vec208
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index209 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next213, %vec.epilog.vector.body ] ; 3 uses
  %i.z = shl i64 %index209, 1
  %next.gep210 = getelementptr i8, ptr %.085.lcssa, i64 %i.z
  %next.gep211 = getelementptr i8, ptr %.087.lcssa, i64 %index209
  %wide.load212 = load <4 x i8>, ptr %next.gep211, align 1, !tbaa !205, !alias.scope !577
  %i.aa = zext <4 x i8> %wide.load212 to <4 x i16>
  store <4 x i16> %i.aa, ptr %next.gep210, align 2, !tbaa !208, !alias.scope !580, !noalias !577
  %index.next213 = add nuw i64 %index209, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !583

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n214 = icmp eq i64 %i.k, %n.vec208
  br i1 %cmp.n214, label %.loopexit, label %.lr.ph126.preheader

.lr.ph126.preheader:                              ; preds = %vector.memcheck185, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.186125.ph = phi ptr [ %.085.lcssa, %iter.check ], [ %.085.lcssa, %vector.memcheck185 ], [ %i.o, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  %.188124.ph = phi ptr [ %.087.lcssa, %iter.check ], [ %.087.lcssa, %vector.memcheck185 ], [ %i.p, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
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
  %.091.lcssa = phi ptr [ %1, %bb.h ], [ %i.cb, %.lr.ph113 ] ; 5 uses
  %.089.lcssa = phi ptr [ %i.az, %bb.h ], [ %i.cc, %.lr.ph113 ] ; 3 uses
  %i.bf = icmp ult ptr %.091.lcssa, %i.bc
  br i1 %i.bf, label %.lr.ph118.preheader, label %.loopexit

.lr.ph118.preheader:                              ; preds = %.preheader101
  %i.bg = shl nuw nsw i64 %2, 1
  %i.bh = add i64 %i.bg, %4
  %5 = ptrtoaddr ptr %.091.lcssa to i64           ; 2 uses
  %i.bi = add i64 %5, 2
  %i.bj = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 %i.bi)
  %i.bk = xor i64 %5, -1
  %i.bl = add i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = lshr i64 %i.bl, 1
  %i.bn = add nuw i64 %i.bm, 1                    ; 2 uses
  %min.iters.check170 = icmp ult i64 %i.bl, 14
  br i1 %min.iters.check170, label %.lr.ph118.preheader218, label %vector.ph171

vector.ph171:                                     ; preds = %.lr.ph118.preheader
  %n.vec173 = and i64 %i.bn, -8                   ; 4 uses
  %i.bo = shl i64 %n.vec173, 2
  %i.bp = getelementptr i8, ptr %.089.lcssa, i64 %i.bo
  %i.bq = shl i64 %n.vec173, 1
  %i.br = getelementptr i8, ptr %.091.lcssa, i64 %i.bq
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph171
  %index175 = phi i64 [ 0, %vector.ph171 ], [ %index.next180, %vector.body174 ] ; 3 uses
  %i.bs = shl i64 %index175, 2
  %next.gep176 = getelementptr i8, ptr %.089.lcssa, i64 %i.bs ; 2 uses
  %i.bt = shl i64 %index175, 1
  %next.gep177 = getelementptr i8, ptr %.091.lcssa, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep177, i64 8
  %wide.load178 = load <4 x i16>, ptr %next.gep177, align 2, !tbaa !208
  %wide.load179 = load <4 x i16>, ptr %i.bu, align 2, !tbaa !208
  %i.bv = zext <4 x i16> %wide.load178 to <4 x i32>
  %i.bw = zext <4 x i16> %wide.load179 to <4 x i32>
  %i.bx = getelementptr i8, ptr %next.gep176, i64 16
  store <4 x i32> %i.bv, ptr %next.gep176, align 4, !tbaa !7
  store <4 x i32> %i.bw, ptr %i.bx, align 4, !tbaa !7
  %index.next180 = add nuw i64 %index175, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.by, label %middle.block181, label %vector.body174, !llvm.loop !586

middle.block181:                                  ; preds = %vector.body174
  %cmp.n182 = icmp eq i64 %i.bn, %n.vec173
  br i1 %cmp.n182, label %.loopexit, label %.lr.ph118.preheader218

.lr.ph118.preheader218:                           ; preds = %.lr.ph118.preheader, %middle.block181
  %.190117.ph = phi ptr [ %.089.lcssa, %.lr.ph118.preheader ], [ %i.bp, %middle.block181 ]
  %.192116.ph = phi ptr [ %.091.lcssa, %.lr.ph118.preheader ], [ %i.br, %middle.block181 ]
  br label %.lr.ph118

.lr.ph113:                                        ; preds = %bb.h, %.lr.ph113
  %.089112 = phi ptr [ %i.cc, %.lr.ph113 ], [ %i.az, %bb.h ] ; 2 uses
  %.091111 = phi ptr [ %i.cb, %.lr.ph113 ], [ %1, %bb.h ] ; 2 uses
  %i.bz = load <4 x i16>, ptr %.091111, align 2, !tbaa !208
  %i.ca = zext <4 x i16> %i.bz to <4 x i32>
  store <4 x i32> %i.ca, ptr %.089112, align 4, !tbaa !7
  %i.cb = getelementptr i8, ptr %.091111, i64 8   ; 3 uses
  %i.cc = getelementptr i8, ptr %.089112, i64 16  ; 2 uses
  %i.cd = icmp ult ptr %i.cb, %i.bd
  br i1 %i.cd, label %.lr.ph113, label %.preheader101, !llvm.loop !587

.lr.ph118:                                        ; preds = %.lr.ph118.preheader218, %.lr.ph118
  %.190117 = phi ptr [ %i.ch, %.lr.ph118 ], [ %.190117.ph, %.lr.ph118.preheader218 ] ; 2 uses
  %.192116 = phi ptr [ %i.ce, %.lr.ph118 ], [ %.192116.ph, %.lr.ph118.preheader218 ] ; 2 uses
  %i.ce = getelementptr i8, ptr %.192116, i64 2   ; 2 uses
  %i.cf = load i16, ptr %.192116, align 2, !tbaa !208
  %i.cg = zext i16 %i.cf to i32
  %i.ch = getelementptr i8, ptr %.190117, i64 4
  store i32 %i.cg, ptr %.190117, align 4, !tbaa !7
  %i.ci = icmp ult ptr %i.ce, %i.bc
  br i1 %i.ci, label %.lr.ph118, label %.loopexit, !llvm.loop !588

bb.i:                                             ; preds = %bb.g
  %i.cj = getelementptr i8, ptr %1, i64 %2
  %i.ck = getelementptr i8, ptr %1, i64 %i.bb     ; 2 uses
  %i.cl = icmp ult ptr %1, %i.ck
  br i1 %i.cl, label %.lr.ph, label %.preheader103

.preheader103.loopexit:                           ; preds = %.lr.ph
  %.pre138 = ptrtoaddr ptr %i.do to i64
  br label %.preheader103

.preheader103:                                    ; preds = %.preheader103.loopexit, %bb.i
  %.082.lcssa134.pre-phi = phi i64 [ %.pre138, %.preheader103.loopexit ], [ %4, %bb.i ] ; 2 uses
  %.083.lcssa = phi ptr [ %i.dp, %.preheader103.loopexit ], [ %i.az, %bb.i ] ; 6 uses
  %.082.lcssa = phi ptr [ %i.do, %.preheader103.loopexit ], [ %1, %bb.i ] ; 7 uses
  %i.cm = icmp ult ptr %.082.lcssa, %i.cj
  br i1 %i.cm, label %.lr.ph110.preheader, label %.loopexit

.lr.ph110.preheader:                              ; preds = %.preheader103
  %i.cn = add i64 %2, %4                          ; 2 uses
  %i.co = sub i64 %i.cn, %.082.lcssa134.pre-phi   ; 4 uses
  %scevgep = getelementptr i8, ptr %.082.lcssa, i64 %i.co ; 2 uses
  %min.iters.check = icmp ult i64 %i.co, 20
  br i1 %min.iters.check, label %.lr.ph110.preheader222, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110.preheader
  %i.cp = sub i64 %i.cn, %.082.lcssa134.pre-phi
  %i.cq = shl i64 %i.cp, 2
  %scevgep165 = getelementptr i8, ptr %.083.lcssa, i64 %i.cq
  %bound0 = icmp ult ptr %.083.lcssa, %scevgep
  %bound1 = icmp ult ptr %.082.lcssa, %scevgep165
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader222, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.co, -8                      ; 4 uses
  %i.cr = getelementptr i8, ptr %.082.lcssa, i64 %n.vec
  %i.cs = shl i64 %n.vec, 2
  %i.ct = getelementptr i8, ptr %.083.lcssa, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.082.lcssa, i64 %index ; 2 uses
  %i.cu = shl i64 %index, 2
  %next.gep166 = getelementptr i8, ptr %.083.lcssa, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !205, !alias.scope !589
  %wide.load167 = load <4 x i8>, ptr %i.cv, align 1, !tbaa !205, !alias.scope !589
  %i.cw = zext <4 x i8> %wide.load to <4 x i32>
  %i.cx = zext <4 x i8> %wide.load167 to <4 x i32>
  %i.cy = getelementptr i8, ptr %next.gep166, i64 16
  store <4 x i32> %i.cw, ptr %next.gep166, align 4, !tbaa !7, !alias.scope !592, !noalias !589
  store <4 x i32> %i.cx, ptr %i.cy, align 4, !tbaa !7, !alias.scope !592, !noalias !589
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !594

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph110.preheader222

.lr.ph110.preheader222:                           ; preds = %vector.memcheck, %.lr.ph110.preheader, %middle.block
  %.1109.ph = phi ptr [ %.082.lcssa, %vector.memcheck ], [ %.082.lcssa, %.lr.ph110.preheader ], [ %i.cr, %middle.block ]
  %.184108.ph = phi ptr [ %.083.lcssa, %vector.memcheck ], [ %.083.lcssa, %.lr.ph110.preheader ], [ %i.ct, %middle.block ]
  br label %.lr.ph110

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.082106 = phi ptr [ %i.do, %.lr.ph ], [ %1, %bb.i ] ; 5 uses
  %.083105 = phi ptr [ %i.dp, %.lr.ph ], [ %i.az, %bb.i ] ; 5 uses
  %i.da = load i8, ptr %.082106, align 1, !tbaa !205
  %i.db = zext i8 %i.da to i32
  store i32 %i.db, ptr %.083105, align 4, !tbaa !7
  %i.dc = getelementptr i8, ptr %.082106, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !205
  %i.de = zext i8 %i.dd to i32
  %i.df = getelementptr i8, ptr %.083105, i64 4
  store i32 %i.de, ptr %i.df, align 4, !tbaa !7
  %i.dg = getelementptr i8, ptr %.082106, i64 2
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !205
  %i.di = zext i8 %i.dh to i32
  %i.dj = getelementptr i8, ptr %.083105, i64 8
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !7
  %i.dk = getelementptr i8, ptr %.082106, i64 3
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !205
  %i.dm = zext i8 %i.dl to i32
  %i.dn = getelementptr i8, ptr %.083105, i64 12
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !7
  %i.do = getelementptr i8, ptr %.082106, i64 4   ; 4 uses
  %i.dp = getelementptr i8, ptr %.083105, i64 16  ; 2 uses
  %i.dq = icmp ult ptr %i.do, %i.ck
  br i1 %i.dq, label %.lr.ph, label %.preheader103.loopexit, !llvm.loop !595

.lr.ph110:                                        ; preds = %.lr.ph110.preheader222, %.lr.ph110
  %.1109 = phi ptr [ %i.dr, %.lr.ph110 ], [ %.1109.ph, %.lr.ph110.preheader222 ] ; 2 uses
  %.184108 = phi ptr [ %i.du, %.lr.ph110 ], [ %.184108.ph, %.lr.ph110.preheader222 ] ; 2 uses
  %i.dr = getelementptr i8, ptr %.1109, i64 1     ; 2 uses
  %i.ds = load i8, ptr %.1109, align 1, !tbaa !205
  %i.dt = zext i8 %i.ds to i32
  %i.du = getelementptr i8, ptr %.184108, i64 4
  store i32 %i.dt, ptr %.184108, align 4, !tbaa !7
  %exitcond.not = icmp eq ptr %i.dr, %scevgep
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph110, !llvm.loop !596

.loopexit.sink.split:                             ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  %i.dv = tail call ptr @PyErr_NoMemory() #33
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph110, %.lr.ph118, %.lr.ph126, %middle.block, %middle.block181, %middle.block203, %vec.epilog.middle.block, %.loopexit.sink.split, %.preheader103, %.preheader101, %.preheader
  %.0 = phi ptr [ %i.dv, %.loopexit.sink.split ], [ %i.d, %middle.block203 ], [ %i.az, %.preheader101 ], [ %i.d, %.preheader ], [ %i.az, %.preheader103 ], [ %i.az, %middle.block181 ], [ %i.az, %middle.block ], [ %i.d, %vec.epilog.middle.block ], [ %i.az, %.lr.ph118 ], [ %i.d, %.lr.ph126 ], [ %i.az, %.lr.ph110 ]
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
  %i.bu = shl nuw nsw i64 %i.x, 2
  %invariant.op = add i64 %.0.i87.i79, 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.as, %_PyUnicode_DATA.exit89.i
  %.164134.i = phi i64 [ 0, %_PyUnicode_DATA.exit89.i ], [ %i.ej, %bb.as ] ; 4 uses
  %.2133.i = phi i64 [ 0, %_PyUnicode_DATA.exit89.i ], [ %.3.i, %bb.as ] ; 12 uses
  %.269132.i = phi i64 [ 0, %_PyUnicode_DATA.exit89.i ], [ %.370.i, %bb.as ] ; 4 uses
  switch i32 %i.r, label %bb.ag [
    i32 1, label %bb.ae
    i32 2, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.bv = getelementptr i8, ptr %.0.i.i, i64 %.164134.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !205
  %i.bx = zext i8 %i.bw to i32
  br label %PyUnicode_READ.exit91.i

bb.af:                                            ; preds = %bb.ad
  %i.by = getelementptr [2 x i8], ptr %.0.i.i, i64 %.164134.i
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !208
  %i.ca = zext i16 %i.bz to i32
  br label %PyUnicode_READ.exit91.i

bb.ag:                                            ; preds = %bb.ad
  %i.cb = getelementptr [4 x i8], ptr %.0.i.i, i64 %.164134.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  br label %PyUnicode_READ.exit91.i

PyUnicode_READ.exit91.i:                          ; preds = %bb.ag, %bb.af, %bb.ae
  %.0.i90.i = phi i32 [ %i.bx, %bb.ae ], [ %i.ca, %bb.af ], [ %i.cc, %bb.ag ] ; 5 uses
  %i.cd = icmp eq i32 %.0.i90.i, 9
  br i1 %i.cd, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %PyUnicode_READ.exit91.i
  br i1 %i.w, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.ce = srem i64 %.269132.i, %i.x               ; 3 uses
  %i.cf = sub nsw i64 %i.x, %i.ce                 ; 5 uses
  %i.cg = add i64 %i.cf, %.269132.i
  switch i32 %i.r, label %bb.am [
    i32 1, label %bb.aj
    i32 2, label %bb.ak
    i32 4, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ch = getelementptr i8, ptr %.0.i87.i, i64 %.2133.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.ch, i8 32, i64 %i.cf, i1 false)
  br label %_PyUnicode_Fill.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.ci = getelementptr [2 x i8], ptr %.0.i87.i, i64 %.2133.i ; 7 uses
  %i.cj = getelementptr [2 x i8], ptr %i.ci, i64 %i.cf ; 2 uses
  %i.ck = icmp ult ptr %i.ci, %i.cj
  br i1 %i.ck, label %iter.check, label %_PyUnicode_Fill.exit.i

iter.check:                                       ; preds = %bb.ak
  %i.cl = shl i64 %.2133.i, 1                     ; 3 uses
  %i.cm = add i64 %i.bs, %i.cl
  %i.cn = shl i64 %i.ce, 1
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = add i64 %i.bt, %i.cl
  %umax = call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cp)
  %i.cq = add i64 %umax, %i.bq
  %i.cr = sub i64 %i.cq, %i.cl                    ; 3 uses
  %i.cs = lshr i64 %i.cr, 1
  %i.ct = add nuw i64 %i.cs, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.cr, 6
  br i1 %min.iters.check, label %.lr.ph30.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check80 = icmp ult i64 %i.cr, 30
  br i1 %min.iters.check80, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ct, 12
  %n.vec = and i64 %i.ct, -16                     ; 4 uses
  %i.cu = shl i64 %n.vec, 1
  %i.cv = getelementptr i8, ptr %i.ci, i64 %i.cu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.ci, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 32), ptr %next.gep, align 2, !tbaa !208
  store <8 x i16> splat (i16 32), ptr %i.cx, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !906

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.i.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec82 = and i64 %i.ct, -4                    ; 3 uses
  %i.cz = shl i64 %n.vec82, 1
  %i.da = getelementptr i8, ptr %i.ci, i64 %i.cz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index83 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next85, %vec.epilog.vector.body ] ; 2 uses
  %i.db = shl i64 %index83, 1
  %next.gep84 = getelementptr i8, ptr %i.ci, i64 %i.db
  store <4 x i16> splat (i16 32), ptr %next.gep84, align 2, !tbaa !208
  %index.next85 = add nuw i64 %index83, 4         ; 2 uses
  %i.dc = icmp eq i64 %index.next85, %n.vec82
  br i1 %i.dc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !907

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n86 = icmp eq i64 %i.ct, %n.vec82
  br i1 %cmp.n86, label %_PyUnicode_Fill.exit.i, label %.lr.ph30.i.i.preheader

.lr.ph30.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i.i.ph = phi ptr [ %i.ci, %iter.check ], [ %i.cv, %vec.epilog.iter.check ], [ %i.da, %vec.epilog.middle.block ]
  br label %.lr.ph30.i.i

.lr.ph30.i.i:                                     ; preds = %.lr.ph30.i.i.preheader, %.lr.ph30.i.i
  %.029.i.i = phi ptr [ %i.dd, %.lr.ph30.i.i ], [ %.029.i.i.ph, %.lr.ph30.i.i.preheader ] ; 2 uses
  store i16 32, ptr %.029.i.i, align 2, !tbaa !208
  %i.dd = getelementptr i8, ptr %.029.i.i, i64 2  ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.cj
  br i1 %i.de, label %.lr.ph30.i.i, label %_PyUnicode_Fill.exit.i, !llvm.loop !908

bb.al:                                            ; preds = %bb.ai
  %i.df = getelementptr [4 x i8], ptr %.0.i87.i, i64 %.2133.i ; 5 uses
  %i.dg = getelementptr [4 x i8], ptr %i.df, i64 %i.cf ; 2 uses
  %i.dh = icmp ult ptr %i.df, %i.dg
  br i1 %i.dh, label %.lr.ph.i.i.preheader, label %_PyUnicode_Fill.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.al
  %i.di = shl i64 %.2133.i, 2                     ; 2 uses
  %i.dj = shl i64 %i.ce, 2
  %i.dk = sub i64 %.0.i87.i79, %i.dj
  %i.dl = add i64 %i.dk, %i.di
  %i.dm = add i64 %i.dl, %i.bu
  %.reass = add i64 %i.di, %invariant.op
  %i.dn = call i64 @llvm.umax.i64(i64 %i.dm, i64 %.reass)
  %i.do = shl i64 %.2133.i, 2
  %i.dp = add i64 %i.do, %.0.i87.i79
  %i.dq = xor i64 %i.dp, -1
  %i.dr = add i64 %i.dn, %i.dq                    ; 2 uses
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check88 = icmp ult i64 %i.dr, 28
  br i1 %min.iters.check88, label %.lr.ph.i.i.preheader98, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec91 = and i64 %i.dt, 9223372036854775800   ; 3 uses
  %i.du = shl i64 %n.vec91, 2
  %i.dv = getelementptr i8, ptr %i.df, i64 %i.du
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph89
  %index93 = phi i64 [ 0, %vector.ph89 ], [ %index.next95, %vector.body92 ] ; 2 uses
  %i.dw = shl i64 %index93, 2
  %next.gep94 = getelementptr i8, ptr %i.df, i64 %i.dw ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep94, i64 16
  store <4 x i32> splat (i32 32), ptr %next.gep94, align 4, !tbaa !7
  store <4 x i32> splat (i32 32), ptr %i.dx, align 4, !tbaa !7
  %index.next95 = add nuw i64 %index93, 8         ; 2 uses
  %i.dy = icmp eq i64 %index.next95, %n.vec91
  br i1 %i.dy, label %middle.block96, label %vector.body92, !llvm.loop !909

middle.block96:                                   ; preds = %vector.body92
  %cmp.n97 = icmp eq i64 %i.dt, %n.vec91
  br i1 %cmp.n97, label %_PyUnicode_Fill.exit.i, label %.lr.ph.i.i.preheader98

.lr.ph.i.i.preheader98:                           ; preds = %.lr.ph.i.i.preheader, %middle.block96
  %.02628.i.i.ph = phi ptr [ %i.df, %.lr.ph.i.i.preheader ], [ %i.dv, %middle.block96 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader98, %.lr.ph.i.i
  %.02628.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %.02628.i.i.ph, %.lr.ph.i.i.preheader98 ] ; 2 uses
  store i32 32, ptr %.02628.i.i, align 4, !tbaa !7
  %i.dz = getelementptr i8, ptr %.02628.i.i, i64 4 ; 2 uses
  %i.ea = icmp ult ptr %i.dz, %i.dg
  br i1 %i.ea, label %.lr.ph.i.i, label %_PyUnicode_Fill.exit.i, !llvm.loop !910

bb.am:                                            ; preds = %bb.ai
  unreachable

_PyUnicode_Fill.exit.i:                           ; preds = %.lr.ph.i.i, %.lr.ph30.i.i, %middle.block96, %middle.block, %vec.epilog.middle.block, %bb.al, %bb.ak, %bb.aj
  %i.eb = add i64 %i.cf, %.2133.i
  br label %bb.as

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
  %i.m = tail call ptr @PyMem_Malloc(i64 noundef %i.l) #33 ; 16 uses
  %2 = ptrtoaddr ptr %i.m to i64
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
  %.074.lcssa = phi ptr [ %i.m, %bb.k ], [ %i.br, %.lr.ph98 ] ; 9 uses
  %.072.lcssa = phi ptr [ %.0.i85, %bb.k ], [ %i.bs, %.lr.ph98 ] ; 6 uses
  %.074.lcssa126 = ptrtoaddr ptr %.074.lcssa to i64 ; 2 uses
  %i.ae = icmp ult ptr %.074.lcssa, %i.t
  br i1 %i.ae, label %.lr.ph103.preheader, label %.loopexit

.lr.ph103.preheader:                              ; preds = %.preheader
  %3 = ptrtoaddr ptr %i.m to i64
  %i.af = add i64 %.idx79, %3
  %4 = ptrtoaddr ptr %.074.lcssa to i64           ; 2 uses
  %i.ag = add i64 %4, 4
  %i.ah = call i64 @llvm.umax.i64(i64 %i.af, i64 %i.ag)
  %i.ai = xor i64 %4, -1
  %i.aj = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = lshr i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check129 = icmp ult i64 %i.aj, 156
  br i1 %min.iters.check129, label %.lr.ph103.preheader144, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph103.preheader
  %i.am = add i64 %.idx79, %2
  %i.an = add i64 %.074.lcssa126, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.am, i64 %i.an)
  %i.ao = xor i64 %.074.lcssa126, -1
  %i.ap = add i64 %umax, %i.ao                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = getelementptr i8, ptr %.072.lcssa, i64 %i.aq
  %scevgep = getelementptr i8, ptr %i.ar, i64 1
  %i.as = and i64 %i.ap, -4
  %i.at = getelementptr i8, ptr %.074.lcssa, i64 %i.as
  %scevgep127 = getelementptr i8, ptr %i.at, i64 4
  %bound0 = icmp ult ptr %.072.lcssa, %scevgep127
  %bound1 = icmp ult ptr %.074.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph103.preheader144, label %vector.ph130

vector.ph130:                                     ; preds = %vector.memcheck
  %n.vec132 = and i64 %i.al, 9223372036854775800  ; 4 uses
  %i.au = getelementptr i8, ptr %.072.lcssa, i64 %n.vec132
  %i.av = shl i64 %n.vec132, 2
  %i.aw = getelementptr i8, ptr %.074.lcssa, i64 %i.av
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph130
  %index134 = phi i64 [ 0, %vector.ph130 ], [ %index.next139, %vector.body133 ] ; 3 uses
  %next.gep135 = getelementptr i8, ptr %.072.lcssa, i64 %index134 ; 2 uses
  %i.ax = shl i64 %index134, 2
  %next.gep136 = getelementptr i8, ptr %.074.lcssa, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep136, i64 16
  %wide.load137 = load <4 x i32>, ptr %next.gep136, align 4, !tbaa !7, !alias.scope !948
  %wide.load138 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !7, !alias.scope !948
  %i.az = trunc <4 x i32> %wide.load137 to <4 x i8>
  %i.ba = trunc <4 x i32> %wide.load138 to <4 x i8>
  %i.bb = getelementptr i8, ptr %next.gep135, i64 4
  store <4 x i8> %i.az, ptr %next.gep135, align 1, !tbaa !205, !alias.scope !951, !noalias !948
  store <4 x i8> %i.ba, ptr %i.bb, align 1, !tbaa !205, !alias.scope !951, !noalias !948
  %index.next139 = add nuw i64 %index134, 8       ; 2 uses
  %i.bc = icmp eq i64 %index.next139, %n.vec132
  br i1 %i.bc, label %middle.block140, label %vector.body133, !llvm.loop !953

middle.block140:                                  ; preds = %vector.body133
  %cmp.n141 = icmp eq i64 %i.al, %n.vec132
  br i1 %cmp.n141, label %.loopexit, label %.lr.ph103.preheader144

.lr.ph103.preheader144:                           ; preds = %vector.memcheck, %.lr.ph103.preheader, %middle.block140
  %.173102.ph = phi ptr [ %.072.lcssa, %vector.memcheck ], [ %.072.lcssa, %.lr.ph103.preheader ], [ %i.au, %middle.block140 ]
  %.175101.ph = phi ptr [ %.074.lcssa, %vector.memcheck ], [ %.074.lcssa, %.lr.ph103.preheader ], [ %i.aw, %middle.block140 ]
  br label %.lr.ph103

.lr.ph98:                                         ; preds = %bb.k, %.lr.ph98
  %.07297 = phi ptr [ %i.bs, %.lr.ph98 ], [ %.0.i85, %bb.k ] ; 5 uses
  %.07496 = phi ptr [ %i.br, %.lr.ph98 ], [ %i.m, %bb.k ] ; 5 uses
  %i.bd = load i32, ptr %.07496, align 4, !tbaa !7
  %i.be = trunc i32 %i.bd to i8
  store i8 %i.be, ptr %.07297, align 1, !tbaa !205
  %i.bf = getelementptr i8, ptr %.07496, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr i8, ptr %.07297, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !205
  %i.bj = getelementptr i8, ptr %.07496, i64 8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr i8, ptr %.07297, i64 2
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !205
  %i.bn = getelementptr i8, ptr %.07496, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = getelementptr i8, ptr %.07297, i64 3
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !205
  %i.br = getelementptr i8, ptr %.07496, i64 16   ; 3 uses
  %i.bs = getelementptr i8, ptr %.07297, i64 4    ; 2 uses
  %i.bt = icmp ult ptr %i.br, %i.ac
  br i1 %i.bt, label %.lr.ph98, label %.preheader, !llvm.loop !954

.lr.ph103:                                        ; preds = %.lr.ph103.preheader144, %.lr.ph103
  %.173102 = phi ptr [ %i.bx, %.lr.ph103 ], [ %.173102.ph, %.lr.ph103.preheader144 ] ; 2 uses
  %.175101 = phi ptr [ %i.bu, %.lr.ph103 ], [ %.175101.ph, %.lr.ph103.preheader144 ] ; 2 uses
  %i.bu = getelementptr i8, ptr %.175101, i64 4   ; 2 uses
  %i.bv = load i32, ptr %.175101, align 4, !tbaa !7
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr i8, ptr %.173102, i64 1
  store i8 %i.bw, ptr %.173102, align 1, !tbaa !205
  %i.by = icmp ult ptr %i.bu, %i.t
  br i1 %i.by, label %.lr.ph103, label %.loopexit, !llvm.loop !955

bb.l:                                             ; preds = %_PyUnicode_DATA.exit87
  %i.bz = ashr exact i64 %.idx79, 2
  %i.ca = and i64 %i.bz, -4
  %i.cb = getelementptr [4 x i8], ptr %i.m, i64 %i.ca ; 2 uses
  %i.cc = icmp ult ptr %i.m, %i.cb
  br i1 %i.cc, label %.lr.ph, label %.preheader88

.preheader88:                                     ; preds = %.lr.ph, %bb.l
  %.070.lcssa = phi ptr [ %.0.i85, %bb.l ], [ %i.cz, %.lr.ph ] ; 3 uses
  %.069.lcssa = phi ptr [ %i.m, %bb.l ], [ %i.cy, %.lr.ph ] ; 5 uses
  %i.cd = icmp ult ptr %.069.lcssa, %i.t
  br i1 %i.cd, label %.lr.ph95.preheader, label %.loopexit

.lr.ph95.preheader:                               ; preds = %.preheader88
  %5 = ptrtoaddr ptr %i.m to i64
  %i.ce = add i64 %.idx79, %5
  %6 = ptrtoaddr ptr %.069.lcssa to i64           ; 2 uses
  %i.cf = add i64 %6, 4
  %i.cg = call i64 @llvm.umax.i64(i64 %i.ce, i64 %i.cf)
  %i.ch = xor i64 %6, -1
  %i.ci = add i64 %i.cg, %i.ch                    ; 2 uses
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check, label %.lr.ph95.preheader146, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph95.preheader
  %n.vec = and i64 %i.ck, 9223372036854775800     ; 4 uses
  %i.cl = shl i64 %n.vec, 2
  %i.cm = getelementptr i8, ptr %.069.lcssa, i64 %i.cl
  %i.cn = shl nuw i64 %n.vec, 1
  %i.co = getelementptr i8, ptr %.070.lcssa, i64 %i.cn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.069.lcssa, i64 %i.cp ; 2 uses
  %i.cq = shl i64 %index, 1
  %next.gep123 = getelementptr i8, ptr %.070.lcssa, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load124 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !7
  %i.cs = trunc <4 x i32> %wide.load to <4 x i16>
  %i.ct = trunc <4 x i32> %wide.load124 to <4 x i16>
  %i.cu = getelementptr i8, ptr %next.gep123, i64 8
  store <4 x i16> %i.cs, ptr %next.gep123, align 2, !tbaa !208
  store <4 x i16> %i.ct, ptr %i.cu, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !956

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph95.preheader146

.lr.ph95.preheader146:                            ; preds = %.lr.ph95.preheader, %middle.block
  %.194.ph = phi ptr [ %.069.lcssa, %.lr.ph95.preheader ], [ %i.cm, %middle.block ]
  %.17193.ph = phi ptr [ %.070.lcssa, %.lr.ph95.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph95

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %.06991 = phi ptr [ %i.cy, %.lr.ph ], [ %i.m, %bb.l ] ; 2 uses
  %.07090 = phi ptr [ %i.cz, %.lr.ph ], [ %.0.i85, %bb.l ] ; 2 uses
  %i.cw = load <4 x i32>, ptr %.06991, align 4, !tbaa !7
  %i.cx = trunc <4 x i32> %i.cw to <4 x i16>
  store <4 x i16> %i.cx, ptr %.07090, align 2, !tbaa !208
  %i.cy = getelementptr i8, ptr %.06991, i64 16   ; 3 uses
  %i.cz = getelementptr i8, ptr %.07090, i64 8    ; 2 uses
  %i.da = icmp ult ptr %i.cy, %i.cb
  br i1 %i.da, label %.lr.ph, label %.preheader88, !llvm.loop !957

.lr.ph95:                                         ; preds = %.lr.ph95.preheader146, %.lr.ph95
  %.194 = phi ptr [ %i.db, %.lr.ph95 ], [ %.194.ph, %.lr.ph95.preheader146 ] ; 2 uses
  %.17193 = phi ptr [ %i.de, %.lr.ph95 ], [ %.17193.ph, %.lr.ph95.preheader146 ] ; 2 uses
  %i.db = getelementptr i8, ptr %.194, i64 4      ; 2 uses
  %i.dc = load i32, ptr %.194, align 4, !tbaa !7
  %i.dd = trunc i32 %i.dc to i16
  %i.de = getelementptr i8, ptr %.17193, i64 2
  store i16 %i.dd, ptr %.17193, align 2, !tbaa !208
  %i.df = icmp ult ptr %i.db, %i.t
  br i1 %i.df, label %.lr.ph95, label %.loopexit, !llvm.loop !958

bb.m:                                             ; preds = %_PyUnicode_DATA.exit87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i85, ptr nonnull align 4 %i.m, i64 %.idx79, i1 false)
  br label %.loopexit

bb.n:                                             ; preds = %_PyUnicode_DATA.exit87
  unreachable

.loopexit:                                        ; preds = %.lr.ph95, %.lr.ph103, %middle.block, %middle.block140, %.preheader88, %.preheader, %bb.m, %bb.g
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

.lr.ph51.preheader:                               ; preds = %PyUnicode_READ.exit46
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
  %.0.i45 = phi ptr [ %.0.i.i, %bb.i ], [ %.val4.i, %bb.j ] ; 18 uses
  %.0.i4567 = ptrtoaddr ptr %.0.i45 to i64        ; 9 uses
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
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.af)
  %i.ag = xor i64 %.0.i4567, -1
  %i.ah = add i64 %umax, %i.ag                    ; 3 uses
  %i.ai = lshr i64 %i.ah, 1
  %i.aj = add nuw i64 %i.ai, 1                    ; 5 uses
  %min.iters.check69 = icmp ult i64 %i.ah, 6
  br i1 %min.iters.check69, label %.lr.ph30.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check70 = icmp ult i64 %i.ah, 30
  br i1 %min.iters.check70, label %vec.epilog.ph, label %vector.ph71

vector.ph71:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf72 = and i64 %i.aj, 12
  %n.vec73 = and i64 %i.aj, -16                   ; 4 uses
  %i.ak = shl i64 %n.vec73, 1
  %i.al = getelementptr i8, ptr %.0.i45, i64 %i.ak
  %broadcast.splatinsert74 = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat75 = shufflevector <8 x i16> %broadcast.splatinsert74, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph71
  %index77 = phi i64 [ 0, %vector.ph71 ], [ %index.next79, %vector.body76 ] ; 2 uses
  %i.am = shl i64 %index77, 1
  %next.gep78 = getelementptr i8, ptr %.0.i45, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep78, i64 16
  store <8 x i16> %broadcast.splat75, ptr %next.gep78, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat75, ptr %i.an, align 2, !tbaa !208
  %index.next79 = add nuw i64 %index77, 16        ; 2 uses
  %i.ao = icmp eq i64 %index.next79, %n.vec73
  br i1 %i.ao, label %middle.block80, label %vector.body76, !llvm.loop !968

middle.block80:                                   ; preds = %vector.body76
  %cmp.n81 = icmp eq i64 %i.aj, %n.vec73
  br i1 %cmp.n81, label %_PyUnicode_Fill.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block80
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf72, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec73, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec84 = and i64 %i.aj, -4                    ; 3 uses
  %i.ap = shl i64 %n.vec84, 1
  %i.aq = getelementptr i8, ptr %.0.i45, i64 %i.ap
  %broadcast.splatinsert85 = insertelement <4 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat86 = shufflevector <4 x i16> %broadcast.splatinsert85, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index87 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next89, %vec.epilog.vector.body ] ; 2 uses
  %i.ar = shl i64 %index87, 1
  %next.gep88 = getelementptr i8, ptr %.0.i45, i64 %i.ar
  store <4 x i16> %broadcast.splat86, ptr %next.gep88, align 2, !tbaa !208
  %index.next89 = add nuw i64 %index87, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next89, %n.vec84
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !969

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n90 = icmp eq i64 %i.aj, %n.vec84
  br i1 %cmp.n90, label %_PyUnicode_Fill.exit, label %.lr.ph30.i.preheader

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
  %4 = ptrtoaddr ptr %.0.i45 to i64               ; 3 uses
  %i.ax = shl i64 %spec.store.select, 2
  %i.ay = add i64 %i.ax, %4
  %i.az = add i64 %4, 4
  %i.ba = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.az)
  %i.bb = xor i64 %4, -1
  %i.bc = add i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader142, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.be, 9223372036854775800     ; 3 uses
  %i.bf = shl i64 %n.vec, 2
  %i.bg = getelementptr i8, ptr %.0.i45, i64 %i.bf
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.i45, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.bi, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !971

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_PyUnicode_Fill.exit, label %.lr.ph.i.preheader142

.lr.ph.i.preheader142:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.02628.i.ph = phi ptr [ %.0.i45, %.lr.ph.i.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader142, %.lr.ph.i
  %.02628.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %.02628.i.ph, %.lr.ph.i.preheader142 ] ; 2 uses
  store i32 %3, ptr %.02628.i, align 4, !tbaa !7
  %i.bk = getelementptr i8, ptr %.02628.i, i64 4  ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %i.av
  br i1 %i.bl, label %.lr.ph.i, label %_PyUnicode_Fill.exit, !llvm.loop !972

bb.o:                                             ; preds = %bb.k
  unreachable

_PyUnicode_Fill.exit:                             ; preds = %.lr.ph.i, %.lr.ph30.i, %middle.block, %middle.block80, %vec.epilog.middle.block, %bb.n, %bb.m, %bb.l, %_PyUnicode_DATA.exit
  %.pre55 = load i64, ptr %i.d, align 8, !tbaa !207 ; 9 uses
  br i1 %i.b, label %_PyUnicode_Fill.exit50, label %bb.p

bb.p:                                             ; preds = %_PyUnicode_Fill.exit
  %i.bm = add i64 %.pre55, %spec.store.select     ; 6 uses
  switch i32 %i.v, label %bb.t [
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 4, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.bn = trunc i32 %3 to i8
  %i.bo = getelementptr i8, ptr %.0.i45, i64 %i.bm
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bo, i8 %i.bn, i64 %spec.store.select2, i1 false)
  %.pre = load i64, ptr %i.d, align 8, !tbaa !207
  br label %_PyUnicode_Fill.exit50

bb.r:                                             ; preds = %bb.p
  %i.bp = trunc i32 %3 to i16                     ; 3 uses
  %i.bq = getelementptr [2 x i8], ptr %.0.i45, i64 %i.bm ; 7 uses
  %i.br = getelementptr [2 x i8], ptr %i.bq, i64 %spec.store.select2 ; 2 uses
  %i.bs = icmp ult ptr %i.bq, %i.br
  br i1 %i.bs, label %iter.check124, label %_PyUnicode_Fill.exit50

iter.check124:                                    ; preds = %bb.r
  %i.bt = shl nuw i64 %spec.store.select2, 1
  %i.bu = add i64 %i.bt, %.0.i4567
  %i.bv = shl i64 %i.bm, 1                        ; 3 uses
  %i.bw = add i64 %i.bu, %i.bv
  %i.bx = add i64 %i.bv, %.0.i4567
  %i.by = add i64 %i.bx, 2
  %umax106 = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 %i.by)
  %i.bz = xor i64 %.0.i4567, -1
  %i.ca = add i64 %umax106, %i.bz
  %i.cb = sub i64 %i.ca, %i.bv                    ; 3 uses
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = add nuw i64 %i.cc, 1                    ; 5 uses
  %min.iters.check108 = icmp ult i64 %i.cb, 6
  br i1 %min.iters.check108, label %.lr.ph30.i48.preheader, label %vector.main.loop.iter.check109

vector.main.loop.iter.check109:                   ; preds = %iter.check124
  %min.iters.check110 = icmp ult i64 %i.cb, 30
  br i1 %min.iters.check110, label %vec.epilog.ph128, label %vector.ph111

vector.ph111:                                     ; preds = %vector.main.loop.iter.check109
  %n.mod.vf112 = and i64 %i.cd, 12
  %n.vec113 = and i64 %i.cd, -16                  ; 4 uses
  %i.ce = shl i64 %n.vec113, 1
  %i.cf = getelementptr i8, ptr %i.bq, i64 %i.ce
  %broadcast.splatinsert114 = insertelement <8 x i16> poison, i16 %i.bp, i64 0
  %broadcast.splat115 = shufflevector <8 x i16> %broadcast.splatinsert114, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph111
  %index117 = phi i64 [ 0, %vector.ph111 ], [ %index.next119, %vector.body116 ] ; 2 uses
  %i.cg = shl i64 %index117, 1
  %next.gep118 = getelementptr i8, ptr %i.bq, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep118, i64 16
  store <8 x i16> %broadcast.splat115, ptr %next.gep118, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat115, ptr %i.ch, align 2, !tbaa !208
  %index.next119 = add nuw i64 %index117, 16      ; 2 uses
  %i.ci = icmp eq i64 %index.next119, %n.vec113
  br i1 %i.ci, label %middle.block120, label %vector.body116, !llvm.loop !973

middle.block120:                                  ; preds = %vector.body116
  %cmp.n121 = icmp eq i64 %i.cd, %n.vec113
  br i1 %cmp.n121, label %_PyUnicode_Fill.exit50, label %vec.epilog.iter.check126

vec.epilog.iter.check126:                         ; preds = %middle.block120
  %min.epilog.iters.check127 = icmp eq i64 %n.mod.vf112, 0
  br i1 %min.epilog.iters.check127, label %.lr.ph30.i48.preheader, label %vec.epilog.ph128, !prof !228

vec.epilog.ph128:                                 ; preds = %vector.main.loop.iter.check109, %vec.epilog.iter.check126
  %vec.epilog.resume.val122 = phi i64 [ %n.vec113, %vec.epilog.iter.check126 ], [ 0, %vector.main.loop.iter.check109 ]
  %n.vec130 = and i64 %i.cd, -4                   ; 3 uses
  %i.cj = shl i64 %n.vec130, 1
  %i.ck = getelementptr i8, ptr %i.bq, i64 %i.cj
  %broadcast.splatinsert131 = insertelement <4 x i16> poison, i16 %i.bp, i64 0
  %broadcast.splat132 = shufflevector <4 x i16> %broadcast.splatinsert131, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body133

vec.epilog.vector.body133:                        ; preds = %vec.epilog.vector.body133, %vec.epilog.ph128
  %index134 = phi i64 [ %vec.epilog.resume.val122, %vec.epilog.ph128 ], [ %index.next136, %vec.epilog.vector.body133 ] ; 2 uses
  %i.cl = shl i64 %index134, 1
  %next.gep135 = getelementptr i8, ptr %i.bq, i64 %i.cl
  store <4 x i16> %broadcast.splat132, ptr %next.gep135, align 2, !tbaa !208
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.cm, label %vec.epilog.middle.block137, label %vec.epilog.vector.body133, !llvm.loop !974

vec.epilog.middle.block137:                       ; preds = %vec.epilog.vector.body133
  %cmp.n138 = icmp eq i64 %i.cd, %n.vec130
  br i1 %cmp.n138, label %_PyUnicode_Fill.exit50, label %.lr.ph30.i48.preheader

.lr.ph30.i48.preheader:                           ; preds = %iter.check124, %vec.epilog.iter.check126, %vec.epilog.middle.block137
  %.029.i49.ph = phi ptr [ %i.bq, %iter.check124 ], [ %i.cf, %vec.epilog.iter.check126 ], [ %i.ck, %vec.epilog.middle.block137 ]
  br label %.lr.ph30.i48

.lr.ph30.i48:                                     ; preds = %.lr.ph30.i48.preheader, %.lr.ph30.i48
  %.029.i49 = phi ptr [ %i.cn, %.lr.ph30.i48 ], [ %.029.i49.ph, %.lr.ph30.i48.preheader ] ; 2 uses
  store i16 %i.bp, ptr %.029.i49, align 2, !tbaa !208
  %i.cn = getelementptr i8, ptr %.029.i49, i64 2  ; 2 uses
  %i.co = icmp ult ptr %i.cn, %i.br
  br i1 %i.co, label %.lr.ph30.i48, label %_PyUnicode_Fill.exit50, !llvm.loop !975

bb.s:                                             ; preds = %bb.p
  %i.cp = getelementptr [4 x i8], ptr %.0.i45, i64 %i.bm ; 5 uses
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %spec.store.select2 ; 2 uses
  %i.cr = icmp ult ptr %i.cp, %i.cq
  br i1 %i.cr, label %.lr.ph.i46.preheader, label %_PyUnicode_Fill.exit50

.lr.ph.i46.preheader:                             ; preds = %bb.s
  %i.cs = shl i64 %spec.store.select2, 2
  %i.ct = shl i64 %i.bm, 2                        ; 2 uses
  %i.cu = add i64 %i.cs, %.0.i4567
  %i.cv = add i64 %i.cu, %i.ct
  %i.cw = add i64 %i.ct, %.0.i4567
  %i.cx = add i64 %i.cw, 4
  %i.cy = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cx)
  %i.cz = shl i64 %i.bm, 2
  %i.da = add i64 %i.cz, %.0.i4567
  %i.db = xor i64 %i.da, -1
  %i.dc = add i64 %i.cy, %i.db                    ; 2 uses
  %i.dd = lshr i64 %i.dc, 2
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check93 = icmp ult i64 %i.dc, 28
  br i1 %min.iters.check93, label %.lr.ph.i46.preheader140, label %vector.ph94

vector.ph94:                                      ; preds = %.lr.ph.i46.preheader
  %n.vec96 = and i64 %i.de, 9223372036854775800   ; 3 uses
  %i.df = shl i64 %n.vec96, 2
  %i.dg = getelementptr i8, ptr %i.cp, i64 %i.df
  %broadcast.splatinsert97 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat98 = shufflevector <4 x i32> %broadcast.splatinsert97, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph94
  %index100 = phi i64 [ 0, %vector.ph94 ], [ %index.next102, %vector.body99 ] ; 2 uses
  %i.dh = shl i64 %index100, 2
  %next.gep101 = getelementptr i8, ptr %i.cp, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep101, i64 16
  store <4 x i32> %broadcast.splat98, ptr %next.gep101, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat98, ptr %i.di, align 4, !tbaa !7
  %index.next102 = add nuw i64 %index100, 8       ; 2 uses
  %i.dj = icmp eq i64 %index.next102, %n.vec96
  br i1 %i.dj, label %middle.block103, label %vector.body99, !llvm.loop !976

middle.block103:                                  ; preds = %vector.body99
  %cmp.n104 = icmp eq i64 %i.de, %n.vec96
  br i1 %cmp.n104, label %_PyUnicode_Fill.exit50, label %.lr.ph.i46.preheader140
end_hunk_15
