Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodeobject?download=true
inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 53
begin_hunk_0_@PyUnicode_New:bb.a
  %i.ae = and i32 %i.ad, -256
  %i.af = or disjoint i32 %.046, %i.ae
  store i32 %i.af, ptr %i.ac, align 8
  br i1 %i.b, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_PyObject_Init.exit
  %i.ag = getelementptr i8, ptr %i.y, i64 %0
  store i8 0, ptr %i.ag, align 1, !tbaa !237
  br label %bb.u

bb.p:                                             ; preds = %_PyObject_Init.exit
  br i1 %i.g, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr i8, ptr %i.z, i64 %0
  store i8 0, ptr %i.ah, align 1, !tbaa !237
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  br i1 %i.h, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ai = getelementptr [2 x i8], ptr %i.z, i64 %0
  store i16 0, ptr %i.ai, align 2, !tbaa !240
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.aj = getelementptr [4 x i8], ptr %i.z, i64 %0
  store i32 0, ptr %i.aj, align 4, !tbaa !43
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.f, %bb.h, %bb.j, %bb.l, %bb.q, %bb.t, %bb.s, %bb.o
  %.1 = phi ptr [ %i.r, %bb.o ], [ null, %bb.h ], [ %i.n, %bb.j ], [ %i.t, %bb.l ], [ null, %bb.f ], [ %i.r, %bb.q ], [ %i.r, %bb.t ], [ %i.r, %bb.s ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ]
  ret ptr %.1
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_Malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_PyUnicode_FastCopyCharacters(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call fastcc i32 @_copy_characters(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @_copy_characters(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #7 {
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
  %.val4.i = load ptr, ptr %i.h, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %.0.i.i, %bb.c ], [ %.val4.i, %bb.d ] ; 6 uses
  %i.i = getelementptr i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8              ; 11 uses
  %i.k = lshr i32 %i.j, 2
  %i.l = and i32 %i.k, 7                          ; 6 uses
  %i.m = and i32 %i.j, 32
  %.not.i266 = icmp eq i32 %i.m, 0                ; 7 uses
  br i1 %.not.i266, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  %i.n = and i32 %i.j, 64
  %.not.i.i267 = icmp eq i32 %i.n, 0
  %.0.v.i.i268 = select i1 %.not.i.i267, i64 56, i64 40
  %.0.i.i269 = getelementptr i8, ptr %0, i64 %.0.v.i.i268
  br label %_PyUnicode_DATA.exit272

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.o = getelementptr i8, ptr %0, i64 56
  %.val4.i271 = load ptr, ptr %i.o, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit272

_PyUnicode_DATA.exit272:                          ; preds = %bb.e, %bb.f
  %.0.i270 = phi ptr [ %.0.i.i269, %bb.e ], [ %.val4.i271, %bb.f ] ; 4 uses
  %i.p = icmp eq i32 %i.e, %i.l
  br i1 %i.p, label %bb.g, label %bb.m

bb.g:                                             ; preds = %_PyUnicode_DATA.exit272
  %.not260 = icmp eq i32 %5, 0
  %i.q = and i32 %i.c, 64
  %.not261 = icmp ne i32 %i.q, 0
  %or.cond428.not495 = or i1 %.not260, %.not261
  %i.r = and i32 %i.j, 64
  %.not262 = icmp eq i32 %i.r, 0
  %or.cond429 = or i1 %or.cond428.not495, %.not262
  br i1 %or.cond429, label %ucs1lib_find_max_char.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %.0.i, i64 %4      ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.thread31.i, %bb.h
  %.019.i = phi ptr [ %.0.i, %bb.h ], [ %i.aa, %.thread31.i ] ; 4 uses
  %i.t = icmp ult ptr %.019.i, %i.s
  br i1 %i.t, label %bb.j, label %ucs1lib_find_max_char.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.u = ptrtoint ptr %.019.i to i64
  %i.v = and i64 %i.u, 7
  %.not.i273 = icmp eq i64 %i.v, 0
  br i1 %.not.i273, label %.preheader.i, label %.thread31.i

.preheader.i:                                     ; preds = %bb.j, %bb.k
  %.017.i = phi ptr [ %i.w, %bb.k ], [ %.019.i, %bb.j ] ; 4 uses
  %i.w = getelementptr i8, ptr %.017.i, i64 8     ; 2 uses
  %.not26.i = icmp ugt ptr %i.w, %i.s
  br i1 %.not26.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader.i
  %i.x = load i64, ptr %.017.i, align 8, !tbaa !226
  %i.y = and i64 %i.x, -9187201950435737472
  %.not27.i = icmp eq i64 %i.y, 0
  br i1 %.not27.i, label %.preheader.i, label %ucs1lib_find_max_char.exit, !llvm.loop !0

bb.l:                                             ; preds = %.preheader.i
  %i.z = icmp eq ptr %.017.i, %i.s
  br i1 %i.z, label %ucs1lib_find_max_char.exit.thread, label %.thread31.i

.thread31.i:                                      ; preds = %bb.l, %bb.j
  %.2.i = phi ptr [ %.019.i, %bb.j ], [ %.017.i, %bb.l ] ; 2 uses
  %i.aa = getelementptr i8, ptr %.2.i, i64 1
  %i.ab = load i8, ptr %.2.i, align 1, !tbaa !237
  %.not28.i = icmp sgt i8 %i.ab, -1
  br i1 %.not28.i, label %bb.i, label %ucs1lib_find_max_char.exit, !llvm.loop !1

ucs1lib_find_max_char.exit.thread:                ; preds = %bb.i, %bb.l, %bb.g
  %i.ac = zext nneg i32 %i.e to i64               ; 3 uses
  %i.ad = mul i64 %1, %i.ac
  %i.ae = getelementptr i8, ptr %.0.i270, i64 %i.ad
  %i.af = mul i64 %3, %i.ac
  %i.ag = getelementptr i8, ptr %.0.i, i64 %i.af
  %i.ah = mul i64 %4, %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.ag, i64 %i.ah, i1 false)
  br label %ucs1lib_find_max_char.exit

bb.m:                                             ; preds = %_PyUnicode_DATA.exit272
  %i.ai = icmp eq i32 %i.e, 1                     ; 2 uses
  %i.aj = icmp eq i32 %i.l, 2                     ; 3 uses
  %or.cond = and i1 %i.ai, %i.aj
  br i1 %or.cond, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i266, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = and i32 %i.j, 64
  %.not.i.i276 = icmp eq i32 %i.ak, 0
  %.0.v.i.i277 = select i1 %.not.i.i276, i64 56, i64 40
  %.0.i.i278 = getelementptr i8, ptr %0, i64 %.0.v.i.i277
  br label %_PyUnicode_DATA.exit281

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr i8, ptr %0, i64 56
  %.val4.i280 = load ptr, ptr %i.al, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit281

_PyUnicode_DATA.exit281:                          ; preds = %bb.o, %bb.p
  %.0.i279 = phi ptr [ %.0.i.i278, %bb.o ], [ %.val4.i280, %bb.p ]
  %i.am = getelementptr [2 x i8], ptr %.0.i279, i64 %1 ; 7 uses
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_PyUnicode_DATA.exit281
  %i.an = and i32 %i.c, 64
  %.not.i.i284 = icmp eq i32 %i.an, 0
  %.0.v.i.i285 = select i1 %.not.i.i284, i64 56, i64 40
  %.0.i.i286 = getelementptr i8, ptr %2, i64 %.0.v.i.i285
  br label %_PyUnicode_DATA.exit297

bb.r:                                             ; preds = %_PyUnicode_DATA.exit281
  %i.ao = getelementptr i8, ptr %2, i64 56
  %.val4.i288 = load ptr, ptr %i.ao, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit297

_PyUnicode_DATA.exit297:                          ; preds = %bb.q, %bb.r
  %.0.i.i286.pn = phi ptr [ %.0.i.i286, %bb.q ], [ %.val4.i288, %bb.r ] ; 3 uses
  %.0.i.i286.pn687 = ptrtoaddr ptr %.0.i.i286.pn to i64
  %i.ap = getelementptr i8, ptr %.0.i.i286.pn, i64 %3 ; 10 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 %4     ; 2 uses
  %i.ar = and i64 %4, -4
  %i.as = getelementptr i8, ptr %i.ap, i64 %i.ar  ; 2 uses
  %i.at = icmp ult ptr %i.ap, %i.as
  br i1 %i.at, label %.lr.ph489.preheader, label %.preheader

.lr.ph489.preheader:                              ; preds = %_PyUnicode_DATA.exit297
  %i.au = add i64 %4, -4                          ; 2 uses
  %i.av = and i64 %i.au, 4
  %lcmp.mod753.not.not = icmp eq i64 %i.av, 0
  br i1 %lcmp.mod753.not.not, label %.lr.ph489.prol, label %.lr.ph489.prol.loopexit

.lr.ph489.prol:                                   ; preds = %.lr.ph489.preheader
  %i.aw = load i8, ptr %i.ap, align 1, !tbaa !237
  %i.ax = zext i8 %i.aw to i16
  store i16 %i.ax, ptr %i.am, align 2, !tbaa !240
  %i.ay = getelementptr i8, ptr %i.ap, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !237
  %i.ba = zext i8 %i.az to i16
  %i.bb = getelementptr i8, ptr %i.am, i64 2
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !240
  %i.bc = getelementptr i8, ptr %i.ap, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !237
  %i.be = zext i8 %i.bd to i16
  %i.bf = getelementptr i8, ptr %i.am, i64 4
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !240
  %i.bg = getelementptr i8, ptr %i.ap, i64 3
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !237
  %i.bi = zext i8 %i.bh to i16
  %i.bj = getelementptr i8, ptr %i.am, i64 6
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !240
  %i.bk = getelementptr i8, ptr %i.ap, i64 4      ; 2 uses
  %i.bl = getelementptr i8, ptr %i.am, i64 8      ; 2 uses
  br label %.lr.ph489.prol.loopexit

.lr.ph489.prol.loopexit:                          ; preds = %.lr.ph489.prol, %.lr.ph489.preheader
  %.0245488.unr = phi ptr [ %i.ap, %.lr.ph489.preheader ], [ %i.bk, %.lr.ph489.prol ]
  %.0247487.unr = phi ptr [ %i.am, %.lr.ph489.preheader ], [ %i.bl, %.lr.ph489.prol ]
  %.lcssa731.unr = phi ptr [ poison, %.lr.ph489.preheader ], [ %i.bk, %.lr.ph489.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph489.preheader ], [ %i.bl, %.lr.ph489.prol ]
  %i.bm = icmp ult i64 %i.au, 4
  br i1 %i.bm, label %.preheader, label %.lr.ph489

.preheader:                                       ; preds = %.lr.ph489.prol.loopexit, %.lr.ph489, %_PyUnicode_DATA.exit297
  %.0247.lcssa = phi ptr [ %i.am, %_PyUnicode_DATA.exit297 ], [ %.lcssa.unr, %.lr.ph489.prol.loopexit ], [ %i.dr, %.lr.ph489 ] ; 8 uses
  %.0245.lcssa = phi ptr [ %i.ap, %_PyUnicode_DATA.exit297 ], [ %.lcssa731.unr, %.lr.ph489.prol.loopexit ], [ %i.dq, %.lr.ph489 ] ; 11 uses
  %i.bn = icmp ult ptr %.0245.lcssa, %i.aq
  br i1 %i.bn, label %iter.check712, label %ucs1lib_find_max_char.exit

iter.check712:                                    ; preds = %.preheader
  %.0245.lcssa702 = ptrtoaddr ptr %.0245.lcssa to i64
  %i.bo = add i64 %4, %3
  %i.bp = add i64 %i.bo, %.0.i.i286.pn687
  %i.bq = sub i64 %i.bp, %.0245.lcssa702          ; 7 uses
  %min.iters.check695 = icmp ult i64 %i.bq, 4
  br i1 %min.iters.check695, label %.lr.ph494.preheader, label %vector.memcheck686

vector.memcheck686:                               ; preds = %iter.check712
  %6 = ptrtoaddr ptr %.0.i.i286.pn to i64
  %i.br = add i64 %4, %3
  %i.bs = add i64 %i.br, %6                       ; 2 uses
  %7 = ptrtoaddr ptr %.0245.lcssa to i64          ; 2 uses
  %i.bt = sub i64 %i.bs, %7
  %i.bu = shl i64 %i.bt, 1
  %scevgep689 = getelementptr i8, ptr %.0247.lcssa, i64 %i.bu
  %i.bv = sub i64 %i.bs, %7
  %scevgep690 = getelementptr i8, ptr %.0245.lcssa, i64 %i.bv
  %bound0691 = icmp ult ptr %.0247.lcssa, %scevgep690
  %bound1692 = icmp ult ptr %.0245.lcssa, %scevgep689
  %found.conflict693 = and i1 %bound0691, %bound1692
  br i1 %found.conflict693, label %.lr.ph494.preheader, label %vector.main.loop.iter.check696

vector.main.loop.iter.check696:                   ; preds = %vector.memcheck686
  %min.iters.check697 = icmp ult i64 %i.bq, 16
  br i1 %min.iters.check697, label %vec.epilog.ph716, label %vector.ph698

vector.ph698:                                     ; preds = %vector.main.loop.iter.check696
  %i.bw = and i64 %i.bq, 12
  %n.vec699 = and i64 %i.bq, -16                  ; 5 uses
  %i.bx = getelementptr i8, ptr %.0245.lcssa, i64 %n.vec699
  %i.by = shl i64 %n.vec699, 1
  %i.bz = getelementptr i8, ptr %.0247.lcssa, i64 %i.by
  br label %vector.body700

vector.body700:                                   ; preds = %vector.ph698, %vector.body700
  %index701 = phi i64 [ 0, %vector.ph698 ], [ %index.next706, %vector.body700 ] ; 3 uses
  %next.gep702 = getelementptr i8, ptr %.0245.lcssa, i64 %index701 ; 2 uses
  %i.ca = shl i64 %index701, 1
  %next.gep703 = getelementptr i8, ptr %.0247.lcssa, i64 %i.ca ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep702, i64 8
  %wide.load704 = load <8 x i8>, ptr %next.gep702, align 1, !tbaa !237, !alias.scope !374
  %wide.load705 = load <8 x i8>, ptr %i.cb, align 1, !tbaa !237, !alias.scope !374
  %i.cc = zext <8 x i8> %wide.load704 to <8 x i16>
  %i.cd = zext <8 x i8> %wide.load705 to <8 x i16>
  %i.ce = getelementptr i8, ptr %next.gep703, i64 16
  store <8 x i16> %i.cc, ptr %next.gep703, align 2, !tbaa !240, !alias.scope !375, !noalias !374
  store <8 x i16> %i.cd, ptr %i.ce, align 2, !tbaa !240, !alias.scope !375, !noalias !374
  %index.next706 = add nuw i64 %index701, 16      ; 2 uses
  %i.cf = icmp eq i64 %index.next706, %n.vec699
  br i1 %i.cf, label %middle.block707, label %vector.body700, !llvm.loop !344

middle.block707:                                  ; preds = %vector.body700
  %cmp.n708 = icmp eq i64 %i.bq, %n.vec699
  br i1 %cmp.n708, label %ucs1lib_find_max_char.exit, label %vec.epilog.iter.check714

vec.epilog.iter.check714:                         ; preds = %middle.block707
  %min.epilog.iters.check715 = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check715, label %.lr.ph494.preheader, label %vec.epilog.ph716, !prof !244

vec.epilog.ph716:                                 ; preds = %vector.main.loop.iter.check696, %vec.epilog.iter.check714
  %vec.epilog.resume.val709 = phi i64 [ %n.vec699, %vec.epilog.iter.check714 ], [ 0, %vector.main.loop.iter.check696 ]
  %n.vec717 = and i64 %i.bq, -4                   ; 4 uses
  %i.cg = getelementptr i8, ptr %.0245.lcssa, i64 %n.vec717
  %i.ch = shl i64 %n.vec717, 1
  %i.ci = getelementptr i8, ptr %.0247.lcssa, i64 %i.ch
  br label %vec.epilog.vector.body718

vec.epilog.vector.body718:                        ; preds = %vec.epilog.vector.body718, %vec.epilog.ph716
  %index719 = phi i64 [ %vec.epilog.resume.val709, %vec.epilog.ph716 ], [ %index.next723, %vec.epilog.vector.body718 ] ; 3 uses
  %next.gep720 = getelementptr i8, ptr %.0245.lcssa, i64 %index719
  %i.cj = shl i64 %index719, 1
  %next.gep721 = getelementptr i8, ptr %.0247.lcssa, i64 %i.cj
  %wide.load722 = load <4 x i8>, ptr %next.gep720, align 1, !tbaa !237, !alias.scope !374
  %i.ck = zext <4 x i8> %wide.load722 to <4 x i16>
  store <4 x i16> %i.ck, ptr %next.gep721, align 2, !tbaa !240, !alias.scope !375, !noalias !374
  %index.next723 = add nuw i64 %index719, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next723, %n.vec717
  br i1 %i.cl, label %vec.epilog.middle.block724, label %vec.epilog.vector.body718, !llvm.loop !345

vec.epilog.middle.block724:                       ; preds = %vec.epilog.vector.body718
  %cmp.n725 = icmp eq i64 %i.bq, %n.vec717
  br i1 %cmp.n725, label %ucs1lib_find_max_char.exit, label %.lr.ph494.preheader

.lr.ph494.preheader:                              ; preds = %iter.check712, %vector.memcheck686, %vec.epilog.iter.check714, %vec.epilog.middle.block724
  %.1246493.ph = phi ptr [ %.0245.lcssa, %iter.check712 ], [ %.0245.lcssa, %vector.memcheck686 ], [ %i.bx, %vec.epilog.iter.check714 ], [ %i.cg, %vec.epilog.middle.block724 ]
  %.1248492.ph = phi ptr [ %.0247.lcssa, %iter.check712 ], [ %.0247.lcssa, %vector.memcheck686 ], [ %i.bz, %vec.epilog.iter.check714 ], [ %i.ci, %vec.epilog.middle.block724 ]
  br label %.lr.ph494

.lr.ph489:                                        ; preds = %.lr.ph489.prol.loopexit, %.lr.ph489
  %.0245488 = phi ptr [ %i.dq, %.lr.ph489 ], [ %.0245488.unr, %.lr.ph489.prol.loopexit ] ; 9 uses
  %.0247487 = phi ptr [ %i.dr, %.lr.ph489 ], [ %.0247487.unr, %.lr.ph489.prol.loopexit ] ; 9 uses
  %i.cm = load i8, ptr %.0245488, align 1, !tbaa !237
  %i.cn = zext i8 %i.cm to i16
  store i16 %i.cn, ptr %.0247487, align 2, !tbaa !240
  %i.co = getelementptr i8, ptr %.0245488, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !237
  %i.cq = zext i8 %i.cp to i16
  %i.cr = getelementptr i8, ptr %.0247487, i64 2
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !240
  %i.cs = getelementptr i8, ptr %.0245488, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !237
  %i.cu = zext i8 %i.ct to i16
  %i.cv = getelementptr i8, ptr %.0247487, i64 4
  store i16 %i.cu, ptr %i.cv, align 2, !tbaa !240
  %i.cw = getelementptr i8, ptr %.0245488, i64 3
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !237
  %i.cy = zext i8 %i.cx to i16
  %i.cz = getelementptr i8, ptr %.0247487, i64 6
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !240
  %i.da = getelementptr i8, ptr %.0245488, i64 4
  %i.db = getelementptr i8, ptr %.0247487, i64 8
  %i.dc = load i8, ptr %i.da, align 1, !tbaa !237
  %i.dd = zext i8 %i.dc to i16
  store i16 %i.dd, ptr %i.db, align 2, !tbaa !240
  %i.de = getelementptr i8, ptr %.0245488, i64 5
  %i.df = load i8, ptr %i.de, align 1, !tbaa !237
  %i.dg = zext i8 %i.df to i16
  %i.dh = getelementptr i8, ptr %.0247487, i64 10
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !240
  %i.di = getelementptr i8, ptr %.0245488, i64 6
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !237
  %i.dk = zext i8 %i.dj to i16
  %i.dl = getelementptr i8, ptr %.0247487, i64 12
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !240
  %i.dm = getelementptr i8, ptr %.0245488, i64 7
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !237
  %i.do = zext i8 %i.dn to i16
  %i.dp = getelementptr i8, ptr %.0247487, i64 14
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !240
  %i.dq = getelementptr i8, ptr %.0245488, i64 8  ; 3 uses
  %i.dr = getelementptr i8, ptr %.0247487, i64 16 ; 2 uses
  %i.ds = icmp ult ptr %i.dq, %i.as
  br i1 %i.ds, label %.lr.ph489, label %.preheader, !llvm.loop !346

.lr.ph494:                                        ; preds = %.lr.ph494.preheader, %.lr.ph494
  %.1246493 = phi ptr [ %i.dt, %.lr.ph494 ], [ %.1246493.ph, %.lr.ph494.preheader ] ; 2 uses
  %.1248492 = phi ptr [ %i.dw, %.lr.ph494 ], [ %.1248492.ph, %.lr.ph494.preheader ] ; 2 uses
  %i.dt = getelementptr i8, ptr %.1246493, i64 1  ; 2 uses
  %i.du = load i8, ptr %.1246493, align 1, !tbaa !237
  %i.dv = zext i8 %i.du to i16
  %i.dw = getelementptr i8, ptr %.1248492, i64 2
  store i16 %i.dv, ptr %.1248492, align 2, !tbaa !240
  %i.dx = icmp ult ptr %i.dt, %i.aq
  br i1 %i.dx, label %.lr.ph494, label %ucs1lib_find_max_char.exit, !llvm.loop !347

bb.s:                                             ; preds = %bb.m
  %i.dy = icmp eq i32 %i.l, 4                     ; 2 uses
  %or.cond4 = and i1 %i.ai, %i.dy
  br i1 %or.cond4, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  br i1 %.not.i266, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dz = and i32 %i.j, 64
  %.not.i.i300 = icmp eq i32 %i.dz, 0
  %.0.v.i.i301 = select i1 %.not.i.i300, i64 56, i64 40
  %.0.i.i302 = getelementptr i8, ptr %0, i64 %.0.v.i.i301
  br label %_PyUnicode_DATA.exit305

bb.v:                                             ; preds = %bb.t
  %i.ea = getelementptr i8, ptr %0, i64 56
  %.val4.i304 = load ptr, ptr %i.ea, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit305

_PyUnicode_DATA.exit305:                          ; preds = %bb.u, %bb.v
  %.0.i303 = phi ptr [ %.0.i.i302, %bb.u ], [ %.val4.i304, %bb.v ]
  %i.eb = getelementptr [4 x i8], ptr %.0.i303, i64 %1 ; 7 uses
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_PyUnicode_DATA.exit305
  %i.ec = and i32 %i.c, 64
  %.not.i.i308 = icmp eq i32 %i.ec, 0
  %.0.v.i.i309 = select i1 %.not.i.i308, i64 56, i64 40
  %.0.i.i310 = getelementptr i8, ptr %2, i64 %.0.v.i.i309
  br label %_PyUnicode_DATA.exit321

bb.x:                                             ; preds = %_PyUnicode_DATA.exit305
  %i.ed = getelementptr i8, ptr %2, i64 56
  %.val4.i312 = load ptr, ptr %i.ed, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit321

_PyUnicode_DATA.exit321:                          ; preds = %bb.w, %bb.x
  %.0.i.i310.pn = phi ptr [ %.0.i.i310, %bb.w ], [ %.val4.i312, %bb.x ] ; 2 uses
  %i.ee = getelementptr i8, ptr %.0.i.i310.pn, i64 %3 ; 10 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 %4     ; 2 uses
  %i.eg = and i64 %4, -4
  %i.eh = getelementptr i8, ptr %i.ee, i64 %i.eg  ; 2 uses
  %i.ei = icmp ult ptr %i.ee, %i.eh
  br i1 %i.ei, label %.lr.ph481.preheader, label %.preheader432

.lr.ph481.preheader:                              ; preds = %_PyUnicode_DATA.exit321
  %i.ej = add i64 %4, -4                          ; 2 uses
  %i.ek = and i64 %i.ej, 4
  %lcmp.mod.not.not = icmp eq i64 %i.ek, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph481.prol, label %.lr.ph481.prol.loopexit

.lr.ph481.prol:                                   ; preds = %.lr.ph481.preheader
  %i.el = load i8, ptr %i.ee, align 1, !tbaa !237
  %i.em = zext i8 %i.el to i32
  store i32 %i.em, ptr %i.eb, align 4, !tbaa !43
  %i.en = getelementptr i8, ptr %i.ee, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !237
  %i.ep = zext i8 %i.eo to i32
  %i.eq = getelementptr i8, ptr %i.eb, i64 4
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !43
  %i.er = getelementptr i8, ptr %i.ee, i64 2
  %i.es = load i8, ptr %i.er, align 1, !tbaa !237
  %i.et = zext i8 %i.es to i32
  %i.eu = getelementptr i8, ptr %i.eb, i64 8
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !43
  %i.ev = getelementptr i8, ptr %i.ee, i64 3
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !237
  %i.ex = zext i8 %i.ew to i32
  %i.ey = getelementptr i8, ptr %i.eb, i64 12
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !43
  %i.ez = getelementptr i8, ptr %i.ee, i64 4      ; 2 uses
  %i.fa = getelementptr i8, ptr %i.eb, i64 16     ; 2 uses
  br label %.lr.ph481.prol.loopexit

.lr.ph481.prol.loopexit:                          ; preds = %.lr.ph481.prol, %.lr.ph481.preheader
  %.0241480.unr = phi ptr [ %i.ee, %.lr.ph481.preheader ], [ %i.ez, %.lr.ph481.prol ]
  %.0243479.unr = phi ptr [ %i.eb, %.lr.ph481.preheader ], [ %i.fa, %.lr.ph481.prol ]
  %.lcssa735.unr = phi ptr [ poison, %.lr.ph481.preheader ], [ %i.ez, %.lr.ph481.prol ]
  %.lcssa734.unr = phi ptr [ poison, %.lr.ph481.preheader ], [ %i.fa, %.lr.ph481.prol ]
  %i.fb = icmp ult i64 %i.ej, 4
  br i1 %i.fb, label %.preheader432, label %.lr.ph481

.preheader432:                                    ; preds = %.lr.ph481.prol.loopexit, %.lr.ph481, %_PyUnicode_DATA.exit321
  %.0243.lcssa = phi ptr [ %i.eb, %_PyUnicode_DATA.exit321 ], [ %.lcssa734.unr, %.lr.ph481.prol.loopexit ], [ %i.gw, %.lr.ph481 ] ; 6 uses
  %.0241.lcssa = phi ptr [ %i.ee, %_PyUnicode_DATA.exit321 ], [ %.lcssa735.unr, %.lr.ph481.prol.loopexit ], [ %i.gv, %.lr.ph481 ] ; 8 uses
  %i.fc = icmp ult ptr %.0241.lcssa, %i.ef
  br i1 %i.fc, label %.lr.ph486.preheader, label %ucs1lib_find_max_char.exit

.lr.ph486.preheader:                              ; preds = %.preheader432
  %8 = ptrtoaddr ptr %.0.i.i310.pn to i64
  %9 = ptrtoaddr ptr %.0241.lcssa to i64          ; 2 uses
  %i.fd = add i64 %4, %3
  %i.fe = add i64 %i.fd, %8                       ; 2 uses
  %i.ff = sub i64 %i.fe, %9                       ; 4 uses
  %min.iters.check672 = icmp ult i64 %i.ff, 32
  br i1 %min.iters.check672, label %.lr.ph486.preheader732, label %vector.memcheck663

vector.memcheck663:                               ; preds = %.lr.ph486.preheader
  %i.fg = sub i64 %i.fe, %9
  %i.fh = shl i64 %i.fg, 2
  %scevgep666 = getelementptr i8, ptr %.0243.lcssa, i64 %i.fh
  %scevgep667 = getelementptr i8, ptr %.0241.lcssa, i64 %i.ff
  %bound0668 = icmp ult ptr %.0243.lcssa, %scevgep667
  %bound1669 = icmp ult ptr %.0241.lcssa, %scevgep666
  %found.conflict670 = and i1 %bound0668, %bound1669
  br i1 %found.conflict670, label %.lr.ph486.preheader732, label %vector.ph673

vector.ph673:                                     ; preds = %vector.memcheck663
  %n.vec674 = and i64 %i.ff, -8                   ; 4 uses
  %i.fi = getelementptr i8, ptr %.0241.lcssa, i64 %n.vec674
  %i.fj = shl i64 %n.vec674, 2
  %i.fk = getelementptr i8, ptr %.0243.lcssa, i64 %i.fj
  br label %vector.body675

vector.body675:                                   ; preds = %vector.body675, %vector.ph673
  %index676 = phi i64 [ 0, %vector.ph673 ], [ %index.next681, %vector.body675 ] ; 3 uses
  %next.gep677 = getelementptr i8, ptr %.0241.lcssa, i64 %index676 ; 2 uses
  %i.fl = shl i64 %index676, 2
  %next.gep678 = getelementptr i8, ptr %.0243.lcssa, i64 %i.fl ; 2 uses
  %i.fm = getelementptr i8, ptr %next.gep677, i64 4
  %wide.load679 = load <4 x i8>, ptr %next.gep677, align 1, !tbaa !237, !alias.scope !376
  %wide.load680 = load <4 x i8>, ptr %i.fm, align 1, !tbaa !237, !alias.scope !376
  %i.fn = zext <4 x i8> %wide.load679 to <4 x i32>
  %i.fo = zext <4 x i8> %wide.load680 to <4 x i32>
  %i.fp = getelementptr i8, ptr %next.gep678, i64 16
  store <4 x i32> %i.fn, ptr %next.gep678, align 4, !tbaa !43, !alias.scope !377, !noalias !376
  store <4 x i32> %i.fo, ptr %i.fp, align 4, !tbaa !43, !alias.scope !377, !noalias !376
  %index.next681 = add nuw i64 %index676, 8       ; 2 uses
  %i.fq = icmp eq i64 %index.next681, %n.vec674
  br i1 %i.fq, label %middle.block682, label %vector.body675, !llvm.loop !351

middle.block682:                                  ; preds = %vector.body675
  %cmp.n683 = icmp eq i64 %i.ff, %n.vec674
  br i1 %cmp.n683, label %ucs1lib_find_max_char.exit, label %.lr.ph486.preheader732

.lr.ph486.preheader732:                           ; preds = %vector.memcheck663, %.lr.ph486.preheader, %middle.block682
  %.1242485.ph = phi ptr [ %.0241.lcssa, %vector.memcheck663 ], [ %.0241.lcssa, %.lr.ph486.preheader ], [ %i.fi, %middle.block682 ]
  %.1244484.ph = phi ptr [ %.0243.lcssa, %vector.memcheck663 ], [ %.0243.lcssa, %.lr.ph486.preheader ], [ %i.fk, %middle.block682 ]
  br label %.lr.ph486

.lr.ph481:                                        ; preds = %.lr.ph481.prol.loopexit, %.lr.ph481
  %.0241480 = phi ptr [ %i.gv, %.lr.ph481 ], [ %.0241480.unr, %.lr.ph481.prol.loopexit ] ; 9 uses
  %.0243479 = phi ptr [ %i.gw, %.lr.ph481 ], [ %.0243479.unr, %.lr.ph481.prol.loopexit ] ; 9 uses
  %i.fr = load i8, ptr %.0241480, align 1, !tbaa !237
  %i.fs = zext i8 %i.fr to i32
  store i32 %i.fs, ptr %.0243479, align 4, !tbaa !43
  %i.ft = getelementptr i8, ptr %.0241480, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !237
  %i.fv = zext i8 %i.fu to i32
  %i.fw = getelementptr i8, ptr %.0243479, i64 4
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !43
  %i.fx = getelementptr i8, ptr %.0241480, i64 2
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !237
  %i.fz = zext i8 %i.fy to i32
  %i.ga = getelementptr i8, ptr %.0243479, i64 8
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !43
  %i.gb = getelementptr i8, ptr %.0241480, i64 3
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !237
  %i.gd = zext i8 %i.gc to i32
  %i.ge = getelementptr i8, ptr %.0243479, i64 12
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !43
  %i.gf = getelementptr i8, ptr %.0241480, i64 4
  %i.gg = getelementptr i8, ptr %.0243479, i64 16
  %i.gh = load i8, ptr %i.gf, align 1, !tbaa !237
  %i.gi = zext i8 %i.gh to i32
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !43
  %i.gj = getelementptr i8, ptr %.0241480, i64 5
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !237
  %i.gl = zext i8 %i.gk to i32
  %i.gm = getelementptr i8, ptr %.0243479, i64 20
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !43
  %i.gn = getelementptr i8, ptr %.0241480, i64 6
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !237
  %i.gp = zext i8 %i.go to i32
  %i.gq = getelementptr i8, ptr %.0243479, i64 24
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !43
  %i.gr = getelementptr i8, ptr %.0241480, i64 7
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !237
  %i.gt = zext i8 %i.gs to i32
  %i.gu = getelementptr i8, ptr %.0243479, i64 28
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !43
  %i.gv = getelementptr i8, ptr %.0241480, i64 8  ; 3 uses
  %i.gw = getelementptr i8, ptr %.0243479, i64 32 ; 2 uses
  %i.gx = icmp ult ptr %i.gv, %i.eh
  br i1 %i.gx, label %.lr.ph481, label %.preheader432, !llvm.loop !352

.lr.ph486:                                        ; preds = %.lr.ph486.preheader732, %.lr.ph486
  %.1242485 = phi ptr [ %i.gy, %.lr.ph486 ], [ %.1242485.ph, %.lr.ph486.preheader732 ] ; 2 uses
  %.1244484 = phi ptr [ %i.hb, %.lr.ph486 ], [ %.1244484.ph, %.lr.ph486.preheader732 ] ; 2 uses
  %i.gy = getelementptr i8, ptr %.1242485, i64 1  ; 2 uses
  %i.gz = load i8, ptr %.1242485, align 1, !tbaa !237
  %i.ha = zext i8 %i.gz to i32
  %i.hb = getelementptr i8, ptr %.1244484, i64 4
  store i32 %i.ha, ptr %.1244484, align 4, !tbaa !43
  %i.hc = icmp ult ptr %i.gy, %i.ef
  br i1 %i.hc, label %.lr.ph486, label %ucs1lib_find_max_char.exit, !llvm.loop !353

bb.y:                                             ; preds = %bb.s
  %i.hd = icmp eq i32 %i.e, 2                     ; 2 uses
  %or.cond6 = and i1 %i.hd, %i.dy
  br i1 %or.cond6, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  br i1 %.not.i266, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.he = and i32 %i.j, 64
  %.not.i.i324 = icmp eq i32 %i.he, 0
  %.0.v.i.i325 = select i1 %.not.i.i324, i64 56, i64 40
  %.0.i.i326 = getelementptr i8, ptr %0, i64 %.0.v.i.i325
  br label %_PyUnicode_DATA.exit329

bb.ab:                                            ; preds = %bb.z
  %i.hf = getelementptr i8, ptr %0, i64 56
  %.val4.i328 = load ptr, ptr %i.hf, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit329

_PyUnicode_DATA.exit329:                          ; preds = %bb.aa, %bb.ab
  %.0.i327 = phi ptr [ %.0.i.i326, %bb.aa ], [ %.val4.i328, %bb.ab ]
  %i.hg = getelementptr [4 x i8], ptr %.0.i327, i64 %1 ; 2 uses
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_PyUnicode_DATA.exit329
  %i.hh = and i32 %i.c, 64
  %.not.i.i332 = icmp eq i32 %i.hh, 0
  %.0.v.i.i333 = select i1 %.not.i.i332, i64 56, i64 40
  %.0.i.i334 = getelementptr i8, ptr %2, i64 %.0.v.i.i333
  br label %_PyUnicode_DATA.exit345

bb.ad:                                            ; preds = %_PyUnicode_DATA.exit329
  %i.hi = getelementptr i8, ptr %2, i64 56
  %.val4.i336 = load ptr, ptr %i.hi, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit345

_PyUnicode_DATA.exit345:                          ; preds = %bb.ac, %bb.ad
  %.0.i.i334.pn = phi ptr [ %.0.i.i334, %bb.ac ], [ %.val4.i336, %bb.ad ] ; 2 uses
  %i.hj = getelementptr [2 x i8], ptr %.0.i.i334.pn, i64 %3 ; 5 uses
  %i.hk = getelementptr [2 x i8], ptr %i.hj, i64 %4 ; 2 uses
  %.idx553 = shl i64 %4, 1                        ; 2 uses
  %i.hl = ashr exact i64 %.idx553, 1
  %i.hm = and i64 %i.hl, -4
  %i.hn = getelementptr [2 x i8], ptr %i.hj, i64 %i.hm ; 2 uses
  %i.ho = icmp ult ptr %i.hj, %i.hn
  br i1 %i.ho, label %.lr.ph473, label %.preheader434

.preheader434:                                    ; preds = %.lr.ph473, %_PyUnicode_DATA.exit345
  %.0239.lcssa = phi ptr [ %i.hg, %_PyUnicode_DATA.exit345 ], [ %i.in, %.lr.ph473 ] ; 3 uses
  %.0237.lcssa = phi ptr [ %i.hj, %_PyUnicode_DATA.exit345 ], [ %i.im, %.lr.ph473 ] ; 5 uses
  %i.hp = icmp ult ptr %.0237.lcssa, %i.hk
  br i1 %i.hp, label %.lr.ph478.preheader, label %ucs1lib_find_max_char.exit

.lr.ph478.preheader:                              ; preds = %.preheader434
  %i.hq = ptrtoaddr ptr %.0.i.i334.pn to i64
  %i.hr = shl i64 %3, 1
  %i.hs = ptrtoaddr ptr %.0237.lcssa to i64
  %i.ht = add i64 %.idx553, %i.hq
  %i.hu = add i64 %i.ht, %i.hr
  %i.hv = xor i64 %i.hs, -1
  %i.hw = add i64 %i.hu, %i.hv                    ; 2 uses
  %i.hx = lshr i64 %i.hw, 1
  %i.hy = add nuw i64 %i.hx, 1                    ; 2 uses
  %min.iters.check649 = icmp ult i64 %i.hw, 14
  br i1 %min.iters.check649, label %.lr.ph478.preheader736, label %vector.ph650

vector.ph650:                                     ; preds = %.lr.ph478.preheader
  %n.vec651 = and i64 %i.hy, -8                   ; 4 uses
  %i.hz = shl i64 %n.vec651, 1
  %i.ia = getelementptr i8, ptr %.0237.lcssa, i64 %i.hz
  %i.ib = shl i64 %n.vec651, 2
  %i.ic = getelementptr i8, ptr %.0239.lcssa, i64 %i.ib
  br label %vector.body652

vector.body652:                                   ; preds = %vector.body652, %vector.ph650
  %index653 = phi i64 [ 0, %vector.ph650 ], [ %index.next658, %vector.body652 ] ; 3 uses
  %i.id = shl i64 %index653, 1
  %next.gep654 = getelementptr i8, ptr %.0237.lcssa, i64 %i.id ; 2 uses
  %i.ie = shl i64 %index653, 2
  %next.gep655 = getelementptr i8, ptr %.0239.lcssa, i64 %i.ie ; 2 uses
  %i.if = getelementptr i8, ptr %next.gep654, i64 8
  %wide.load656 = load <4 x i16>, ptr %next.gep654, align 2, !tbaa !240
  %wide.load657 = load <4 x i16>, ptr %i.if, align 2, !tbaa !240
  %i.ig = zext <4 x i16> %wide.load656 to <4 x i32>
  %i.ih = zext <4 x i16> %wide.load657 to <4 x i32>
  %i.ii = getelementptr i8, ptr %next.gep655, i64 16
  store <4 x i32> %i.ig, ptr %next.gep655, align 4, !tbaa !43
  store <4 x i32> %i.ih, ptr %i.ii, align 4, !tbaa !43
  %index.next658 = add nuw i64 %index653, 8       ; 2 uses
  %i.ij = icmp eq i64 %index.next658, %n.vec651
  br i1 %i.ij, label %middle.block659, label %vector.body652, !llvm.loop !354

middle.block659:                                  ; preds = %vector.body652
  %cmp.n660 = icmp eq i64 %i.hy, %n.vec651
  br i1 %cmp.n660, label %ucs1lib_find_max_char.exit, label %.lr.ph478.preheader736

.lr.ph478.preheader736:                           ; preds = %.lr.ph478.preheader, %middle.block659
  %.1238477.ph = phi ptr [ %.0237.lcssa, %.lr.ph478.preheader ], [ %i.ia, %middle.block659 ]
  %.1240476.ph = phi ptr [ %.0239.lcssa, %.lr.ph478.preheader ], [ %i.ic, %middle.block659 ]
  br label %.lr.ph478

.lr.ph473:                                        ; preds = %_PyUnicode_DATA.exit345, %.lr.ph473
  %.0237472 = phi ptr [ %i.im, %.lr.ph473 ], [ %i.hj, %_PyUnicode_DATA.exit345 ] ; 2 uses
  %.0239471 = phi ptr [ %i.in, %.lr.ph473 ], [ %i.hg, %_PyUnicode_DATA.exit345 ] ; 2 uses
  %i.ik = load <4 x i16>, ptr %.0237472, align 2, !tbaa !240
  %i.il = zext <4 x i16> %i.ik to <4 x i32>
  store <4 x i32> %i.il, ptr %.0239471, align 4, !tbaa !43
  %i.im = getelementptr i8, ptr %.0237472, i64 8  ; 3 uses
  %i.in = getelementptr i8, ptr %.0239471, i64 16 ; 2 uses
  %i.io = icmp ult ptr %i.im, %i.hn
  br i1 %i.io, label %.lr.ph473, label %.preheader434, !llvm.loop !355

.lr.ph478:                                        ; preds = %.lr.ph478.preheader736, %.lr.ph478
  %.1238477 = phi ptr [ %i.ip, %.lr.ph478 ], [ %.1238477.ph, %.lr.ph478.preheader736 ] ; 2 uses
  %.1240476 = phi ptr [ %i.is, %.lr.ph478 ], [ %.1240476.ph, %.lr.ph478.preheader736 ] ; 2 uses
  %i.ip = getelementptr i8, ptr %.1238477, i64 2  ; 2 uses
  %i.iq = load i16, ptr %.1238477, align 2, !tbaa !240
  %i.ir = zext i16 %i.iq to i32
  %i.is = getelementptr i8, ptr %.1240476, i64 4
  store i32 %i.ir, ptr %.1240476, align 4, !tbaa !43
  %i.it = icmp ult ptr %i.ip, %i.hk
  br i1 %i.it, label %.lr.ph478, label %ucs1lib_find_max_char.exit, !llvm.loop !356

bb.ae:                                            ; preds = %bb.y
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.af, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.af:                                            ; preds = %bb.ae
  %i.iu = icmp eq i32 %i.l, 1                     ; 2 uses
  %or.cond8 = and i1 %i.hd, %i.iu
  br i1 %or.cond8, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  br i1 %.not.i266, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.iv = and i32 %i.j, 64
  %.not.i.i348 = icmp eq i32 %i.iv, 0
  %.0.v.i.i349 = select i1 %.not.i.i348, i64 56, i64 40
  %.0.i.i350 = getelementptr i8, ptr %0, i64 %.0.v.i.i349
  br label %_PyUnicode_DATA.exit353

bb.ai:                                            ; preds = %bb.ag
  %i.iw = getelementptr i8, ptr %0, i64 56
  %.val4.i352 = load ptr, ptr %i.iw, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit353

_PyUnicode_DATA.exit353:                          ; preds = %bb.ah, %bb.ai
  %.0.i351 = phi ptr [ %.0.i.i350, %bb.ah ], [ %.val4.i352, %bb.ai ]
  %i.ix = getelementptr i8, ptr %.0.i351, i64 %1  ; 2 uses
  br i1 %.not.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_PyUnicode_DATA.exit353
  %i.iy = and i32 %i.c, 64
  %.not.i.i356 = icmp eq i32 %i.iy, 0
  %.0.v.i.i357 = select i1 %.not.i.i356, i64 56, i64 40
  %.0.i.i358 = getelementptr i8, ptr %2, i64 %.0.v.i.i357
  br label %_PyUnicode_DATA.exit369

bb.ak:                                            ; preds = %_PyUnicode_DATA.exit353
  %i.iz = getelementptr i8, ptr %2, i64 56
  %.val4.i360 = load ptr, ptr %i.iz, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit369

_PyUnicode_DATA.exit369:                          ; preds = %bb.aj, %bb.ak
  %.0.i.i358.pn = phi ptr [ %.0.i.i358, %bb.aj ], [ %.val4.i360, %bb.ak ] ; 3 uses
  %.0.i.i358.pn616 = ptrtoaddr ptr %.0.i.i358.pn to i64
  %i.ja = getelementptr [2 x i8], ptr %.0.i.i358.pn, i64 %3 ; 5 uses
  %i.jb = getelementptr [2 x i8], ptr %i.ja, i64 %4 ; 2 uses
  %.idx552 = shl i64 %4, 1                        ; 3 uses
  %i.jc = ashr exact i64 %.idx552, 1
  %i.jd = and i64 %i.jc, -4
  %i.je = getelementptr [2 x i8], ptr %i.ja, i64 %i.jd ; 2 uses
  %i.jf = icmp ult ptr %i.ja, %i.je
  br i1 %i.jf, label %.lr.ph465, label %.preheader436

.preheader436:                                    ; preds = %.lr.ph465, %_PyUnicode_DATA.exit369
  %.0235.lcssa = phi ptr [ %i.ix, %_PyUnicode_DATA.exit369 ], [ %i.lb, %.lr.ph465 ] ; 8 uses
  %.0233.lcssa = phi ptr [ %i.ja, %_PyUnicode_DATA.exit369 ], [ %i.la, %.lr.ph465 ] ; 11 uses
  %i.jg = icmp ult ptr %.0233.lcssa, %i.jb
  br i1 %i.jg, label %iter.check, label %ucs1lib_find_max_char.exit

iter.check:                                       ; preds = %.preheader436
  %.0233.lcssa623 = ptrtoaddr ptr %.0233.lcssa to i64
  %i.jh = add i64 %.idx552, %.0.i.i358.pn616
  %i.ji = shl i64 %3, 1
  %i.jj = add i64 %i.jh, %i.ji
  %i.jk = xor i64 %.0233.lcssa623, -1
  %i.jl = add i64 %i.jj, %i.jk                    ; 3 uses
  %i.jm = lshr i64 %i.jl, 1
  %i.jn = add nuw i64 %i.jm, 1                    ; 5 uses
  %min.iters.check624 = icmp ult i64 %i.jl, 14
  br i1 %min.iters.check624, label %.lr.ph470.preheader, label %vector.memcheck615

vector.memcheck615:                               ; preds = %iter.check
  %10 = ptrtoaddr ptr %.0.i.i358.pn to i64
  %i.jo = shl i64 %3, 1
  %11 = ptrtoaddr ptr %.0233.lcssa to i64
  %12 = add i64 %.idx552, %10
  %i.jp = add i64 %12, %i.jo
  %i.jq = xor i64 %11, -1
  %i.jr = add i64 %i.jp, %i.jq                    ; 2 uses
  %i.js = lshr i64 %i.jr, 1
  %i.jt = getelementptr i8, ptr %.0235.lcssa, i64 %i.js
  %scevgep618 = getelementptr i8, ptr %i.jt, i64 1
  %i.ju = and i64 %i.jr, -2
  %i.jv = getelementptr i8, ptr %.0233.lcssa, i64 %i.ju
  %scevgep619 = getelementptr i8, ptr %i.jv, i64 2
  %bound0620 = icmp ult ptr %.0235.lcssa, %scevgep619
  %bound1621 = icmp ult ptr %.0233.lcssa, %scevgep618
  %found.conflict622 = and i1 %bound0620, %bound1621
  br i1 %found.conflict622, label %.lr.ph470.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck615
  %min.iters.check625 = icmp ult i64 %i.jl, 30
  br i1 %min.iters.check625, label %vec.epilog.ph, label %vector.ph626

vector.ph626:                                     ; preds = %vector.main.loop.iter.check
  %i.jw = and i64 %i.jn, 8
  %n.vec627 = and i64 %i.jn, -16                  ; 5 uses
  %i.jx = shl i64 %n.vec627, 1
  %i.jy = getelementptr i8, ptr %.0233.lcssa, i64 %i.jx
  %i.jz = getelementptr i8, ptr %.0235.lcssa, i64 %n.vec627
  br label %vector.body628

vector.body628:                                   ; preds = %vector.ph626, %vector.body628
  %index629 = phi i64 [ 0, %vector.ph626 ], [ %index.next634, %vector.body628 ] ; 3 uses
  %i.ka = shl i64 %index629, 1
  %next.gep630 = getelementptr i8, ptr %.0233.lcssa, i64 %i.ka ; 2 uses
  %next.gep631 = getelementptr i8, ptr %.0235.lcssa, i64 %index629 ; 2 uses
  %i.kb = getelementptr i8, ptr %next.gep630, i64 16
  %wide.load632 = load <8 x i16>, ptr %next.gep630, align 2, !tbaa !240, !alias.scope !378
  %wide.load633 = load <8 x i16>, ptr %i.kb, align 2, !tbaa !240, !alias.scope !378
  %i.kc = trunc <8 x i16> %wide.load632 to <8 x i8>
  %i.kd = trunc <8 x i16> %wide.load633 to <8 x i8>
  %i.ke = getelementptr i8, ptr %next.gep631, i64 8
  store <8 x i8> %i.kc, ptr %next.gep631, align 1, !tbaa !237, !alias.scope !379, !noalias !378
  store <8 x i8> %i.kd, ptr %i.ke, align 1, !tbaa !237, !alias.scope !379, !noalias !378
  %index.next634 = add nuw i64 %index629, 16      ; 2 uses
  %i.kf = icmp eq i64 %index.next634, %n.vec627
  br i1 %i.kf, label %middle.block635, label %vector.body628, !llvm.loop !360

middle.block635:                                  ; preds = %vector.body628
  %cmp.n636 = icmp eq i64 %i.jn, %n.vec627
  br i1 %cmp.n636, label %ucs1lib_find_max_char.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block635
  %min.epilog.iters.check.not.not = icmp eq i64 %i.jw, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph470.preheader, label %vec.epilog.ph, !prof !245

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec627, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec639 = and i64 %i.jn, -8                   ; 4 uses
  %i.kg = shl i64 %n.vec639, 1
  %i.kh = getelementptr i8, ptr %.0233.lcssa, i64 %i.kg
  %i.ki = getelementptr i8, ptr %.0235.lcssa, i64 %n.vec639
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index640 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next644, %vec.epilog.vector.body ] ; 3 uses
  %i.kj = shl i64 %index640, 1
  %next.gep641 = getelementptr i8, ptr %.0233.lcssa, i64 %i.kj
  %next.gep642 = getelementptr i8, ptr %.0235.lcssa, i64 %index640
  %wide.load643 = load <8 x i16>, ptr %next.gep641, align 2, !tbaa !240, !alias.scope !378
  %i.kk = trunc <8 x i16> %wide.load643 to <8 x i8>
  store <8 x i8> %i.kk, ptr %next.gep642, align 1, !tbaa !237, !alias.scope !379, !noalias !378
  %index.next644 = add nuw i64 %index640, 8       ; 2 uses
  %i.kl = icmp eq i64 %index.next644, %n.vec639
  br i1 %i.kl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !361

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n645 = icmp eq i64 %i.jn, %n.vec639
  br i1 %cmp.n645, label %ucs1lib_find_max_char.exit, label %.lr.ph470.preheader

.lr.ph470.preheader:                              ; preds = %iter.check, %vector.memcheck615, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1234469.ph = phi ptr [ %.0233.lcssa, %iter.check ], [ %.0233.lcssa, %vector.memcheck615 ], [ %i.jy, %vec.epilog.iter.check ], [ %i.kh, %vec.epilog.middle.block ]
  %.1236468.ph = phi ptr [ %.0235.lcssa, %iter.check ], [ %.0235.lcssa, %vector.memcheck615 ], [ %i.jz, %vec.epilog.iter.check ], [ %i.ki, %vec.epilog.middle.block ]
  br label %.lr.ph470

.lr.ph465:                                        ; preds = %_PyUnicode_DATA.exit369, %.lr.ph465
  %.0233464 = phi ptr [ %i.la, %.lr.ph465 ], [ %i.ja, %_PyUnicode_DATA.exit369 ] ; 5 uses
  %.0235463 = phi ptr [ %i.lb, %.lr.ph465 ], [ %i.ix, %_PyUnicode_DATA.exit369 ] ; 5 uses
  %i.km = load i16, ptr %.0233464, align 2, !tbaa !240
  %i.kn = trunc i16 %i.km to i8
  store i8 %i.kn, ptr %.0235463, align 1, !tbaa !237
  %i.ko = getelementptr i8, ptr %.0233464, i64 2
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !240
  %i.kq = trunc i16 %i.kp to i8
  %i.kr = getelementptr i8, ptr %.0235463, i64 1
  store i8 %i.kq, ptr %i.kr, align 1, !tbaa !237
  %i.ks = getelementptr i8, ptr %.0233464, i64 4
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !240
  %i.ku = trunc i16 %i.kt to i8
  %i.kv = getelementptr i8, ptr %.0235463, i64 2
  store i8 %i.ku, ptr %i.kv, align 1, !tbaa !237
  %i.kw = getelementptr i8, ptr %.0233464, i64 6
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !240
  %i.ky = trunc i16 %i.kx to i8
  %i.kz = getelementptr i8, ptr %.0235463, i64 3
  store i8 %i.ky, ptr %i.kz, align 1, !tbaa !237
  %i.la = getelementptr i8, ptr %.0233464, i64 8  ; 3 uses
  %i.lb = getelementptr i8, ptr %.0235463, i64 4  ; 2 uses
  %i.lc = icmp ult ptr %i.la, %i.je
  br i1 %i.lc, label %.lr.ph465, label %.preheader436, !llvm.loop !362

.lr.ph470:                                        ; preds = %.lr.ph470.preheader, %.lr.ph470
  %.1234469 = phi ptr [ %i.ld, %.lr.ph470 ], [ %.1234469.ph, %.lr.ph470.preheader ] ; 2 uses
  %.1236468 = phi ptr [ %i.lg, %.lr.ph470 ], [ %.1236468.ph, %.lr.ph470.preheader ] ; 2 uses
  %i.ld = getelementptr i8, ptr %.1234469, i64 2  ; 2 uses
  %i.le = load i16, ptr %.1234469, align 2, !tbaa !240
  %i.lf = trunc i16 %i.le to i8
  %i.lg = getelementptr i8, ptr %.1236468, i64 1
  store i8 %i.lf, ptr %.1236468, align 1, !tbaa !237
  %i.lh = icmp ult ptr %i.ld, %i.jb
  br i1 %i.lh, label %.lr.ph470, label %ucs1lib_find_max_char.exit, !llvm.loop !363

bb.al:                                            ; preds = %bb.af
  %i.li = icmp eq i32 %i.e, 4                     ; 2 uses
  %or.cond10 = and i1 %i.li, %i.iu
  br i1 %or.cond10, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  br i1 %.not.i266, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lj = and i32 %i.j, 64
  %.not.i.i372 = icmp eq i32 %i.lj, 0
  %.0.v.i.i373 = select i1 %.not.i.i372, i64 56, i64 40
  %.0.i.i374 = getelementptr i8, ptr %0, i64 %.0.v.i.i373
  br label %_PyUnicode_DATA.exit377

bb.ao:                                            ; preds = %bb.am
  %i.lk = getelementptr i8, ptr %0, i64 56
  %.val4.i376 = load ptr, ptr %i.lk, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit377

_PyUnicode_DATA.exit377:                          ; preds = %bb.an, %bb.ao
  %.0.i375 = phi ptr [ %.0.i.i374, %bb.an ], [ %.val4.i376, %bb.ao ]
  %i.ll = getelementptr i8, ptr %.0.i375, i64 %1  ; 2 uses
  br i1 %.not.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_PyUnicode_DATA.exit377
  %i.lm = and i32 %i.c, 64
  %.not.i.i380 = icmp eq i32 %i.lm, 0
  %.0.v.i.i381 = select i1 %.not.i.i380, i64 56, i64 40
  %.0.i.i382 = getelementptr i8, ptr %2, i64 %.0.v.i.i381
  br label %_PyUnicode_DATA.exit393

bb.aq:                                            ; preds = %_PyUnicode_DATA.exit377
  %i.ln = getelementptr i8, ptr %2, i64 56
  %.val4.i384 = load ptr, ptr %i.ln, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit393

_PyUnicode_DATA.exit393:                          ; preds = %bb.ap, %bb.aq
  %.0.i.i382.pn = phi ptr [ %.0.i.i382, %bb.ap ], [ %.val4.i384, %bb.aq ] ; 2 uses
  %i.lo = getelementptr [4 x i8], ptr %.0.i.i382.pn, i64 %3 ; 5 uses
  %i.lp = getelementptr [4 x i8], ptr %i.lo, i64 %4 ; 2 uses
  %.idx551 = shl i64 %4, 2                        ; 2 uses
  %i.lq = ashr exact i64 %.idx551, 2
  %i.lr = and i64 %i.lq, -4
  %i.ls = getelementptr [4 x i8], ptr %i.lo, i64 %i.lr ; 2 uses
  %i.lt = icmp ult ptr %i.lo, %i.ls
  br i1 %i.lt, label %.lr.ph457, label %.preheader438

.preheader438:                                    ; preds = %.lr.ph457, %_PyUnicode_DATA.exit393
  %.0231.lcssa = phi ptr [ %i.ll, %_PyUnicode_DATA.exit393 ], [ %i.ni, %.lr.ph457 ] ; 6 uses
  %.0229.lcssa = phi ptr [ %i.lo, %_PyUnicode_DATA.exit393 ], [ %i.nh, %.lr.ph457 ] ; 8 uses
  %i.lu = icmp ult ptr %.0229.lcssa, %i.lp
  br i1 %i.lu, label %.lr.ph462.preheader, label %ucs1lib_find_max_char.exit

.lr.ph462.preheader:                              ; preds = %.preheader438
  %13 = ptrtoaddr ptr %.0.i.i382.pn to i64
  %i.lv = shl i64 %3, 2
  %14 = ptrtoaddr ptr %.0229.lcssa to i64         ; 2 uses
  %i.lw = add i64 %.idx551, %13                   ; 2 uses
  %i.lx = add i64 %i.lw, %i.lv
  %i.ly = xor i64 %14, -1
  %i.lz = add i64 %i.lx, %i.ly                    ; 2 uses
  %i.ma = lshr i64 %i.lz, 2
  %i.mb = add nuw nsw i64 %i.ma, 1                ; 2 uses
  %min.iters.check601 = icmp ult i64 %i.lz, 156
  br i1 %min.iters.check601, label %.lr.ph462.preheader743, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph462.preheader
  %i.mc = shl i64 %3, 2
  %i.md = add i64 %i.lw, %i.mc
  %i.me = xor i64 %14, -1
  %i.mf = add i64 %i.md, %i.me                    ; 2 uses
  %i.mg = lshr i64 %i.mf, 2
  %i.mh = getelementptr i8, ptr %.0231.lcssa, i64 %i.mg
  %scevgep = getelementptr i8, ptr %i.mh, i64 1
  %i.mi = and i64 %i.mf, -4
  %i.mj = getelementptr i8, ptr %.0229.lcssa, i64 %i.mi
  %scevgep599 = getelementptr i8, ptr %i.mj, i64 4
  %bound0 = icmp ult ptr %.0231.lcssa, %scevgep599
  %bound1 = icmp ult ptr %.0229.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph462.preheader743, label %vector.ph602

vector.ph602:                                     ; preds = %vector.memcheck
  %n.vec603 = and i64 %i.mb, 9223372036854775800  ; 4 uses
  %i.mk = shl i64 %n.vec603, 2
  %i.ml = getelementptr i8, ptr %.0229.lcssa, i64 %i.mk
  %i.mm = getelementptr i8, ptr %.0231.lcssa, i64 %n.vec603
  br label %vector.body604

vector.body604:                                   ; preds = %vector.body604, %vector.ph602
  %index605 = phi i64 [ 0, %vector.ph602 ], [ %index.next610, %vector.body604 ] ; 3 uses
  %i.mn = shl i64 %index605, 2
  %next.gep606 = getelementptr i8, ptr %.0229.lcssa, i64 %i.mn ; 2 uses
  %next.gep607 = getelementptr i8, ptr %.0231.lcssa, i64 %index605 ; 2 uses
  %i.mo = getelementptr i8, ptr %next.gep606, i64 16
  %wide.load608 = load <4 x i32>, ptr %next.gep606, align 4, !tbaa !43, !alias.scope !380
  %wide.load609 = load <4 x i32>, ptr %i.mo, align 4, !tbaa !43, !alias.scope !380
  %i.mp = trunc <4 x i32> %wide.load608 to <4 x i8>
  %i.mq = trunc <4 x i32> %wide.load609 to <4 x i8>
  %i.mr = getelementptr i8, ptr %next.gep607, i64 4
  store <4 x i8> %i.mp, ptr %next.gep607, align 1, !tbaa !237, !alias.scope !381, !noalias !380
  store <4 x i8> %i.mq, ptr %i.mr, align 1, !tbaa !237, !alias.scope !381, !noalias !380
  %index.next610 = add nuw i64 %index605, 8       ; 2 uses
  %i.ms = icmp eq i64 %index.next610, %n.vec603
  br i1 %i.ms, label %middle.block611, label %vector.body604, !llvm.loop !367

middle.block611:                                  ; preds = %vector.body604
  %cmp.n612 = icmp eq i64 %i.mb, %n.vec603
  br i1 %cmp.n612, label %ucs1lib_find_max_char.exit, label %.lr.ph462.preheader743

.lr.ph462.preheader743:                           ; preds = %vector.memcheck, %.lr.ph462.preheader, %middle.block611
  %.1230461.ph = phi ptr [ %.0229.lcssa, %vector.memcheck ], [ %.0229.lcssa, %.lr.ph462.preheader ], [ %i.ml, %middle.block611 ]
  %.1232460.ph = phi ptr [ %.0231.lcssa, %vector.memcheck ], [ %.0231.lcssa, %.lr.ph462.preheader ], [ %i.mm, %middle.block611 ]
  br label %.lr.ph462

.lr.ph457:                                        ; preds = %_PyUnicode_DATA.exit393, %.lr.ph457
  %.0229456 = phi ptr [ %i.nh, %.lr.ph457 ], [ %i.lo, %_PyUnicode_DATA.exit393 ] ; 5 uses
  %.0231455 = phi ptr [ %i.ni, %.lr.ph457 ], [ %i.ll, %_PyUnicode_DATA.exit393 ] ; 5 uses
  %i.mt = load i32, ptr %.0229456, align 4, !tbaa !43
  %i.mu = trunc i32 %i.mt to i8
  store i8 %i.mu, ptr %.0231455, align 1, !tbaa !237
  %i.mv = getelementptr i8, ptr %.0229456, i64 4
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !43
  %i.mx = trunc i32 %i.mw to i8
  %i.my = getelementptr i8, ptr %.0231455, i64 1
  store i8 %i.mx, ptr %i.my, align 1, !tbaa !237
  %i.mz = getelementptr i8, ptr %.0229456, i64 8
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !43
  %i.nb = trunc i32 %i.na to i8
  %i.nc = getelementptr i8, ptr %.0231455, i64 2
  store i8 %i.nb, ptr %i.nc, align 1, !tbaa !237
  %i.nd = getelementptr i8, ptr %.0229456, i64 12
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !43
  %i.nf = trunc i32 %i.ne to i8
  %i.ng = getelementptr i8, ptr %.0231455, i64 3
  store i8 %i.nf, ptr %i.ng, align 1, !tbaa !237
  %i.nh = getelementptr i8, ptr %.0229456, i64 16 ; 3 uses
  %i.ni = getelementptr i8, ptr %.0231455, i64 4  ; 2 uses
  %i.nj = icmp ult ptr %i.nh, %i.ls
  br i1 %i.nj, label %.lr.ph457, label %.preheader438, !llvm.loop !368

.lr.ph462:                                        ; preds = %.lr.ph462.preheader743, %.lr.ph462
  %.1230461 = phi ptr [ %i.nk, %.lr.ph462 ], [ %.1230461.ph, %.lr.ph462.preheader743 ] ; 2 uses
  %.1232460 = phi ptr [ %i.nn, %.lr.ph462 ], [ %.1232460.ph, %.lr.ph462.preheader743 ] ; 2 uses
  %i.nk = getelementptr i8, ptr %.1230461, i64 4  ; 2 uses
  %i.nl = load i32, ptr %.1230461, align 4, !tbaa !43
  %i.nm = trunc i32 %i.nl to i8
  %i.nn = getelementptr i8, ptr %.1232460, i64 1
  store i8 %i.nm, ptr %.1232460, align 1, !tbaa !237
  %i.no = icmp ult ptr %i.nk, %i.lp
  br i1 %i.no, label %.lr.ph462, label %ucs1lib_find_max_char.exit, !llvm.loop !369

bb.ar:                                            ; preds = %bb.al
  tail call void @llvm.assume(i1 %i.li)
  tail call void @llvm.assume(i1 %i.aj)
  br i1 %.not.i266, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.np = and i32 %i.j, 64
  %.not.i.i396 = icmp eq i32 %i.np, 0
  %.0.v.i.i397 = select i1 %.not.i.i396, i64 56, i64 40
  %.0.i.i398 = getelementptr i8, ptr %0, i64 %.0.v.i.i397
  br label %_PyUnicode_DATA.exit401

bb.at:                                            ; preds = %bb.ar
  %i.nq = getelementptr i8, ptr %0, i64 56
  %.val4.i400 = load ptr, ptr %i.nq, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit401

_PyUnicode_DATA.exit401:                          ; preds = %bb.as, %bb.at
  %.0.i399 = phi ptr [ %.0.i.i398, %bb.as ], [ %.val4.i400, %bb.at ]
  %i.nr = getelementptr [2 x i8], ptr %.0.i399, i64 %1 ; 2 uses
  br i1 %.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_PyUnicode_DATA.exit401
  %i.ns = and i32 %i.c, 64
  %.not.i.i404 = icmp eq i32 %i.ns, 0
  %.0.v.i.i405 = select i1 %.not.i.i404, i64 56, i64 40
  %.0.i.i406 = getelementptr i8, ptr %2, i64 %.0.v.i.i405
  br label %_PyUnicode_DATA.exit417

bb.av:                                            ; preds = %_PyUnicode_DATA.exit401
  %i.nt = getelementptr i8, ptr %2, i64 56
  %.val4.i408 = load ptr, ptr %i.nt, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit417

_PyUnicode_DATA.exit417:                          ; preds = %bb.au, %bb.av
  %.0.i.i406.pn = phi ptr [ %.0.i.i406, %bb.au ], [ %.val4.i408, %bb.av ] ; 2 uses
  %i.nu = getelementptr [4 x i8], ptr %.0.i.i406.pn, i64 %3 ; 5 uses
  %i.nv = getelementptr [4 x i8], ptr %i.nu, i64 %4 ; 2 uses
  %.idx = shl i64 %4, 2                           ; 2 uses
  %i.nw = ashr exact i64 %.idx, 2
  %i.nx = and i64 %i.nw, -4
  %i.ny = getelementptr [4 x i8], ptr %i.nu, i64 %i.nx ; 2 uses
  %i.nz = icmp ult ptr %i.nu, %i.ny
  br i1 %i.nz, label %.lr.ph449, label %.preheader440

.preheader440:                                    ; preds = %.lr.ph449, %_PyUnicode_DATA.exit417
  %.0227.lcssa = phi ptr [ %i.nr, %_PyUnicode_DATA.exit417 ], [ %i.oy, %.lr.ph449 ] ; 3 uses
  %.0226.lcssa = phi ptr [ %i.nu, %_PyUnicode_DATA.exit417 ], [ %i.ox, %.lr.ph449 ] ; 5 uses
  %i.oa = icmp ult ptr %.0226.lcssa, %i.nv
  br i1 %i.oa, label %.lr.ph454.preheader, label %ucs1lib_find_max_char.exit

.lr.ph454.preheader:                              ; preds = %.preheader440
  %i.ob = ptrtoaddr ptr %.0.i.i406.pn to i64
  %i.oc = shl i64 %3, 2
  %i.od = ptrtoaddr ptr %.0226.lcssa to i64
  %i.oe = add i64 %.idx, %i.ob
  %i.of = add i64 %i.oe, %i.oc
  %i.og = xor i64 %i.od, -1
  %i.oh = add i64 %i.of, %i.og                    ; 2 uses
  %i.oi = lshr i64 %i.oh, 2
  %i.oj = add nuw nsw i64 %i.oi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.oh, 28
  br i1 %min.iters.check, label %.lr.ph454.preheader747, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph454.preheader
  %n.vec = and i64 %i.oj, 9223372036854775800     ; 4 uses
  %i.ok = shl i64 %n.vec, 2
  %i.ol = getelementptr i8, ptr %.0226.lcssa, i64 %i.ok
  %i.om = shl nuw i64 %n.vec, 1
  %i.on = getelementptr i8, ptr %.0227.lcssa, i64 %i.om
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.oo = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0226.lcssa, i64 %i.oo ; 2 uses
  %i.op = shl i64 %index, 1
  %next.gep594 = getelementptr i8, ptr %.0227.lcssa, i64 %i.op ; 2 uses
  %i.oq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !43
  %wide.load595 = load <4 x i32>, ptr %i.oq, align 4, !tbaa !43
  %i.or = trunc <4 x i32> %wide.load to <4 x i16>
  %i.os = trunc <4 x i32> %wide.load595 to <4 x i16>
  %i.ot = getelementptr i8, ptr %next.gep594, i64 8
  store <4 x i16> %i.or, ptr %next.gep594, align 2, !tbaa !240
  store <4 x i16> %i.os, ptr %i.ot, align 2, !tbaa !240
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ou = icmp eq i64 %index.next, %n.vec
  br i1 %i.ou, label %middle.block, label %vector.body, !llvm.loop !370

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.oj, %n.vec
  br i1 %cmp.n, label %ucs1lib_find_max_char.exit, label %.lr.ph454.preheader747

.lr.ph454.preheader747:                           ; preds = %.lr.ph454.preheader, %middle.block
  %.1453.ph = phi ptr [ %.0226.lcssa, %.lr.ph454.preheader ], [ %i.ol, %middle.block ]
  %.1228452.ph = phi ptr [ %.0227.lcssa, %.lr.ph454.preheader ], [ %i.on, %middle.block ]
  br label %.lr.ph454

.lr.ph449:                                        ; preds = %_PyUnicode_DATA.exit417, %.lr.ph449
  %.0226448 = phi ptr [ %i.ox, %.lr.ph449 ], [ %i.nu, %_PyUnicode_DATA.exit417 ] ; 2 uses
  %.0227447 = phi ptr [ %i.oy, %.lr.ph449 ], [ %i.nr, %_PyUnicode_DATA.exit417 ] ; 2 uses
  %i.ov = load <4 x i32>, ptr %.0226448, align 4, !tbaa !43
  %i.ow = trunc <4 x i32> %i.ov to <4 x i16>
  store <4 x i16> %i.ow, ptr %.0227447, align 2, !tbaa !240
  %i.ox = getelementptr i8, ptr %.0226448, i64 16 ; 3 uses
  %i.oy = getelementptr i8, ptr %.0227447, i64 8  ; 2 uses
  %i.oz = icmp ult ptr %i.ox, %i.ny
  br i1 %i.oz, label %.lr.ph449, label %.preheader440, !llvm.loop !371

.lr.ph454:                                        ; preds = %.lr.ph454.preheader747, %.lr.ph454
  %.1453 = phi ptr [ %i.pa, %.lr.ph454 ], [ %.1453.ph, %.lr.ph454.preheader747 ] ; 2 uses
  %.1228452 = phi ptr [ %i.pd, %.lr.ph454 ], [ %.1228452.ph, %.lr.ph454.preheader747 ] ; 2 uses
  %i.pa = getelementptr i8, ptr %.1453, i64 4     ; 2 uses
  %i.pb = load i32, ptr %.1453, align 4, !tbaa !43
  %i.pc = trunc i32 %i.pb to i16
  %i.pd = getelementptr i8, ptr %.1228452, i64 2
  store i16 %i.pc, ptr %.1228452, align 2, !tbaa !240
end_hunk_0
begin_hunk_1_@PyUnicode_Resize:bb.a
; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @unicode_resize(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !227    ; 15 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 3 uses
  %.val34 = load i64, ptr %i.b, align 8, !tbaa !239
  %i.c = icmp eq i64 %.val34, %1
  br i1 %i.c, label %Py_DECREF.exit32, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %0, align 8, !tbaa !227
  %i.e = load i32, ptr %i.a, align 8, !tbaa !237  ; 2 uses
  %.not.i31 = icmp sgt i32 %i.e, -1
  br i1 %.not.i31, label %bb.d, label %Py_DECREF.exit32

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !237
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %Py_DECREF.exit32

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #33
  br label %Py_DECREF.exit32

bb.f:                                             ; preds = %bb.b
  %.val7.i = load i32, ptr %i.a, align 8, !tbaa !237
  %.not.i35 = icmp eq i32 %.val7.i, 1
  br i1 %.not.i35, label %bb.g, label %_PyUnicode_IsModifiable.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr i8, ptr %i.a, i64 24
  %.val8.i = load i64, ptr %i.h, align 8, !tbaa !243
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
  %.val9.i = load ptr, ptr %i.k, align 8, !tbaa !229
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
  %.val13.i = load i64, ptr %i.b, align 8, !tbaa !239
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %1, i64 %.val13.i)
  %i.r = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.p, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef %spec.select.i, i32 noundef 0) ; 0 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !227    ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !227
  %i.t = load i32, ptr %i.s, align 8, !tbaa !237  ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit32

bb.k:                                             ; preds = %bb.j
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !237
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
  store ptr %i.x, ptr %0, align 8, !tbaa !227
  br label %Py_DECREF.exit32

bb.p:                                             ; preds = %bb.m
  %i.z = getelementptr i8, ptr %i.a, i64 56       ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !237 ; 3 uses
  %i.ab = lshr exact i32 %.val.i, 2
  %i.ac = and i32 %i.ab, 7
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = getelementptr i8, ptr %i.a, i64 48      ; 2 uses
  %.val.i.i = load ptr, ptr %i.ae, align 8, !tbaa !236 ; 3 uses
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
  store ptr %i.al, ptr %i.z, align 8, !tbaa !237
  %i.an = getelementptr i8, ptr %i.a, i64 40
  store i64 %1, ptr %i.an, align 8, !tbaa !238
  store ptr %i.al, ptr %i.ae, align 8, !tbaa !236
  br label %bb.t

bb.s:                                             ; preds = %_PyUnicode_HAS_UTF8_MEMORY.exit.thread.i
  store ptr %i.aj, ptr %i.z, align 8, !tbaa !237
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread38.i
  %i.ao = phi ptr [ %i.al, %.thread38.i ], [ %i.aj, %bb.s ] ; 3 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !239
  %i.ap = load i32, ptr %i.i, align 8
  %i.aq = lshr i32 %i.ap, 2
  %i.ar = and i32 %i.aq, 7
  switch i32 %i.ar, label %bb.w [
    i32 1, label %bb.u
    i32 2, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr i8, ptr %i.ao, i64 %1
  store i8 0, ptr %i.as, align 1, !tbaa !237
  br label %PyUnicode_WRITE.exit.i

bb.v:                                             ; preds = %bb.t
  %i.at = getelementptr [2 x i8], ptr %i.ao, i64 %1
  store i16 0, ptr %i.at, align 2, !tbaa !240
  br label %PyUnicode_WRITE.exit.i

bb.w:                                             ; preds = %bb.t
  %i.au = getelementptr [4 x i8], ptr %i.ao, i64 %1
  store i32 0, ptr %i.au, align 4, !tbaa !43
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
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 1900) #33
  br label %_PyUnicode_Result.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, -1
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 @wcslen(ptr noundef %0) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.d, %bb.d ], [ %1, %bb.c ]    ; 4 uses
  switch i64 %.0, label %bb.h [
    i64 0, label %_PyUnicode_Result.exit
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.e = load i32, ptr %0, align 4, !tbaa !43     ; 3 uses
  %i.f = icmp ult i32 %i.e, 256
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = zext nneg i32 %i.e to i64                ; 2 uses
  %i.h = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.g
  %i.i = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.g
  %i.j = getelementptr i8, ptr %i.i, i64 -8192
  %.not34 = icmp samesign ult i32 %i.e, 128
  %i.k = select i1 %.not34, ptr %i.h, ptr %i.j
  br label %_PyUnicode_Result.exit

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.l = getelementptr [4 x i8], ptr %0, i64 %.0  ; 6 uses
  %i.m = icmp ult ptr %0, %i.l
  br i1 %i.m, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.h, %bb.j
  %.030 = phi i32 [ %.1, %bb.j ], [ 0, %bb.h ]
  %i.n = phi i32 [ %i.s, %bb.j ], [ 0, %bb.h ]    ; 2 uses
  %.015.i = phi ptr [ %i.p, %bb.j ], [ %0, %bb.h ] ; 2 uses
  %i.o = load i32, ptr %.015.i, align 4, !tbaa !43 ; 5 uses
  %i.p = getelementptr i8, ptr %.015.i, i64 4     ; 2 uses
  %i.q = icmp ugt i32 %i.o, %i.n
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.r = icmp ugt i32 %i.o, 1114111
  br i1 %i.r, label %find_maxchar_surrogates.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %.1 = phi i32 [ %i.o, %bb.i ], [ %.030, %.lr.ph.i ] ; 2 uses
  %i.s = phi i32 [ %i.o, %bb.i ], [ %i.n, %.lr.ph.i ]
  %i.t = icmp ult ptr %i.p, %i.l
  br i1 %i.t, label %.lr.ph.i, label %.loopexit, !llvm.loop !2

find_maxchar_surrogates.exit:                     ; preds = %bb.i
  %i.u = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  %i.v = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.u, ptr noundef nonnull @.str.125, i32 noundef %i.o, i32 noundef 1114111) #33 ; 0 uses
  br label %_PyUnicode_Result.exit

.loopexit:                                        ; preds = %bb.j, %bb.h
  %.2.ph = phi i32 [ 0, %bb.h ], [ %.1, %bb.j ]
  %i.w = tail call ptr @PyUnicode_New(i64 noundef %.0, i32 noundef %.2.ph) ; 16 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %_PyUnicode_Result.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.x = getelementptr i8, ptr %i.w, i64 32       ; 2 uses
  %i.y = load i32, ptr %i.x, align 8              ; 3 uses
  %i.z = lshr i32 %i.y, 2
  %i.aa = and i32 %i.z, 7
  %i.ab = and i32 %i.y, 32
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = and i32 %i.y, 64
  %.not.i.i = icmp eq i32 %i.ac, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.w, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.m:                                             ; preds = %bb.k
  %i.ad = getelementptr i8, ptr %i.w, i64 56
  %.val4.i = load ptr, ptr %i.ad, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.l, %bb.m
  %.0.i = phi ptr [ %.0.i.i, %bb.l ], [ %.val4.i, %bb.m ] ; 5 uses
  %.idx57.i = shl i64 %.0, 2                      ; 5 uses
  switch i32 %i.aa, label %bb.q [
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 4, label %bb.p
  ]

bb.n:                                             ; preds = %_PyUnicode_DATA.exit
  %i.ae = ashr exact i64 %.idx57.i, 2
  %i.af = and i64 %i.ae, -4
  %i.ag = getelementptr [4 x i8], ptr %0, i64 %i.af ; 2 uses
  %i.ah = icmp ult ptr %0, %i.ag
  br i1 %i.ah, label %.lr.ph68.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph68.i, %bb.n
  %.055.lcssa.i = phi ptr [ %.0.i, %bb.n ], [ %i.bq, %.lr.ph68.i ] ; 6 uses
  %.053.lcssa.i = phi ptr [ %0, %bb.n ], [ %i.bp, %.lr.ph68.i ] ; 8 uses
  %i.ai = icmp ult ptr %.053.lcssa.i, %i.l
  br i1 %i.ai, label %.lr.ph73.i.preheader, label %unicode_write_widechar.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %2 = ptrtoaddr ptr %0 to i64
  %3 = ptrtoaddr ptr %.053.lcssa.i to i64
  %i.aj = add i64 %.idx57.i, %2
  %i.ak = xor i64 %3, -1
  %i.al = add i64 %i.aj, %i.ak                    ; 4 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check84 = icmp ult i64 %i.al, 140
  br i1 %min.iters.check84, label %.lr.ph73.i.preheader98, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph73.i.preheader
  %i.ao = lshr i64 %i.al, 2
  %i.ap = getelementptr i8, ptr %.055.lcssa.i, i64 %i.ao
  %scevgep = getelementptr i8, ptr %i.ap, i64 1
  %i.aq = and i64 %i.al, -4
  %i.ar = getelementptr i8, ptr %.053.lcssa.i, i64 %i.aq
  %scevgep82 = getelementptr i8, ptr %i.ar, i64 4
  %bound0 = icmp ult ptr %.055.lcssa.i, %scevgep82
  %bound1 = icmp ult ptr %.053.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.i.preheader98, label %vector.ph85

vector.ph85:                                      ; preds = %vector.memcheck
  %n.vec86 = and i64 %i.an, 9223372036854775800   ; 4 uses
  %i.as = shl i64 %n.vec86, 2
  %i.at = getelementptr i8, ptr %.053.lcssa.i, i64 %i.as
  %i.au = getelementptr i8, ptr %.055.lcssa.i, i64 %n.vec86
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph85
  %index88 = phi i64 [ 0, %vector.ph85 ], [ %index.next93, %vector.body87 ] ; 3 uses
  %i.av = shl i64 %index88, 2
  %next.gep89 = getelementptr i8, ptr %.053.lcssa.i, i64 %i.av ; 2 uses
  %next.gep90 = getelementptr i8, ptr %.055.lcssa.i, i64 %index88 ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep89, i64 16
  %wide.load91 = load <4 x i32>, ptr %next.gep89, align 4, !tbaa !43, !alias.scope !389
  %wide.load92 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !43, !alias.scope !389
  %i.ax = trunc <4 x i32> %wide.load91 to <4 x i8>
  %i.ay = trunc <4 x i32> %wide.load92 to <4 x i8>
  %i.az = getelementptr i8, ptr %next.gep90, i64 4
  store <4 x i8> %i.ax, ptr %next.gep90, align 1, !tbaa !237, !alias.scope !390, !noalias !389
  store <4 x i8> %i.ay, ptr %i.az, align 1, !tbaa !237, !alias.scope !390, !noalias !389
  %index.next93 = add nuw i64 %index88, 8         ; 2 uses
  %i.ba = icmp eq i64 %index.next93, %n.vec86
  br i1 %i.ba, label %middle.block94, label %vector.body87, !llvm.loop !385

middle.block94:                                   ; preds = %vector.body87
  %cmp.n95 = icmp eq i64 %i.an, %n.vec86
  br i1 %cmp.n95, label %unicode_write_widechar.exit, label %.lr.ph73.i.preheader98

.lr.ph73.i.preheader98:                           ; preds = %vector.memcheck, %.lr.ph73.i.preheader, %middle.block94
  %.15472.i.ph = phi ptr [ %.053.lcssa.i, %vector.memcheck ], [ %.053.lcssa.i, %.lr.ph73.i.preheader ], [ %i.at, %middle.block94 ]
  %.15671.i.ph = phi ptr [ %.055.lcssa.i, %vector.memcheck ], [ %.055.lcssa.i, %.lr.ph73.i.preheader ], [ %i.au, %middle.block94 ]
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %bb.n, %.lr.ph68.i
  %.05367.i = phi ptr [ %i.bp, %.lr.ph68.i ], [ %0, %bb.n ] ; 5 uses
  %.05566.i = phi ptr [ %i.bq, %.lr.ph68.i ], [ %.0.i, %bb.n ] ; 5 uses
  %i.bb = load i32, ptr %.05367.i, align 4, !tbaa !43
  %i.bc = trunc i32 %i.bb to i8
  store i8 %i.bc, ptr %.05566.i, align 1, !tbaa !237
  %i.bd = getelementptr i8, ptr %.05367.i, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !43
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr i8, ptr %.05566.i, i64 1
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !237
  %i.bh = getelementptr i8, ptr %.05367.i, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !43
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = getelementptr i8, ptr %.05566.i, i64 2
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !237
  %i.bl = getelementptr i8, ptr %.05367.i, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !43
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr i8, ptr %.05566.i, i64 3
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !237
  %i.bp = getelementptr i8, ptr %.05367.i, i64 16 ; 3 uses
  %i.bq = getelementptr i8, ptr %.05566.i, i64 4  ; 2 uses
  %i.br = icmp ult ptr %i.bp, %i.ag
  br i1 %i.br, label %.lr.ph68.i, label %.preheader.i, !llvm.loop !3

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader98, %.lr.ph73.i
  %.15472.i = phi ptr [ %i.bs, %.lr.ph73.i ], [ %.15472.i.ph, %.lr.ph73.i.preheader98 ] ; 2 uses
  %.15671.i = phi ptr [ %i.bv, %.lr.ph73.i ], [ %.15671.i.ph, %.lr.ph73.i.preheader98 ] ; 2 uses
  %i.bs = getelementptr i8, ptr %.15472.i, i64 4  ; 2 uses
  %i.bt = load i32, ptr %.15472.i, align 4, !tbaa !43
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr i8, ptr %.15671.i, i64 1
  store i8 %i.bu, ptr %.15671.i, align 1, !tbaa !237
  %i.bw = icmp ult ptr %i.bs, %i.l
  br i1 %i.bw, label %.lr.ph73.i, label %unicode_write_widechar.exit, !llvm.loop !386

bb.o:                                             ; preds = %_PyUnicode_DATA.exit
  %i.bx = ashr exact i64 %.idx57.i, 2
  %i.by = and i64 %i.bx, -4
  %i.bz = getelementptr [4 x i8], ptr %0, i64 %i.by ; 2 uses
  %i.ca = icmp ult ptr %0, %i.bz
  br i1 %i.ca, label %.lr.ph.i23, label %.preheader58.i

.preheader58.i:                                   ; preds = %.lr.ph.i23, %bb.o
  %.051.lcssa.i = phi ptr [ %.0.i, %bb.o ], [ %i.cx, %.lr.ph.i23 ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %0, %bb.o ], [ %i.cw, %.lr.ph.i23 ] ; 5 uses
  %i.cb = icmp ult ptr %.0.lcssa.i, %i.l
  br i1 %i.cb, label %.lr.ph65.i.preheader, label %unicode_write_widechar.exit

.lr.ph65.i.preheader:                             ; preds = %.preheader58.i
  %i.cc = ptrtoaddr ptr %0 to i64
  %i.cd = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.ce = add i64 %.idx57.i, %i.cc
  %i.cf = xor i64 %i.cd, -1
  %i.cg = add i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cg, 28
  br i1 %min.iters.check, label %.lr.ph65.i.preheader100, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.i.preheader
  %n.vec = and i64 %i.ci, 9223372036854775800     ; 4 uses
  %i.cj = shl i64 %n.vec, 2
  %i.ck = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cj
  %i.cl = shl nuw i64 %n.vec, 1
  %i.cm = getelementptr i8, ptr %.051.lcssa.i, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cn ; 2 uses
  %i.co = shl i64 %index, 1
  %next.gep78 = getelementptr i8, ptr %.051.lcssa.i, i64 %i.co ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !43
  %wide.load79 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !43
  %i.cq = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cr = trunc <4 x i32> %wide.load79 to <4 x i16>
  %i.cs = getelementptr i8, ptr %next.gep78, i64 8
  store <4 x i16> %i.cq, ptr %next.gep78, align 2, !tbaa !240
  store <4 x i16> %i.cr, ptr %i.cs, align 2, !tbaa !240
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !387

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %unicode_write_widechar.exit, label %.lr.ph65.i.preheader100

.lr.ph65.i.preheader100:                          ; preds = %.lr.ph65.i.preheader, %middle.block
  %.164.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph65.i.preheader ], [ %i.ck, %middle.block ]
  %.15263.i.ph = phi ptr [ %.051.lcssa.i, %.lr.ph65.i.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph65.i

.lr.ph.i23:                                       ; preds = %bb.o, %.lr.ph.i23
  %.061.i = phi ptr [ %i.cw, %.lr.ph.i23 ], [ %0, %bb.o ] ; 2 uses
  %.05160.i = phi ptr [ %i.cx, %.lr.ph.i23 ], [ %.0.i, %bb.o ] ; 2 uses
  %i.cu = load <4 x i32>, ptr %.061.i, align 4, !tbaa !43
  %i.cv = trunc <4 x i32> %i.cu to <4 x i16>
  store <4 x i16> %i.cv, ptr %.05160.i, align 2, !tbaa !240
  %i.cw = getelementptr i8, ptr %.061.i, i64 16   ; 3 uses
  %i.cx = getelementptr i8, ptr %.05160.i, i64 8  ; 2 uses
  %i.cy = icmp ult ptr %i.cw, %i.bz
  br i1 %i.cy, label %.lr.ph.i23, label %.preheader58.i, !llvm.loop !4

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader100, %.lr.ph65.i
  %.164.i = phi ptr [ %i.cz, %.lr.ph65.i ], [ %.164.i.ph, %.lr.ph65.i.preheader100 ] ; 2 uses
  %.15263.i = phi ptr [ %i.dc, %.lr.ph65.i ], [ %.15263.i.ph, %.lr.ph65.i.preheader100 ] ; 2 uses
  %i.cz = getelementptr i8, ptr %.164.i, i64 4    ; 2 uses
  %i.da = load i32, ptr %.164.i, align 4, !tbaa !43
  %i.db = trunc i32 %i.da to i16
  %i.dc = getelementptr i8, ptr %.15263.i, i64 2
  store i16 %i.db, ptr %.15263.i, align 2, !tbaa !240
  %i.dd = icmp ult ptr %i.cz, %i.l
  br i1 %i.dd, label %.lr.ph65.i, label %unicode_write_widechar.exit, !llvm.loop !388

bb.p:                                             ; preds = %_PyUnicode_DATA.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i, ptr readonly align 4 %0, i64 %.idx57.i, i1 false)
  br label %unicode_write_widechar.exit

bb.q:                                             ; preds = %_PyUnicode_DATA.exit
  unreachable

unicode_write_widechar.exit:                      ; preds = %.lr.ph65.i, %.lr.ph73.i, %middle.block, %middle.block94, %.preheader.i, %.preheader58.i, %bb.p
  %i.de = getelementptr i8, ptr %i.w, i64 16
  %.val.i24 = load i64, ptr %i.de, align 8, !tbaa !239
  switch i64 %.val.i24, label %_PyUnicode_Result.exit [
    i64 0, label %bb.r
    i64 1, label %bb.u
  ]

bb.r:                                             ; preds = %unicode_write_widechar.exit
  %.not26.i = icmp eq ptr %i.w, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %.not26.i, label %_PyUnicode_Result.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = load i32, ptr %i.w, align 8, !tbaa !237 ; 2 uses
  %.not.i27.i = icmp sgt i32 %i.df, -1
  br i1 %.not.i27.i, label %bb.t, label %_PyUnicode_Result.exit

bb.t:                                             ; preds = %bb.s
  %i.dg = add nsw i32 %i.df, -1                   ; 2 uses
  store i32 %i.dg, ptr %i.w, align 8, !tbaa !237
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %Py_DECREF.exit28.sink.split.i, label %_PyUnicode_Result.exit

bb.u:                                             ; preds = %unicode_write_widechar.exit
  %i.di = load i32, ptr %i.x, align 8             ; 3 uses
  %i.dj = and i32 %i.di, 28
  %.not25.i = icmp eq i32 %i.dj, 4
  br i1 %.not25.i, label %bb.v, label %_PyUnicode_Result.exit

bb.v:                                             ; preds = %bb.u
  %i.dk = and i32 %i.di, 32
  %.not.i30.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i30.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = and i32 %i.di, 64
  %.not.i.i.i = icmp eq i32 %i.dl, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.w, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dm = getelementptr i8, ptr %i.w, i64 56
  %.val4.i.i = load ptr, ptr %i.dm, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.x, %bb.w
  %.0.i.i25 = phi ptr [ %.0.i.i.i, %bb.w ], [ %.val4.i.i, %bb.x ]
  %i.dn = load i8, ptr %.0.i.i25, align 1, !tbaa !237 ; 2 uses
  %i.do = zext i8 %i.dn to i64                    ; 2 uses
  %i.dp = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.do
  %i.dq = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.do
  %i.dr = getelementptr i8, ptr %i.dq, i64 -8192
  %i.ds = icmp slt i8 %i.dn, 0
  %i.dt = select i1 %i.ds, ptr %i.dr, ptr %i.dp   ; 5 uses
  %.not.i26 = icmp eq ptr %i.w, %i.dt
  br i1 %.not.i26, label %_PyUnicode_Result.exit, label %bb.y

bb.y:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.du = load i32, ptr %i.w, align 8, !tbaa !237 ; 2 uses
  %.not.i.i27 = icmp sgt i32 %i.du, -1
  br i1 %.not.i.i27, label %bb.z, label %_PyUnicode_Result.exit

bb.z:                                             ; preds = %bb.y
  %i.dv = add nsw i32 %i.du, -1                   ; 2 uses
  store i32 %i.dv, ptr %i.w, align 8, !tbaa !237
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %Py_DECREF.exit28.sink.split.i, label %_PyUnicode_Result.exit

Py_DECREF.exit28.sink.split.i:                    ; preds = %bb.z, %bb.t
  %.1.ph.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.t ], [ %i.dt, %bb.z ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.w) #33
  br label %_PyUnicode_Result.exit

_PyUnicode_Result.exit:                           ; preds = %Py_DECREF.exit28.sink.split.i, %bb.z, %bb.y, %_PyUnicode_DATA.exit.i, %bb.u, %bb.t, %bb.s, %bb.r, %unicode_write_widechar.exit, %find_maxchar_surrogates.exit, %bb.e, %.loopexit, %bb.g, %bb.b
  %.019 = phi ptr [ null, %bb.b ], [ null, %.loopexit ], [ %i.k, %bb.g ], [ null, %find_maxchar_surrogates.exit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.e ], [ %i.w, %unicode_write_widechar.exit ], [ %i.dt, %bb.y ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.t ], [ %i.w, %bb.u ], [ %i.dt, %_PyUnicode_DATA.exit.i ], [ %i.dt, %bb.z ], [ %.1.ph.i, %Py_DECREF.exit28.sink.split.i ]
  ret ptr %.019
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyUnicodeWriter_WriteWideChar(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
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
  %.015.i = phi ptr [ %i.h, %bb.f ], [ %1, %bb.d ] ; 2 uses
  %i.g = load i32, ptr %.015.i, align 4, !tbaa !43 ; 5 uses
  %i.h = getelementptr i8, ptr %.015.i, i64 4     ; 2 uses
  %i.i = icmp ugt i32 %i.g, %i.f
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.j = icmp ugt i32 %i.g, 1114111
  br i1 %i.j, label %find_maxchar_surrogates.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.135 = phi i32 [ %i.g, %bb.e ], [ %.034, %.lr.ph.i ] ; 4 uses
  %i.k = phi i32 [ %i.g, %bb.e ], [ %i.f, %.lr.ph.i ]
  %i.l = icmp ult ptr %i.h, %i.d
  br i1 %i.l, label %.lr.ph.i, label %bb.g, !llvm.loop !2

find_maxchar_surrogates.exit:                     ; preds = %bb.e
  %i.m = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  %i.n = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.m, ptr noundef nonnull @.str.125, i32 noundef %i.g, i32 noundef 1114111) #33 ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %0, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !247
  %.not = icmp ugt i32 %.135, %i.p
  br i1 %.not, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.d, %bb.g
  %.2.ph41 = phi i32 [ %.135, %bb.g ], [ 0, %bb.d ]
  %i.q = getelementptr i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !248
  %i.s = getelementptr i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !249  ; 2 uses
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
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !249
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.thread
  %i.x = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.t, %.thread ]
  %i.y = getelementptr i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !250  ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !251
  %i.ac = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ad = sext i32 %i.z to i64
  %i.ae = mul i64 %i.x, %i.ad
  %i.af = getelementptr i8, ptr %i.ab, i64 %i.ae  ; 5 uses
  %.idx57.i = shl i64 %.024, 2                    ; 5 uses
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
  %.055.lcssa.i = phi ptr [ %i.af, %bb.i ], [ %i.bs, %.lr.ph68.i ] ; 6 uses
  %.053.lcssa.i = phi ptr [ %1, %bb.i ], [ %i.br, %.lr.ph68.i ] ; 8 uses
  %i.ak = icmp ult ptr %.053.lcssa.i, %i.d
  br i1 %i.ak, label %.lr.ph73.i.preheader, label %unicode_write_widechar.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %3 = ptrtoaddr ptr %1 to i64
  %4 = ptrtoaddr ptr %.053.lcssa.i to i64
  %i.al = add i64 %.idx57.i, %3
  %i.am = xor i64 %4, -1
  %i.an = add i64 %i.al, %i.am                    ; 4 uses
  %i.ao = lshr i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check85 = icmp ult i64 %i.an, 140
  br i1 %min.iters.check85, label %.lr.ph73.i.preheader99, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph73.i.preheader
  %i.aq = lshr i64 %i.an, 2
  %i.ar = getelementptr i8, ptr %.055.lcssa.i, i64 %i.aq
  %scevgep = getelementptr i8, ptr %i.ar, i64 1
  %i.as = and i64 %i.an, -4
  %i.at = getelementptr i8, ptr %.053.lcssa.i, i64 %i.as
  %scevgep83 = getelementptr i8, ptr %i.at, i64 4
  %bound0 = icmp ult ptr %.055.lcssa.i, %scevgep83
  %bound1 = icmp ult ptr %.053.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.i.preheader99, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck
  %n.vec87 = and i64 %i.ap, 9223372036854775800   ; 4 uses
  %i.au = shl i64 %n.vec87, 2
  %i.av = getelementptr i8, ptr %.053.lcssa.i, i64 %i.au
  %i.aw = getelementptr i8, ptr %.055.lcssa.i, i64 %n.vec87
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next94, %vector.body88 ] ; 3 uses
  %i.ax = shl i64 %index89, 2
  %next.gep90 = getelementptr i8, ptr %.053.lcssa.i, i64 %i.ax ; 2 uses
  %next.gep91 = getelementptr i8, ptr %.055.lcssa.i, i64 %index89 ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep90, i64 16
  %wide.load92 = load <4 x i32>, ptr %next.gep90, align 4, !tbaa !43, !alias.scope !398
  %wide.load93 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !43, !alias.scope !398
  %i.az = trunc <4 x i32> %wide.load92 to <4 x i8>
  %i.ba = trunc <4 x i32> %wide.load93 to <4 x i8>
  %i.bb = getelementptr i8, ptr %next.gep91, i64 4
  store <4 x i8> %i.az, ptr %next.gep91, align 1, !tbaa !237, !alias.scope !399, !noalias !398
  store <4 x i8> %i.ba, ptr %i.bb, align 1, !tbaa !237, !alias.scope !399, !noalias !398
  %index.next94 = add nuw i64 %index89, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next94, %n.vec87
  br i1 %i.bc, label %middle.block95, label %vector.body88, !llvm.loop !394

middle.block95:                                   ; preds = %vector.body88
  %cmp.n96 = icmp eq i64 %i.ap, %n.vec87
  br i1 %cmp.n96, label %unicode_write_widechar.exit, label %.lr.ph73.i.preheader99

.lr.ph73.i.preheader99:                           ; preds = %vector.memcheck, %.lr.ph73.i.preheader, %middle.block95
  %.15472.i.ph = phi ptr [ %.053.lcssa.i, %vector.memcheck ], [ %.053.lcssa.i, %.lr.ph73.i.preheader ], [ %i.av, %middle.block95 ]
  %.15671.i.ph = phi ptr [ %.055.lcssa.i, %vector.memcheck ], [ %.055.lcssa.i, %.lr.ph73.i.preheader ], [ %i.aw, %middle.block95 ]
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %bb.i, %.lr.ph68.i
  %.05367.i = phi ptr [ %i.br, %.lr.ph68.i ], [ %1, %bb.i ] ; 5 uses
  %.05566.i = phi ptr [ %i.bs, %.lr.ph68.i ], [ %i.af, %bb.i ] ; 5 uses
  %i.bd = load i32, ptr %.05367.i, align 4, !tbaa !43
  %i.be = trunc i32 %i.bd to i8
  store i8 %i.be, ptr %.05566.i, align 1, !tbaa !237
  %i.bf = getelementptr i8, ptr %.05367.i, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !43
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr i8, ptr %.05566.i, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !237
  %i.bj = getelementptr i8, ptr %.05367.i, i64 8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !43
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr i8, ptr %.05566.i, i64 2
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !237
  %i.bn = getelementptr i8, ptr %.05367.i, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !43
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = getelementptr i8, ptr %.05566.i, i64 3
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !237
  %i.br = getelementptr i8, ptr %.05367.i, i64 16 ; 3 uses
  %i.bs = getelementptr i8, ptr %.05566.i, i64 4  ; 2 uses
  %i.bt = icmp ult ptr %i.br, %i.ai
  br i1 %i.bt, label %.lr.ph68.i, label %.preheader.i, !llvm.loop !3

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader99, %.lr.ph73.i
  %.15472.i = phi ptr [ %i.bu, %.lr.ph73.i ], [ %.15472.i.ph, %.lr.ph73.i.preheader99 ] ; 2 uses
  %.15671.i = phi ptr [ %i.bx, %.lr.ph73.i ], [ %.15671.i.ph, %.lr.ph73.i.preheader99 ] ; 2 uses
  %i.bu = getelementptr i8, ptr %.15472.i, i64 4  ; 2 uses
  %i.bv = load i32, ptr %.15472.i, align 4, !tbaa !43
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr i8, ptr %.15671.i, i64 1
  store i8 %i.bw, ptr %.15671.i, align 1, !tbaa !237
  %i.by = icmp ult ptr %i.bu, %i.d
  br i1 %i.by, label %.lr.ph73.i, label %unicode_write_widechar.exit, !llvm.loop !395

bb.j:                                             ; preds = %.critedge
  %i.bz = ashr exact i64 %.idx57.i, 2
  %i.ca = and i64 %i.bz, -4
  %i.cb = getelementptr [4 x i8], ptr %1, i64 %i.ca ; 2 uses
  %i.cc = icmp ult ptr %1, %i.cb
  br i1 %i.cc, label %.lr.ph.i28, label %.preheader58.i

.preheader58.i:                                   ; preds = %.lr.ph.i28, %bb.j
  %.051.lcssa.i = phi ptr [ %i.af, %bb.j ], [ %i.cz, %.lr.ph.i28 ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.j ], [ %i.cy, %.lr.ph.i28 ] ; 5 uses
  %i.cd = icmp ult ptr %.0.lcssa.i, %i.d
  br i1 %i.cd, label %.lr.ph65.i.preheader, label %unicode_write_widechar.exit

.lr.ph65.i.preheader:                             ; preds = %.preheader58.i
  %i.ce = ptrtoaddr ptr %1 to i64
  %i.cf = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.cg = add i64 %.idx57.i, %i.ce
  %i.ch = xor i64 %i.cf, -1
  %i.ci = add i64 %i.cg, %i.ch                    ; 2 uses
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check, label %.lr.ph65.i.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.i.preheader
  %n.vec = and i64 %i.ck, 9223372036854775800     ; 4 uses
  %i.cl = shl i64 %n.vec, 2
  %i.cm = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cl
  %i.cn = shl nuw i64 %n.vec, 1
  %i.co = getelementptr i8, ptr %.051.lcssa.i, i64 %i.cn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cp ; 2 uses
  %i.cq = shl i64 %index, 1
  %next.gep79 = getelementptr i8, ptr %.051.lcssa.i, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !43
  %wide.load80 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !43
  %i.cs = trunc <4 x i32> %wide.load to <4 x i16>
  %i.ct = trunc <4 x i32> %wide.load80 to <4 x i16>
  %i.cu = getelementptr i8, ptr %next.gep79, i64 8
  store <4 x i16> %i.cs, ptr %next.gep79, align 2, !tbaa !240
  store <4 x i16> %i.ct, ptr %i.cu, align 2, !tbaa !240
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %unicode_write_widechar.exit, label %.lr.ph65.i.preheader101

.lr.ph65.i.preheader101:                          ; preds = %.lr.ph65.i.preheader, %middle.block
  %.164.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph65.i.preheader ], [ %i.cm, %middle.block ]
  %.15263.i.ph = phi ptr [ %.051.lcssa.i, %.lr.ph65.i.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph65.i

.lr.ph.i28:                                       ; preds = %bb.j, %.lr.ph.i28
  %.061.i = phi ptr [ %i.cy, %.lr.ph.i28 ], [ %1, %bb.j ] ; 2 uses
  %.05160.i = phi ptr [ %i.cz, %.lr.ph.i28 ], [ %i.af, %bb.j ] ; 2 uses
  %i.cw = load <4 x i32>, ptr %.061.i, align 4, !tbaa !43
  %i.cx = trunc <4 x i32> %i.cw to <4 x i16>
  store <4 x i16> %i.cx, ptr %.05160.i, align 2, !tbaa !240
  %i.cy = getelementptr i8, ptr %.061.i, i64 16   ; 3 uses
  %i.cz = getelementptr i8, ptr %.05160.i, i64 8  ; 2 uses
  %i.da = icmp ult ptr %i.cy, %i.cb
  br i1 %i.da, label %.lr.ph.i28, label %.preheader58.i, !llvm.loop !4

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader101, %.lr.ph65.i
  %.164.i = phi ptr [ %i.db, %.lr.ph65.i ], [ %.164.i.ph, %.lr.ph65.i.preheader101 ] ; 2 uses
  %.15263.i = phi ptr [ %i.de, %.lr.ph65.i ], [ %.15263.i.ph, %.lr.ph65.i.preheader101 ] ; 2 uses
  %i.db = getelementptr i8, ptr %.164.i, i64 4    ; 2 uses
  %i.dc = load i32, ptr %.164.i, align 4, !tbaa !43
  %i.dd = trunc i32 %i.dc to i16
  %i.de = getelementptr i8, ptr %.15263.i, i64 2
  store i16 %i.dd, ptr %.15263.i, align 2, !tbaa !240
  %i.df = icmp ult ptr %i.db, %i.d
  br i1 %i.df, label %.lr.ph65.i, label %unicode_write_widechar.exit, !llvm.loop !397

bb.k:                                             ; preds = %.critedge
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr readonly align 4 %1, i64 %.idx57.i, i1 false)
  br label %unicode_write_widechar.exit

bb.l:                                             ; preds = %.critedge
  unreachable

unicode_write_widechar.exit:                      ; preds = %.lr.ph65.i, %.lr.ph73.i, %middle.block, %middle.block95, %.preheader.i, %.preheader58.i, %bb.k
  %i.dg = load i64, ptr %i.ac, align 8, !tbaa !249
  %i.dh = add i64 %i.dg, %.024
  store i64 %i.dh, ptr %i.ac, align 8, !tbaa !249
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
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.32) #33
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call fastcc ptr @unicode_decode_utf8(ptr noundef nonnull %0, i64 noundef %1, i32 noundef 1, ptr noundef null, ptr noundef null), !inline_history !252
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %.not7 = icmp eq i64 %1, 0
  br i1 %.not7, label %bb.g, label %bb.f
end_hunk_1
begin_hunk_2_@_PyUnicode_FromId:bb.a
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 6 uses
  %i.f = getelementptr i8, ptr %i.e, i64 11872    ; 4 uses
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = load atomic i64, ptr %i.g seq_cst, align 8 ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_PyMutex_Unlock.exit

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  %i.j = getelementptr i8, ptr %i.e, i64 7376
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !400  ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 10704    ; 4 uses
  %i.m = cmpxchg ptr %i.l, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.n = extractvalue { i8, i1 } %i.m, 1
  br i1 %i.n, label %_PyMutex_Lock.exit48, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @PyMutex_Lock(ptr noundef %i.l) #33
  br label %_PyMutex_Lock.exit48

_PyMutex_Lock.exit48:                             ; preds = %bb.c, %bb.d
  %i.o = load atomic i64, ptr %i.g seq_cst, align 8 ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_PyMutex_Lock.exit48
  %i.q = getelementptr i8, ptr %i.k, i64 10712    ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !401  ; 3 uses
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !401
  store atomic i64 %i.r, ptr %i.g seq_cst, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_PyMutex_Lock.exit48
  %.041 = phi i64 [ %i.r, %bb.e ], [ %i.o, %_PyMutex_Lock.exit48 ] ; 2 uses
  %i.t = cmpxchg ptr %i.l, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.u = extractvalue { i8, i1 } %i.t, 1
  br i1 %i.u, label %_PyMutex_Unlock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @PyMutex_Unlock(ptr noundef %i.l) #33
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %bb.g, %bb.f, %_PyMutex_Lock.exit
  %.1 = phi i64 [ %i.h, %_PyMutex_Lock.exit ], [ %.041, %bb.f ], [ %.041, %bb.g ] ; 5 uses
  %i.v = load i64, ptr %i.f, align 8, !tbaa !253
  %i.w = icmp slt i64 %.1, %i.v
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_PyMutex_Unlock.exit
  %i.x = getelementptr i8, ptr %i.e, i64 11880
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !254
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !227 ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h, %_PyMutex_Unlock.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !403   ; 2 uses
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #34
  %i.ad = tail call fastcc ptr @unicode_decode_utf8(ptr noundef nonnull %i.ab, i64 noundef %i.ac, i32 noundef 1, ptr noundef null, ptr noundef null), !inline_history !252 ; 2 uses
  %.not46 = icmp eq ptr %i.ad, null
  br i1 %.not46, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call fastcc ptr @intern_common(ptr noundef nonnull readonly %i.e, ptr noundef nonnull %i.ad, i1 noundef zeroext true) ; 2 uses
  %i.af = load i64, ptr %i.f, align 8, !tbaa !253
  %.not47 = icmp slt i64 %.1, %i.af
  br i1 %.not47, label %._crit_edge, label %bb.k

._crit_edge:                                      ; preds = %bb.j
  %.phi.trans.insert = getelementptr i8, ptr %i.e, i64 11880
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !254
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ag = shl i64 %.1, 1
  %i.ah = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 16) ; 3 uses
  %i.ai = getelementptr i8, ptr %i.e, i64 11880   ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !254
  %i.ak = shl i64 %i.ah, 3
  %i.al = tail call ptr @PyMem_Realloc(ptr noundef %i.aj, i64 noundef %i.ak) #33 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.k
  %i.an = load i64, ptr %i.f, align 8, !tbaa !253 ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.al, i64 %i.an
  %i.ap = sub i64 %i.ah, %i.an
  %i.aq = shl i64 %i.ap, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.aq, i1 false)
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !254
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !253
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = tail call ptr @PyErr_NoMemory() #33     ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge, %.thread
  %i.as = phi ptr [ %.pre, %._crit_edge ], [ %i.al, %.thread ]
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %.1
  store ptr %i.ae, ptr %i.at, align 8, !tbaa !227
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.i, %bb.h, %bb.m
  %.2 = phi ptr [ null, %bb.i ], [ %i.ae, %bb.m ], [ null, %bb.l ], [ %i.aa, %bb.h ]
  %i.au = cmpxchg ptr %i.a, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.av = extractvalue { i8, i1 } %i.au, 1
  br i1 %i.av, label %_PyMutex_Unlock.exit49, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @PyMutex_Unlock(ptr noundef %i.a) #33
  br label %_PyMutex_Unlock.exit49

_PyMutex_Unlock.exit49:                           ; preds = %bb.n, %bb.o
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local void @_PyUnicode_InternImmortal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !227
  %i.b = tail call fastcc ptr @intern_common(ptr noundef %0, ptr noundef %i.a, i1 noundef zeroext true)
  store ptr %i.b, ptr %1, align 8, !tbaa !227
  ret void
}

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define hidden ptr @_PyUnicode_FromASCII(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !237     ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.c
  %i.e = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.c
  %i.f = getelementptr i8, ptr %i.e, i64 -8192
  %i.g = icmp slt i8 %i.b, 0
  %i.h = select i1 %i.g, ptr %i.f, ptr %i.d
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef 127) ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %.val.i = load i32, ptr %i.j, align 8           ; 2 uses
  %i.k = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.l, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.i, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.i, i64 56
  %.val4.i = load ptr, ptr %i.m, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %.0.i.i, %bb.e ], [ %.val4.i, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i, ptr align 1 %0, i64 %1, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_PyUnicode_DATA.exit, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ %i.i, %_PyUnicode_DATA.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyUnicodeWriter_WriteUCS4(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.35) #33
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr [4 x i8], ptr %1, i64 %2   ; 7 uses
  %.idx88 = shl i64 %2, 2                         ; 4 uses
  %i.e = ashr exact i64 %.idx88, 2
  %i.f = and i64 %i.e, -4
  %i.g = getelementptr [4 x i8], ptr %1, i64 %i.f ; 6 uses
  %i.h = icmp ult ptr %1, %i.g                    ; 3 uses
  br i1 %i.h, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %bb.h, %bb.g, %bb.d
  %.029.lcssa.i = phi i32 [ -128, %bb.d ], [ %.0294975.i, %bb.f ], [ -65536, %bb.h ], [ -256, %bb.g ]
  %.026.lcssa.i = phi ptr [ %1, %bb.d ], [ %i.r, %bb.f ], [ %i.v, %bb.h ], [ %i.t, %bb.g ] ; 2 uses
  %.025.lcssa.i = phi i32 [ 127, %bb.d ], [ %.0255172.i, %bb.f ], [ 65535, %bb.h ], [ 255, %bb.g ] ; 2 uses
  %i.i = icmp ult ptr %.026.lcssa.i, %i.d
  br i1 %i.i, label %.lr.ph55.i, label %ucs4lib_find_max_char.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.02551.i = phi i32 [ %.0255172.i, %bb.f ], [ 127, %bb.d ]
  %.02650.i = phi ptr [ %i.r, %bb.f ], [ %1, %bb.d ] ; 5 uses
  %.02949.i = phi i32 [ %.0294975.i, %bb.f ], [ -128, %bb.d ] ; 3 uses
  %i.j = load <4 x i32>, ptr %.02650.i, align 4, !tbaa !43
  %i.k = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.j) ; 4 uses
  %i.l = and i32 %i.k, %.02949.i
  %.not37.i = icmp eq i32 %i.l, 0
  br i1 %.not37.i, label %bb.f, label %bb.e

.lr.ph.i.jt4294967040:                            ; preds = %bb.g
  %i.m = load <4 x i32>, ptr %i.t, align 4, !tbaa !43
  %i.n = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.m) ; 2 uses
  %.not37.i.jt4294967040 = icmp ult i32 %i.n, 256
  br i1 %.not37.i.jt4294967040, label %bb.f, label %.lr.ph.jt4294901760.i

.lr.ph.i.jt4294901760:                            ; preds = %bb.h
  %i.o = load <4 x i32>, ptr %i.v, align 4, !tbaa !43
  %i.p = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.o)
  %.not37.i.jt4294901760 = icmp ult i32 %i.p, 65536
  br i1 %.not37.i.jt4294901760, label %bb.f, label %ucs4lib_find_max_char.exit

.lr.ph.jt4294901760.i:                            ; preds = %.lr.ph.i.jt4294967040, %.lr.ph.jt4294967040.i, %bb.e
  %i.q = phi i32 [ %i.k, %.lr.ph.jt4294967040.i ], [ %i.k, %bb.e ], [ %i.n, %.lr.ph.i.jt4294967040 ]
  %.02650.i132 = phi ptr [ %.02650.i, %.lr.ph.jt4294967040.i ], [ %.02650.i, %bb.e ], [ %i.t, %.lr.ph.i.jt4294967040 ]
  %.not37.jt4294901760.i = icmp ult i32 %i.q, 65536
  br i1 %.not37.jt4294901760.i, label %bb.h, label %ucs4lib_find_max_char.exit

.lr.ph.jt4294967040.i:                            ; preds = %bb.e
  %.not37.jt4294967040.i = icmp ult i32 %i.k, 256
  br i1 %.not37.jt4294967040.i, label %bb.g, label %.lr.ph.jt4294901760.i

bb.e:                                             ; preds = %.lr.ph.i
  switch i32 %.02949.i, label %.lr.ph.jt4294901760.i [
    i32 -65536, label %ucs4lib_find_max_char.exit
    i32 -128, label %.lr.ph.jt4294967040.i
  ], !llvm.loop !5

bb.f:                                             ; preds = %.lr.ph.i.jt4294967040, %.lr.ph.i.jt4294901760, %.lr.ph.i
  %.02650.i131 = phi ptr [ %i.t, %.lr.ph.i.jt4294967040 ], [ %i.v, %.lr.ph.i.jt4294901760 ], [ %.02650.i, %.lr.ph.i ]
  %.0294975.i = phi i32 [ -256, %.lr.ph.i.jt4294967040 ], [ -65536, %.lr.ph.i.jt4294901760 ], [ %.02949.i, %.lr.ph.i ] ; 2 uses
  %.0255172.i = phi i32 [ 255, %.lr.ph.i.jt4294967040 ], [ 65535, %.lr.ph.i.jt4294901760 ], [ %.02551.i, %.lr.ph.i ] ; 2 uses
  %i.r = getelementptr i8, ptr %.02650.i131, i64 16 ; 3 uses
  %i.s = icmp ult ptr %i.r, %i.g
  br i1 %i.s, label %.lr.ph.i, label %.preheader.i

bb.g:                                             ; preds = %.lr.ph.jt4294967040.i
  %i.t = getelementptr i8, ptr %.02650.i, i64 16  ; 5 uses
  %i.u = icmp ult ptr %i.t, %i.g
  br i1 %i.u, label %.lr.ph.i.jt4294967040, label %.preheader.i

bb.h:                                             ; preds = %.lr.ph.jt4294901760.i
  %i.v = getelementptr i8, ptr %.02650.i132, i64 16 ; 4 uses
  %i.w = icmp ult ptr %i.v, %i.g
  br i1 %i.w, label %.lr.ph.i.jt4294901760, label %.preheader.i

bb.i:                                             ; preds = %bb.l, %.lr.ph55.i
  %.22854.i = phi ptr [ %.228.ph59.i, %.lr.ph55.i ], [ %i.aa, %bb.l ] ; 4 uses
  %i.x = load i32, ptr %.22854.i, align 4, !tbaa !43
  %i.y = and i32 %i.x, %.332.ph58.i
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i32 %.332.ph58.i, label %bb.k [
    i32 -65536, label %ucs4lib_find_max_char.exit
    i32 -128, label %.outer.i
  ]

bb.k:                                             ; preds = %bb.j
  br label %.outer.i

.outer.i:                                         ; preds = %bb.k, %bb.j
  %.433.i = phi i32 [ -65536, %bb.k ], [ -256, %bb.j ]
  %.4.i = phi i32 [ 65535, %bb.k ], [ 255, %bb.j ] ; 2 uses
  %i.z = icmp ult ptr %.22854.i, %i.d
  br i1 %i.z, label %.lr.ph55.i, label %ucs4lib_find_max_char.exit, !llvm.loop !6

.lr.ph55.i:                                       ; preds = %.preheader.i, %.outer.i
  %.3.ph60.i = phi i32 [ %.4.i, %.outer.i ], [ %.025.lcssa.i, %.preheader.i ]
  %.228.ph59.i = phi ptr [ %.22854.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ]
  %.332.ph58.i = phi i32 [ %.433.i, %.outer.i ], [ %.029.lcssa.i, %.preheader.i ] ; 2 uses
  br label %bb.i

bb.l:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %.22854.i, i64 4  ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %i.d
  br i1 %i.ab, label %bb.i, label %ucs4lib_find_max_char.exit, !llvm.loop !6

ucs4lib_find_max_char.exit:                       ; preds = %.lr.ph.jt4294901760.i, %bb.e, %.lr.ph.i.jt4294901760, %bb.j, %.outer.i, %bb.l, %.preheader.i
  %.236.i = phi i32 [ %.025.lcssa.i, %.preheader.i ], [ 1114111, %bb.j ], [ %.3.ph60.i, %bb.l ], [ %.4.i, %.outer.i ], [ 1114111, %.lr.ph.i.jt4294901760 ], [ 1114111, %bb.e ], [ 1114111, %.lr.ph.jt4294901760.i ] ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !247
  %.not = icmp ugt i32 %.236.i, %i.ad
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %ucs4lib_find_max_char.exit
  %i.ae = getelementptr i8, ptr %0, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !248
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !249 ; 2 uses
  %i.ai = sub i64 %i.af, %i.ah
  %.not86 = icmp sgt i64 %2, %i.ai
  br i1 %.not86, label %bb.n, label %.critedge

bb.n:                                             ; preds = %ucs4lib_find_max_char.exit, %bb.m
  %i.aj = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %2, i32 noundef %.236.i) #33
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.r, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.n
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !249
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.m
  %i.al = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.ah, %bb.m ]
  %i.am = getelementptr i8, ptr %0, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !250 ; 2 uses
  %i.ao = getelementptr i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !251
  %i.aq = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ar = sext i32 %i.an to i64
  %i.as = mul i64 %i.al, %i.ar
  %i.at = getelementptr i8, ptr %i.ap, i64 %i.as  ; 5 uses
  switch i32 %i.an, label %bb.q [
    i32 1, label %bb.o
    i32 2, label %bb.p
  ]

bb.o:                                             ; preds = %.critedge
  br i1 %i.h, label %.lr.ph103, label %.preheader

.preheader:                                       ; preds = %.lr.ph103, %bb.o
  %.080.lcssa = phi ptr [ %i.at, %bb.o ], [ %i.cc, %.lr.ph103 ] ; 6 uses
  %.078.lcssa = phi ptr [ %1, %bb.o ], [ %i.cb, %.lr.ph103 ] ; 8 uses
  %i.au = icmp ult ptr %.078.lcssa, %i.d
  br i1 %i.au, label %.lr.ph108.preheader, label %.loopexit

.lr.ph108.preheader:                              ; preds = %.preheader
  %3 = ptrtoaddr ptr %1 to i64
  %4 = ptrtoaddr ptr %.078.lcssa to i64
  %i.av = add i64 %.idx88, %3
  %i.aw = xor i64 %4, -1
  %i.ax = add i64 %i.av, %i.aw                    ; 4 uses
  %i.ay = lshr i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check155 = icmp ult i64 %i.ax, 140
  br i1 %min.iters.check155, label %.lr.ph108.preheader169, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph108.preheader
  %i.ba = lshr i64 %i.ax, 2
  %i.bb = getelementptr i8, ptr %.080.lcssa, i64 %i.ba
  %scevgep = getelementptr i8, ptr %i.bb, i64 1
  %i.bc = and i64 %i.ax, -4
  %i.bd = getelementptr i8, ptr %.078.lcssa, i64 %i.bc
  %scevgep153 = getelementptr i8, ptr %i.bd, i64 4
  %bound0 = icmp ult ptr %.080.lcssa, %scevgep153
  %bound1 = icmp ult ptr %.078.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph108.preheader169, label %vector.ph156

vector.ph156:                                     ; preds = %vector.memcheck
  %n.vec157 = and i64 %i.az, 9223372036854775800  ; 4 uses
  %i.be = shl i64 %n.vec157, 2
  %i.bf = getelementptr i8, ptr %.078.lcssa, i64 %i.be
  %i.bg = getelementptr i8, ptr %.080.lcssa, i64 %n.vec157
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body158 ] ; 3 uses
  %i.bh = shl i64 %index159, 2
  %next.gep160 = getelementptr i8, ptr %.078.lcssa, i64 %i.bh ; 2 uses
  %next.gep161 = getelementptr i8, ptr %.080.lcssa, i64 %index159 ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep160, i64 16
  %wide.load162 = load <4 x i32>, ptr %next.gep160, align 4, !tbaa !43, !alias.scope !413
  %wide.load163 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !43, !alias.scope !413
  %i.bj = trunc <4 x i32> %wide.load162 to <4 x i8>
  %i.bk = trunc <4 x i32> %wide.load163 to <4 x i8>
  %i.bl = getelementptr i8, ptr %next.gep161, i64 4
  store <4 x i8> %i.bj, ptr %next.gep161, align 1, !tbaa !237, !alias.scope !414, !noalias !413
  store <4 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !237, !alias.scope !414, !noalias !413
  %index.next164 = add nuw i64 %index159, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.bm, label %middle.block165, label %vector.body158, !llvm.loop !407

middle.block165:                                  ; preds = %vector.body158
  %cmp.n166 = icmp eq i64 %i.az, %n.vec157
  br i1 %cmp.n166, label %.loopexit, label %.lr.ph108.preheader169

.lr.ph108.preheader169:                           ; preds = %vector.memcheck, %.lr.ph108.preheader, %middle.block165
  %.179107.ph = phi ptr [ %.078.lcssa, %vector.memcheck ], [ %.078.lcssa, %.lr.ph108.preheader ], [ %i.bf, %middle.block165 ]
  %.181106.ph = phi ptr [ %.080.lcssa, %vector.memcheck ], [ %.080.lcssa, %.lr.ph108.preheader ], [ %i.bg, %middle.block165 ]
  br label %.lr.ph108

.lr.ph103:                                        ; preds = %bb.o, %.lr.ph103
  %.078102 = phi ptr [ %i.cb, %.lr.ph103 ], [ %1, %bb.o ] ; 5 uses
  %.080101 = phi ptr [ %i.cc, %.lr.ph103 ], [ %i.at, %bb.o ] ; 5 uses
  %i.bn = load i32, ptr %.078102, align 4, !tbaa !43
  %i.bo = trunc i32 %i.bn to i8
  store i8 %i.bo, ptr %.080101, align 1, !tbaa !237
  %i.bp = getelementptr i8, ptr %.078102, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !43
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr i8, ptr %.080101, i64 1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !237
  %i.bt = getelementptr i8, ptr %.078102, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !43
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr i8, ptr %.080101, i64 2
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !237
  %i.bx = getelementptr i8, ptr %.078102, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !43
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr i8, ptr %.080101, i64 3
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !237
  %i.cb = getelementptr i8, ptr %.078102, i64 16  ; 3 uses
  %i.cc = getelementptr i8, ptr %.080101, i64 4   ; 2 uses
  %i.cd = icmp ult ptr %i.cb, %i.g
  br i1 %i.cd, label %.lr.ph103, label %.preheader, !llvm.loop !408

.lr.ph108:                                        ; preds = %.lr.ph108.preheader169, %.lr.ph108
  %.179107 = phi ptr [ %i.ce, %.lr.ph108 ], [ %.179107.ph, %.lr.ph108.preheader169 ] ; 2 uses
  %.181106 = phi ptr [ %i.ch, %.lr.ph108 ], [ %.181106.ph, %.lr.ph108.preheader169 ] ; 2 uses
  %i.ce = getelementptr i8, ptr %.179107, i64 4   ; 2 uses
  %i.cf = load i32, ptr %.179107, align 4, !tbaa !43
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr i8, ptr %.181106, i64 1
  store i8 %i.cg, ptr %.181106, align 1, !tbaa !237
  %i.ci = icmp ult ptr %i.ce, %i.d
  br i1 %i.ci, label %.lr.ph108, label %.loopexit, !llvm.loop !409

bb.p:                                             ; preds = %.critedge
  br i1 %i.h, label %.lr.ph, label %.preheader89

.preheader89:                                     ; preds = %.lr.ph, %bb.p
  %.076.lcssa = phi ptr [ %i.at, %bb.p ], [ %i.df, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %1, %bb.p ], [ %i.de, %.lr.ph ] ; 5 uses
  %i.cj = icmp ult ptr %.0.lcssa, %i.d
  br i1 %i.cj, label %.lr.ph100.preheader, label %.loopexit

.lr.ph100.preheader:                              ; preds = %.preheader89
  %i.ck = ptrtoaddr ptr %1 to i64
  %i.cl = ptrtoaddr ptr %.0.lcssa to i64
  %i.cm = add i64 %.idx88, %i.ck
  %i.cn = xor i64 %i.cl, -1
  %i.co = add i64 %i.cm, %i.cn                    ; 2 uses
  %i.cp = lshr i64 %i.co, 2
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.co, 28
  br i1 %min.iters.check, label %.lr.ph100.preheader171, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph100.preheader
  %n.vec = and i64 %i.cq, 9223372036854775800     ; 4 uses
  %i.cr = shl i64 %n.vec, 2
  %i.cs = getelementptr i8, ptr %.0.lcssa, i64 %i.cr
  %i.ct = shl nuw i64 %n.vec, 1
  %i.cu = getelementptr i8, ptr %.076.lcssa, i64 %i.ct
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %i.cv ; 2 uses
  %i.cw = shl i64 %index, 1
  %next.gep149 = getelementptr i8, ptr %.076.lcssa, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !43
  %wide.load150 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !43
  %i.cy = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cz = trunc <4 x i32> %wide.load150 to <4 x i16>
  %i.da = getelementptr i8, ptr %next.gep149, i64 8
  store <4 x i16> %i.cy, ptr %next.gep149, align 2, !tbaa !240
  store <4 x i16> %i.cz, ptr %i.da, align 2, !tbaa !240
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !410

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph100.preheader171

.lr.ph100.preheader171:                           ; preds = %.lr.ph100.preheader, %middle.block
  %.199.ph = phi ptr [ %.0.lcssa, %.lr.ph100.preheader ], [ %i.cs, %middle.block ]
  %.17798.ph = phi ptr [ %.076.lcssa, %.lr.ph100.preheader ], [ %i.cu, %middle.block ]
  br label %.lr.ph100

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.096 = phi ptr [ %i.de, %.lr.ph ], [ %1, %bb.p ] ; 2 uses
  %.07695 = phi ptr [ %i.df, %.lr.ph ], [ %i.at, %bb.p ] ; 2 uses
  %i.dc = load <4 x i32>, ptr %.096, align 4, !tbaa !43
  %i.dd = trunc <4 x i32> %i.dc to <4 x i16>
  store <4 x i16> %i.dd, ptr %.07695, align 2, !tbaa !240
  %i.de = getelementptr i8, ptr %.096, i64 16     ; 3 uses
  %i.df = getelementptr i8, ptr %.07695, i64 8    ; 2 uses
  %i.dg = icmp ult ptr %i.de, %i.g
  br i1 %i.dg, label %.lr.ph, label %.preheader89, !llvm.loop !411

.lr.ph100:                                        ; preds = %.lr.ph100.preheader171, %.lr.ph100
  %.199 = phi ptr [ %i.dh, %.lr.ph100 ], [ %.199.ph, %.lr.ph100.preheader171 ] ; 2 uses
  %.17798 = phi ptr [ %i.dk, %.lr.ph100 ], [ %.17798.ph, %.lr.ph100.preheader171 ] ; 2 uses
  %i.dh = getelementptr i8, ptr %.199, i64 4      ; 2 uses
  %i.di = load i32, ptr %.199, align 4, !tbaa !43
  %i.dj = trunc i32 %i.di to i16
  %i.dk = getelementptr i8, ptr %.17798, i64 2
  store i16 %i.dj, ptr %.17798, align 2, !tbaa !240
  %i.dl = icmp ult ptr %i.dh, %i.d
  br i1 %i.dl, label %.lr.ph100, label %.loopexit, !llvm.loop !412

bb.q:                                             ; preds = %.critedge
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 4 %1, i64 %.idx88, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph100, %.lr.ph108, %middle.block, %middle.block165, %.preheader89, %.preheader, %bb.q
  %i.dm = load i64, ptr %i.aq, align 8, !tbaa !249
  %i.dn = add i64 %i.dm, %2
  store i64 %i.dn, ptr %i.aq, align 8, !tbaa !249
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.n, %bb.c, %bb.b
  %.183 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ], [ 0, %.loopexit ], [ -1, %bb.n ]
  ret i32 %.183
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_FromKindAndData(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.35) #33
  br label %_PyUnicode_FromUCS1.exit

bb.c:                                             ; preds = %bb.a
  switch i32 %0, label %bb.p [
    i32 1, label %bb.d
    i32 2, label %bb.n
    i32 4, label %bb.o
  ]

bb.d:                                             ; preds = %bb.c
  switch i64 %2, label %bb.f [
    i64 0, label %_PyUnicode_FromUCS1.exit
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.c = load i8, ptr %1, align 1, !tbaa !237     ; 2 uses
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.d
  %i.f = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.d
  %i.g = getelementptr i8, ptr %i.f, i64 -8192
  %i.h = icmp slt i8 %i.c, 0
  %i.i = select i1 %i.h, ptr %i.g, ptr %i.e
  br label %_PyUnicode_FromUCS1.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %1, i64 %2         ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread31.i.i, %bb.f
  %.019.i.i = phi ptr [ %1, %bb.f ], [ %i.r, %.thread31.i.i ] ; 4 uses
  %i.k = icmp ult ptr %.019.i.i, %i.j
  br i1 %i.k, label %bb.h, label %ucs1lib_find_max_char.exit.i

bb.h:                                             ; preds = %bb.g
  %i.l = ptrtoint ptr %.019.i.i to i64
  %i.m = and i64 %i.l, 7
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %.thread31.i.i

.preheader.i.i:                                   ; preds = %bb.h, %bb.i
  %.017.i.i = phi ptr [ %i.n, %bb.i ], [ %.019.i.i, %bb.h ] ; 4 uses
  %i.n = getelementptr i8, ptr %.017.i.i, i64 8   ; 2 uses
  %.not26.i.i = icmp ugt ptr %i.n, %i.j
  br i1 %.not26.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader.i.i
  %i.o = load i64, ptr %.017.i.i, align 8, !tbaa !226
  %i.p = and i64 %i.o, -9187201950435737472
  %.not27.i.i = icmp eq i64 %i.p, 0
  br i1 %.not27.i.i, label %.preheader.i.i, label %ucs1lib_find_max_char.exit.i, !llvm.loop !0

bb.j:                                             ; preds = %.preheader.i.i
  %i.q = icmp eq ptr %.017.i.i, %i.j
  br i1 %i.q, label %ucs1lib_find_max_char.exit.i, label %.thread31.i.i

.thread31.i.i:                                    ; preds = %bb.j, %bb.h
  %.2.i.i = phi ptr [ %.019.i.i, %bb.h ], [ %.017.i.i, %bb.j ] ; 2 uses
  %i.r = getelementptr i8, ptr %.2.i.i, i64 1
  %i.s = load i8, ptr %.2.i.i, align 1, !tbaa !237
  %.not28.i.i = icmp sgt i8 %i.s, -1
  br i1 %.not28.i.i, label %bb.g, label %ucs1lib_find_max_char.exit.i, !llvm.loop !1

ucs1lib_find_max_char.exit.i:                     ; preds = %.thread31.i.i, %bb.j, %bb.g, %bb.i
  %.5.i.i = phi i32 [ 255, %bb.i ], [ 127, %bb.j ], [ 127, %bb.g ], [ 255, %.thread31.i.i ]
  %i.t = tail call ptr @PyUnicode_New(i64 noundef %2, i32 noundef %.5.i.i), !inline_history !7 ; 5 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_PyUnicode_FromUCS1.exit, label %bb.k

bb.k:                                             ; preds = %ucs1lib_find_max_char.exit.i
  %i.u = getelementptr i8, ptr %i.t, i64 32
  %.val.i.i = load i32, ptr %i.u, align 8         ; 2 uses
  %i.v = and i32 %.val.i.i, 32
  %.not.i15.i = icmp eq i32 %i.v, 0
  br i1 %.not.i15.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = and i32 %.val.i.i, 64
  %.not.i.i.i = icmp eq i32 %i.w, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.t, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.m:                                             ; preds = %bb.k
  %i.x = getelementptr i8, ptr %i.t, i64 56
  %.val4.i.i = load ptr, ptr %i.x, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.m, %bb.l
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.l ], [ %.val4.i.i, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr align 1 %1, i64 %2, i1 false)
  br label %_PyUnicode_FromUCS1.exit

bb.n:                                             ; preds = %bb.c
  %i.y = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef %1, i64 noundef %2)
  br label %_PyUnicode_FromUCS1.exit

bb.o:                                             ; preds = %bb.c
  %i.z = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %1, i64 noundef %2)
  br label %_PyUnicode_FromUCS1.exit

bb.p:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.aa, ptr noundef nonnull @.str.36) #33
  br label %_PyUnicode_FromUCS1.exit

_PyUnicode_FromUCS1.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %ucs1lib_find_max_char.exit.i, %bb.e, %bb.d, %bb.p, %bb.o, %bb.n, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.p ], [ %i.z, %bb.o ], [ %i.y, %bb.n ], [ null, %ucs1lib_find_max_char.exit.i ], [ %i.i, %bb.e ], [ %i.t, %_PyUnicode_DATA.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_PyUnicode_FromUCS2(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  switch i64 %1, label %bb.l [
    i64 0, label %unicode_char.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 2, !tbaa !240    ; 5 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = icmp ult i16 %i.b, 256
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i16 %i.b to i64                ; 2 uses
  %i.f = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.e
  %i.g = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.e
  %i.h = getelementptr i8, ptr %i.g, i64 -8192
  %.not.i = icmp samesign ult i16 %i.b, 128
  %i.i = select i1 %.not.i, ptr %i.f, ptr %i.h
  br label %unicode_char.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call ptr @PyUnicode_New(i64 noundef 1, i32 noundef %i.c), !inline_history !8 ; 8 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %unicode_char.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.j, i64 32
  %i.m = load i32, ptr %i.l, align 8              ; 4 uses
  %i.n = and i32 %i.m, 28
  %i.o = icmp eq i32 %i.n, 8
  %i.p = and i32 %i.m, 32
  %.not.i.i = icmp eq i32 %i.p, 0                 ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = and i32 %i.m, 64
  %.not.i.i.i = icmp eq i32 %i.q, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.j, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %i.j, i64 56
  %.val4.i.i = load ptr, ptr %i.r, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.g ], [ %.val4.i.i, %bb.h ]
  store i16 %i.b, ptr %.0.i.i, align 2, !tbaa !240
  br label %unicode_char.exit

bb.i:                                             ; preds = %bb.e
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = and i32 %i.m, 64
  %.not.i.i14.i = icmp eq i32 %i.s, 0
  %.0.v.i.i15.i = select i1 %.not.i.i14.i, i64 56, i64 40
  %.0.i.i16.i = getelementptr i8, ptr %i.j, i64 %.0.v.i.i15.i
  br label %_PyUnicode_DATA.exit19.i

bb.k:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %i.j, i64 56
  %.val4.i18.i = load ptr, ptr %i.t, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit19.i

_PyUnicode_DATA.exit19.i:                         ; preds = %bb.k, %bb.j
  %.0.i17.i = phi ptr [ %.0.i.i16.i, %bb.j ], [ %.val4.i18.i, %bb.k ]
  store i32 %i.c, ptr %.0.i17.i, align 4, !tbaa !43
  br label %unicode_char.exit

bb.l:                                             ; preds = %bb.a
  %i.u = getelementptr [2 x i8], ptr %0, i64 %1   ; 5 uses
  %.idx56 = shl i64 %1, 1                         ; 4 uses
  %i.v = ashr exact i64 %.idx56, 1
  %i.w = and i64 %i.v, -4
  %i.x = getelementptr [2 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = icmp ult ptr %0, %i.x                    ; 2 uses
  br i1 %i.y, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit.i, %.loopexit.i.jt4294967040, %.loopexit.i.jt4294901760, %bb.l
  %.029.lcssa.i = phi i32 [ -128, %bb.l ], [ -65536, %.loopexit.i.jt4294901760 ], [ -256, %.loopexit.i.jt4294967040 ], [ %.0294975.i, %.loopexit.i ]
  %.026.lcssa.i = phi ptr [ %0, %bb.l ], [ %i.ai, %.loopexit.i.jt4294901760 ], [ %i.ak, %.loopexit.i.jt4294967040 ], [ %i.ag, %.loopexit.i ] ; 2 uses
  %.025.lcssa.i = phi i32 [ 127, %bb.l ], [ 65535, %.loopexit.i.jt4294901760 ], [ 255, %.loopexit.i.jt4294967040 ], [ %.0255172.i, %.loopexit.i ] ; 2 uses
  %i.z = icmp ult ptr %.026.lcssa.i, %i.u
  br i1 %i.z, label %.lr.ph55.i, label %ucs2lib_find_max_char.exit

.lr.ph.i:                                         ; preds = %bb.l, %.loopexit.i
  %.02551.i = phi i32 [ %.0255172.i, %.loopexit.i ], [ 127, %bb.l ]
  %.02650.i = phi ptr [ %i.ag, %.loopexit.i ], [ %0, %bb.l ] ; 4 uses
  %.02949.i = phi i32 [ %.0294975.i, %.loopexit.i ], [ -128, %bb.l ] ; 3 uses
  %i.aa = load <4 x i16>, ptr %.02650.i, align 2, !tbaa !240
  %i.ab = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.aa) ; 2 uses
  %i.ac = zext i16 %i.ab to i32
  %i.ad = and i32 %.02949.i, %i.ac
  %.not37.i = icmp eq i32 %i.ad, 0
  br i1 %.not37.i, label %.loopexit.i, label %bb.m

.lr.ph.i.jt4294967040:                            ; preds = %.loopexit.i.jt4294967040
  %i.ae = load <4 x i16>, ptr %i.ak, align 2, !tbaa !240
  %i.af = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.ae)
  %.not37.i.jt4294967040 = icmp ult i16 %i.af, 256
  br i1 %.not37.i.jt4294967040, label %.loopexit.i, label %ucs2lib_find_max_char.exit

.lr.ph.jt4294967040.i:                            ; preds = %bb.m
  %.not37.jt4294967040.i = icmp ult i16 %i.ab, 256
  br i1 %.not37.jt4294967040.i, label %.loopexit.i.jt4294967040, label %ucs2lib_find_max_char.exit

bb.m:                                             ; preds = %.lr.ph.i
  switch i32 %.02949.i, label %.loopexit.i.jt4294901760 [
    i32 -256, label %ucs2lib_find_max_char.exit
    i32 -128, label %.lr.ph.jt4294967040.i
  ], !llvm.loop !9

.loopexit.i:                                      ; preds = %.loopexit.i.jt4294901760, %.lr.ph.i.jt4294967040, %.lr.ph.i
  %.02650.i86 = phi ptr [ %.02650.i, %.lr.ph.i ], [ %i.ak, %.lr.ph.i.jt4294967040 ], [ %i.ai, %.loopexit.i.jt4294901760 ]
  %.0294975.i = phi i32 [ %.02949.i, %.lr.ph.i ], [ -256, %.lr.ph.i.jt4294967040 ], [ -65536, %.loopexit.i.jt4294901760 ] ; 2 uses
  %.0255172.i = phi i32 [ %.02551.i, %.lr.ph.i ], [ 255, %.lr.ph.i.jt4294967040 ], [ 65535, %.loopexit.i.jt4294901760 ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.02650.i86, i64 8 ; 3 uses
  %i.ah = icmp ult ptr %i.ag, %i.x
  br i1 %i.ah, label %.lr.ph.i, label %.preheader.i

.loopexit.i.jt4294901760:                         ; preds = %bb.m
  %i.ai = getelementptr i8, ptr %.02650.i, i64 8  ; 3 uses
  %i.aj = icmp ult ptr %i.ai, %i.x
  br i1 %i.aj, label %.loopexit.i, label %.preheader.i

.loopexit.i.jt4294967040:                         ; preds = %.lr.ph.jt4294967040.i
  %i.ak = getelementptr i8, ptr %.02650.i, i64 8  ; 4 uses
  %i.al = icmp ult ptr %i.ak, %i.x
  br i1 %i.al, label %.lr.ph.i.jt4294967040, label %.preheader.i

bb.n:                                             ; preds = %bb.q, %.lr.ph55.i
  %.22854.i = phi ptr [ %.228.ph59.i, %.lr.ph55.i ], [ %i.aq, %bb.q ] ; 4 uses
  %i.am = load i16, ptr %.22854.i, align 2, !tbaa !240
  %i.an = zext i16 %i.am to i32
  %i.ao = and i32 %.332.ph58.i, %i.an
  %.not.i43 = icmp eq i32 %i.ao, 0
  br i1 %.not.i43, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i32 %.332.ph58.i, label %bb.p [
    i32 -256, label %ucs2lib_find_max_char.exit
    i32 -128, label %.outer.i
  ]

bb.p:                                             ; preds = %bb.o
  br label %.outer.i

.outer.i:                                         ; preds = %bb.p, %bb.o
  %.433.i = phi i32 [ -65536, %bb.p ], [ -256, %bb.o ]
  %.4.i = phi i32 [ 65535, %bb.p ], [ 255, %bb.o ] ; 2 uses
  %i.ap = icmp ult ptr %.22854.i, %i.u
  br i1 %i.ap, label %.lr.ph55.i, label %ucs2lib_find_max_char.exit, !llvm.loop !10

.lr.ph55.i:                                       ; preds = %.preheader.i, %.outer.i
  %.3.ph60.i = phi i32 [ %.4.i, %.outer.i ], [ %.025.lcssa.i, %.preheader.i ]
  %.228.ph59.i = phi ptr [ %.22854.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ]
  %.332.ph58.i = phi i32 [ %.433.i, %.outer.i ], [ %.029.lcssa.i, %.preheader.i ] ; 2 uses
  br label %bb.n

bb.q:                                             ; preds = %bb.n
  %i.aq = getelementptr i8, ptr %.22854.i, i64 2  ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.u
  br i1 %i.ar, label %bb.n, label %ucs2lib_find_max_char.exit, !llvm.loop !10

ucs2lib_find_max_char.exit:                       ; preds = %.lr.ph.jt4294967040.i, %bb.m, %.lr.ph.i.jt4294967040, %bb.o, %.outer.i, %bb.q, %.preheader.i
  %.236.i = phi i32 [ %.025.lcssa.i, %.preheader.i ], [ 65535, %bb.o ], [ %.3.ph60.i, %bb.q ], [ %.4.i, %.outer.i ], [ 65535, %.lr.ph.i.jt4294967040 ], [ 65535, %bb.m ], [ 65535, %.lr.ph.jt4294967040.i ]
  %i.as = and i32 %.236.i, 65535                  ; 2 uses
  %i.at = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef %i.as) ; 11 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %unicode_char.exit, label %bb.r

bb.r:                                             ; preds = %ucs2lib_find_max_char.exit
  %i.au = icmp samesign ugt i32 %i.as, 255
  %i.av = getelementptr i8, ptr %i.at, i64 32
  %.val.i = load i32, ptr %i.av, align 8          ; 3 uses
  %i.aw = and i32 %.val.i, 32
  %.not.i44 = icmp eq i32 %i.aw, 0                ; 2 uses
  br i1 %i.au, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = and i32 %.val.i, 64
  %.not.i.i45 = icmp eq i32 %i.ax, 0
  %.0.v.i.i = select i1 %.not.i.i45, i64 56, i64 40
  %.0.i.i46 = getelementptr i8, ptr %i.at, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.u:                                             ; preds = %bb.s
  %i.ay = getelementptr i8, ptr %i.at, i64 56
  %.val4.i = load ptr, ptr %i.ay, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.t, %bb.u
  %.0.i47 = phi ptr [ %.0.i.i46, %bb.t ], [ %.val4.i, %bb.u ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0.i47, ptr align 2 %0, i64 %.idx56, i1 false)
  br label %unicode_char.exit

bb.v:                                             ; preds = %bb.r
  br i1 %.not.i44, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.az = and i32 %.val.i, 64
  %.not.i.i50 = icmp eq i32 %i.az, 0
  %.0.v.i.i51 = select i1 %.not.i.i50, i64 56, i64 40
  %.0.i.i52 = getelementptr i8, ptr %i.at, i64 %.0.v.i.i51
  br label %_PyUnicode_DATA.exit55

bb.x:                                             ; preds = %bb.v
  %i.ba = getelementptr i8, ptr %i.at, i64 56
  %.val4.i54 = load ptr, ptr %i.ba, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit55

_PyUnicode_DATA.exit55:                           ; preds = %bb.w, %bb.x
  %.0.i53 = phi ptr [ %.0.i.i52, %bb.w ], [ %.val4.i54, %bb.x ] ; 2 uses
  br i1 %i.y, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %_PyUnicode_DATA.exit55
  %.038.lcssa = phi ptr [ %.0.i53, %_PyUnicode_DATA.exit55 ], [ %i.ct, %.lr.ph ] ; 8 uses
  %.0.lcssa = phi ptr [ %0, %_PyUnicode_DATA.exit55 ], [ %i.cs, %.lr.ph ] ; 11 uses
  %i.bb = icmp ult ptr %.0.lcssa, %i.u
  br i1 %i.bb, label %iter.check, label %unicode_char.exit

iter.check:                                       ; preds = %.preheader
  %.0.lcssa103 = ptrtoaddr ptr %.0.lcssa to i64
  %i.bc = add i64 %.idx56, %i.a
  %i.bd = xor i64 %.0.lcssa103, -1
  %i.be = add i64 %i.bc, %i.bd                    ; 3 uses
  %i.bf = lshr i64 %i.be, 1
  %i.bg = add nuw i64 %i.bf, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.be, 14
  br i1 %min.iters.check, label %.lr.ph66.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %2 = ptrtoaddr ptr %0 to i64
  %3 = ptrtoaddr ptr %.0.lcssa to i64
  %i.bh = add i64 %.idx56, %2
  %i.bi = xor i64 %3, -1
  %i.bj = add i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 1
  %i.bl = getelementptr i8, ptr %.038.lcssa, i64 %i.bk
  %scevgep = getelementptr i8, ptr %i.bl, i64 1
  %i.bm = and i64 %i.bj, -2
  %i.bn = getelementptr i8, ptr %.0.lcssa, i64 %i.bm
  %scevgep102 = getelementptr i8, ptr %i.bn, i64 2
  %bound0 = icmp ult ptr %.038.lcssa, %scevgep102
  %bound1 = icmp ult ptr %.0.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph66.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check103 = icmp ult i64 %i.be, 30
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bo = and i64 %i.bg, 8
  %n.vec = and i64 %i.bg, -16                     ; 5 uses
  %i.bp = shl i64 %n.vec, 1
  %i.bq = getelementptr i8, ptr %.0.lcssa, i64 %i.bp
  %i.br = getelementptr i8, ptr %.038.lcssa, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bs = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %i.bs ; 2 uses
  %next.gep104 = getelementptr i8, ptr %.038.lcssa, i64 %index ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !240, !alias.scope !422
  %wide.load105 = load <8 x i16>, ptr %i.bt, align 2, !tbaa !240, !alias.scope !422
  %i.bu = trunc <8 x i16> %wide.load to <8 x i8>
  %i.bv = trunc <8 x i16> %wide.load105 to <8 x i8>
  %i.bw = getelementptr i8, ptr %next.gep104, i64 8
  store <8 x i8> %i.bu, ptr %next.gep104, align 1, !tbaa !237, !alias.scope !423, !noalias !422
  store <8 x i8> %i.bv, ptr %i.bw, align 1, !tbaa !237, !alias.scope !423, !noalias !422
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !418

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %unicode_char.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bo, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph66.preheader, label %vec.epilog.ph, !prof !245

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec107 = and i64 %i.bg, -8                   ; 4 uses
  %i.by = shl i64 %n.vec107, 1
  %i.bz = getelementptr i8, ptr %.0.lcssa, i64 %i.by
  %i.ca = getelementptr i8, ptr %.038.lcssa, i64 %n.vec107
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index108 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next112, %vec.epilog.vector.body ] ; 3 uses
  %i.cb = shl i64 %index108, 1
  %next.gep109 = getelementptr i8, ptr %.0.lcssa, i64 %i.cb
  %next.gep110 = getelementptr i8, ptr %.038.lcssa, i64 %index108
  %wide.load111 = load <8 x i16>, ptr %next.gep109, align 2, !tbaa !240, !alias.scope !422
  %i.cc = trunc <8 x i16> %wide.load111 to <8 x i8>
  store <8 x i8> %i.cc, ptr %next.gep110, align 1, !tbaa !237, !alias.scope !423, !noalias !422
  %index.next112 = add nuw i64 %index108, 8       ; 2 uses
  %i.cd = icmp eq i64 %index.next112, %n.vec107
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !419

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n113 = icmp eq i64 %i.bg, %n.vec107
  br i1 %cmp.n113, label %unicode_char.exit, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.165.ph = phi ptr [ %.0.lcssa, %iter.check ], [ %.0.lcssa, %vector.memcheck ], [ %i.bq, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  %.13964.ph = phi ptr [ %.038.lcssa, %iter.check ], [ %.038.lcssa, %vector.memcheck ], [ %i.br, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %.lr.ph66

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit55, %.lr.ph
  %.062 = phi ptr [ %i.cs, %.lr.ph ], [ %0, %_PyUnicode_DATA.exit55 ] ; 5 uses
  %.03861 = phi ptr [ %i.ct, %.lr.ph ], [ %.0.i53, %_PyUnicode_DATA.exit55 ] ; 5 uses
  %i.ce = load i16, ptr %.062, align 2, !tbaa !240
  %i.cf = trunc i16 %i.ce to i8
  store i8 %i.cf, ptr %.03861, align 1, !tbaa !237
  %i.cg = getelementptr i8, ptr %.062, i64 2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !240
  %i.ci = trunc i16 %i.ch to i8
  %i.cj = getelementptr i8, ptr %.03861, i64 1
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !237
  %i.ck = getelementptr i8, ptr %.062, i64 4
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !240
  %i.cm = trunc i16 %i.cl to i8
  %i.cn = getelementptr i8, ptr %.03861, i64 2
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !237
  %i.co = getelementptr i8, ptr %.062, i64 6
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !240
  %i.cq = trunc i16 %i.cp to i8
  %i.cr = getelementptr i8, ptr %.03861, i64 3
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !237
  %i.cs = getelementptr i8, ptr %.062, i64 8      ; 3 uses
  %i.ct = getelementptr i8, ptr %.03861, i64 4    ; 2 uses
  %i.cu = icmp ult ptr %i.cs, %i.x
  br i1 %i.cu, label %.lr.ph, label %.preheader, !llvm.loop !420

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %.lr.ph66
  %.165 = phi ptr [ %i.cv, %.lr.ph66 ], [ %.165.ph, %.lr.ph66.preheader ] ; 2 uses
  %.13964 = phi ptr [ %i.cy, %.lr.ph66 ], [ %.13964.ph, %.lr.ph66.preheader ] ; 2 uses
  %i.cv = getelementptr i8, ptr %.165, i64 2      ; 2 uses
  %i.cw = load i16, ptr %.165, align 2, !tbaa !240
  %i.cx = trunc i16 %i.cw to i8
  %i.cy = getelementptr i8, ptr %.13964, i64 1
  store i8 %i.cx, ptr %.13964, align 1, !tbaa !237
  %i.cz = icmp ult ptr %i.cv, %i.u
  br i1 %i.cz, label %.lr.ph66, label %unicode_char.exit, !llvm.loop !421

unicode_char.exit:                                ; preds = %.lr.ph66, %middle.block, %vec.epilog.middle.block, %.preheader, %_PyUnicode_DATA.exit19.i, %_PyUnicode_DATA.exit.i, %bb.d, %bb.c, %bb.a, %_PyUnicode_DATA.exit, %ucs2lib_find_max_char.exit
  %.040 = phi ptr [ %i.at, %_PyUnicode_DATA.exit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ null, %ucs2lib_find_max_char.exit ], [ %i.j, %_PyUnicode_DATA.exit.i ], [ %i.i, %bb.c ], [ null, %bb.d ], [ %i.j, %_PyUnicode_DATA.exit19.i ], [ %i.at, %.preheader ], [ %i.at, %middle.block ], [ %i.at, %vec.epilog.middle.block ], [ %i.at, %.lr.ph66 ]
  ret ptr %.040
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_PyUnicode_FromUCS4(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  switch i64 %1, label %bb.l [
    i64 0, label %unicode_char.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !43     ; 6 uses
  %i.b = icmp ult i32 %i.a, 256
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = zext nneg i32 %i.a to i64                ; 2 uses
  %i.d = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.c
  %i.e = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.c
  %i.f = getelementptr i8, ptr %i.e, i64 -8192
  %.not.i = icmp samesign ult i32 %i.a, 128
  %i.g = select i1 %.not.i, ptr %i.d, ptr %i.f
  br label %unicode_char.exit

bb.d:                                             ; preds = %bb.b
  %i.h = tail call ptr @PyUnicode_New(i64 noundef 1, i32 noundef %i.a), !inline_history !8 ; 8 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %unicode_char.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.h, i64 32
  %i.k = load i32, ptr %i.j, align 8              ; 5 uses
  %i.l = and i32 %i.k, 28
  %i.m = icmp eq i32 %i.l, 8
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = trunc i32 %i.a to i16
  %i.o = and i32 %i.k, 32
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = and i32 %i.k, 64
  %.not.i.i.i = icmp eq i32 %i.p, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.h, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.h, i64 56
  %.val4.i.i = load ptr, ptr %i.q, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.g ], [ %.val4.i.i, %bb.h ]
  store i16 %i.n, ptr %.0.i.i, align 2, !tbaa !240
  br label %unicode_char.exit

bb.i:                                             ; preds = %bb.e
  %i.r = and i32 %i.k, 32
  %.not.i13.i = icmp eq i32 %i.r, 0
  br i1 %.not.i13.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = and i32 %i.k, 64
  %.not.i.i14.i = icmp eq i32 %i.s, 0
  %.0.v.i.i15.i = select i1 %.not.i.i14.i, i64 56, i64 40
  %.0.i.i16.i = getelementptr i8, ptr %i.h, i64 %.0.v.i.i15.i
  br label %_PyUnicode_DATA.exit19.i

bb.k:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %i.h, i64 56
  %.val4.i18.i = load ptr, ptr %i.t, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit19.i

_PyUnicode_DATA.exit19.i:                         ; preds = %bb.k, %bb.j
  %.0.i17.i = phi ptr [ %.0.i.i16.i, %bb.j ], [ %.val4.i18.i, %bb.k ]
  store i32 %i.a, ptr %.0.i17.i, align 4, !tbaa !43
  br label %unicode_char.exit

bb.l:                                             ; preds = %bb.a
  %i.u = getelementptr [4 x i8], ptr %0, i64 %1   ; 7 uses
  %.idx95 = shl i64 %1, 2                         ; 4 uses
  %i.v = ashr exact i64 %.idx95, 2
  %i.w = and i64 %i.v, -4
  %i.x = getelementptr [4 x i8], ptr %0, i64 %i.w ; 6 uses
  %i.y = icmp ult ptr %0, %i.x                    ; 3 uses
  br i1 %i.y, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n, %bb.p, %bb.o, %bb.l
  %.029.lcssa.i = phi i32 [ -128, %bb.l ], [ %.0294975.i, %bb.n ], [ -65536, %bb.p ], [ -256, %bb.o ]
  %.026.lcssa.i = phi ptr [ %0, %bb.l ], [ %i.ai, %bb.n ], [ %i.am, %bb.p ], [ %i.ak, %bb.o ] ; 2 uses
  %.025.lcssa.i = phi i32 [ 127, %bb.l ], [ %.0255172.i, %bb.n ], [ 65535, %bb.p ], [ 255, %bb.o ] ; 2 uses
  %i.z = icmp ult ptr %.026.lcssa.i, %i.u
  br i1 %i.z, label %.lr.ph55.i, label %ucs4lib_find_max_char.exit

.lr.ph.i:                                         ; preds = %bb.l, %bb.n
  %.02551.i = phi i32 [ %.0255172.i, %bb.n ], [ 127, %bb.l ]
  %.02650.i = phi ptr [ %i.ai, %bb.n ], [ %0, %bb.l ] ; 5 uses
  %.02949.i = phi i32 [ %.0294975.i, %bb.n ], [ -128, %bb.l ] ; 3 uses
  %i.aa = load <4 x i32>, ptr %.02650.i, align 4, !tbaa !43
  %i.ab = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.aa) ; 4 uses
  %i.ac = and i32 %i.ab, %.02949.i
  %.not37.i = icmp eq i32 %i.ac, 0
  br i1 %.not37.i, label %bb.n, label %bb.m

.lr.ph.i.jt4294967040:                            ; preds = %bb.o
  %i.ad = load <4 x i32>, ptr %i.ak, align 4, !tbaa !43
  %i.ae = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ad) ; 2 uses
  %.not37.i.jt4294967040 = icmp ult i32 %i.ae, 256
  br i1 %.not37.i.jt4294967040, label %bb.n, label %.lr.ph.jt4294901760.i

.lr.ph.i.jt4294901760:                            ; preds = %bb.p
  %i.af = load <4 x i32>, ptr %i.am, align 4, !tbaa !43
  %i.ag = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.af)
  %.not37.i.jt4294901760 = icmp ult i32 %i.ag, 65536
  br i1 %.not37.i.jt4294901760, label %bb.n, label %ucs4lib_find_max_char.exit

.lr.ph.jt4294901760.i:                            ; preds = %.lr.ph.i.jt4294967040, %.lr.ph.jt4294967040.i, %bb.m
  %i.ah = phi i32 [ %i.ab, %.lr.ph.jt4294967040.i ], [ %i.ab, %bb.m ], [ %i.ae, %.lr.ph.i.jt4294967040 ]
  %.02650.i142 = phi ptr [ %.02650.i, %.lr.ph.jt4294967040.i ], [ %.02650.i, %bb.m ], [ %i.ak, %.lr.ph.i.jt4294967040 ]
  %.not37.jt4294901760.i = icmp ult i32 %i.ah, 65536
  br i1 %.not37.jt4294901760.i, label %bb.p, label %ucs4lib_find_max_char.exit

.lr.ph.jt4294967040.i:                            ; preds = %bb.m
  %.not37.jt4294967040.i = icmp ult i32 %i.ab, 256
  br i1 %.not37.jt4294967040.i, label %bb.o, label %.lr.ph.jt4294901760.i

bb.m:                                             ; preds = %.lr.ph.i
  switch i32 %.02949.i, label %.lr.ph.jt4294901760.i [
    i32 -65536, label %ucs4lib_find_max_char.exit
    i32 -128, label %.lr.ph.jt4294967040.i
  ], !llvm.loop !5

bb.n:                                             ; preds = %.lr.ph.i.jt4294967040, %.lr.ph.i.jt4294901760, %.lr.ph.i
  %.02650.i141 = phi ptr [ %i.ak, %.lr.ph.i.jt4294967040 ], [ %i.am, %.lr.ph.i.jt4294901760 ], [ %.02650.i, %.lr.ph.i ]
  %.0294975.i = phi i32 [ -256, %.lr.ph.i.jt4294967040 ], [ -65536, %.lr.ph.i.jt4294901760 ], [ %.02949.i, %.lr.ph.i ] ; 2 uses
  %.0255172.i = phi i32 [ 255, %.lr.ph.i.jt4294967040 ], [ 65535, %.lr.ph.i.jt4294901760 ], [ %.02551.i, %.lr.ph.i ] ; 2 uses
  %i.ai = getelementptr i8, ptr %.02650.i141, i64 16 ; 3 uses
  %i.aj = icmp ult ptr %i.ai, %i.x
  br i1 %i.aj, label %.lr.ph.i, label %.preheader.i

bb.o:                                             ; preds = %.lr.ph.jt4294967040.i
  %i.ak = getelementptr i8, ptr %.02650.i, i64 16 ; 5 uses
  %i.al = icmp ult ptr %i.ak, %i.x
  br i1 %i.al, label %.lr.ph.i.jt4294967040, label %.preheader.i

bb.p:                                             ; preds = %.lr.ph.jt4294901760.i
  %i.am = getelementptr i8, ptr %.02650.i142, i64 16 ; 4 uses
  %i.an = icmp ult ptr %i.am, %i.x
  br i1 %i.an, label %.lr.ph.i.jt4294901760, label %.preheader.i

bb.q:                                             ; preds = %bb.t, %.lr.ph55.i
  %.22854.i = phi ptr [ %.228.ph59.i, %.lr.ph55.i ], [ %i.ar, %bb.t ] ; 4 uses
  %i.ao = load i32, ptr %.22854.i, align 4, !tbaa !43
  %i.ap = and i32 %i.ao, %.332.ph58.i
  %.not.i74 = icmp eq i32 %i.ap, 0
  br i1 %.not.i74, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  switch i32 %.332.ph58.i, label %bb.s [
    i32 -65536, label %ucs4lib_find_max_char.exit
    i32 -128, label %.outer.i
  ]

bb.s:                                             ; preds = %bb.r
  br label %.outer.i

.outer.i:                                         ; preds = %bb.s, %bb.r
  %.433.i = phi i32 [ -65536, %bb.s ], [ -256, %bb.r ]
  %.4.i = phi i32 [ 65535, %bb.s ], [ 255, %bb.r ] ; 2 uses
  %i.aq = icmp ult ptr %.22854.i, %i.u
  br i1 %i.aq, label %.lr.ph55.i, label %ucs4lib_find_max_char.exit, !llvm.loop !6

.lr.ph55.i:                                       ; preds = %.preheader.i, %.outer.i
  %.3.ph60.i = phi i32 [ %.4.i, %.outer.i ], [ %.025.lcssa.i, %.preheader.i ]
  %.228.ph59.i = phi ptr [ %.22854.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ]
  %.332.ph58.i = phi i32 [ %.433.i, %.outer.i ], [ %.029.lcssa.i, %.preheader.i ] ; 2 uses
  br label %bb.q

bb.t:                                             ; preds = %bb.q
  %i.ar = getelementptr i8, ptr %.22854.i, i64 4  ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.u
  br i1 %i.as, label %bb.q, label %ucs4lib_find_max_char.exit, !llvm.loop !6

ucs4lib_find_max_char.exit:                       ; preds = %.lr.ph.jt4294901760.i, %bb.m, %.lr.ph.i.jt4294901760, %bb.r, %.outer.i, %bb.t, %.preheader.i
  %.236.i = phi i32 [ %.025.lcssa.i, %.preheader.i ], [ 1114111, %bb.r ], [ %.3.ph60.i, %bb.t ], [ %.4.i, %.outer.i ], [ 1114111, %.lr.ph.i.jt4294901760 ], [ 1114111, %bb.m ], [ 1114111, %.lr.ph.jt4294901760.i ] ; 3 uses
  %i.at = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef %.236.i) ; 16 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %unicode_char.exit, label %bb.u

bb.u:                                             ; preds = %ucs4lib_find_max_char.exit
  %i.au = icmp ult i32 %.236.i, 256
  br i1 %i.au, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.av = getelementptr i8, ptr %i.at, i64 32
  %.val.i = load i32, ptr %i.av, align 8          ; 2 uses
  %i.aw = and i32 %.val.i, 32
  %.not.i75 = icmp eq i32 %i.aw, 0
  br i1 %.not.i75, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = and i32 %.val.i, 64
  %.not.i.i76 = icmp eq i32 %i.ax, 0
  %.0.v.i.i = select i1 %.not.i.i76, i64 56, i64 40
  %.0.i.i77 = getelementptr i8, ptr %i.at, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.x:                                             ; preds = %bb.v
  %i.ay = getelementptr i8, ptr %i.at, i64 56
  %.val4.i = load ptr, ptr %i.ay, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.w, %bb.x
  %.0.i78 = phi ptr [ %.0.i.i77, %bb.w ], [ %.val4.i, %bb.x ] ; 2 uses
  br i1 %i.y, label %.lr.ph110, label %.preheader

.preheader:                                       ; preds = %.lr.ph110, %_PyUnicode_DATA.exit
  %.067.lcssa = phi ptr [ %.0.i78, %_PyUnicode_DATA.exit ], [ %i.ch, %.lr.ph110 ] ; 6 uses
  %.065.lcssa = phi ptr [ %0, %_PyUnicode_DATA.exit ], [ %i.cg, %.lr.ph110 ] ; 8 uses
  %i.az = icmp ult ptr %.065.lcssa, %i.u
  br i1 %i.az, label %.lr.ph115.preheader, label %unicode_char.exit

.lr.ph115.preheader:                              ; preds = %.preheader
  %2 = ptrtoaddr ptr %0 to i64
  %3 = ptrtoaddr ptr %.065.lcssa to i64
  %i.ba = add i64 %.idx95, %2
  %i.bb = xor i64 %3, -1
  %i.bc = add i64 %i.ba, %i.bb                    ; 4 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.bc, 140
  br i1 %min.iters.check165, label %.lr.ph115.preheader179, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph115.preheader
  %i.bf = lshr i64 %i.bc, 2
  %i.bg = getelementptr i8, ptr %.067.lcssa, i64 %i.bf
  %scevgep = getelementptr i8, ptr %i.bg, i64 1
  %i.bh = and i64 %i.bc, -4
  %i.bi = getelementptr i8, ptr %.065.lcssa, i64 %i.bh
  %scevgep163 = getelementptr i8, ptr %i.bi, i64 4
  %bound0 = icmp ult ptr %.067.lcssa, %scevgep163
  %bound1 = icmp ult ptr %.065.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph115.preheader179, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck
  %n.vec167 = and i64 %i.be, 9223372036854775800  ; 4 uses
  %i.bj = shl i64 %n.vec167, 2
  %i.bk = getelementptr i8, ptr %.065.lcssa, i64 %i.bj
  %i.bl = getelementptr i8, ptr %.067.lcssa, i64 %n.vec167
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next174, %vector.body168 ] ; 3 uses
  %i.bm = shl i64 %index169, 2
  %next.gep170 = getelementptr i8, ptr %.065.lcssa, i64 %i.bm ; 2 uses
  %next.gep171 = getelementptr i8, ptr %.067.lcssa, i64 %index169 ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep170, i64 16
  %wide.load172 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !43, !alias.scope !433
  %wide.load173 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !43, !alias.scope !433
  %i.bo = trunc <4 x i32> %wide.load172 to <4 x i8>
  %i.bp = trunc <4 x i32> %wide.load173 to <4 x i8>
  %i.bq = getelementptr i8, ptr %next.gep171, i64 4
  store <4 x i8> %i.bo, ptr %next.gep171, align 1, !tbaa !237, !alias.scope !434, !noalias !433
  store <4 x i8> %i.bp, ptr %i.bq, align 1, !tbaa !237, !alias.scope !434, !noalias !433
  %index.next174 = add nuw i64 %index169, 8       ; 2 uses
  %i.br = icmp eq i64 %index.next174, %n.vec167
  br i1 %i.br, label %middle.block175, label %vector.body168, !llvm.loop !427

middle.block175:                                  ; preds = %vector.body168
  %cmp.n176 = icmp eq i64 %i.be, %n.vec167
  br i1 %cmp.n176, label %unicode_char.exit, label %.lr.ph115.preheader179

.lr.ph115.preheader179:                           ; preds = %vector.memcheck, %.lr.ph115.preheader, %middle.block175
  %.166114.ph = phi ptr [ %.065.lcssa, %vector.memcheck ], [ %.065.lcssa, %.lr.ph115.preheader ], [ %i.bk, %middle.block175 ]
  %.168113.ph = phi ptr [ %.067.lcssa, %vector.memcheck ], [ %.067.lcssa, %.lr.ph115.preheader ], [ %i.bl, %middle.block175 ]
  br label %.lr.ph115

.lr.ph110:                                        ; preds = %_PyUnicode_DATA.exit, %.lr.ph110
  %.065109 = phi ptr [ %i.cg, %.lr.ph110 ], [ %0, %_PyUnicode_DATA.exit ] ; 5 uses
  %.067108 = phi ptr [ %i.ch, %.lr.ph110 ], [ %.0.i78, %_PyUnicode_DATA.exit ] ; 5 uses
  %i.bs = load i32, ptr %.065109, align 4, !tbaa !43
  %i.bt = trunc i32 %i.bs to i8
  store i8 %i.bt, ptr %.067108, align 1, !tbaa !237
  %i.bu = getelementptr i8, ptr %.065109, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !43
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr i8, ptr %.067108, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !237
  %i.by = getelementptr i8, ptr %.065109, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !43
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr i8, ptr %.067108, i64 2
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !237
  %i.cc = getelementptr i8, ptr %.065109, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !43
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr i8, ptr %.067108, i64 3
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !237
  %i.cg = getelementptr i8, ptr %.065109, i64 16  ; 3 uses
  %i.ch = getelementptr i8, ptr %.067108, i64 4   ; 2 uses
  %i.ci = icmp ult ptr %i.cg, %i.x
  br i1 %i.ci, label %.lr.ph110, label %.preheader, !llvm.loop !428

.lr.ph115:                                        ; preds = %.lr.ph115.preheader179, %.lr.ph115
  %.166114 = phi ptr [ %i.cj, %.lr.ph115 ], [ %.166114.ph, %.lr.ph115.preheader179 ] ; 2 uses
  %.168113 = phi ptr [ %i.cm, %.lr.ph115 ], [ %.168113.ph, %.lr.ph115.preheader179 ] ; 2 uses
  %i.cj = getelementptr i8, ptr %.166114, i64 4   ; 2 uses
  %i.ck = load i32, ptr %.166114, align 4, !tbaa !43
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr i8, ptr %.168113, i64 1
  store i8 %i.cl, ptr %.168113, align 1, !tbaa !237
  %i.cn = icmp ult ptr %i.cj, %i.u
  br i1 %i.cn, label %.lr.ph115, label %unicode_char.exit, !llvm.loop !429

bb.y:                                             ; preds = %bb.u
  %i.co = icmp ult i32 %.236.i, 65536
  %i.cp = getelementptr i8, ptr %i.at, i64 32
  %.val.i79 = load i32, ptr %i.cp, align 8        ; 3 uses
  %i.cq = and i32 %.val.i79, 32
  %.not.i80 = icmp eq i32 %i.cq, 0                ; 2 uses
  br i1 %i.co, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %.not.i80, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = and i32 %.val.i79, 64
  %.not.i.i81 = icmp eq i32 %i.cr, 0
  %.0.v.i.i82 = select i1 %.not.i.i81, i64 56, i64 40
  %.0.i.i83 = getelementptr i8, ptr %i.at, i64 %.0.v.i.i82
  br label %_PyUnicode_DATA.exit86

bb.ab:                                            ; preds = %bb.z
  %i.cs = getelementptr i8, ptr %i.at, i64 56
  %.val4.i85 = load ptr, ptr %i.cs, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit86

_PyUnicode_DATA.exit86:                           ; preds = %bb.aa, %bb.ab
  %.0.i84 = phi ptr [ %.0.i.i83, %bb.aa ], [ %.val4.i85, %bb.ab ] ; 2 uses
  br i1 %i.y, label %.lr.ph, label %.preheader96

.preheader96:                                     ; preds = %.lr.ph, %_PyUnicode_DATA.exit86
  %.063.lcssa = phi ptr [ %.0.i84, %_PyUnicode_DATA.exit86 ], [ %i.dp, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %_PyUnicode_DATA.exit86 ], [ %i.do, %.lr.ph ] ; 5 uses
  %i.ct = icmp ult ptr %.0.lcssa, %i.u
  br i1 %i.ct, label %.lr.ph107.preheader, label %unicode_char.exit

.lr.ph107.preheader:                              ; preds = %.preheader96
  %i.cu = ptrtoaddr ptr %0 to i64
  %i.cv = ptrtoaddr ptr %.0.lcssa to i64
  %i.cw = add i64 %.idx95, %i.cu
  %i.cx = xor i64 %i.cv, -1
  %i.cy = add i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = lshr i64 %i.cy, 2
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cy, 28
  br i1 %min.iters.check, label %.lr.ph107.preheader181, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph107.preheader
  %n.vec = and i64 %i.da, 9223372036854775800     ; 4 uses
  %i.db = shl i64 %n.vec, 2
  %i.dc = getelementptr i8, ptr %.0.lcssa, i64 %i.db
  %i.dd = shl nuw i64 %n.vec, 1
  %i.de = getelementptr i8, ptr %.063.lcssa, i64 %i.dd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.df = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %i.df ; 2 uses
  %i.dg = shl i64 %index, 1
  %next.gep159 = getelementptr i8, ptr %.063.lcssa, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !43
  %wide.load160 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !43
  %i.di = trunc <4 x i32> %wide.load to <4 x i16>
  %i.dj = trunc <4 x i32> %wide.load160 to <4 x i16>
  %i.dk = getelementptr i8, ptr %next.gep159, i64 8
  store <4 x i16> %i.di, ptr %next.gep159, align 2, !tbaa !240
  store <4 x i16> %i.dj, ptr %i.dk, align 2, !tbaa !240
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !430

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %unicode_char.exit, label %.lr.ph107.preheader181

.lr.ph107.preheader181:                           ; preds = %.lr.ph107.preheader, %middle.block
  %.1106.ph = phi ptr [ %.0.lcssa, %.lr.ph107.preheader ], [ %i.dc, %middle.block ]
  %.164105.ph = phi ptr [ %.063.lcssa, %.lr.ph107.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph107

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit86, %.lr.ph
  %.0103 = phi ptr [ %i.do, %.lr.ph ], [ %0, %_PyUnicode_DATA.exit86 ] ; 2 uses
  %.063102 = phi ptr [ %i.dp, %.lr.ph ], [ %.0.i84, %_PyUnicode_DATA.exit86 ] ; 2 uses
  %i.dm = load <4 x i32>, ptr %.0103, align 4, !tbaa !43
  %i.dn = trunc <4 x i32> %i.dm to <4 x i16>
  store <4 x i16> %i.dn, ptr %.063102, align 2, !tbaa !240
  %i.do = getelementptr i8, ptr %.0103, i64 16    ; 3 uses
  %i.dp = getelementptr i8, ptr %.063102, i64 8   ; 2 uses
  %i.dq = icmp ult ptr %i.do, %i.x
  br i1 %i.dq, label %.lr.ph, label %.preheader96, !llvm.loop !431

.lr.ph107:                                        ; preds = %.lr.ph107.preheader181, %.lr.ph107
  %.1106 = phi ptr [ %i.dr, %.lr.ph107 ], [ %.1106.ph, %.lr.ph107.preheader181 ] ; 2 uses
  %.164105 = phi ptr [ %i.du, %.lr.ph107 ], [ %.164105.ph, %.lr.ph107.preheader181 ] ; 2 uses
  %i.dr = getelementptr i8, ptr %.1106, i64 4     ; 2 uses
  %i.ds = load i32, ptr %.1106, align 4, !tbaa !43
  %i.dt = trunc i32 %i.ds to i16
  %i.du = getelementptr i8, ptr %.164105, i64 2
  store i16 %i.dt, ptr %.164105, align 2, !tbaa !240
  %i.dv = icmp ult ptr %i.dr, %i.u
  br i1 %i.dv, label %.lr.ph107, label %unicode_char.exit, !llvm.loop !432

bb.ac:                                            ; preds = %bb.y
  br i1 %.not.i80, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dw = and i32 %.val.i79, 64
  %.not.i.i89 = icmp eq i32 %i.dw, 0
  %.0.v.i.i90 = select i1 %.not.i.i89, i64 56, i64 40
  %.0.i.i91 = getelementptr i8, ptr %i.at, i64 %.0.v.i.i90
  br label %_PyUnicode_DATA.exit94

bb.ae:                                            ; preds = %bb.ac
  %i.dx = getelementptr i8, ptr %i.at, i64 56
  %.val4.i93 = load ptr, ptr %i.dx, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit94

_PyUnicode_DATA.exit94:                           ; preds = %bb.ad, %bb.ae
  %.0.i92 = phi ptr [ %.0.i.i91, %bb.ad ], [ %.val4.i93, %bb.ae ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0.i92, ptr align 4 %0, i64 %.idx95, i1 false)
  br label %unicode_char.exit

unicode_char.exit:                                ; preds = %.lr.ph107, %.lr.ph115, %middle.block, %middle.block175, %.preheader96, %.preheader, %_PyUnicode_DATA.exit19.i, %_PyUnicode_DATA.exit.i, %bb.d, %bb.c, %bb.a, %_PyUnicode_DATA.exit94, %ucs4lib_find_max_char.exit
  %.069 = phi ptr [ %i.at, %_PyUnicode_DATA.exit94 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ null, %ucs4lib_find_max_char.exit ], [ %i.at, %.preheader ], [ %i.h, %_PyUnicode_DATA.exit.i ], [ %i.g, %bb.c ], [ null, %bb.d ], [ %i.h, %_PyUnicode_DATA.exit19.i ], [ %i.at, %.preheader96 ], [ %i.at, %middle.block175 ], [ %i.at, %middle.block ], [ %i.at, %.lr.ph115 ], [ %i.at, %.lr.ph107 ]
end_hunk_2
begin_hunk_3_@ucs2lib_fastsearch:bb.a
bb.i:                                             ; preds = %bb.r, %.preheader.i
  %.043.i = phi i64 [ %.144.ph59.i, %bb.r ], [ %1, %.preheader.i ] ; 2 uses
  %i.l = shl nuw i64 %.043.i, 1
  %i.m = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.j, i64 noundef %i.l) #34 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %ucs2lib_rfind_char.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = and i64 %i.o, -2                         ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = sub i64 %i.p, %i.k
  %i.s = ashr exact i64 %i.r, 1                   ; 5 uses
  %i.t = load i16, ptr %i.q, align 2, !tbaa !240
  %i.u = icmp eq i16 %i.t, %i.g
  br i1 %i.u, label %ucs2lib_rfind_char.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = sub i64 %.043.i, %i.s
  %i.w = icmp sgt i64 %i.v, 40
  br i1 %i.w, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = icmp slt i64 %i.s, 41
  br i1 %i.x, label %.thread67.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr i8, ptr %i.q, i64 -80
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.039.i = phi ptr [ %i.q, %bb.m ], [ %i.aa, %bb.o ] ; 3 uses
  %i.z = icmp ugt ptr %.039.i, %i.y
  br i1 %i.z, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr i8, ptr %.039.i, i64 -2   ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !240
  %i.ac = icmp eq i16 %i.ab, %i.g
  br i1 %i.ac, label %bb.p, label %bb.n, !llvm.loop !18

bb.p:                                             ; preds = %bb.o
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ad, %i.k
  %i.af = ashr exact i64 %i.ae, 1
  br label %ucs2lib_rfind_char.exit

bb.q:                                             ; preds = %bb.n
  %i.ag = ptrtoint ptr %.039.i to i64
  %i.ah = sub i64 %i.ag, %i.k
  %i.ai = ashr exact i64 %i.ah, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k
  %.144.ph59.i = phi i64 [ %i.s, %bb.k ], [ %i.ai, %bb.q ] ; 3 uses
  %i.aj = icmp sgt i64 %.144.ph59.i, 40
  br i1 %i.aj, label %bb.i, label %.thread67.i, !llvm.loop !19

.thread67.i:                                      ; preds = %bb.r, %bb.l, %bb.h, %bb.g
  %.447.i = phi i64 [ %1, %bb.g ], [ %1, %bb.h ], [ %i.s, %bb.l ], [ %.144.ph59.i, %bb.r ]
  %i.ak = getelementptr [2 x i8], ptr %0, i64 %.447.i
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.thread67.i
  %.140.i = phi ptr [ %i.ak, %.thread67.i ], [ %i.am, %bb.t ] ; 2 uses
  %i.al = icmp ugt ptr %.140.i, %0
  br i1 %i.al, label %bb.t, label %ucs2lib_rfind_char.exit

bb.t:                                             ; preds = %bb.s
  %i.am = getelementptr i8, ptr %.140.i, i64 -2   ; 3 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !240
  %i.ao = icmp eq i16 %i.an, %i.g
  br i1 %i.ao, label %bb.u, label %bb.s, !llvm.loop !20

bb.u:                                             ; preds = %bb.t
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %0 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 1
  br label %ucs2lib_rfind_char.exit

bb.v:                                             ; preds = %bb.e
  %i.at = icmp eq i64 %4, 9223372036854775807
  %i.au = load i16, ptr %2, align 2, !tbaa !240   ; 3 uses
  br i1 %i.at, label %.lr.ph.i.preheader, label %.lr.ph.i67

.lr.ph.i.preheader:                               ; preds = %bb.v
  %min.iters.check176 = icmp ult i64 %1, 4
  br i1 %min.iters.check176, label %.lr.ph.i.preheader195, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph.i.preheader
  %n.vec178 = and i64 %1, -4                      ; 3 uses
  %broadcast.splatinsert179 = insertelement <2 x i16> poison, i16 %i.au, i64 0
  %broadcast.splat180 = shufflevector <2 x i16> %broadcast.splatinsert179, <2 x i16> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph177
  %index182 = phi i64 [ 0, %vector.ph177 ], [ %index.next187, %vector.body181 ] ; 2 uses
  %vec.phi183 = phi <2 x i64> [ zeroinitializer, %vector.ph177 ], [ %i.bb, %vector.body181 ]
  %vec.phi184 = phi <2 x i64> [ zeroinitializer, %vector.ph177 ], [ %i.bc, %vector.body181 ]
  %i.av = getelementptr [2 x i8], ptr %0, i64 %index182 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %wide.load185 = load <2 x i16>, ptr %i.av, align 2, !tbaa !240
  %wide.load186 = load <2 x i16>, ptr %i.aw, align 2, !tbaa !240
  %i.ax = icmp eq <2 x i16> %wide.load185, %broadcast.splat180
  %i.ay = icmp eq <2 x i16> %wide.load186, %broadcast.splat180
  %i.az = zext <2 x i1> %i.ax to <2 x i64>
  %i.ba = zext <2 x i1> %i.ay to <2 x i64>
  %i.bb = add <2 x i64> %vec.phi183, %i.az        ; 2 uses
  %i.bc = add <2 x i64> %vec.phi184, %i.ba        ; 2 uses
  %index.next187 = add nuw i64 %index182, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next187, %n.vec178
  br i1 %i.bd, label %middle.block188, label %vector.body181, !llvm.loop !858

middle.block188:                                  ; preds = %vector.body181
  %bin.rdx189 = add <2 x i64> %i.bc, %i.bb
  %i.be = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx189) ; 2 uses
  %cmp.n190 = icmp eq i64 %1, %n.vec178
  br i1 %cmp.n190, label %ucs2lib_rfind_char.exit, label %.lr.ph.i.preheader195

.lr.ph.i.preheader195:                            ; preds = %.lr.ph.i.preheader, %middle.block188
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec178, %middle.block188 ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.be, %middle.block188 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader195, %.lr.ph.i
  %.09.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader195 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.078.i.ph, %.lr.ph.i.preheader195 ]
  %i.bf = getelementptr [2 x i8], ptr %0, i64 %.09.i
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !240
  %i.bh = icmp eq i16 %i.bg, %i.au
  %i.bi = zext i1 %i.bh to i64
  %spec.select.i = add i64 %.078.i, %i.bi         ; 2 uses
  %i.bj = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %1
  br i1 %exitcond.not.i, label %ucs2lib_rfind_char.exit, label %.lr.ph.i, !llvm.loop !859

.lr.ph.i67:                                       ; preds = %bb.v, %bb.x
  %.016.i = phi i64 [ %.1.i, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %.01115.i = phi i64 [ %i.bp, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %i.bk = getelementptr [2 x i8], ptr %0, i64 %.01115.i
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !240
  %i.bm = icmp eq i16 %i.bl, %i.au
  br i1 %i.bm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i67
  %i.bn = add i64 %.016.i, 1                      ; 2 uses
  %i.bo = icmp eq i64 %i.bn, %4
  br i1 %i.bo, label %ucs2lib_rfind_char.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i67
  %.1.i = phi i64 [ %i.bn, %bb.w ], [ %.016.i, %.lr.ph.i67 ] ; 2 uses
  %i.bp = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i68 = icmp eq i64 %i.bp, %1
  br i1 %exitcond.not.i68, label %ucs2lib_rfind_char.exit, label %.lr.ph.i67, !llvm.loop !860

bb.y:                                             ; preds = %bb.c
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.ar, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = icmp slt i64 %1, 2500
  br i1 %i.bq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = icmp samesign ult i64 %3, 100
  %i.bs = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.bs, %i.br
  %i.bt = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.bt, %or.cond3
  br i1 %or.cond5, label %bb.ab, label %bb.am

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bu = add nsw i64 %3, -1                      ; 11 uses
  %i.bv = getelementptr [2 x i8], ptr %2, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !240 ; 4 uses
  %min.iters.check = icmp ult i64 %3, 15
  br i1 %min.iters.check, label %.lr.ph.i69.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ab
  %n.vec = and i64 %i.bu, -2                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert143 = insertelement <2 x i16> poison, i16 %i.bw, i64 0
  %broadcast.splat144 = shufflevector <2 x i16> %broadcast.splatinsert143, <2 x i16> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cc, %vector.body ]
  %vec.phi145 = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.cg, %vector.body ]
  %i.bx = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.cf, %vector.body ]
  %i.by = getelementptr [2 x i8], ptr %2, i64 %index
  %wide.load = load <2 x i16>, ptr %i.by, align 2, !tbaa !240 ; 2 uses
  %i.bz = and <2 x i16> %wide.load, splat (i16 63)
  %i.ca = zext nneg <2 x i16> %i.bz to <2 x i64>
  %i.cb = shl nuw <2 x i64> splat (i64 1), %i.ca
  %i.cc = or <2 x i64> %i.cb, %vec.phi            ; 2 uses
  %i.cd = icmp eq <2 x i16> %wide.load, %broadcast.splat144
  %6 = xor <2 x i64> %vec.ind, splat (i64 -1)
  %7 = add nsw <2 x i64> %broadcast.splat, %6
  %8 = freeze <2 x i1> %i.cd                      ; 2 uses
  %i.ce = bitcast <2 x i1> %8 to i2
  %.not193 = icmp eq i2 %i.ce, 0                  ; 2 uses
  %i.cf = select i1 %.not193, <2 x i1> %i.bx, <2 x i1> %8 ; 2 uses
  %i.cg = select i1 %.not193, <2 x i64> %vec.phi145, <2 x i64> %7 ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !861

middle.block:                                     ; preds = %vector.body
  %i.ci = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.cc) ; 2 uses
  %i.cj = tail call i64 @llvm.experimental.vector.extract.last.active.v2i64(<2 x i64> %i.cg, <2 x i1> %i.cf, i64 %i.bu) ; 2 uses
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i69.preheader

.lr.ph.i69.preheader:                             ; preds = %bb.ab, %middle.block
  %.068100.i.ph = phi i64 [ 0, %bb.ab ], [ %n.vec, %middle.block ]
  %.06999.i.ph = phi i64 [ 0, %bb.ab ], [ %i.ci, %middle.block ]
  %.07098.i.ph = phi i64 [ %i.bu, %bb.ab ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i69

._crit_edge.i:                                    ; preds = %.lr.ph.i69, %middle.block
  %.lcssa142 = phi i64 [ %i.ci, %middle.block ], [ %i.dx, %.lr.ph.i69 ]
  %.171.i.lcssa = phi i64 [ %i.cj, %middle.block ], [ %.171.i, %.lr.ph.i69 ]
  %i.ck = sub nsw i64 %1, %3                      ; 3 uses
  %i.cl = getelementptr [2 x i8], ptr %0, i64 %i.bu ; 3 uses
  %i.cm = and i16 %i.bw, 63
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = or i64 %.lcssa142, %i.co                ; 2 uses
  br label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %._crit_edge.i, %bb.al
  %.066110.us.i = phi i64 [ %i.dq, %bb.al ], [ 0, %._crit_edge.i ] ; 9 uses
  %.072109.us.i = phi i64 [ %.274.us.i, %bb.al ], [ 0, %._crit_edge.i ] ; 4 uses
  %i.cq = getelementptr [2 x i8], ptr %i.cl, i64 %.066110.us.i
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !240
  %i.cs = icmp eq i16 %i.cr, %i.bw
  br i1 %i.cs, label %.preheader.us.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph113.split.us.i
  %i.ct = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.ct, %i.ck
  br i1 %.not88.us.i, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = getelementptr [2 x i8], ptr %i.cl, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !240
  %i.cw = and i16 %i.cv, 63
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cy, %i.cp
  %.not89.us.i = icmp eq i64 %i.cz, 0
  %i.da = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.da, %.066110.us.i
  br label %bb.al

bb.ae:                                            ; preds = %.preheader.us.i, %bb.af
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.df, %bb.af ] ; 3 uses
  %i.db = getelementptr [2 x i8], ptr %i.dr, i64 %.0102.us.i
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !240
  %i.dd = getelementptr [2 x i8], ptr %2, i64 %.0102.us.i
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !240
  %.not90.us.i = icmp eq i16 %i.dc, %i.de
  br i1 %.not90.us.i, label %bb.af, label %._crit_edge104.us.i

bb.af:                                            ; preds = %bb.ae
  %i.df = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.df, %i.bu
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i.loopexit, label %bb.ae, !llvm.loop !862

._crit_edge104.us.i:                              ; preds = %bb.ae
  %i.dg = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.dg, %i.ck
  br i1 %.not91.us.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge104.us.i
  %i.dh = getelementptr [2 x i8], ptr %i.cl, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !240
  %i.dj = and i16 %i.di, 63
  %i.dk = zext nneg i16 %i.dj to i64
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = and i64 %i.dl, %i.cp
  %.not92.us.i = icmp eq i64 %i.dm, 0
  br i1 %.not92.us.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge104.us.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.070.pn.us.i = phi i64 [ %.171.i.lcssa, %bb.ah ], [ %3, %bb.ag ]
  %.167.us.i = add i64 %.070.pn.us.i, %.066110.us.i
  br label %bb.al

._crit_edge104.us.thread.i.loopexit:              ; preds = %bb.af
  br i1 %i.b, label %bb.aj, label %ucs2lib_rfind_char.exit

bb.aj:                                            ; preds = %._crit_edge104.us.thread.i.loopexit
  %i.dn = add i64 %.072109.us.i, 1                ; 2 uses
  %i.do = icmp eq i64 %i.dn, %4
  br i1 %i.do, label %ucs2lib_rfind_char.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dp = add i64 %.066110.us.i, %i.bu
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai, %bb.ad, %bb.ac
  %.274.us.i = phi i64 [ %.072109.us.i, %bb.ac ], [ %.072109.us.i, %bb.ad ], [ %.072109.us.i, %bb.ai ], [ %i.dn, %bb.ak ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.ac ], [ %spec.select.us.i, %bb.ad ], [ %.167.us.i, %bb.ai ], [ %i.dp, %bb.ak ]
  %i.dq = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.dq, %i.ck
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !863

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.dr = getelementptr [2 x i8], ptr %0, i64 %.066110.us.i
  br label %bb.ae

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader, %.lr.ph.i69
  %.068100.i = phi i64 [ %i.eb, %.lr.ph.i69 ], [ %.068100.i.ph, %.lr.ph.i69.preheader ] ; 3 uses
  %.06999.i = phi i64 [ %i.dx, %.lr.ph.i69 ], [ %.06999.i.ph, %.lr.ph.i69.preheader ]
  %.07098.i = phi i64 [ %.171.i, %.lr.ph.i69 ], [ %.07098.i.ph, %.lr.ph.i69.preheader ]
  %i.ds = getelementptr [2 x i8], ptr %2, i64 %.068100.i
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !240 ; 2 uses
  %i.du = and i16 %i.dt, 63
  %i.dv = zext nneg i16 %i.du to i64
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = or i64 %i.dw, %.06999.i                 ; 2 uses
  %i.dy = icmp eq i16 %i.dt, %i.bw
  %i.dz = xor i64 %.068100.i, -1
  %i.ea = add nsw i64 %i.bu, %i.dz
  %.171.i = select i1 %i.dy, i64 %i.ea, i64 %.07098.i ; 2 uses
  %i.eb = add nuw nsw i64 %.068100.i, 1           ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %i.eb, %i.bu
  br i1 %exitcond.not.i70, label %._crit_edge.i, label %.lr.ph.i69, !llvm.loop !864

.loopexit.i:                                      ; preds = %bb.al
  %i.ec = select i1 %i.b, i64 %.274.us.i, i64 -1
  br label %ucs2lib_rfind_char.exit

bb.am:                                            ; preds = %bb.aa
  %i.ed = lshr i64 %3, 2
  %i.ee = mul nuw nsw i64 %i.ed, 3
  %i.ef = lshr i64 %1, 2
  %i.eg = icmp samesign ult i64 %i.ee, %i.ef
  br i1 %i.eg, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.eh = icmp eq i32 %5, 1
  br i1 %i.eh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ei = tail call fastcc i64 @ucs2lib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %ucs2lib_rfind_char.exit

bb.ap:                                            ; preds = %bb.an
  %i.ej = tail call fastcc i64 @ucs2lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs2lib_rfind_char.exit

bb.aq:                                            ; preds = %bb.am
  %i.ek = tail call fastcc i64 @ucs2lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs2lib_rfind_char.exit

bb.ar:                                            ; preds = %bb.y
  %i.el = add nsw i64 %3, -1                      ; 9 uses
  %i.em = load i16, ptr %2, align 2, !tbaa !240   ; 4 uses
  %i.en = and i16 %i.em, 63
  %i.eo = zext nneg i16 %i.en to i64
  %i.ep = shl nuw i64 1, %i.eo                    ; 2 uses
  %min.iters.check148 = icmp ult i64 %3, 7
  br i1 %min.iters.check148, label %.lr.ph.i71.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %bb.ar
  %n.vec150 = and i64 %i.el, -4                   ; 2 uses
  %i.eq = and i64 %i.el, 3
  %i.er = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ep, i64 0
  %broadcast.splatinsert151 = insertelement <2 x i16> poison, i16 %i.em, i64 0
  %broadcast.splat152 = shufflevector <2 x i16> %broadcast.splatinsert151, <2 x i16> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert153 = insertelement <2 x i64> poison, i64 %i.el, i64 0
  %broadcast.splat154 = shufflevector <2 x i64> %broadcast.splatinsert153, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.es = add nsw <2 x i64> %broadcast.splat154, <i64 0, i64 -1>
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph149
  %index156 = phi i64 [ 0, %vector.ph149 ], [ %index.next167, %vector.body155 ] ; 2 uses
  %vec.phi157 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph149 ], [ %i.fh, %vector.body155 ]
  %vec.phi158 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph149 ], [ %i.fi, %vector.body155 ]
  %vec.phi159 = phi <2 x i1> [ zeroinitializer, %vector.ph149 ], [ %i.fj, %vector.body155 ]
  %vec.phi160 = phi <2 x i1> [ zeroinitializer, %vector.ph149 ], [ %i.fk, %vector.body155 ]
  %vec.ind161 = phi <2 x i64> [ %i.es, %vector.ph149 ], [ %vec.ind.next168, %vector.body155 ] ; 3 uses
  %vec.phi162 = phi <2 x i64> [ %i.er, %vector.ph149 ], [ %i.fd, %vector.body155 ]
  %vec.phi163 = phi <2 x i64> [ zeroinitializer, %vector.ph149 ], [ %i.fe, %vector.body155 ]
  %step.add = add nsw <2 x i64> %vec.ind161, splat (i64 -2)
  %i.et = sub i64 %i.el, %index156
  %i.eu = getelementptr [2 x i8], ptr %2, i64 %i.et ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 -2
  %i.ew = getelementptr i8, ptr %i.eu, i64 -6
  %wide.load164 = load <2 x i16>, ptr %i.ev, align 2, !tbaa !240
  %wide.load165 = load <2 x i16>, ptr %i.ew, align 2, !tbaa !240
  %reverse = shufflevector <2 x i16> %wide.load164, <2 x i16> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %reverse166 = shufflevector <2 x i16> %wide.load165, <2 x i16> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ex = and <2 x i16> %reverse, splat (i16 63)
  %i.ey = and <2 x i16> %reverse166, splat (i16 63)
  %i.ez = zext nneg <2 x i16> %i.ex to <2 x i64>
  %i.fa = zext nneg <2 x i16> %i.ey to <2 x i64>
end_hunk_3
begin_hunk_4_@unicode_sizeof:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 16
  %.val17.i = load i64, ptr %i.n, align 8, !tbaa !239
  %i.o = add i64 %.val17.i, 41
  br label %unicode_sizeof_impl.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0.i.ph = phi i64 [ 64, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 48
  %.val5.i.i = load ptr, ptr %i.p, align 8, !tbaa !236 ; 2 uses
  %.not4.i.i = icmp eq ptr %.val5.i.i, null
  br i1 %.not4.i.i, label %unicode_sizeof_impl.exit, label %bb.g

.thread:                                          ; preds = %bb.b
  %i.q = getelementptr i8, ptr %0, i64 16
  %.val16.i = load i64, ptr %i.q, align 8, !tbaa !239
  %i.r = add i64 %.val16.i, 1
  %i.s = lshr i32 %.val18.i, 2
  %i.t = and i32 %i.s, 7
  %i.u = zext nneg i32 %i.t to i64
  %i.v = mul i64 %i.r, %i.u
  %i.w = add i64 %i.v, 56                         ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 48
  %.val5.i.i4 = load ptr, ptr %i.x, align 8, !tbaa !236 ; 2 uses
  %.not4.i.i5 = icmp eq ptr %.val5.i.i4, null
  br i1 %.not4.i.i5, label %unicode_sizeof_impl.exit, label %.thread8

.thread8:                                         ; preds = %.thread
  %.0.v.i.i.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_HAS_UTF8_MEMORY.exit.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %0, i64 56
  %.val4.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !237
  br label %_PyUnicode_HAS_UTF8_MEMORY.exit.i

_PyUnicode_HAS_UTF8_MEMORY.exit.i:                ; preds = %bb.g, %.thread8
  %.0.i.ph613 = phi i64 [ %i.w, %.thread8 ], [ %.0.i.ph, %bb.g ] ; 2 uses
  %.val5.i.i711 = phi ptr [ %.val5.i.i4, %.thread8 ], [ %.val5.i.i, %bb.g ]
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %.thread8 ], [ %.val4.i.i.i, %bb.g ]
  %.not22.i = icmp eq ptr %.val5.i.i711, %.0.i.i.i
  br i1 %.not22.i, label %unicode_sizeof_impl.exit, label %bb.h

bb.h:                                             ; preds = %_PyUnicode_HAS_UTF8_MEMORY.exit.i
  %.0.in.i.i = getelementptr i8, ptr %0, i64 40
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !226
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
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !229
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val12.i = load i64, ptr %i.b, align 8, !tbaa !234
  %i.c = and i64 %.val12.i, 268435456
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 2379) #33, !inline_history !262
  br label %_PyUnicode_Copy.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val13.i = load i64, ptr %i.d, align 8, !tbaa !239 ; 2 uses
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
  %i.i = tail call ptr @PyUnicode_New(i64 noundef %.val13.i, i32 noundef %.0.i.i), !inline_history !262 ; 5 uses
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
  %.val4.i.i = load ptr, ptr %i.m, align 8, !tbaa !237
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
  %.val4.i23.i = load ptr, ptr %i.p, align 8, !tbaa !237
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
  store i32 0, ptr %i.a, align 4, !tbaa !43
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
  %.val4.i = load ptr, ptr %i.h, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ]
  %i.i = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.i, align 8, !tbaa !239 ; 3 uses
  %i.j = icmp ugt i64 %.val, 768614336404564650
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.k = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.261) #33
  br label %bb.o

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  %i.l = mul nuw nsw i64 %.val, 12
  %i.m = tail call ptr @PyMem_Malloc(i64 noundef %i.l) #33 ; 15 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @PyErr_NoMemory() #33
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.p = call i64 %1(i32 noundef %i.e, ptr noundef %.0.i, i64 noundef %.val, ptr noundef nonnull %i.m, ptr noundef nonnull %i.a) #33 ; 3 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !43
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
  %.val4.i86 = load ptr, ptr %i.x, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit87

_PyUnicode_DATA.exit87:                           ; preds = %bb.i, %bb.j
  %.0.i85 = phi ptr [ %.0.i.i84, %bb.i ], [ %.val4.i86, %bb.j ] ; 5 uses
  %i.y = lshr i32 %.val.i80, 2
  %i.z = and i32 %i.y, 7
  %.idx79 = shl i64 %i.p, 2                       ; 5 uses
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
  %.073.lcssa = phi ptr [ %.0.i85, %bb.k ], [ %i.bm, %.lr.ph98 ] ; 6 uses
  %.071.lcssa = phi ptr [ %i.m, %bb.k ], [ %i.bl, %.lr.ph98 ] ; 8 uses
  %i.ae = icmp ult ptr %.071.lcssa, %i.t
  br i1 %i.ae, label %.lr.ph103.preheader, label %.loopexit

.lr.ph103.preheader:                              ; preds = %.preheader
  %2 = ptrtoaddr ptr %i.m to i64
  %3 = ptrtoaddr ptr %.071.lcssa to i64
  %i.af = add i64 %.idx79, %2
  %i.ag = xor i64 %3, -1
  %i.ah = add i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = lshr i64 %i.ah, 2
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check128 = icmp ult i64 %i.ah, 140
  br i1 %min.iters.check128, label %.lr.ph103.preheader142, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph103.preheader
  %i.ak = lshr i64 %i.ah, 2
  %i.al = getelementptr i8, ptr %.073.lcssa, i64 %i.ak
  %scevgep = getelementptr i8, ptr %i.al, i64 1
  %i.am = and i64 %i.ah, -4
  %i.an = getelementptr i8, ptr %.071.lcssa, i64 %i.am
  %scevgep126 = getelementptr i8, ptr %i.an, i64 4
  %bound0 = icmp ult ptr %.073.lcssa, %scevgep126
  %bound1 = icmp ult ptr %.071.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph103.preheader142, label %vector.ph129

vector.ph129:                                     ; preds = %vector.memcheck
  %n.vec130 = and i64 %i.aj, 9223372036854775800  ; 4 uses
  %i.ao = shl i64 %n.vec130, 2
  %i.ap = getelementptr i8, ptr %.071.lcssa, i64 %i.ao
  %i.aq = getelementptr i8, ptr %.073.lcssa, i64 %n.vec130
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph129
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next137, %vector.body131 ] ; 3 uses
  %i.ar = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %.071.lcssa, i64 %i.ar ; 2 uses
  %next.gep134 = getelementptr i8, ptr %.073.lcssa, i64 %index132 ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep133, i64 16
  %wide.load135 = load <4 x i32>, ptr %next.gep133, align 4, !tbaa !43, !alias.scope !969
  %wide.load136 = load <4 x i32>, ptr %i.as, align 4, !tbaa !43, !alias.scope !969
  %i.at = trunc <4 x i32> %wide.load135 to <4 x i8>
  %i.au = trunc <4 x i32> %wide.load136 to <4 x i8>
  %i.av = getelementptr i8, ptr %next.gep134, i64 4
  store <4 x i8> %i.at, ptr %next.gep134, align 1, !tbaa !237, !alias.scope !970, !noalias !969
  store <4 x i8> %i.au, ptr %i.av, align 1, !tbaa !237, !alias.scope !970, !noalias !969
  %index.next137 = add nuw i64 %index132, 8       ; 2 uses
  %i.aw = icmp eq i64 %index.next137, %n.vec130
  br i1 %i.aw, label %middle.block138, label %vector.body131, !llvm.loop !963

middle.block138:                                  ; preds = %vector.body131
  %cmp.n139 = icmp eq i64 %i.aj, %n.vec130
  br i1 %cmp.n139, label %.loopexit, label %.lr.ph103.preheader142

.lr.ph103.preheader142:                           ; preds = %vector.memcheck, %.lr.ph103.preheader, %middle.block138
  %.172102.ph = phi ptr [ %.071.lcssa, %vector.memcheck ], [ %.071.lcssa, %.lr.ph103.preheader ], [ %i.ap, %middle.block138 ]
  %.174101.ph = phi ptr [ %.073.lcssa, %vector.memcheck ], [ %.073.lcssa, %.lr.ph103.preheader ], [ %i.aq, %middle.block138 ]
  br label %.lr.ph103

.lr.ph98:                                         ; preds = %bb.k, %.lr.ph98
  %.07197 = phi ptr [ %i.bl, %.lr.ph98 ], [ %i.m, %bb.k ] ; 5 uses
  %.07396 = phi ptr [ %i.bm, %.lr.ph98 ], [ %.0.i85, %bb.k ] ; 5 uses
  %i.ax = load i32, ptr %.07197, align 4, !tbaa !43
  %i.ay = trunc i32 %i.ax to i8
  store i8 %i.ay, ptr %.07396, align 1, !tbaa !237
  %i.az = getelementptr i8, ptr %.07197, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !43
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr i8, ptr %.07396, i64 1
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !237
  %i.bd = getelementptr i8, ptr %.07197, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !43
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr i8, ptr %.07396, i64 2
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !237
  %i.bh = getelementptr i8, ptr %.07197, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !43
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = getelementptr i8, ptr %.07396, i64 3
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !237
  %i.bl = getelementptr i8, ptr %.07197, i64 16   ; 3 uses
  %i.bm = getelementptr i8, ptr %.07396, i64 4    ; 2 uses
  %i.bn = icmp ult ptr %i.bl, %i.ac
  br i1 %i.bn, label %.lr.ph98, label %.preheader, !llvm.loop !964

.lr.ph103:                                        ; preds = %.lr.ph103.preheader142, %.lr.ph103
  %.172102 = phi ptr [ %i.bo, %.lr.ph103 ], [ %.172102.ph, %.lr.ph103.preheader142 ] ; 2 uses
  %.174101 = phi ptr [ %i.br, %.lr.ph103 ], [ %.174101.ph, %.lr.ph103.preheader142 ] ; 2 uses
  %i.bo = getelementptr i8, ptr %.172102, i64 4   ; 2 uses
  %i.bp = load i32, ptr %.172102, align 4, !tbaa !43
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr i8, ptr %.174101, i64 1
  store i8 %i.bq, ptr %.174101, align 1, !tbaa !237
  %i.bs = icmp ult ptr %i.bo, %i.t
  br i1 %i.bs, label %.lr.ph103, label %.loopexit, !llvm.loop !965

bb.l:                                             ; preds = %_PyUnicode_DATA.exit87
  %i.bt = ashr exact i64 %.idx79, 2
  %i.bu = and i64 %i.bt, -4
  %i.bv = getelementptr [4 x i8], ptr %i.m, i64 %i.bu ; 2 uses
  %i.bw = icmp ult ptr %i.m, %i.bv
  br i1 %i.bw, label %.lr.ph, label %.preheader88

.preheader88:                                     ; preds = %.lr.ph, %bb.l
  %.069.lcssa = phi ptr [ %.0.i85, %bb.l ], [ %i.ct, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %i.m, %bb.l ], [ %i.cs, %.lr.ph ] ; 5 uses
  %i.bx = icmp ult ptr %.0.lcssa, %i.t
  br i1 %i.bx, label %.lr.ph95.preheader, label %.loopexit

.lr.ph95.preheader:                               ; preds = %.preheader88
  %i.by = ptrtoaddr ptr %i.m to i64
  %i.bz = ptrtoaddr ptr %.0.lcssa to i64
  %i.ca = add i64 %.idx79, %i.by
  %i.cb = xor i64 %i.bz, -1
  %i.cc = add i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = lshr i64 %i.cc, 2
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cc, 28
  br i1 %min.iters.check, label %.lr.ph95.preheader144, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph95.preheader
  %n.vec = and i64 %i.ce, 9223372036854775800     ; 4 uses
  %i.cf = shl i64 %n.vec, 2
  %i.cg = getelementptr i8, ptr %.0.lcssa, i64 %i.cf
  %i.ch = shl nuw i64 %n.vec, 1
  %i.ci = getelementptr i8, ptr %.069.lcssa, i64 %i.ch
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cj = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %i.cj ; 2 uses
  %i.ck = shl i64 %index, 1
  %next.gep122 = getelementptr i8, ptr %.069.lcssa, i64 %i.ck ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !43
  %wide.load123 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !43
  %i.cm = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cn = trunc <4 x i32> %wide.load123 to <4 x i16>
  %i.co = getelementptr i8, ptr %next.gep122, i64 8
  store <4 x i16> %i.cm, ptr %next.gep122, align 2, !tbaa !240
  store <4 x i16> %i.cn, ptr %i.co, align 2, !tbaa !240
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !966

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ce, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph95.preheader144

.lr.ph95.preheader144:                            ; preds = %.lr.ph95.preheader, %middle.block
  %.194.ph = phi ptr [ %.0.lcssa, %.lr.ph95.preheader ], [ %i.cg, %middle.block ]
  %.17093.ph = phi ptr [ %.069.lcssa, %.lr.ph95.preheader ], [ %i.ci, %middle.block ]
  br label %.lr.ph95

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %.091 = phi ptr [ %i.cs, %.lr.ph ], [ %i.m, %bb.l ] ; 2 uses
  %.06990 = phi ptr [ %i.ct, %.lr.ph ], [ %.0.i85, %bb.l ] ; 2 uses
  %i.cq = load <4 x i32>, ptr %.091, align 4, !tbaa !43
  %i.cr = trunc <4 x i32> %i.cq to <4 x i16>
  store <4 x i16> %i.cr, ptr %.06990, align 2, !tbaa !240
  %i.cs = getelementptr i8, ptr %.091, i64 16     ; 3 uses
  %i.ct = getelementptr i8, ptr %.06990, i64 8    ; 2 uses
  %i.cu = icmp ult ptr %i.cs, %i.bv
  br i1 %i.cu, label %.lr.ph, label %.preheader88, !llvm.loop !967

.lr.ph95:                                         ; preds = %.lr.ph95.preheader144, %.lr.ph95
  %.194 = phi ptr [ %i.cv, %.lr.ph95 ], [ %.194.ph, %.lr.ph95.preheader144 ] ; 2 uses
  %.17093 = phi ptr [ %i.cy, %.lr.ph95 ], [ %.17093.ph, %.lr.ph95.preheader144 ] ; 2 uses
  %i.cv = getelementptr i8, ptr %.194, i64 4      ; 2 uses
  %i.cw = load i32, ptr %.194, align 4, !tbaa !43
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = getelementptr i8, ptr %.17093, i64 2
  store i16 %i.cx, ptr %.17093, align 2, !tbaa !240
  %i.cz = icmp ult ptr %i.cv, %i.t
  br i1 %i.cz, label %.lr.ph95, label %.loopexit, !llvm.loop !968

bb.m:                                             ; preds = %_PyUnicode_DATA.exit87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i85, ptr nonnull align 4 %i.m, i64 %.idx79, i1 false)
  br label %.loopexit

bb.n:                                             ; preds = %_PyUnicode_DATA.exit87
  unreachable

.loopexit:                                        ; preds = %.lr.ph95, %.lr.ph103, %middle.block, %middle.block138, %.preheader88, %.preheader, %bb.m, %bb.g
  call void @PyMem_Free(ptr noundef nonnull %i.m) #33
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.f, %bb.d
  %.075 = phi ptr [ null, %bb.d ], [ %i.o, %bb.f ], [ %i.r, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.075
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
  %i.b = load i8, ptr %1, align 1, !tbaa !237
  %i.c = zext i8 %i.b to i32
  br label %PyUnicode_READ.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i16, ptr %1, align 2, !tbaa !240
  %i.e = zext i16 %i.d to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4, !tbaa !43
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.b, %bb.c, %bb.d
end_hunk_4
