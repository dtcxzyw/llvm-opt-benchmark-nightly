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
  %.0.i.i286.pn = phi ptr [ %.0.i.i286, %bb.q ], [ %.val4.i288, %bb.r ] ; 2 uses
  %.0.i.i286.pn701 = ptrtoaddr ptr %.0.i.i286.pn to i64 ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.i.i286.pn, i64 %3 ; 10 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 %4     ; 2 uses
  %i.ar = and i64 %4, -4
  %i.as = getelementptr i8, ptr %i.ap, i64 %i.ar  ; 2 uses
  %i.at = icmp ult ptr %i.ap, %i.as
  br i1 %i.at, label %.lr.ph489.preheader, label %.preheader

.lr.ph489.preheader:                              ; preds = %_PyUnicode_DATA.exit297
  %i.au = add i64 %4, -4                          ; 2 uses
  %i.av = and i64 %i.au, 4
  %lcmp.mod766.not.not = icmp eq i64 %i.av, 0
  br i1 %lcmp.mod766.not.not, label %.lr.ph489.prol, label %.lr.ph489.prol.loopexit

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
  %.lcssa744.unr = phi ptr [ poison, %.lr.ph489.preheader ], [ %i.bk, %.lr.ph489.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph489.preheader ], [ %i.bl, %.lr.ph489.prol ]
  %i.bm = icmp ult i64 %i.au, 4
  br i1 %i.bm, label %.preheader, label %.lr.ph489

.preheader:                                       ; preds = %.lr.ph489.prol.loopexit, %.lr.ph489, %_PyUnicode_DATA.exit297
  %.0247.lcssa = phi ptr [ %i.am, %_PyUnicode_DATA.exit297 ], [ %.lcssa.unr, %.lr.ph489.prol.loopexit ], [ %i.dt, %.lr.ph489 ] ; 8 uses
  %.0245.lcssa = phi ptr [ %i.ap, %_PyUnicode_DATA.exit297 ], [ %.lcssa744.unr, %.lr.ph489.prol.loopexit ], [ %i.ds, %.lr.ph489 ] ; 10 uses
  %.0245.lcssa709 = ptrtoaddr ptr %.0245.lcssa to i64 ; 3 uses
  %i.bn = icmp ult ptr %.0245.lcssa, %i.aq
  br i1 %i.bn, label %iter.check725, label %ucs1lib_find_max_char.exit

iter.check725:                                    ; preds = %.preheader
  %i.bo = add i64 %4, %3
  %i.bp = add i64 %i.bo, %.0.i.i286.pn701
  %i.bq = sub i64 %i.bp, %.0245.lcssa709          ; 7 uses
  %min.iters.check704 = icmp ult i64 %i.bq, 4
  br i1 %min.iters.check704, label %.lr.ph494.preheader, label %vector.memcheck705

vector.memcheck705:                               ; preds = %iter.check725
  %i.br = add i64 %4, %3
  %i.bs = add i64 %i.br, %.0.i.i286.pn701         ; 2 uses
  %i.bt = sub i64 %i.bs, %.0245.lcssa709
  %i.bu = shl i64 %i.bt, 1
  %i.bv = getelementptr i8, ptr %.0247.lcssa, i64 %i.bu
  %i.bw = sub i64 %i.bs, %.0245.lcssa709
  %i.bx = getelementptr i8, ptr %.0245.lcssa, i64 %i.bw
  %bound0706 = icmp ult ptr %.0247.lcssa, %i.bx
  %bound1707 = icmp ult ptr %.0245.lcssa, %i.bv
  %found.conflict708 = and i1 %bound0706, %bound1707
  br i1 %found.conflict708, label %.lr.ph494.preheader, label %vector.main.loop.iter.check709

vector.main.loop.iter.check709:                   ; preds = %vector.memcheck705
  %min.iters.check710 = icmp ult i64 %i.bq, 16
  br i1 %min.iters.check710, label %vec.epilog.ph729, label %vector.ph711

vector.ph711:                                     ; preds = %vector.main.loop.iter.check709
  %i.by = and i64 %i.bq, 12
  %n.vec712 = and i64 %i.bq, -16                  ; 5 uses
  %i.bz = getelementptr i8, ptr %.0245.lcssa, i64 %n.vec712
  %i.ca = shl i64 %n.vec712, 1
  %i.cb = getelementptr i8, ptr %.0247.lcssa, i64 %i.ca
  br label %vector.body713

vector.body713:                                   ; preds = %vector.ph711, %vector.body713
  %index714 = phi i64 [ 0, %vector.ph711 ], [ %index.next719, %vector.body713 ] ; 3 uses
  %next.gep715 = getelementptr i8, ptr %.0245.lcssa, i64 %index714 ; 2 uses
  %i.cc = shl i64 %index714, 1
  %next.gep716 = getelementptr i8, ptr %.0247.lcssa, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep715, i64 8
  %wide.load717 = load <8 x i8>, ptr %next.gep715, align 1, !tbaa !237, !alias.scope !374
  %wide.load718 = load <8 x i8>, ptr %i.cd, align 1, !tbaa !237, !alias.scope !374
  %i.ce = zext <8 x i8> %wide.load717 to <8 x i16>
  %i.cf = zext <8 x i8> %wide.load718 to <8 x i16>
  %i.cg = getelementptr i8, ptr %next.gep716, i64 16
  store <8 x i16> %i.ce, ptr %next.gep716, align 2, !tbaa !240, !alias.scope !375, !noalias !374
  store <8 x i16> %i.cf, ptr %i.cg, align 2, !tbaa !240, !alias.scope !375, !noalias !374
  %index.next719 = add nuw i64 %index714, 16      ; 2 uses
  %i.ch = icmp eq i64 %index.next719, %n.vec712
  br i1 %i.ch, label %middle.block720, label %vector.body713, !llvm.loop !344

middle.block720:                                  ; preds = %vector.body713
  %cmp.n721 = icmp eq i64 %i.bq, %n.vec712
  br i1 %cmp.n721, label %ucs1lib_find_max_char.exit, label %vec.epilog.iter.check727

vec.epilog.iter.check727:                         ; preds = %middle.block720
  %min.epilog.iters.check728 = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check728, label %.lr.ph494.preheader, label %vec.epilog.ph729, !prof !244

vec.epilog.ph729:                                 ; preds = %vector.main.loop.iter.check709, %vec.epilog.iter.check727
  %vec.epilog.resume.val722 = phi i64 [ %n.vec712, %vec.epilog.iter.check727 ], [ 0, %vector.main.loop.iter.check709 ]
  %n.vec730 = and i64 %i.bq, -4                   ; 4 uses
  %i.ci = getelementptr i8, ptr %.0245.lcssa, i64 %n.vec730
  %i.cj = shl i64 %n.vec730, 1
  %i.ck = getelementptr i8, ptr %.0247.lcssa, i64 %i.cj
  br label %vec.epilog.vector.body731

vec.epilog.vector.body731:                        ; preds = %vec.epilog.vector.body731, %vec.epilog.ph729
  %index732 = phi i64 [ %vec.epilog.resume.val722, %vec.epilog.ph729 ], [ %index.next736, %vec.epilog.vector.body731 ] ; 3 uses
  %next.gep733 = getelementptr i8, ptr %.0245.lcssa, i64 %index732
  %i.cl = shl i64 %index732, 1
  %next.gep734 = getelementptr i8, ptr %.0247.lcssa, i64 %i.cl
  %wide.load735 = load <4 x i8>, ptr %next.gep733, align 1, !tbaa !237, !alias.scope !374
  %i.cm = zext <4 x i8> %wide.load735 to <4 x i16>
  store <4 x i16> %i.cm, ptr %next.gep734, align 2, !tbaa !240, !alias.scope !375, !noalias !374
  %index.next736 = add nuw i64 %index732, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next736, %n.vec730
  br i1 %i.cn, label %vec.epilog.middle.block737, label %vec.epilog.vector.body731, !llvm.loop !345

vec.epilog.middle.block737:                       ; preds = %vec.epilog.vector.body731
  %cmp.n738 = icmp eq i64 %i.bq, %n.vec730
  br i1 %cmp.n738, label %ucs1lib_find_max_char.exit, label %.lr.ph494.preheader

.lr.ph494.preheader:                              ; preds = %iter.check725, %vector.memcheck705, %vec.epilog.iter.check727, %vec.epilog.middle.block737
  %.1246493.ph = phi ptr [ %.0245.lcssa, %iter.check725 ], [ %.0245.lcssa, %vector.memcheck705 ], [ %i.bz, %vec.epilog.iter.check727 ], [ %i.ci, %vec.epilog.middle.block737 ]
  %.1248492.ph = phi ptr [ %.0247.lcssa, %iter.check725 ], [ %.0247.lcssa, %vector.memcheck705 ], [ %i.cb, %vec.epilog.iter.check727 ], [ %i.ck, %vec.epilog.middle.block737 ]
  br label %.lr.ph494

.lr.ph489:                                        ; preds = %.lr.ph489.prol.loopexit, %.lr.ph489
  %.0245488 = phi ptr [ %i.ds, %.lr.ph489 ], [ %.0245488.unr, %.lr.ph489.prol.loopexit ] ; 9 uses
  %.0247487 = phi ptr [ %i.dt, %.lr.ph489 ], [ %.0247487.unr, %.lr.ph489.prol.loopexit ] ; 9 uses
  %i.co = load i8, ptr %.0245488, align 1, !tbaa !237
  %i.cp = zext i8 %i.co to i16
  store i16 %i.cp, ptr %.0247487, align 2, !tbaa !240
  %i.cq = getelementptr i8, ptr %.0245488, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !237
  %i.cs = zext i8 %i.cr to i16
  %i.ct = getelementptr i8, ptr %.0247487, i64 2
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !240
  %i.cu = getelementptr i8, ptr %.0245488, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !237
  %i.cw = zext i8 %i.cv to i16
  %i.cx = getelementptr i8, ptr %.0247487, i64 4
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !240
  %i.cy = getelementptr i8, ptr %.0245488, i64 3
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !237
  %i.da = zext i8 %i.cz to i16
  %i.db = getelementptr i8, ptr %.0247487, i64 6
  store i16 %i.da, ptr %i.db, align 2, !tbaa !240
  %i.dc = getelementptr i8, ptr %.0245488, i64 4
  %i.dd = getelementptr i8, ptr %.0247487, i64 8
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !237
  %i.df = zext i8 %i.de to i16
  store i16 %i.df, ptr %i.dd, align 2, !tbaa !240
  %i.dg = getelementptr i8, ptr %.0245488, i64 5
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !237
  %i.di = zext i8 %i.dh to i16
  %i.dj = getelementptr i8, ptr %.0247487, i64 10
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !240
  %i.dk = getelementptr i8, ptr %.0245488, i64 6
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !237
  %i.dm = zext i8 %i.dl to i16
  %i.dn = getelementptr i8, ptr %.0247487, i64 12
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !240
  %i.do = getelementptr i8, ptr %.0245488, i64 7
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !237
  %i.dq = zext i8 %i.dp to i16
  %i.dr = getelementptr i8, ptr %.0247487, i64 14
  store i16 %i.dq, ptr %i.dr, align 2, !tbaa !240
  %i.ds = getelementptr i8, ptr %.0245488, i64 8  ; 3 uses
  %i.dt = getelementptr i8, ptr %.0247487, i64 16 ; 2 uses
  %i.du = icmp ult ptr %i.ds, %i.as
  br i1 %i.du, label %.lr.ph489, label %.preheader, !llvm.loop !346

.lr.ph494:                                        ; preds = %.lr.ph494.preheader, %.lr.ph494
  %.1246493 = phi ptr [ %i.dv, %.lr.ph494 ], [ %.1246493.ph, %.lr.ph494.preheader ] ; 2 uses
  %.1248492 = phi ptr [ %i.dy, %.lr.ph494 ], [ %.1248492.ph, %.lr.ph494.preheader ] ; 2 uses
  %i.dv = getelementptr i8, ptr %.1246493, i64 1  ; 2 uses
  %i.dw = load i8, ptr %.1246493, align 1, !tbaa !237
  %i.dx = zext i8 %i.dw to i16
  %i.dy = getelementptr i8, ptr %.1248492, i64 2
  store i16 %i.dx, ptr %.1248492, align 2, !tbaa !240
  %i.dz = icmp ult ptr %i.dv, %i.aq
  br i1 %i.dz, label %.lr.ph494, label %ucs1lib_find_max_char.exit, !llvm.loop !347

bb.s:                                             ; preds = %bb.m
  %i.ea = icmp eq i32 %i.l, 4                     ; 2 uses
  %or.cond4 = and i1 %i.ai, %i.ea
  br i1 %or.cond4, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  br i1 %.not.i266, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eb = and i32 %i.j, 64
  %.not.i.i300 = icmp eq i32 %i.eb, 0
  %.0.v.i.i301 = select i1 %.not.i.i300, i64 56, i64 40
  %.0.i.i302 = getelementptr i8, ptr %0, i64 %.0.v.i.i301
  br label %_PyUnicode_DATA.exit305

bb.v:                                             ; preds = %bb.t
  %i.ec = getelementptr i8, ptr %0, i64 56
  %.val4.i304 = load ptr, ptr %i.ec, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit305

_PyUnicode_DATA.exit305:                          ; preds = %bb.u, %bb.v
  %.0.i303 = phi ptr [ %.0.i.i302, %bb.u ], [ %.val4.i304, %bb.v ]
  %i.ed = getelementptr [4 x i8], ptr %.0.i303, i64 %1 ; 7 uses
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_PyUnicode_DATA.exit305
  %i.ee = and i32 %i.c, 64
  %.not.i.i308 = icmp eq i32 %i.ee, 0
  %.0.v.i.i309 = select i1 %.not.i.i308, i64 56, i64 40
  %.0.i.i310 = getelementptr i8, ptr %2, i64 %.0.v.i.i309
  br label %_PyUnicode_DATA.exit321

bb.x:                                             ; preds = %_PyUnicode_DATA.exit305
  %i.ef = getelementptr i8, ptr %2, i64 56
  %.val4.i312 = load ptr, ptr %i.ef, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit321

_PyUnicode_DATA.exit321:                          ; preds = %bb.w, %bb.x
  %.0.i.i310.pn = phi ptr [ %.0.i.i310, %bb.w ], [ %.val4.i312, %bb.x ] ; 2 uses
  %.0.i.i310.pn682 = ptrtoaddr ptr %.0.i.i310.pn to i64
  %i.eg = getelementptr i8, ptr %.0.i.i310.pn, i64 %3 ; 10 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 %4     ; 2 uses
  %i.ei = and i64 %4, -4
  %i.ej = getelementptr i8, ptr %i.eg, i64 %i.ei  ; 2 uses
  %i.ek = icmp ult ptr %i.eg, %i.ej
  br i1 %i.ek, label %.lr.ph481.preheader, label %.preheader432

.lr.ph481.preheader:                              ; preds = %_PyUnicode_DATA.exit321
  %i.el = add i64 %4, -4                          ; 2 uses
  %i.em = and i64 %i.el, 4
  %lcmp.mod.not.not = icmp eq i64 %i.em, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph481.prol, label %.lr.ph481.prol.loopexit

.lr.ph481.prol:                                   ; preds = %.lr.ph481.preheader
  %i.en = load i8, ptr %i.eg, align 1, !tbaa !237
  %i.eo = zext i8 %i.en to i32
  store i32 %i.eo, ptr %i.ed, align 4, !tbaa !43
  %i.ep = getelementptr i8, ptr %i.eg, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !237
  %i.er = zext i8 %i.eq to i32
  %i.es = getelementptr i8, ptr %i.ed, i64 4
  store i32 %i.er, ptr %i.es, align 4, !tbaa !43
  %i.et = getelementptr i8, ptr %i.eg, i64 2
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !237
  %i.ev = zext i8 %i.eu to i32
  %i.ew = getelementptr i8, ptr %i.ed, i64 8
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !43
  %i.ex = getelementptr i8, ptr %i.eg, i64 3
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !237
  %i.ez = zext i8 %i.ey to i32
  %i.fa = getelementptr i8, ptr %i.ed, i64 12
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !43
  %i.fb = getelementptr i8, ptr %i.eg, i64 4      ; 2 uses
  %i.fc = getelementptr i8, ptr %i.ed, i64 16     ; 2 uses
  br label %.lr.ph481.prol.loopexit

.lr.ph481.prol.loopexit:                          ; preds = %.lr.ph481.prol, %.lr.ph481.preheader
  %.0241480.unr = phi ptr [ %i.eg, %.lr.ph481.preheader ], [ %i.fb, %.lr.ph481.prol ]
  %.0243479.unr = phi ptr [ %i.ed, %.lr.ph481.preheader ], [ %i.fc, %.lr.ph481.prol ]
  %.lcssa748.unr = phi ptr [ poison, %.lr.ph481.preheader ], [ %i.fb, %.lr.ph481.prol ]
  %.lcssa747.unr = phi ptr [ poison, %.lr.ph481.preheader ], [ %i.fc, %.lr.ph481.prol ]
  %i.fd = icmp ult i64 %i.el, 4
  br i1 %i.fd, label %.preheader432, label %.lr.ph481

.preheader432:                                    ; preds = %.lr.ph481.prol.loopexit, %.lr.ph481, %_PyUnicode_DATA.exit321
  %.0243.lcssa = phi ptr [ %i.ed, %_PyUnicode_DATA.exit321 ], [ %.lcssa747.unr, %.lr.ph481.prol.loopexit ], [ %i.ha, %.lr.ph481 ] ; 6 uses
  %.0241.lcssa = phi ptr [ %i.eg, %_PyUnicode_DATA.exit321 ], [ %.lcssa748.unr, %.lr.ph481.prol.loopexit ], [ %i.gz, %.lr.ph481 ] ; 8 uses
  %.0241.lcssa681 = ptrtoaddr ptr %.0241.lcssa to i64 ; 2 uses
  %i.fe = icmp ult ptr %.0241.lcssa, %i.eh
  br i1 %i.fe, label %.lr.ph486.preheader, label %ucs1lib_find_max_char.exit

.lr.ph486.preheader:                              ; preds = %.preheader432
  %i.ff = add i64 %4, %3
  %i.fg = add i64 %i.ff, %.0.i.i310.pn682         ; 2 uses
  %i.fh = sub i64 %i.fg, %.0241.lcssa681          ; 4 uses
  %min.iters.check676 = icmp ult i64 %i.fh, 32
  br i1 %min.iters.check676, label %.lr.ph486.preheader745, label %vector.memcheck677

vector.memcheck677:                               ; preds = %.lr.ph486.preheader
  %i.fi = sub i64 %i.fg, %.0241.lcssa681
  %i.fj = shl i64 %i.fi, 2
  %i.fk = getelementptr i8, ptr %.0243.lcssa, i64 %i.fj
  %i.fl = getelementptr i8, ptr %.0241.lcssa, i64 %i.fh
  %bound0678 = icmp ult ptr %.0243.lcssa, %i.fl
  %bound1679 = icmp ult ptr %.0241.lcssa, %i.fk
  %found.conflict680 = and i1 %bound0678, %bound1679
  br i1 %found.conflict680, label %.lr.ph486.preheader745, label %vector.ph681

vector.ph681:                                     ; preds = %vector.memcheck677
  %n.vec682 = and i64 %i.fh, -8                   ; 4 uses
  %i.fm = getelementptr i8, ptr %.0241.lcssa, i64 %n.vec682
  %i.fn = shl i64 %n.vec682, 2
  %i.fo = getelementptr i8, ptr %.0243.lcssa, i64 %i.fn
  br label %vector.body683

vector.body683:                                   ; preds = %vector.body683, %vector.ph681
  %index684 = phi i64 [ 0, %vector.ph681 ], [ %index.next689, %vector.body683 ] ; 3 uses
  %next.gep685 = getelementptr i8, ptr %.0241.lcssa, i64 %index684 ; 2 uses
  %i.fp = shl i64 %index684, 2
  %next.gep686 = getelementptr i8, ptr %.0243.lcssa, i64 %i.fp ; 2 uses
  %i.fq = getelementptr i8, ptr %next.gep685, i64 4
  %wide.load687 = load <4 x i8>, ptr %next.gep685, align 1, !tbaa !237, !alias.scope !376
  %wide.load688 = load <4 x i8>, ptr %i.fq, align 1, !tbaa !237, !alias.scope !376
  %i.fr = zext <4 x i8> %wide.load687 to <4 x i32>
  %i.fs = zext <4 x i8> %wide.load688 to <4 x i32>
  %i.ft = getelementptr i8, ptr %next.gep686, i64 16
  store <4 x i32> %i.fr, ptr %next.gep686, align 4, !tbaa !43, !alias.scope !377, !noalias !376
  store <4 x i32> %i.fs, ptr %i.ft, align 4, !tbaa !43, !alias.scope !377, !noalias !376
  %index.next689 = add nuw i64 %index684, 8       ; 2 uses
  %i.fu = icmp eq i64 %index.next689, %n.vec682
  br i1 %i.fu, label %middle.block690, label %vector.body683, !llvm.loop !351

middle.block690:                                  ; preds = %vector.body683
  %cmp.n691 = icmp eq i64 %i.fh, %n.vec682
  br i1 %cmp.n691, label %ucs1lib_find_max_char.exit, label %.lr.ph486.preheader745

.lr.ph486.preheader745:                           ; preds = %vector.memcheck677, %.lr.ph486.preheader, %middle.block690
  %.1242485.ph = phi ptr [ %.0241.lcssa, %vector.memcheck677 ], [ %.0241.lcssa, %.lr.ph486.preheader ], [ %i.fm, %middle.block690 ]
  %.1244484.ph = phi ptr [ %.0243.lcssa, %vector.memcheck677 ], [ %.0243.lcssa, %.lr.ph486.preheader ], [ %i.fo, %middle.block690 ]
  br label %.lr.ph486

.lr.ph481:                                        ; preds = %.lr.ph481.prol.loopexit, %.lr.ph481
  %.0241480 = phi ptr [ %i.gz, %.lr.ph481 ], [ %.0241480.unr, %.lr.ph481.prol.loopexit ] ; 9 uses
  %.0243479 = phi ptr [ %i.ha, %.lr.ph481 ], [ %.0243479.unr, %.lr.ph481.prol.loopexit ] ; 9 uses
  %i.fv = load i8, ptr %.0241480, align 1, !tbaa !237
  %i.fw = zext i8 %i.fv to i32
  store i32 %i.fw, ptr %.0243479, align 4, !tbaa !43
  %i.fx = getelementptr i8, ptr %.0241480, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !237
  %i.fz = zext i8 %i.fy to i32
  %i.ga = getelementptr i8, ptr %.0243479, i64 4
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !43
  %i.gb = getelementptr i8, ptr %.0241480, i64 2
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !237
  %i.gd = zext i8 %i.gc to i32
  %i.ge = getelementptr i8, ptr %.0243479, i64 8
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !43
  %i.gf = getelementptr i8, ptr %.0241480, i64 3
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !237
  %i.gh = zext i8 %i.gg to i32
  %i.gi = getelementptr i8, ptr %.0243479, i64 12
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !43
  %i.gj = getelementptr i8, ptr %.0241480, i64 4
  %i.gk = getelementptr i8, ptr %.0243479, i64 16
  %i.gl = load i8, ptr %i.gj, align 1, !tbaa !237
  %i.gm = zext i8 %i.gl to i32
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !43
  %i.gn = getelementptr i8, ptr %.0241480, i64 5
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !237
  %i.gp = zext i8 %i.go to i32
  %i.gq = getelementptr i8, ptr %.0243479, i64 20
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !43
  %i.gr = getelementptr i8, ptr %.0241480, i64 6
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !237
  %i.gt = zext i8 %i.gs to i32
  %i.gu = getelementptr i8, ptr %.0243479, i64 24
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !43
  %i.gv = getelementptr i8, ptr %.0241480, i64 7
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !237
  %i.gx = zext i8 %i.gw to i32
  %i.gy = getelementptr i8, ptr %.0243479, i64 28
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !43
  %i.gz = getelementptr i8, ptr %.0241480, i64 8  ; 3 uses
  %i.ha = getelementptr i8, ptr %.0243479, i64 32 ; 2 uses
  %i.hb = icmp ult ptr %i.gz, %i.ej
  br i1 %i.hb, label %.lr.ph481, label %.preheader432, !llvm.loop !352

.lr.ph486:                                        ; preds = %.lr.ph486.preheader745, %.lr.ph486
  %.1242485 = phi ptr [ %i.hc, %.lr.ph486 ], [ %.1242485.ph, %.lr.ph486.preheader745 ] ; 2 uses
  %.1244484 = phi ptr [ %i.hf, %.lr.ph486 ], [ %.1244484.ph, %.lr.ph486.preheader745 ] ; 2 uses
  %i.hc = getelementptr i8, ptr %.1242485, i64 1  ; 2 uses
  %i.hd = load i8, ptr %.1242485, align 1, !tbaa !237
  %i.he = zext i8 %i.hd to i32
  %i.hf = getelementptr i8, ptr %.1244484, i64 4
  store i32 %i.he, ptr %.1244484, align 4, !tbaa !43
  %i.hg = icmp ult ptr %i.hc, %i.eh
  br i1 %i.hg, label %.lr.ph486, label %ucs1lib_find_max_char.exit, !llvm.loop !353

bb.y:                                             ; preds = %bb.s
  %i.hh = icmp eq i32 %i.e, 2                     ; 2 uses
  %or.cond6 = and i1 %i.hh, %i.ea
  br i1 %or.cond6, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  br i1 %.not.i266, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hi = and i32 %i.j, 64
  %.not.i.i324 = icmp eq i32 %i.hi, 0
  %.0.v.i.i325 = select i1 %.not.i.i324, i64 56, i64 40
  %.0.i.i326 = getelementptr i8, ptr %0, i64 %.0.v.i.i325
  br label %_PyUnicode_DATA.exit329

bb.ab:                                            ; preds = %bb.z
  %i.hj = getelementptr i8, ptr %0, i64 56
  %.val4.i328 = load ptr, ptr %i.hj, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit329

_PyUnicode_DATA.exit329:                          ; preds = %bb.aa, %bb.ab
  %.0.i327 = phi ptr [ %.0.i.i326, %bb.aa ], [ %.val4.i328, %bb.ab ]
  %i.hk = getelementptr [4 x i8], ptr %.0.i327, i64 %1 ; 2 uses
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_PyUnicode_DATA.exit329
  %i.hl = and i32 %i.c, 64
  %.not.i.i332 = icmp eq i32 %i.hl, 0
  %.0.v.i.i333 = select i1 %.not.i.i332, i64 56, i64 40
  %.0.i.i334 = getelementptr i8, ptr %2, i64 %.0.v.i.i333
  br label %_PyUnicode_DATA.exit345

bb.ad:                                            ; preds = %_PyUnicode_DATA.exit329
  %i.hm = getelementptr i8, ptr %2, i64 56
  %.val4.i336 = load ptr, ptr %i.hm, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit345

_PyUnicode_DATA.exit345:                          ; preds = %bb.ac, %bb.ad
  %.0.i.i334.pn = phi ptr [ %.0.i.i334, %bb.ac ], [ %.val4.i336, %bb.ad ] ; 2 uses
  %.0.i.i334.pn658 = ptrtoaddr ptr %.0.i.i334.pn to i64
  %i.hn = getelementptr [2 x i8], ptr %.0.i.i334.pn, i64 %3 ; 5 uses
  %i.ho = getelementptr [2 x i8], ptr %i.hn, i64 %4 ; 2 uses
  %.idx553 = shl i64 %4, 1                        ; 2 uses
  %i.hp = ashr exact i64 %.idx553, 1
  %i.hq = and i64 %i.hp, -4
  %i.hr = getelementptr [2 x i8], ptr %i.hn, i64 %i.hq ; 2 uses
  %i.hs = icmp ult ptr %i.hn, %i.hr
  br i1 %i.hs, label %.lr.ph473, label %.preheader434

.preheader434:                                    ; preds = %.lr.ph473, %_PyUnicode_DATA.exit345
  %.0239.lcssa = phi ptr [ %i.hk, %_PyUnicode_DATA.exit345 ], [ %i.iq, %.lr.ph473 ] ; 3 uses
  %.0237.lcssa = phi ptr [ %i.hn, %_PyUnicode_DATA.exit345 ], [ %i.ip, %.lr.ph473 ] ; 5 uses
  %i.ht = icmp ult ptr %.0237.lcssa, %i.ho
  br i1 %i.ht, label %.lr.ph478.preheader, label %ucs1lib_find_max_char.exit

.lr.ph478.preheader:                              ; preds = %.preheader434
  %i.hu = ptrtoaddr ptr %.0237.lcssa to i64
  %i.hv = shl i64 %3, 1
  %i.hw = add i64 %.idx553, %.0.i.i334.pn658
  %i.hx = add i64 %i.hw, %i.hv
  %i.hy = xor i64 %i.hu, -1
  %i.hz = add i64 %i.hx, %i.hy                    ; 2 uses
  %i.ia = lshr i64 %i.hz, 1
  %i.ib = add nuw i64 %i.ia, 1                    ; 2 uses
  %min.iters.check654 = icmp ult i64 %i.hz, 14
  br i1 %min.iters.check654, label %.lr.ph478.preheader749, label %vector.ph655

vector.ph655:                                     ; preds = %.lr.ph478.preheader
  %n.vec656 = and i64 %i.ib, -8                   ; 4 uses
  %i.ic = shl i64 %n.vec656, 1
  %i.id = getelementptr i8, ptr %.0237.lcssa, i64 %i.ic
  %i.ie = shl i64 %n.vec656, 2
  %i.if = getelementptr i8, ptr %.0239.lcssa, i64 %i.ie
  br label %vector.body657

vector.body657:                                   ; preds = %vector.body657, %vector.ph655
  %index658 = phi i64 [ 0, %vector.ph655 ], [ %index.next663, %vector.body657 ] ; 3 uses
  %i.ig = shl i64 %index658, 1
  %next.gep659 = getelementptr i8, ptr %.0237.lcssa, i64 %i.ig ; 2 uses
  %i.ih = shl i64 %index658, 2
  %next.gep660 = getelementptr i8, ptr %.0239.lcssa, i64 %i.ih ; 2 uses
  %i.ii = getelementptr i8, ptr %next.gep659, i64 8
  %wide.load661 = load <4 x i16>, ptr %next.gep659, align 2, !tbaa !240
  %wide.load662 = load <4 x i16>, ptr %i.ii, align 2, !tbaa !240
  %i.ij = zext <4 x i16> %wide.load661 to <4 x i32>
  %i.ik = zext <4 x i16> %wide.load662 to <4 x i32>
  %i.il = getelementptr i8, ptr %next.gep660, i64 16
  store <4 x i32> %i.ij, ptr %next.gep660, align 4, !tbaa !43
  store <4 x i32> %i.ik, ptr %i.il, align 4, !tbaa !43
  %index.next663 = add nuw i64 %index658, 8       ; 2 uses
  %i.im = icmp eq i64 %index.next663, %n.vec656
  br i1 %i.im, label %middle.block664, label %vector.body657, !llvm.loop !354

middle.block664:                                  ; preds = %vector.body657
  %cmp.n665 = icmp eq i64 %i.ib, %n.vec656
  br i1 %cmp.n665, label %ucs1lib_find_max_char.exit, label %.lr.ph478.preheader749

.lr.ph478.preheader749:                           ; preds = %.lr.ph478.preheader, %middle.block664
  %.1238477.ph = phi ptr [ %.0237.lcssa, %.lr.ph478.preheader ], [ %i.id, %middle.block664 ]
  %.1240476.ph = phi ptr [ %.0239.lcssa, %.lr.ph478.preheader ], [ %i.if, %middle.block664 ]
  br label %.lr.ph478

.lr.ph473:                                        ; preds = %_PyUnicode_DATA.exit345, %.lr.ph473
  %.0237472 = phi ptr [ %i.ip, %.lr.ph473 ], [ %i.hn, %_PyUnicode_DATA.exit345 ] ; 2 uses
  %.0239471 = phi ptr [ %i.iq, %.lr.ph473 ], [ %i.hk, %_PyUnicode_DATA.exit345 ] ; 2 uses
  %i.in = load <4 x i16>, ptr %.0237472, align 2, !tbaa !240
  %i.io = zext <4 x i16> %i.in to <4 x i32>
  store <4 x i32> %i.io, ptr %.0239471, align 4, !tbaa !43
  %i.ip = getelementptr i8, ptr %.0237472, i64 8  ; 3 uses
  %i.iq = getelementptr i8, ptr %.0239471, i64 16 ; 2 uses
  %i.ir = icmp ult ptr %i.ip, %i.hr
  br i1 %i.ir, label %.lr.ph473, label %.preheader434, !llvm.loop !355

.lr.ph478:                                        ; preds = %.lr.ph478.preheader749, %.lr.ph478
  %.1238477 = phi ptr [ %i.is, %.lr.ph478 ], [ %.1238477.ph, %.lr.ph478.preheader749 ] ; 2 uses
  %.1240476 = phi ptr [ %i.iv, %.lr.ph478 ], [ %.1240476.ph, %.lr.ph478.preheader749 ] ; 2 uses
  %i.is = getelementptr i8, ptr %.1238477, i64 2  ; 2 uses
  %i.it = load i16, ptr %.1238477, align 2, !tbaa !240
  %i.iu = zext i16 %i.it to i32
  %i.iv = getelementptr i8, ptr %.1240476, i64 4
  store i32 %i.iu, ptr %.1240476, align 4, !tbaa !43
  %i.iw = icmp ult ptr %i.is, %i.ho
  br i1 %i.iw, label %.lr.ph478, label %ucs1lib_find_max_char.exit, !llvm.loop !356

bb.ae:                                            ; preds = %bb.y
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.af, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.af:                                            ; preds = %bb.ae
  %i.ix = icmp eq i32 %i.l, 1                     ; 2 uses
  %or.cond8 = and i1 %i.hh, %i.ix
  br i1 %or.cond8, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  br i1 %.not.i266, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.iy = and i32 %i.j, 64
  %.not.i.i348 = icmp eq i32 %i.iy, 0
  %.0.v.i.i349 = select i1 %.not.i.i348, i64 56, i64 40
  %.0.i.i350 = getelementptr i8, ptr %0, i64 %.0.v.i.i349
  br label %_PyUnicode_DATA.exit353

bb.ai:                                            ; preds = %bb.ag
  %i.iz = getelementptr i8, ptr %0, i64 56
  %.val4.i352 = load ptr, ptr %i.iz, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit353

_PyUnicode_DATA.exit353:                          ; preds = %bb.ah, %bb.ai
  %.0.i351 = phi ptr [ %.0.i.i350, %bb.ah ], [ %.val4.i352, %bb.ai ]
  %i.ja = getelementptr i8, ptr %.0.i351, i64 %1  ; 2 uses
  br i1 %.not.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_PyUnicode_DATA.exit353
  %i.jb = and i32 %i.c, 64
  %.not.i.i356 = icmp eq i32 %i.jb, 0
  %.0.v.i.i357 = select i1 %.not.i.i356, i64 56, i64 40
  %.0.i.i358 = getelementptr i8, ptr %2, i64 %.0.v.i.i357
  br label %_PyUnicode_DATA.exit369

bb.ak:                                            ; preds = %_PyUnicode_DATA.exit353
  %i.jc = getelementptr i8, ptr %2, i64 56
  %.val4.i360 = load ptr, ptr %i.jc, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit369

_PyUnicode_DATA.exit369:                          ; preds = %bb.aj, %bb.ak
  %.0.i.i358.pn = phi ptr [ %.0.i.i358, %bb.aj ], [ %.val4.i360, %bb.ak ] ; 2 uses
  %.0.i.i358.pn622 = ptrtoaddr ptr %.0.i.i358.pn to i64 ; 2 uses
  %i.jd = getelementptr [2 x i8], ptr %.0.i.i358.pn, i64 %3 ; 5 uses
  %i.je = getelementptr [2 x i8], ptr %i.jd, i64 %4 ; 2 uses
  %.idx552 = shl i64 %4, 1                        ; 3 uses
  %i.jf = ashr exact i64 %.idx552, 1
  %i.jg = and i64 %i.jf, -4
  %i.jh = getelementptr [2 x i8], ptr %i.jd, i64 %i.jg ; 2 uses
  %i.ji = icmp ult ptr %i.jd, %i.jh
  br i1 %i.ji, label %.lr.ph465, label %.preheader436

.preheader436:                                    ; preds = %.lr.ph465, %_PyUnicode_DATA.exit369
  %.0235.lcssa = phi ptr [ %i.ja, %_PyUnicode_DATA.exit369 ], [ %i.lh, %.lr.ph465 ] ; 8 uses
  %.0233.lcssa = phi ptr [ %i.jd, %_PyUnicode_DATA.exit369 ], [ %i.lg, %.lr.ph465 ] ; 10 uses
  %.0233.lcssa626 = ptrtoaddr ptr %.0233.lcssa to i64 ; 2 uses
  %i.jj = icmp ult ptr %.0233.lcssa, %i.je
  br i1 %i.jj, label %iter.check, label %ucs1lib_find_max_char.exit

iter.check:                                       ; preds = %.preheader436
  %i.jk = add i64 %.idx552, %.0.i.i358.pn622
  %i.jl = shl i64 %3, 1
  %i.jm = add i64 %i.jk, %i.jl
  %i.jn = xor i64 %.0233.lcssa626, -1
  %i.jo = add i64 %i.jm, %i.jn                    ; 3 uses
  %i.jp = lshr i64 %i.jo, 1
  %i.jq = add nuw i64 %i.jp, 1                    ; 5 uses
  %min.iters.check625 = icmp ult i64 %i.jo, 14
  br i1 %min.iters.check625, label %.lr.ph470.preheader, label %vector.memcheck626

vector.memcheck626:                               ; preds = %iter.check
  %i.jr = shl i64 %3, 1
  %i.js = add i64 %.idx552, %.0.i.i358.pn622
  %i.jt = add i64 %i.js, %i.jr
  %i.ju = xor i64 %.0233.lcssa626, -1
  %i.jv = add i64 %i.jt, %i.ju                    ; 2 uses
  %i.jw = lshr i64 %i.jv, 1
  %i.jx = getelementptr i8, ptr %.0235.lcssa, i64 %i.jw
  %i.jy = getelementptr i8, ptr %i.jx, i64 1
  %i.jz = and i64 %i.jv, -2
  %i.ka = getelementptr i8, ptr %.0233.lcssa, i64 %i.jz
  %i.kb = getelementptr i8, ptr %i.ka, i64 2
  %bound0627 = icmp ult ptr %.0235.lcssa, %i.kb
  %bound1628 = icmp ult ptr %.0233.lcssa, %i.jy
  %found.conflict629 = and i1 %bound0627, %bound1628
  br i1 %found.conflict629, label %.lr.ph470.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck626
  %min.iters.check630 = icmp ult i64 %i.jo, 30
  br i1 %min.iters.check630, label %vec.epilog.ph, label %vector.ph631

vector.ph631:                                     ; preds = %vector.main.loop.iter.check
  %i.kc = and i64 %i.jq, 8
  %n.vec632 = and i64 %i.jq, -16                  ; 5 uses
  %i.kd = shl i64 %n.vec632, 1
  %i.ke = getelementptr i8, ptr %.0233.lcssa, i64 %i.kd
  %i.kf = getelementptr i8, ptr %.0235.lcssa, i64 %n.vec632
  br label %vector.body633

vector.body633:                                   ; preds = %vector.ph631, %vector.body633
  %index634 = phi i64 [ 0, %vector.ph631 ], [ %index.next639, %vector.body633 ] ; 3 uses
  %i.kg = shl i64 %index634, 1
  %next.gep635 = getelementptr i8, ptr %.0233.lcssa, i64 %i.kg ; 2 uses
  %next.gep636 = getelementptr i8, ptr %.0235.lcssa, i64 %index634 ; 2 uses
  %i.kh = getelementptr i8, ptr %next.gep635, i64 16
  %wide.load637 = load <8 x i16>, ptr %next.gep635, align 2, !tbaa !240, !alias.scope !378
  %wide.load638 = load <8 x i16>, ptr %i.kh, align 2, !tbaa !240, !alias.scope !378
  %i.ki = trunc <8 x i16> %wide.load637 to <8 x i8>
  %i.kj = trunc <8 x i16> %wide.load638 to <8 x i8>
  %i.kk = getelementptr i8, ptr %next.gep636, i64 8
  store <8 x i8> %i.ki, ptr %next.gep636, align 1, !tbaa !237, !alias.scope !379, !noalias !378
  store <8 x i8> %i.kj, ptr %i.kk, align 1, !tbaa !237, !alias.scope !379, !noalias !378
  %index.next639 = add nuw i64 %index634, 16      ; 2 uses
  %i.kl = icmp eq i64 %index.next639, %n.vec632
  br i1 %i.kl, label %middle.block640, label %vector.body633, !llvm.loop !360

middle.block640:                                  ; preds = %vector.body633
  %cmp.n641 = icmp eq i64 %i.jq, %n.vec632
  br i1 %cmp.n641, label %ucs1lib_find_max_char.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block640
  %min.epilog.iters.check.not.not = icmp eq i64 %i.kc, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph470.preheader, label %vec.epilog.ph, !prof !245

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec632, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec644 = and i64 %i.jq, -8                   ; 4 uses
  %i.km = shl i64 %n.vec644, 1
  %i.kn = getelementptr i8, ptr %.0233.lcssa, i64 %i.km
  %i.ko = getelementptr i8, ptr %.0235.lcssa, i64 %n.vec644
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index645 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next649, %vec.epilog.vector.body ] ; 3 uses
  %i.kp = shl i64 %index645, 1
  %next.gep646 = getelementptr i8, ptr %.0233.lcssa, i64 %i.kp
  %next.gep647 = getelementptr i8, ptr %.0235.lcssa, i64 %index645
  %wide.load648 = load <8 x i16>, ptr %next.gep646, align 2, !tbaa !240, !alias.scope !378
  %i.kq = trunc <8 x i16> %wide.load648 to <8 x i8>
  store <8 x i8> %i.kq, ptr %next.gep647, align 1, !tbaa !237, !alias.scope !379, !noalias !378
  %index.next649 = add nuw i64 %index645, 8       ; 2 uses
  %i.kr = icmp eq i64 %index.next649, %n.vec644
  br i1 %i.kr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !361

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n650 = icmp eq i64 %i.jq, %n.vec644
  br i1 %cmp.n650, label %ucs1lib_find_max_char.exit, label %.lr.ph470.preheader

.lr.ph470.preheader:                              ; preds = %iter.check, %vector.memcheck626, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1234469.ph = phi ptr [ %.0233.lcssa, %iter.check ], [ %.0233.lcssa, %vector.memcheck626 ], [ %i.ke, %vec.epilog.iter.check ], [ %i.kn, %vec.epilog.middle.block ]
  %.1236468.ph = phi ptr [ %.0235.lcssa, %iter.check ], [ %.0235.lcssa, %vector.memcheck626 ], [ %i.kf, %vec.epilog.iter.check ], [ %i.ko, %vec.epilog.middle.block ]
  br label %.lr.ph470

.lr.ph465:                                        ; preds = %_PyUnicode_DATA.exit369, %.lr.ph465
  %.0233464 = phi ptr [ %i.lg, %.lr.ph465 ], [ %i.jd, %_PyUnicode_DATA.exit369 ] ; 5 uses
  %.0235463 = phi ptr [ %i.lh, %.lr.ph465 ], [ %i.ja, %_PyUnicode_DATA.exit369 ] ; 5 uses
  %i.ks = load i16, ptr %.0233464, align 2, !tbaa !240
  %i.kt = trunc i16 %i.ks to i8
  store i8 %i.kt, ptr %.0235463, align 1, !tbaa !237
  %i.ku = getelementptr i8, ptr %.0233464, i64 2
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !240
  %i.kw = trunc i16 %i.kv to i8
  %i.kx = getelementptr i8, ptr %.0235463, i64 1
  store i8 %i.kw, ptr %i.kx, align 1, !tbaa !237
  %i.ky = getelementptr i8, ptr %.0233464, i64 4
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !240
  %i.la = trunc i16 %i.kz to i8
  %i.lb = getelementptr i8, ptr %.0235463, i64 2
  store i8 %i.la, ptr %i.lb, align 1, !tbaa !237
  %i.lc = getelementptr i8, ptr %.0233464, i64 6
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !240
  %i.le = trunc i16 %i.ld to i8
  %i.lf = getelementptr i8, ptr %.0235463, i64 3
  store i8 %i.le, ptr %i.lf, align 1, !tbaa !237
  %i.lg = getelementptr i8, ptr %.0233464, i64 8  ; 3 uses
  %i.lh = getelementptr i8, ptr %.0235463, i64 4  ; 2 uses
  %i.li = icmp ult ptr %i.lg, %i.jh
  br i1 %i.li, label %.lr.ph465, label %.preheader436, !llvm.loop !362

.lr.ph470:                                        ; preds = %.lr.ph470.preheader, %.lr.ph470
  %.1234469 = phi ptr [ %i.lj, %.lr.ph470 ], [ %.1234469.ph, %.lr.ph470.preheader ] ; 2 uses
  %.1236468 = phi ptr [ %i.lm, %.lr.ph470 ], [ %.1236468.ph, %.lr.ph470.preheader ] ; 2 uses
  %i.lj = getelementptr i8, ptr %.1234469, i64 2  ; 2 uses
  %i.lk = load i16, ptr %.1234469, align 2, !tbaa !240
  %i.ll = trunc i16 %i.lk to i8
  %i.lm = getelementptr i8, ptr %.1236468, i64 1
  store i8 %i.ll, ptr %.1236468, align 1, !tbaa !237
  %i.ln = icmp ult ptr %i.lj, %i.je
  br i1 %i.ln, label %.lr.ph470, label %ucs1lib_find_max_char.exit, !llvm.loop !363

bb.al:                                            ; preds = %bb.af
  %i.lo = icmp eq i32 %i.e, 4                     ; 2 uses
  %or.cond10 = and i1 %i.lo, %i.ix
  br i1 %or.cond10, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  br i1 %.not.i266, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lp = and i32 %i.j, 64
  %.not.i.i372 = icmp eq i32 %i.lp, 0
  %.0.v.i.i373 = select i1 %.not.i.i372, i64 56, i64 40
  %.0.i.i374 = getelementptr i8, ptr %0, i64 %.0.v.i.i373
  br label %_PyUnicode_DATA.exit377

bb.ao:                                            ; preds = %bb.am
  %i.lq = getelementptr i8, ptr %0, i64 56
  %.val4.i376 = load ptr, ptr %i.lq, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit377

_PyUnicode_DATA.exit377:                          ; preds = %bb.an, %bb.ao
  %.0.i375 = phi ptr [ %.0.i.i374, %bb.an ], [ %.val4.i376, %bb.ao ]
  %i.lr = getelementptr i8, ptr %.0.i375, i64 %1  ; 2 uses
  br i1 %.not.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_PyUnicode_DATA.exit377
  %i.ls = and i32 %i.c, 64
  %.not.i.i380 = icmp eq i32 %i.ls, 0
  %.0.v.i.i381 = select i1 %.not.i.i380, i64 56, i64 40
  %.0.i.i382 = getelementptr i8, ptr %2, i64 %.0.v.i.i381
  br label %_PyUnicode_DATA.exit393

bb.aq:                                            ; preds = %_PyUnicode_DATA.exit377
  %i.lt = getelementptr i8, ptr %2, i64 56
  %.val4.i384 = load ptr, ptr %i.lt, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit393

_PyUnicode_DATA.exit393:                          ; preds = %bb.ap, %bb.aq
  %.0.i.i382.pn = phi ptr [ %.0.i.i382, %bb.ap ], [ %.val4.i384, %bb.aq ] ; 2 uses
  %.0.i.i382.pn603 = ptrtoaddr ptr %.0.i.i382.pn to i64
  %i.lu = getelementptr [4 x i8], ptr %.0.i.i382.pn, i64 %3 ; 5 uses
  %i.lv = getelementptr [4 x i8], ptr %i.lu, i64 %4 ; 2 uses
  %.idx551 = shl i64 %4, 2                        ; 2 uses
  %i.lw = ashr exact i64 %.idx551, 2
  %i.lx = and i64 %i.lw, -4
  %i.ly = getelementptr [4 x i8], ptr %i.lu, i64 %i.lx ; 2 uses
  %i.lz = icmp ult ptr %i.lu, %i.ly
  br i1 %i.lz, label %.lr.ph457, label %.preheader438

.preheader438:                                    ; preds = %.lr.ph457, %_PyUnicode_DATA.exit393
  %.0231.lcssa = phi ptr [ %i.lr, %_PyUnicode_DATA.exit393 ], [ %i.nq, %.lr.ph457 ] ; 6 uses
  %.0229.lcssa = phi ptr [ %i.lu, %_PyUnicode_DATA.exit393 ], [ %i.np, %.lr.ph457 ] ; 8 uses
  %.0229.lcssa602 = ptrtoaddr ptr %.0229.lcssa to i64 ; 2 uses
  %i.ma = icmp ult ptr %.0229.lcssa, %i.lv
  br i1 %i.ma, label %.lr.ph462.preheader, label %ucs1lib_find_max_char.exit

.lr.ph462.preheader:                              ; preds = %.preheader438
  %i.mb = shl i64 %3, 2
  %i.mc = add i64 %.idx551, %.0.i.i382.pn603      ; 2 uses
  %i.md = add i64 %i.mc, %i.mb
  %i.me = xor i64 %.0229.lcssa602, -1
  %i.mf = add i64 %i.md, %i.me                    ; 2 uses
  %i.mg = lshr i64 %i.mf, 2
  %i.mh = add nuw nsw i64 %i.mg, 1                ; 2 uses
  %min.iters.check601 = icmp ult i64 %i.mf, 156
  br i1 %min.iters.check601, label %.lr.ph462.preheader756, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph462.preheader
  %i.mi = shl i64 %3, 2
  %i.mj = add i64 %i.mc, %i.mi
  %i.mk = xor i64 %.0229.lcssa602, -1
  %i.ml = add i64 %i.mj, %i.mk                    ; 2 uses
  %i.mm = lshr i64 %i.ml, 2
  %i.mn = getelementptr i8, ptr %.0231.lcssa, i64 %i.mm
  %i.mo = getelementptr i8, ptr %i.mn, i64 1
  %i.mp = and i64 %i.ml, -4
  %i.mq = getelementptr i8, ptr %.0229.lcssa, i64 %i.mp
  %i.mr = getelementptr i8, ptr %i.mq, i64 4
  %bound0 = icmp ult ptr %.0231.lcssa, %i.mr
  %bound1 = icmp ult ptr %.0229.lcssa, %i.mo
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph462.preheader756, label %vector.ph602

vector.ph602:                                     ; preds = %vector.memcheck
  %n.vec603 = and i64 %i.mh, 9223372036854775800  ; 4 uses
  %i.ms = shl i64 %n.vec603, 2
  %i.mt = getelementptr i8, ptr %.0229.lcssa, i64 %i.ms
  %i.mu = getelementptr i8, ptr %.0231.lcssa, i64 %n.vec603
  br label %vector.body604

vector.body604:                                   ; preds = %vector.body604, %vector.ph602
  %index605 = phi i64 [ 0, %vector.ph602 ], [ %index.next610, %vector.body604 ] ; 3 uses
  %i.mv = shl i64 %index605, 2
  %next.gep606 = getelementptr i8, ptr %.0229.lcssa, i64 %i.mv ; 2 uses
  %next.gep607 = getelementptr i8, ptr %.0231.lcssa, i64 %index605 ; 2 uses
  %i.mw = getelementptr i8, ptr %next.gep606, i64 16
  %wide.load608 = load <4 x i32>, ptr %next.gep606, align 4, !tbaa !43, !alias.scope !380
  %wide.load609 = load <4 x i32>, ptr %i.mw, align 4, !tbaa !43, !alias.scope !380
  %i.mx = trunc <4 x i32> %wide.load608 to <4 x i8>
  %i.my = trunc <4 x i32> %wide.load609 to <4 x i8>
  %i.mz = getelementptr i8, ptr %next.gep607, i64 4
  store <4 x i8> %i.mx, ptr %next.gep607, align 1, !tbaa !237, !alias.scope !381, !noalias !380
  store <4 x i8> %i.my, ptr %i.mz, align 1, !tbaa !237, !alias.scope !381, !noalias !380
  %index.next610 = add nuw i64 %index605, 8       ; 2 uses
  %i.na = icmp eq i64 %index.next610, %n.vec603
  br i1 %i.na, label %middle.block611, label %vector.body604, !llvm.loop !367

middle.block611:                                  ; preds = %vector.body604
  %cmp.n612 = icmp eq i64 %i.mh, %n.vec603
  br i1 %cmp.n612, label %ucs1lib_find_max_char.exit, label %.lr.ph462.preheader756

.lr.ph462.preheader756:                           ; preds = %vector.memcheck, %.lr.ph462.preheader, %middle.block611
  %.1230461.ph = phi ptr [ %.0229.lcssa, %vector.memcheck ], [ %.0229.lcssa, %.lr.ph462.preheader ], [ %i.mt, %middle.block611 ]
  %.1232460.ph = phi ptr [ %.0231.lcssa, %vector.memcheck ], [ %.0231.lcssa, %.lr.ph462.preheader ], [ %i.mu, %middle.block611 ]
  br label %.lr.ph462

.lr.ph457:                                        ; preds = %_PyUnicode_DATA.exit393, %.lr.ph457
  %.0229456 = phi ptr [ %i.np, %.lr.ph457 ], [ %i.lu, %_PyUnicode_DATA.exit393 ] ; 5 uses
  %.0231455 = phi ptr [ %i.nq, %.lr.ph457 ], [ %i.lr, %_PyUnicode_DATA.exit393 ] ; 5 uses
  %i.nb = load i32, ptr %.0229456, align 4, !tbaa !43
  %i.nc = trunc i32 %i.nb to i8
  store i8 %i.nc, ptr %.0231455, align 1, !tbaa !237
  %i.nd = getelementptr i8, ptr %.0229456, i64 4
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !43
  %i.nf = trunc i32 %i.ne to i8
  %i.ng = getelementptr i8, ptr %.0231455, i64 1
  store i8 %i.nf, ptr %i.ng, align 1, !tbaa !237
  %i.nh = getelementptr i8, ptr %.0229456, i64 8
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !43
  %i.nj = trunc i32 %i.ni to i8
  %i.nk = getelementptr i8, ptr %.0231455, i64 2
  store i8 %i.nj, ptr %i.nk, align 1, !tbaa !237
  %i.nl = getelementptr i8, ptr %.0229456, i64 12
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !43
  %i.nn = trunc i32 %i.nm to i8
  %i.no = getelementptr i8, ptr %.0231455, i64 3
  store i8 %i.nn, ptr %i.no, align 1, !tbaa !237
  %i.np = getelementptr i8, ptr %.0229456, i64 16 ; 3 uses
  %i.nq = getelementptr i8, ptr %.0231455, i64 4  ; 2 uses
  %i.nr = icmp ult ptr %i.np, %i.ly
  br i1 %i.nr, label %.lr.ph457, label %.preheader438, !llvm.loop !368

.lr.ph462:                                        ; preds = %.lr.ph462.preheader756, %.lr.ph462
  %.1230461 = phi ptr [ %i.ns, %.lr.ph462 ], [ %.1230461.ph, %.lr.ph462.preheader756 ] ; 2 uses
  %.1232460 = phi ptr [ %i.nv, %.lr.ph462 ], [ %.1232460.ph, %.lr.ph462.preheader756 ] ; 2 uses
  %i.ns = getelementptr i8, ptr %.1230461, i64 4  ; 2 uses
  %i.nt = load i32, ptr %.1230461, align 4, !tbaa !43
  %i.nu = trunc i32 %i.nt to i8
  %i.nv = getelementptr i8, ptr %.1232460, i64 1
  store i8 %i.nu, ptr %.1232460, align 1, !tbaa !237
  %i.nw = icmp ult ptr %i.ns, %i.lv
  br i1 %i.nw, label %.lr.ph462, label %ucs1lib_find_max_char.exit, !llvm.loop !369

bb.ar:                                            ; preds = %bb.al
  tail call void @llvm.assume(i1 %i.lo)
  tail call void @llvm.assume(i1 %i.aj)
  br i1 %.not.i266, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.nx = and i32 %i.j, 64
  %.not.i.i396 = icmp eq i32 %i.nx, 0
  %.0.v.i.i397 = select i1 %.not.i.i396, i64 56, i64 40
  %.0.i.i398 = getelementptr i8, ptr %0, i64 %.0.v.i.i397
  br label %_PyUnicode_DATA.exit401

bb.at:                                            ; preds = %bb.ar
  %i.ny = getelementptr i8, ptr %0, i64 56
  %.val4.i400 = load ptr, ptr %i.ny, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit401

_PyUnicode_DATA.exit401:                          ; preds = %bb.as, %bb.at
  %.0.i399 = phi ptr [ %.0.i.i398, %bb.as ], [ %.val4.i400, %bb.at ]
  %i.nz = getelementptr [2 x i8], ptr %.0.i399, i64 %1 ; 2 uses
  br i1 %.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_PyUnicode_DATA.exit401
  %i.oa = and i32 %i.c, 64
  %.not.i.i404 = icmp eq i32 %i.oa, 0
  %.0.v.i.i405 = select i1 %.not.i.i404, i64 56, i64 40
  %.0.i.i406 = getelementptr i8, ptr %2, i64 %.0.v.i.i405
  br label %_PyUnicode_DATA.exit417

bb.av:                                            ; preds = %_PyUnicode_DATA.exit401
  %i.ob = getelementptr i8, ptr %2, i64 56
  %.val4.i408 = load ptr, ptr %i.ob, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit417

_PyUnicode_DATA.exit417:                          ; preds = %bb.au, %bb.av
  %.0.i.i406.pn = phi ptr [ %.0.i.i406, %bb.au ], [ %.val4.i408, %bb.av ] ; 2 uses
  %.0.i.i406.pn595 = ptrtoaddr ptr %.0.i.i406.pn to i64
  %i.oc = getelementptr [4 x i8], ptr %.0.i.i406.pn, i64 %3 ; 5 uses
  %i.od = getelementptr [4 x i8], ptr %i.oc, i64 %4 ; 2 uses
  %.idx = shl i64 %4, 2                           ; 2 uses
  %i.oe = ashr exact i64 %.idx, 2
  %i.of = and i64 %i.oe, -4
  %i.og = getelementptr [4 x i8], ptr %i.oc, i64 %i.of ; 2 uses
  %i.oh = icmp ult ptr %i.oc, %i.og
  br i1 %i.oh, label %.lr.ph449, label %.preheader440

.preheader440:                                    ; preds = %.lr.ph449, %_PyUnicode_DATA.exit417
  %.0227.lcssa = phi ptr [ %i.nz, %_PyUnicode_DATA.exit417 ], [ %i.pf, %.lr.ph449 ] ; 3 uses
  %.0226.lcssa = phi ptr [ %i.oc, %_PyUnicode_DATA.exit417 ], [ %i.pe, %.lr.ph449 ] ; 5 uses
  %i.oi = icmp ult ptr %.0226.lcssa, %i.od
  br i1 %i.oi, label %.lr.ph454.preheader, label %ucs1lib_find_max_char.exit

.lr.ph454.preheader:                              ; preds = %.preheader440
  %i.oj = ptrtoaddr ptr %.0226.lcssa to i64
  %i.ok = shl i64 %3, 2
  %i.ol = add i64 %.idx, %.0.i.i406.pn595
  %i.om = add i64 %i.ol, %i.ok
  %i.on = xor i64 %i.oj, -1
  %i.oo = add i64 %i.om, %i.on                    ; 2 uses
  %i.op = lshr i64 %i.oo, 2
  %i.oq = add nuw nsw i64 %i.op, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.oo, 28
  br i1 %min.iters.check, label %.lr.ph454.preheader760, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph454.preheader
  %n.vec = and i64 %i.oq, 9223372036854775800     ; 4 uses
  %i.or = shl i64 %n.vec, 2
  %i.os = getelementptr i8, ptr %.0226.lcssa, i64 %i.or
  %i.ot = shl nuw i64 %n.vec, 1
  %i.ou = getelementptr i8, ptr %.0227.lcssa, i64 %i.ot
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ov = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0226.lcssa, i64 %i.ov ; 2 uses
  %i.ow = shl i64 %index, 1
  %next.gep594 = getelementptr i8, ptr %.0227.lcssa, i64 %i.ow ; 2 uses
  %i.ox = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !43
  %wide.load595 = load <4 x i32>, ptr %i.ox, align 4, !tbaa !43
  %i.oy = trunc <4 x i32> %wide.load to <4 x i16>
  %i.oz = trunc <4 x i32> %wide.load595 to <4 x i16>
  %i.pa = getelementptr i8, ptr %next.gep594, i64 8
  store <4 x i16> %i.oy, ptr %next.gep594, align 2, !tbaa !240
  store <4 x i16> %i.oz, ptr %i.pa, align 2, !tbaa !240
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pb = icmp eq i64 %index.next, %n.vec
  br i1 %i.pb, label %middle.block, label %vector.body, !llvm.loop !370

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.oq, %n.vec
  br i1 %cmp.n, label %ucs1lib_find_max_char.exit, label %.lr.ph454.preheader760

.lr.ph454.preheader760:                           ; preds = %.lr.ph454.preheader, %middle.block
  %.1453.ph = phi ptr [ %.0226.lcssa, %.lr.ph454.preheader ], [ %i.os, %middle.block ]
  %.1228452.ph = phi ptr [ %.0227.lcssa, %.lr.ph454.preheader ], [ %i.ou, %middle.block ]
  br label %.lr.ph454

.lr.ph449:                                        ; preds = %_PyUnicode_DATA.exit417, %.lr.ph449
  %.0226448 = phi ptr [ %i.pe, %.lr.ph449 ], [ %i.oc, %_PyUnicode_DATA.exit417 ] ; 2 uses
  %.0227447 = phi ptr [ %i.pf, %.lr.ph449 ], [ %i.nz, %_PyUnicode_DATA.exit417 ] ; 2 uses
  %i.pc = load <4 x i32>, ptr %.0226448, align 4, !tbaa !43
  %i.pd = trunc <4 x i32> %i.pc to <4 x i16>
  store <4 x i16> %i.pd, ptr %.0227447, align 2, !tbaa !240
  %i.pe = getelementptr i8, ptr %.0226448, i64 16 ; 3 uses
  %i.pf = getelementptr i8, ptr %.0227447, i64 8  ; 2 uses
  %i.pg = icmp ult ptr %i.pe, %i.og
  br i1 %i.pg, label %.lr.ph449, label %.preheader440, !llvm.loop !371

.lr.ph454:                                        ; preds = %.lr.ph454.preheader760, %.lr.ph454
  %.1453 = phi ptr [ %i.ph, %.lr.ph454 ], [ %.1453.ph, %.lr.ph454.preheader760 ] ; 2 uses
  %.1228452 = phi ptr [ %i.pk, %.lr.ph454 ], [ %.1228452.ph, %.lr.ph454.preheader760 ] ; 2 uses
  %i.ph = getelementptr i8, ptr %.1453, i64 4     ; 2 uses
  %i.pi = load i32, ptr %.1453, align 4, !tbaa !43
  %i.pj = trunc i32 %i.pi to i16
  %i.pk = getelementptr i8, ptr %.1228452, i64 2
  store i16 %i.pj, ptr %.1228452, align 2, !tbaa !240
  %i.pl = icmp ult ptr %i.ph, %i.od
  br i1 %i.pl, label %.lr.ph454, label %ucs1lib_find_max_char.exit, !llvm.loop !372

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.ae
  %i.pm = and i32 %i.j, 64
  %.not.i418 = icmp eq i32 %i.pm, 0
  %switch.select.i = select i1 %i.aj, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.l, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  %.0.i419 = select i1 %.not.i418, i32 %switch.select6.i, i32 127
  %.not259444 = icmp sgt i64 %4, 0
  br i1 %.not259444, label %.lr.ph, label %ucs1lib_find_max_char.exit

.lr.ph:                                           ; preds = %PyUnicode_MAX_CHAR_VALUE.exit, %PyUnicode_WRITE.exit
  %.0445 = phi i64 [ %i.qd, %PyUnicode_WRITE.exit ], [ 0, %PyUnicode_MAX_CHAR_VALUE.exit ] ; 3 uses
  %i.pn = add i64 %.0445, %3                      ; 3 uses
  switch i32 %i.e, label %bb.ay [
    i32 1, label %bb.aw
    i32 2, label %bb.ax
  ]

bb.aw:                                            ; preds = %.lr.ph
  %i.po = getelementptr i8, ptr %.0.i, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !237
  %i.pq = zext i8 %i.pp to i32
  br label %PyUnicode_READ.exit

bb.ax:                                            ; preds = %.lr.ph
  %i.pr = getelementptr [2 x i8], ptr %.0.i, i64 %i.pn
  %i.ps = load i16, ptr %i.pr, align 2, !tbaa !240
  %i.pt = zext i16 %i.ps to i32
  br label %PyUnicode_READ.exit

bb.ay:                                            ; preds = %.lr.ph
  %i.pu = getelementptr [4 x i8], ptr %.0.i, i64 %i.pn
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !43
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.aw, %bb.ax, %bb.ay
  %.0.i420 = phi i32 [ %i.pq, %bb.aw ], [ %i.pt, %bb.ax ], [ %i.pv, %bb.ay ] ; 4 uses
  %i.pw = icmp ugt i32 %.0.i420, %.0.i419
  br i1 %i.pw, label %ucs1lib_find_max_char.exit, label %bb.az

bb.az:                                            ; preds = %PyUnicode_READ.exit
  %i.px = add i64 %.0445, %1                      ; 3 uses
  switch i32 %i.l, label %bb.bc [
    i32 1, label %bb.ba
    i32 2, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.py = trunc i32 %.0.i420 to i8
  %i.pz = getelementptr i8, ptr %.0.i270, i64 %i.px
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !237
  br label %PyUnicode_WRITE.exit

bb.bb:                                            ; preds = %bb.az
  %i.qa = trunc i32 %.0.i420 to i16
  %i.qb = getelementptr [2 x i8], ptr %.0.i270, i64 %i.px
  store i16 %i.qa, ptr %i.qb, align 2, !tbaa !240
  br label %PyUnicode_WRITE.exit

bb.bc:                                            ; preds = %bb.az
  %i.qc = getelementptr [4 x i8], ptr %.0.i270, i64 %i.px
  store i32 %.0.i420, ptr %i.qc, align 4, !tbaa !43
  br label %PyUnicode_WRITE.exit

PyUnicode_WRITE.exit:                             ; preds = %bb.ba, %bb.bb, %bb.bc
  %i.qd = add nuw nsw i64 %.0445, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.qd, %4
  br i1 %exitcond.not, label %ucs1lib_find_max_char.exit, label %.lr.ph, !llvm.loop !373

ucs1lib_find_max_char.exit:                       ; preds = %PyUnicode_READ.exit, %PyUnicode_WRITE.exit, %.lr.ph454, %.lr.ph462, %.lr.ph470, %.lr.ph478, %.lr.ph486, %.lr.ph494, %.thread31.i, %bb.k, %middle.block, %middle.block611, %middle.block640, %vec.epilog.middle.block, %middle.block664, %middle.block690, %middle.block720, %vec.epilog.middle.block737, %PyUnicode_MAX_CHAR_VALUE.exit, %.preheader440, %.preheader438, %.preheader436, %.preheader434, %.preheader432, %.preheader, %ucs1lib_find_max_char.exit.thread, %bb.a
  %.2 = phi i32 [ 0, %.preheader440 ], [ 0, %PyUnicode_MAX_CHAR_VALUE.exit ], [ 0, %bb.a ], [ 0, %ucs1lib_find_max_char.exit.thread ], [ 0, %.preheader438 ], [ 0, %.preheader436 ], [ 0, %.preheader434 ], [ 0, %.preheader432 ], [ 0, %.preheader ], [ 0, %middle.block690 ], [ 0, %middle.block664 ], [ 0, %middle.block640 ], [ 0, %middle.block611 ], [ 0, %middle.block ], [ 0, %.lr.ph462 ], [ 0, %.lr.ph454 ], [ 0, %middle.block720 ], [ -1, %bb.k ], [ 0, %vec.epilog.middle.block737 ], [ -1, %.thread31.i ], [ 0, %.lr.ph494 ], [ 0, %.lr.ph486 ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph478 ], [ 0, %.lr.ph470 ], [ -1, %PyUnicode_READ.exit ], [ 0, %PyUnicode_WRITE.exit ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local i64 @PyUnicode_CopyCharacters(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val37 = load ptr, ptr %i.a, align 8, !tbaa !229
  %i.b = getelementptr i8, ptr %.val37, i64 168
  %.val39 = load i64, ptr %i.b, align 8, !tbaa !234
  %i.c = and i64 %.val39, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !229
  %i.e = getelementptr i8, ptr %.val, i64 168
  %.val38 = load i64, ptr %i.e, align 8, !tbaa !234
  %i.f = and i64 %.val38, 268435456
  %.not34 = icmp eq i64 %i.f, 0
  br i1 %.not34, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 1531) #33
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %2, i64 16
  %.val45 = load i64, ptr %i.g, align 8, !tbaa !239 ; 2 uses
  %i.h = icmp ugt i64 %3, %.val45
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.28) #33
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val44 = load i64, ptr %i.j, align 8, !tbaa !239 ; 3 uses
  %i.k = icmp ugt i64 %1, %.val44
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.28) #33
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.m = icmp slt i64 %4, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.29) #33
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.o = sub nuw i64 %.val45, %3
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.o, i64 %4) ; 5 uses
  %i.p = add i64 %spec.select, %1
  %i.q = icmp sgt i64 %i.p, %.val44
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
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
  %2 = ptrtoaddr ptr %0 to i64                    ; 2 uses
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
  %.055.lcssa.i = phi ptr [ %.0.i, %bb.n ], [ %i.bt, %.lr.ph68.i ] ; 6 uses
  %.053.lcssa.i = phi ptr [ %0, %bb.n ], [ %i.bs, %.lr.ph68.i ] ; 8 uses
  %i.ai = icmp ult ptr %.053.lcssa.i, %i.l
  br i1 %i.ai, label %.lr.ph73.i.preheader, label %unicode_write_widechar.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %i.aj = ptrtoaddr ptr %.053.lcssa.i to i64
  %i.ak = add i64 %.idx57.i, %2
  %i.al = xor i64 %i.aj, -1
  %i.am = add i64 %i.ak, %i.al                    ; 4 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check84 = icmp ult i64 %i.am, 140
  br i1 %min.iters.check84, label %.lr.ph73.i.preheader98, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph73.i.preheader
  %i.ap = lshr i64 %i.am, 2
  %i.aq = getelementptr i8, ptr %.055.lcssa.i, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %i.as = and i64 %i.am, -4
  %i.at = getelementptr i8, ptr %.053.lcssa.i, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %bound0 = icmp ult ptr %.055.lcssa.i, %i.au
  %bound1 = icmp ult ptr %.053.lcssa.i, %i.ar
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.i.preheader98, label %vector.ph85

vector.ph85:                                      ; preds = %vector.memcheck
  %n.vec86 = and i64 %i.ao, 9223372036854775800   ; 4 uses
  %i.av = shl i64 %n.vec86, 2
  %i.aw = getelementptr i8, ptr %.053.lcssa.i, i64 %i.av
  %i.ax = getelementptr i8, ptr %.055.lcssa.i, i64 %n.vec86
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph85
  %index88 = phi i64 [ 0, %vector.ph85 ], [ %index.next93, %vector.body87 ] ; 3 uses
  %i.ay = shl i64 %index88, 2
  %next.gep89 = getelementptr i8, ptr %.053.lcssa.i, i64 %i.ay ; 2 uses
  %next.gep90 = getelementptr i8, ptr %.055.lcssa.i, i64 %index88 ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep89, i64 16
  %wide.load91 = load <4 x i32>, ptr %next.gep89, align 4, !tbaa !43, !alias.scope !389
  %wide.load92 = load <4 x i32>, ptr %i.az, align 4, !tbaa !43, !alias.scope !389
  %i.ba = trunc <4 x i32> %wide.load91 to <4 x i8>
  %i.bb = trunc <4 x i32> %wide.load92 to <4 x i8>
  %i.bc = getelementptr i8, ptr %next.gep90, i64 4
  store <4 x i8> %i.ba, ptr %next.gep90, align 1, !tbaa !237, !alias.scope !390, !noalias !389
  store <4 x i8> %i.bb, ptr %i.bc, align 1, !tbaa !237, !alias.scope !390, !noalias !389
  %index.next93 = add nuw i64 %index88, 8         ; 2 uses
  %i.bd = icmp eq i64 %index.next93, %n.vec86
  br i1 %i.bd, label %middle.block94, label %vector.body87, !llvm.loop !385

middle.block94:                                   ; preds = %vector.body87
  %cmp.n95 = icmp eq i64 %i.ao, %n.vec86
  br i1 %cmp.n95, label %unicode_write_widechar.exit, label %.lr.ph73.i.preheader98

.lr.ph73.i.preheader98:                           ; preds = %vector.memcheck, %.lr.ph73.i.preheader, %middle.block94
  %.15472.i.ph = phi ptr [ %.053.lcssa.i, %vector.memcheck ], [ %.053.lcssa.i, %.lr.ph73.i.preheader ], [ %i.aw, %middle.block94 ]
  %.15671.i.ph = phi ptr [ %.055.lcssa.i, %vector.memcheck ], [ %.055.lcssa.i, %.lr.ph73.i.preheader ], [ %i.ax, %middle.block94 ]
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %bb.n, %.lr.ph68.i
  %.05367.i = phi ptr [ %i.bs, %.lr.ph68.i ], [ %0, %bb.n ] ; 5 uses
  %.05566.i = phi ptr [ %i.bt, %.lr.ph68.i ], [ %.0.i, %bb.n ] ; 5 uses
  %i.be = load i32, ptr %.05367.i, align 4, !tbaa !43
  %i.bf = trunc i32 %i.be to i8
  store i8 %i.bf, ptr %.05566.i, align 1, !tbaa !237
  %i.bg = getelementptr i8, ptr %.05367.i, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !43
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = getelementptr i8, ptr %.05566.i, i64 1
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !237
  %i.bk = getelementptr i8, ptr %.05367.i, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !43
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr i8, ptr %.05566.i, i64 2
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !237
  %i.bo = getelementptr i8, ptr %.05367.i, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !43
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr i8, ptr %.05566.i, i64 3
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !237
  %i.bs = getelementptr i8, ptr %.05367.i, i64 16 ; 3 uses
  %i.bt = getelementptr i8, ptr %.05566.i, i64 4  ; 2 uses
  %i.bu = icmp ult ptr %i.bs, %i.ag
  br i1 %i.bu, label %.lr.ph68.i, label %.preheader.i, !llvm.loop !3

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader98, %.lr.ph73.i
  %.15472.i = phi ptr [ %i.bv, %.lr.ph73.i ], [ %.15472.i.ph, %.lr.ph73.i.preheader98 ] ; 2 uses
  %.15671.i = phi ptr [ %i.by, %.lr.ph73.i ], [ %.15671.i.ph, %.lr.ph73.i.preheader98 ] ; 2 uses
  %i.bv = getelementptr i8, ptr %.15472.i, i64 4  ; 2 uses
  %i.bw = load i32, ptr %.15472.i, align 4, !tbaa !43
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr i8, ptr %.15671.i, i64 1
  store i8 %i.bx, ptr %.15671.i, align 1, !tbaa !237
  %i.bz = icmp ult ptr %i.bv, %i.l
  br i1 %i.bz, label %.lr.ph73.i, label %unicode_write_widechar.exit, !llvm.loop !386

bb.o:                                             ; preds = %_PyUnicode_DATA.exit
  %i.ca = ashr exact i64 %.idx57.i, 2
  %i.cb = and i64 %i.ca, -4
  %i.cc = getelementptr [4 x i8], ptr %0, i64 %i.cb ; 2 uses
  %i.cd = icmp ult ptr %0, %i.cc
  br i1 %i.cd, label %.lr.ph.i23, label %.preheader58.i

.preheader58.i:                                   ; preds = %.lr.ph.i23, %bb.o
  %.051.lcssa.i = phi ptr [ %.0.i, %bb.o ], [ %i.cz, %.lr.ph.i23 ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %0, %bb.o ], [ %i.cy, %.lr.ph.i23 ] ; 5 uses
  %i.ce = icmp ult ptr %.0.lcssa.i, %i.l
  br i1 %i.ce, label %.lr.ph65.i.preheader, label %unicode_write_widechar.exit

.lr.ph65.i.preheader:                             ; preds = %.preheader58.i
  %i.cf = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.cg = add i64 %.idx57.i, %2
  %i.ch = xor i64 %i.cf, -1
  %i.ci = add i64 %i.cg, %i.ch                    ; 2 uses
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check, label %.lr.ph65.i.preheader100, label %vector.ph

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
  %next.gep78 = getelementptr i8, ptr %.051.lcssa.i, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !43
  %wide.load79 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !43
  %i.cs = trunc <4 x i32> %wide.load to <4 x i16>
  %i.ct = trunc <4 x i32> %wide.load79 to <4 x i16>
  %i.cu = getelementptr i8, ptr %next.gep78, i64 8
  store <4 x i16> %i.cs, ptr %next.gep78, align 2, !tbaa !240
  store <4 x i16> %i.ct, ptr %i.cu, align 2, !tbaa !240
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !387

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %unicode_write_widechar.exit, label %.lr.ph65.i.preheader100

.lr.ph65.i.preheader100:                          ; preds = %.lr.ph65.i.preheader, %middle.block
  %.164.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph65.i.preheader ], [ %i.cm, %middle.block ]
  %.15263.i.ph = phi ptr [ %.051.lcssa.i, %.lr.ph65.i.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph65.i

.lr.ph.i23:                                       ; preds = %bb.o, %.lr.ph.i23
  %.061.i = phi ptr [ %i.cy, %.lr.ph.i23 ], [ %0, %bb.o ] ; 2 uses
  %.05160.i = phi ptr [ %i.cz, %.lr.ph.i23 ], [ %.0.i, %bb.o ] ; 2 uses
  %i.cw = load <4 x i32>, ptr %.061.i, align 4, !tbaa !43
  %i.cx = trunc <4 x i32> %i.cw to <4 x i16>
  store <4 x i16> %i.cx, ptr %.05160.i, align 2, !tbaa !240
  %i.cy = getelementptr i8, ptr %.061.i, i64 16   ; 3 uses
  %i.cz = getelementptr i8, ptr %.05160.i, i64 8  ; 2 uses
  %i.da = icmp ult ptr %i.cy, %i.cc
  br i1 %i.da, label %.lr.ph.i23, label %.preheader58.i, !llvm.loop !4

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader100, %.lr.ph65.i
  %.164.i = phi ptr [ %i.db, %.lr.ph65.i ], [ %.164.i.ph, %.lr.ph65.i.preheader100 ] ; 2 uses
  %.15263.i = phi ptr [ %i.de, %.lr.ph65.i ], [ %.15263.i.ph, %.lr.ph65.i.preheader100 ] ; 2 uses
  %i.db = getelementptr i8, ptr %.164.i, i64 4    ; 2 uses
  %i.dc = load i32, ptr %.164.i, align 4, !tbaa !43
  %i.dd = trunc i32 %i.dc to i16
  %i.de = getelementptr i8, ptr %.15263.i, i64 2
  store i16 %i.dd, ptr %.15263.i, align 2, !tbaa !240
  %i.df = icmp ult ptr %i.db, %i.l
  br i1 %i.df, label %.lr.ph65.i, label %unicode_write_widechar.exit, !llvm.loop !388

bb.p:                                             ; preds = %_PyUnicode_DATA.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i, ptr readonly align 4 %0, i64 %.idx57.i, i1 false)
  br label %unicode_write_widechar.exit

bb.q:                                             ; preds = %_PyUnicode_DATA.exit
  unreachable

unicode_write_widechar.exit:                      ; preds = %.lr.ph65.i, %.lr.ph73.i, %middle.block, %middle.block94, %.preheader.i, %.preheader58.i, %bb.p
  %i.dg = getelementptr i8, ptr %i.w, i64 16
  %.val.i24 = load i64, ptr %i.dg, align 8, !tbaa !239
  switch i64 %.val.i24, label %_PyUnicode_Result.exit [
    i64 0, label %bb.r
    i64 1, label %bb.u
  ]

bb.r:                                             ; preds = %unicode_write_widechar.exit
  %.not26.i = icmp eq ptr %i.w, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %.not26.i, label %_PyUnicode_Result.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = load i32, ptr %i.w, align 8, !tbaa !237 ; 2 uses
  %.not.i27.i = icmp sgt i32 %i.dh, -1
  br i1 %.not.i27.i, label %bb.t, label %_PyUnicode_Result.exit

bb.t:                                             ; preds = %bb.s
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.di, ptr %i.w, align 8, !tbaa !237
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %Py_DECREF.exit28.sink.split.i, label %_PyUnicode_Result.exit

bb.u:                                             ; preds = %unicode_write_widechar.exit
  %i.dk = load i32, ptr %i.x, align 8             ; 3 uses
  %i.dl = and i32 %i.dk, 28
  %.not25.i = icmp eq i32 %i.dl, 4
  br i1 %.not25.i, label %bb.v, label %_PyUnicode_Result.exit

bb.v:                                             ; preds = %bb.u
  %i.dm = and i32 %i.dk, 32
  %.not.i30.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i30.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dn = and i32 %i.dk, 64
  %.not.i.i.i = icmp eq i32 %i.dn, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.w, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.x:                                             ; preds = %bb.v
  %i.do = getelementptr i8, ptr %i.w, i64 56
  %.val4.i.i = load ptr, ptr %i.do, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.x, %bb.w
  %.0.i.i25 = phi ptr [ %.0.i.i.i, %bb.w ], [ %.val4.i.i, %bb.x ]
  %i.dp = load i8, ptr %.0.i.i25, align 1, !tbaa !237 ; 2 uses
  %i.dq = zext i8 %i.dp to i64                    ; 2 uses
  %i.dr = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.dq
  %i.ds = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.dq
  %i.dt = getelementptr i8, ptr %i.ds, i64 -8192
  %i.du = icmp slt i8 %i.dp, 0
  %i.dv = select i1 %i.du, ptr %i.dt, ptr %i.dr   ; 5 uses
  %.not.i26 = icmp eq ptr %i.w, %i.dv
  br i1 %.not.i26, label %_PyUnicode_Result.exit, label %bb.y

bb.y:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.dw = load i32, ptr %i.w, align 8, !tbaa !237 ; 2 uses
  %.not.i.i27 = icmp sgt i32 %i.dw, -1
  br i1 %.not.i.i27, label %bb.z, label %_PyUnicode_Result.exit

bb.z:                                             ; preds = %bb.y
  %i.dx = add nsw i32 %i.dw, -1                   ; 2 uses
  store i32 %i.dx, ptr %i.w, align 8, !tbaa !237
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %Py_DECREF.exit28.sink.split.i, label %_PyUnicode_Result.exit

Py_DECREF.exit28.sink.split.i:                    ; preds = %bb.z, %bb.t
  %.1.ph.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.t ], [ %i.dv, %bb.z ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.w) #33
  br label %_PyUnicode_Result.exit

_PyUnicode_Result.exit:                           ; preds = %Py_DECREF.exit28.sink.split.i, %bb.z, %bb.y, %_PyUnicode_DATA.exit.i, %bb.u, %bb.t, %bb.s, %bb.r, %unicode_write_widechar.exit, %find_maxchar_surrogates.exit, %bb.e, %.loopexit, %bb.g, %bb.b
  %.019 = phi ptr [ null, %bb.b ], [ null, %.loopexit ], [ %i.k, %bb.g ], [ null, %find_maxchar_surrogates.exit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.e ], [ %i.w, %unicode_write_widechar.exit ], [ %i.dv, %bb.y ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.t ], [ %i.w, %bb.u ], [ %i.dv, %_PyUnicode_DATA.exit.i ], [ %i.dv, %bb.z ], [ %.1.ph.i, %Py_DECREF.exit28.sink.split.i ]
  ret ptr %.019
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyUnicodeWriter_WriteWideChar(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = ptrtoaddr ptr %1 to i64                    ; 2 uses
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
  %.055.lcssa.i = phi ptr [ %i.af, %bb.i ], [ %i.bv, %.lr.ph68.i ] ; 6 uses
  %.053.lcssa.i = phi ptr [ %1, %bb.i ], [ %i.bu, %.lr.ph68.i ] ; 8 uses
  %i.ak = icmp ult ptr %.053.lcssa.i, %i.d
  br i1 %i.ak, label %.lr.ph73.i.preheader, label %unicode_write_widechar.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %i.al = ptrtoaddr ptr %.053.lcssa.i to i64
  %i.am = add i64 %.idx57.i, %3
  %i.an = xor i64 %i.al, -1
  %i.ao = add i64 %i.am, %i.an                    ; 4 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check85 = icmp ult i64 %i.ao, 140
  br i1 %min.iters.check85, label %.lr.ph73.i.preheader99, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph73.i.preheader
  %i.ar = lshr i64 %i.ao, 2
  %i.as = getelementptr i8, ptr %.055.lcssa.i, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 1
  %i.au = and i64 %i.ao, -4
  %i.av = getelementptr i8, ptr %.053.lcssa.i, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %bound0 = icmp ult ptr %.055.lcssa.i, %i.aw
  %bound1 = icmp ult ptr %.053.lcssa.i, %i.at
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.i.preheader99, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck
  %n.vec87 = and i64 %i.aq, 9223372036854775800   ; 4 uses
  %i.ax = shl i64 %n.vec87, 2
  %i.ay = getelementptr i8, ptr %.053.lcssa.i, i64 %i.ax
  %i.az = getelementptr i8, ptr %.055.lcssa.i, i64 %n.vec87
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next94, %vector.body88 ] ; 3 uses
  %i.ba = shl i64 %index89, 2
  %next.gep90 = getelementptr i8, ptr %.053.lcssa.i, i64 %i.ba ; 2 uses
  %next.gep91 = getelementptr i8, ptr %.055.lcssa.i, i64 %index89 ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep90, i64 16
  %wide.load92 = load <4 x i32>, ptr %next.gep90, align 4, !tbaa !43, !alias.scope !398
  %wide.load93 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !43, !alias.scope !398
  %i.bc = trunc <4 x i32> %wide.load92 to <4 x i8>
  %i.bd = trunc <4 x i32> %wide.load93 to <4 x i8>
  %i.be = getelementptr i8, ptr %next.gep91, i64 4
  store <4 x i8> %i.bc, ptr %next.gep91, align 1, !tbaa !237, !alias.scope !399, !noalias !398
  store <4 x i8> %i.bd, ptr %i.be, align 1, !tbaa !237, !alias.scope !399, !noalias !398
  %index.next94 = add nuw i64 %index89, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next94, %n.vec87
  br i1 %i.bf, label %middle.block95, label %vector.body88, !llvm.loop !394

middle.block95:                                   ; preds = %vector.body88
  %cmp.n96 = icmp eq i64 %i.aq, %n.vec87
  br i1 %cmp.n96, label %unicode_write_widechar.exit, label %.lr.ph73.i.preheader99

.lr.ph73.i.preheader99:                           ; preds = %vector.memcheck, %.lr.ph73.i.preheader, %middle.block95
  %.15472.i.ph = phi ptr [ %.053.lcssa.i, %vector.memcheck ], [ %.053.lcssa.i, %.lr.ph73.i.preheader ], [ %i.ay, %middle.block95 ]
  %.15671.i.ph = phi ptr [ %.055.lcssa.i, %vector.memcheck ], [ %.055.lcssa.i, %.lr.ph73.i.preheader ], [ %i.az, %middle.block95 ]
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %bb.i, %.lr.ph68.i
  %.05367.i = phi ptr [ %i.bu, %.lr.ph68.i ], [ %1, %bb.i ] ; 5 uses
  %.05566.i = phi ptr [ %i.bv, %.lr.ph68.i ], [ %i.af, %bb.i ] ; 5 uses
  %i.bg = load i32, ptr %.05367.i, align 4, !tbaa !43
  %i.bh = trunc i32 %i.bg to i8
  store i8 %i.bh, ptr %.05566.i, align 1, !tbaa !237
  %i.bi = getelementptr i8, ptr %.05367.i, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !43
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr i8, ptr %.05566.i, i64 1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !237
  %i.bm = getelementptr i8, ptr %.05367.i, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !43
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = getelementptr i8, ptr %.05566.i, i64 2
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !237
  %i.bq = getelementptr i8, ptr %.05367.i, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !43
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr i8, ptr %.05566.i, i64 3
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !237
  %i.bu = getelementptr i8, ptr %.05367.i, i64 16 ; 3 uses
  %i.bv = getelementptr i8, ptr %.05566.i, i64 4  ; 2 uses
  %i.bw = icmp ult ptr %i.bu, %i.ai
  br i1 %i.bw, label %.lr.ph68.i, label %.preheader.i, !llvm.loop !3

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader99, %.lr.ph73.i
  %.15472.i = phi ptr [ %i.bx, %.lr.ph73.i ], [ %.15472.i.ph, %.lr.ph73.i.preheader99 ] ; 2 uses
  %.15671.i = phi ptr [ %i.ca, %.lr.ph73.i ], [ %.15671.i.ph, %.lr.ph73.i.preheader99 ] ; 2 uses
  %i.bx = getelementptr i8, ptr %.15472.i, i64 4  ; 2 uses
  %i.by = load i32, ptr %.15472.i, align 4, !tbaa !43
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr i8, ptr %.15671.i, i64 1
  store i8 %i.bz, ptr %.15671.i, align 1, !tbaa !237
  %i.cb = icmp ult ptr %i.bx, %i.d
  br i1 %i.cb, label %.lr.ph73.i, label %unicode_write_widechar.exit, !llvm.loop !395

bb.j:                                             ; preds = %.critedge
  %i.cc = ashr exact i64 %.idx57.i, 2
  %i.cd = and i64 %i.cc, -4
  %i.ce = getelementptr [4 x i8], ptr %1, i64 %i.cd ; 2 uses
  %i.cf = icmp ult ptr %1, %i.ce
  br i1 %i.cf, label %.lr.ph.i28, label %.preheader58.i

.preheader58.i:                                   ; preds = %.lr.ph.i28, %bb.j
  %.051.lcssa.i = phi ptr [ %i.af, %bb.j ], [ %i.db, %.lr.ph.i28 ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.j ], [ %i.da, %.lr.ph.i28 ] ; 5 uses
  %i.cg = icmp ult ptr %.0.lcssa.i, %i.d
  br i1 %i.cg, label %.lr.ph65.i.preheader, label %unicode_write_widechar.exit

.lr.ph65.i.preheader:                             ; preds = %.preheader58.i
  %i.ch = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.ci = add i64 %.idx57.i, %3
  %i.cj = xor i64 %i.ch, -1
  %i.ck = add i64 %i.ci, %i.cj                    ; 2 uses
  %i.cl = lshr i64 %i.ck, 2
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ck, 28
  br i1 %min.iters.check, label %.lr.ph65.i.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.i.preheader
  %n.vec = and i64 %i.cm, 9223372036854775800     ; 4 uses
  %i.cn = shl i64 %n.vec, 2
  %i.co = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cn
  %i.cp = shl nuw i64 %n.vec, 1
  %i.cq = getelementptr i8, ptr %.051.lcssa.i, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cr = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cr ; 2 uses
  %i.cs = shl i64 %index, 1
  %next.gep79 = getelementptr i8, ptr %.051.lcssa.i, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !43
  %wide.load80 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !43
  %i.cu = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cv = trunc <4 x i32> %wide.load80 to <4 x i16>
  %i.cw = getelementptr i8, ptr %next.gep79, i64 8
  store <4 x i16> %i.cu, ptr %next.gep79, align 2, !tbaa !240
  store <4 x i16> %i.cv, ptr %i.cw, align 2, !tbaa !240
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %unicode_write_widechar.exit, label %.lr.ph65.i.preheader101

.lr.ph65.i.preheader101:                          ; preds = %.lr.ph65.i.preheader, %middle.block
  %.164.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph65.i.preheader ], [ %i.co, %middle.block ]
  %.15263.i.ph = phi ptr [ %.051.lcssa.i, %.lr.ph65.i.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph65.i

.lr.ph.i28:                                       ; preds = %bb.j, %.lr.ph.i28
  %.061.i = phi ptr [ %i.da, %.lr.ph.i28 ], [ %1, %bb.j ] ; 2 uses
  %.05160.i = phi ptr [ %i.db, %.lr.ph.i28 ], [ %i.af, %bb.j ] ; 2 uses
  %i.cy = load <4 x i32>, ptr %.061.i, align 4, !tbaa !43
  %i.cz = trunc <4 x i32> %i.cy to <4 x i16>
  store <4 x i16> %i.cz, ptr %.05160.i, align 2, !tbaa !240
  %i.da = getelementptr i8, ptr %.061.i, i64 16   ; 3 uses
  %i.db = getelementptr i8, ptr %.05160.i, i64 8  ; 2 uses
  %i.dc = icmp ult ptr %i.da, %i.ce
  br i1 %i.dc, label %.lr.ph.i28, label %.preheader58.i, !llvm.loop !4

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader101, %.lr.ph65.i
  %.164.i = phi ptr [ %i.dd, %.lr.ph65.i ], [ %.164.i.ph, %.lr.ph65.i.preheader101 ] ; 2 uses
  %.15263.i = phi ptr [ %i.dg, %.lr.ph65.i ], [ %.15263.i.ph, %.lr.ph65.i.preheader101 ] ; 2 uses
  %i.dd = getelementptr i8, ptr %.164.i, i64 4    ; 2 uses
  %i.de = load i32, ptr %.164.i, align 4, !tbaa !43
  %i.df = trunc i32 %i.de to i16
  %i.dg = getelementptr i8, ptr %.15263.i, i64 2
  store i16 %i.df, ptr %.15263.i, align 2, !tbaa !240
  %i.dh = icmp ult ptr %i.dd, %i.d
  br i1 %i.dh, label %.lr.ph65.i, label %unicode_write_widechar.exit, !llvm.loop !397

bb.k:                                             ; preds = %.critedge
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr readonly align 4 %1, i64 %.idx57.i, i1 false)
  br label %unicode_write_widechar.exit

bb.l:                                             ; preds = %.critedge
  unreachable

unicode_write_widechar.exit:                      ; preds = %.lr.ph65.i, %.lr.ph73.i, %middle.block, %middle.block95, %.preheader.i, %.preheader58.i, %bb.k
  %i.di = load i64, ptr %i.ac, align 8, !tbaa !249
  %i.dj = add i64 %i.di, %.024
  store i64 %i.dj, ptr %i.ac, align 8, !tbaa !249
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

bb.f:                                             ; preds = %bb.e
  %i.d = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !227
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
  %i.c = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.34) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @unicode_decode_utf8(ptr noundef nonnull %0, i64 noundef %i.a, i32 noundef 1, ptr noundef null, ptr noundef null), !inline_history !252
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
  %3 = ptrtoaddr ptr %1 to i64                    ; 2 uses
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
  %.080.lcssa = phi ptr [ %i.at, %bb.o ], [ %i.cf, %.lr.ph103 ] ; 6 uses
  %.078.lcssa = phi ptr [ %1, %bb.o ], [ %i.ce, %.lr.ph103 ] ; 8 uses
  %i.au = icmp ult ptr %.078.lcssa, %i.d
  br i1 %i.au, label %.lr.ph108.preheader, label %.loopexit

.lr.ph108.preheader:                              ; preds = %.preheader
  %i.av = ptrtoaddr ptr %.078.lcssa to i64
  %i.aw = add i64 %.idx88, %3
  %i.ax = xor i64 %i.av, -1
  %i.ay = add i64 %i.aw, %i.ax                    ; 4 uses
  %i.az = lshr i64 %i.ay, 2
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check155 = icmp ult i64 %i.ay, 140
  br i1 %min.iters.check155, label %.lr.ph108.preheader169, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph108.preheader
  %i.bb = lshr i64 %i.ay, 2
  %i.bc = getelementptr i8, ptr %.080.lcssa, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 1
  %i.be = and i64 %i.ay, -4
  %i.bf = getelementptr i8, ptr %.078.lcssa, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  %bound0 = icmp ult ptr %.080.lcssa, %i.bg
  %bound1 = icmp ult ptr %.078.lcssa, %i.bd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph108.preheader169, label %vector.ph156

vector.ph156:                                     ; preds = %vector.memcheck
  %n.vec157 = and i64 %i.ba, 9223372036854775800  ; 4 uses
  %i.bh = shl i64 %n.vec157, 2
  %i.bi = getelementptr i8, ptr %.078.lcssa, i64 %i.bh
  %i.bj = getelementptr i8, ptr %.080.lcssa, i64 %n.vec157
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body158 ] ; 3 uses
  %i.bk = shl i64 %index159, 2
  %next.gep160 = getelementptr i8, ptr %.078.lcssa, i64 %i.bk ; 2 uses
  %next.gep161 = getelementptr i8, ptr %.080.lcssa, i64 %index159 ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep160, i64 16
  %wide.load162 = load <4 x i32>, ptr %next.gep160, align 4, !tbaa !43, !alias.scope !413
  %wide.load163 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !43, !alias.scope !413
  %i.bm = trunc <4 x i32> %wide.load162 to <4 x i8>
  %i.bn = trunc <4 x i32> %wide.load163 to <4 x i8>
  %i.bo = getelementptr i8, ptr %next.gep161, i64 4
  store <4 x i8> %i.bm, ptr %next.gep161, align 1, !tbaa !237, !alias.scope !414, !noalias !413
  store <4 x i8> %i.bn, ptr %i.bo, align 1, !tbaa !237, !alias.scope !414, !noalias !413
  %index.next164 = add nuw i64 %index159, 8       ; 2 uses
  %i.bp = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.bp, label %middle.block165, label %vector.body158, !llvm.loop !407

middle.block165:                                  ; preds = %vector.body158
  %cmp.n166 = icmp eq i64 %i.ba, %n.vec157
  br i1 %cmp.n166, label %.loopexit, label %.lr.ph108.preheader169

.lr.ph108.preheader169:                           ; preds = %vector.memcheck, %.lr.ph108.preheader, %middle.block165
  %.179107.ph = phi ptr [ %.078.lcssa, %vector.memcheck ], [ %.078.lcssa, %.lr.ph108.preheader ], [ %i.bi, %middle.block165 ]
  %.181106.ph = phi ptr [ %.080.lcssa, %vector.memcheck ], [ %.080.lcssa, %.lr.ph108.preheader ], [ %i.bj, %middle.block165 ]
  br label %.lr.ph108

.lr.ph103:                                        ; preds = %bb.o, %.lr.ph103
  %.078102 = phi ptr [ %i.ce, %.lr.ph103 ], [ %1, %bb.o ] ; 5 uses
  %.080101 = phi ptr [ %i.cf, %.lr.ph103 ], [ %i.at, %bb.o ] ; 5 uses
  %i.bq = load i32, ptr %.078102, align 4, !tbaa !43
  %i.br = trunc i32 %i.bq to i8
  store i8 %i.br, ptr %.080101, align 1, !tbaa !237
  %i.bs = getelementptr i8, ptr %.078102, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !43
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr i8, ptr %.080101, i64 1
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !237
  %i.bw = getelementptr i8, ptr %.078102, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !43
  %i.by = trunc i32 %i.bx to i8
  %i.bz = getelementptr i8, ptr %.080101, i64 2
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !237
  %i.ca = getelementptr i8, ptr %.078102, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !43
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = getelementptr i8, ptr %.080101, i64 3
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !237
  %i.ce = getelementptr i8, ptr %.078102, i64 16  ; 3 uses
  %i.cf = getelementptr i8, ptr %.080101, i64 4   ; 2 uses
  %i.cg = icmp ult ptr %i.ce, %i.g
  br i1 %i.cg, label %.lr.ph103, label %.preheader, !llvm.loop !408

.lr.ph108:                                        ; preds = %.lr.ph108.preheader169, %.lr.ph108
  %.179107 = phi ptr [ %i.ch, %.lr.ph108 ], [ %.179107.ph, %.lr.ph108.preheader169 ] ; 2 uses
  %.181106 = phi ptr [ %i.ck, %.lr.ph108 ], [ %.181106.ph, %.lr.ph108.preheader169 ] ; 2 uses
  %i.ch = getelementptr i8, ptr %.179107, i64 4   ; 2 uses
  %i.ci = load i32, ptr %.179107, align 4, !tbaa !43
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = getelementptr i8, ptr %.181106, i64 1
  store i8 %i.cj, ptr %.181106, align 1, !tbaa !237
  %i.cl = icmp ult ptr %i.ch, %i.d
  br i1 %i.cl, label %.lr.ph108, label %.loopexit, !llvm.loop !409

bb.p:                                             ; preds = %.critedge
  br i1 %i.h, label %.lr.ph, label %.preheader89

.preheader89:                                     ; preds = %.lr.ph, %bb.p
  %.076.lcssa = phi ptr [ %i.at, %bb.p ], [ %i.dh, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %1, %bb.p ], [ %i.dg, %.lr.ph ] ; 5 uses
  %i.cm = icmp ult ptr %.0.lcssa, %i.d
  br i1 %i.cm, label %.lr.ph100.preheader, label %.loopexit

.lr.ph100.preheader:                              ; preds = %.preheader89
  %i.cn = ptrtoaddr ptr %.0.lcssa to i64
  %i.co = add i64 %.idx88, %3
  %i.cp = xor i64 %i.cn, -1
  %i.cq = add i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = lshr i64 %i.cq, 2
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cq, 28
  br i1 %min.iters.check, label %.lr.ph100.preheader171, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph100.preheader
  %n.vec = and i64 %i.cs, 9223372036854775800     ; 4 uses
  %i.ct = shl i64 %n.vec, 2
  %i.cu = getelementptr i8, ptr %.0.lcssa, i64 %i.ct
  %i.cv = shl nuw i64 %n.vec, 1
  %i.cw = getelementptr i8, ptr %.076.lcssa, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %i.cx ; 2 uses
  %i.cy = shl i64 %index, 1
  %next.gep149 = getelementptr i8, ptr %.076.lcssa, i64 %i.cy ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !43
  %wide.load150 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !43
  %i.da = trunc <4 x i32> %wide.load to <4 x i16>
  %i.db = trunc <4 x i32> %wide.load150 to <4 x i16>
  %i.dc = getelementptr i8, ptr %next.gep149, i64 8
  store <4 x i16> %i.da, ptr %next.gep149, align 2, !tbaa !240
  store <4 x i16> %i.db, ptr %i.dc, align 2, !tbaa !240
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !410

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph100.preheader171

.lr.ph100.preheader171:                           ; preds = %.lr.ph100.preheader, %middle.block
  %.199.ph = phi ptr [ %.0.lcssa, %.lr.ph100.preheader ], [ %i.cu, %middle.block ]
  %.17798.ph = phi ptr [ %.076.lcssa, %.lr.ph100.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph100

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.096 = phi ptr [ %i.dg, %.lr.ph ], [ %1, %bb.p ] ; 2 uses
  %.07695 = phi ptr [ %i.dh, %.lr.ph ], [ %i.at, %bb.p ] ; 2 uses
  %i.de = load <4 x i32>, ptr %.096, align 4, !tbaa !43
  %i.df = trunc <4 x i32> %i.de to <4 x i16>
  store <4 x i16> %i.df, ptr %.07695, align 2, !tbaa !240
  %i.dg = getelementptr i8, ptr %.096, i64 16     ; 3 uses
  %i.dh = getelementptr i8, ptr %.07695, i64 8    ; 2 uses
  %i.di = icmp ult ptr %i.dg, %i.g
  br i1 %i.di, label %.lr.ph, label %.preheader89, !llvm.loop !411

.lr.ph100:                                        ; preds = %.lr.ph100.preheader171, %.lr.ph100
  %.199 = phi ptr [ %i.dj, %.lr.ph100 ], [ %.199.ph, %.lr.ph100.preheader171 ] ; 2 uses
  %.17798 = phi ptr [ %i.dm, %.lr.ph100 ], [ %.17798.ph, %.lr.ph100.preheader171 ] ; 2 uses
  %i.dj = getelementptr i8, ptr %.199, i64 4      ; 2 uses
  %i.dk = load i32, ptr %.199, align 4, !tbaa !43
  %i.dl = trunc i32 %i.dk to i16
  %i.dm = getelementptr i8, ptr %.17798, i64 2
  store i16 %i.dl, ptr %.17798, align 2, !tbaa !240
  %i.dn = icmp ult ptr %i.dj, %i.d
  br i1 %i.dn, label %.lr.ph100, label %.loopexit, !llvm.loop !412

bb.q:                                             ; preds = %.critedge
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 4 %1, i64 %.idx88, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph100, %.lr.ph108, %middle.block, %middle.block165, %.preheader89, %.preheader, %bb.q
  %i.do = load i64, ptr %i.aq, align 8, !tbaa !249
  %i.dp = add i64 %i.do, %2
  store i64 %i.dp, ptr %i.aq, align 8, !tbaa !249
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
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
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
  %.038.lcssa = phi ptr [ %.0.i53, %_PyUnicode_DATA.exit55 ], [ %i.cv, %.lr.ph ] ; 8 uses
  %.0.lcssa = phi ptr [ %0, %_PyUnicode_DATA.exit55 ], [ %i.cu, %.lr.ph ] ; 10 uses
  %.0.lcssa103 = ptrtoaddr ptr %.0.lcssa to i64   ; 2 uses
  %i.bb = icmp ult ptr %.0.lcssa, %i.u
  br i1 %i.bb, label %iter.check, label %unicode_char.exit

iter.check:                                       ; preds = %.preheader
  %i.bc = add i64 %.idx56, %i.a
  %i.bd = xor i64 %.0.lcssa103, -1
  %i.be = add i64 %i.bc, %i.bd                    ; 3 uses
  %i.bf = lshr i64 %i.be, 1
  %i.bg = add nuw i64 %i.bf, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.be, 14
  br i1 %min.iters.check, label %.lr.ph66.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bh = add i64 %.idx56, %i.a
  %i.bi = xor i64 %.0.lcssa103, -1
  %i.bj = add i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 1
  %i.bl = getelementptr i8, ptr %.038.lcssa, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 1
  %i.bn = and i64 %i.bj, -2
  %i.bo = getelementptr i8, ptr %.0.lcssa, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 2
  %bound0 = icmp ult ptr %.038.lcssa, %i.bp
  %bound1 = icmp ult ptr %.0.lcssa, %i.bm
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph66.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check104 = icmp ult i64 %i.be, 30
  br i1 %min.iters.check104, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %i.bg, 8
  %n.vec = and i64 %i.bg, -16                     ; 5 uses
  %i.br = shl i64 %n.vec, 1
  %i.bs = getelementptr i8, ptr %.0.lcssa, i64 %i.br
  %i.bt = getelementptr i8, ptr %.038.lcssa, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bu = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %i.bu ; 2 uses
  %next.gep105 = getelementptr i8, ptr %.038.lcssa, i64 %index ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !240, !alias.scope !422
  %wide.load106 = load <8 x i16>, ptr %i.bv, align 2, !tbaa !240, !alias.scope !422
  %i.bw = trunc <8 x i16> %wide.load to <8 x i8>
  %i.bx = trunc <8 x i16> %wide.load106 to <8 x i8>
  %i.by = getelementptr i8, ptr %next.gep105, i64 8
  store <8 x i8> %i.bw, ptr %next.gep105, align 1, !tbaa !237, !alias.scope !423, !noalias !422
  store <8 x i8> %i.bx, ptr %i.by, align 1, !tbaa !237, !alias.scope !423, !noalias !422
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !418

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %unicode_char.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph66.preheader, label %vec.epilog.ph, !prof !245

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec108 = and i64 %i.bg, -8                   ; 4 uses
  %i.ca = shl i64 %n.vec108, 1
  %i.cb = getelementptr i8, ptr %.0.lcssa, i64 %i.ca
  %i.cc = getelementptr i8, ptr %.038.lcssa, i64 %n.vec108
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index109 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 3 uses
  %i.cd = shl i64 %index109, 1
  %next.gep110 = getelementptr i8, ptr %.0.lcssa, i64 %i.cd
  %next.gep111 = getelementptr i8, ptr %.038.lcssa, i64 %index109
  %wide.load112 = load <8 x i16>, ptr %next.gep110, align 2, !tbaa !240, !alias.scope !422
  %i.ce = trunc <8 x i16> %wide.load112 to <8 x i8>
  store <8 x i8> %i.ce, ptr %next.gep111, align 1, !tbaa !237, !alias.scope !423, !noalias !422
  %index.next113 = add nuw i64 %index109, 8       ; 2 uses
  %i.cf = icmp eq i64 %index.next113, %n.vec108
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !419

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n114 = icmp eq i64 %i.bg, %n.vec108
  br i1 %cmp.n114, label %unicode_char.exit, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.165.ph = phi ptr [ %.0.lcssa, %iter.check ], [ %.0.lcssa, %vector.memcheck ], [ %i.bs, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ]
  %.13964.ph = phi ptr [ %.038.lcssa, %iter.check ], [ %.038.lcssa, %vector.memcheck ], [ %i.bt, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.middle.block ]
  br label %.lr.ph66

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit55, %.lr.ph
  %.062 = phi ptr [ %i.cu, %.lr.ph ], [ %0, %_PyUnicode_DATA.exit55 ] ; 5 uses
  %.03861 = phi ptr [ %i.cv, %.lr.ph ], [ %.0.i53, %_PyUnicode_DATA.exit55 ] ; 5 uses
  %i.cg = load i16, ptr %.062, align 2, !tbaa !240
  %i.ch = trunc i16 %i.cg to i8
  store i8 %i.ch, ptr %.03861, align 1, !tbaa !237
  %i.ci = getelementptr i8, ptr %.062, i64 2
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !240
  %i.ck = trunc i16 %i.cj to i8
  %i.cl = getelementptr i8, ptr %.03861, i64 1
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !237
  %i.cm = getelementptr i8, ptr %.062, i64 4
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !240
  %i.co = trunc i16 %i.cn to i8
  %i.cp = getelementptr i8, ptr %.03861, i64 2
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !237
  %i.cq = getelementptr i8, ptr %.062, i64 6
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !240
  %i.cs = trunc i16 %i.cr to i8
  %i.ct = getelementptr i8, ptr %.03861, i64 3
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !237
  %i.cu = getelementptr i8, ptr %.062, i64 8      ; 3 uses
  %i.cv = getelementptr i8, ptr %.03861, i64 4    ; 2 uses
  %i.cw = icmp ult ptr %i.cu, %i.x
  br i1 %i.cw, label %.lr.ph, label %.preheader, !llvm.loop !420

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %.lr.ph66
  %.165 = phi ptr [ %i.cx, %.lr.ph66 ], [ %.165.ph, %.lr.ph66.preheader ] ; 2 uses
  %.13964 = phi ptr [ %i.da, %.lr.ph66 ], [ %.13964.ph, %.lr.ph66.preheader ] ; 2 uses
  %i.cx = getelementptr i8, ptr %.165, i64 2      ; 2 uses
  %i.cy = load i16, ptr %.165, align 2, !tbaa !240
  %i.cz = trunc i16 %i.cy to i8
  %i.da = getelementptr i8, ptr %.13964, i64 1
  store i8 %i.cz, ptr %.13964, align 1, !tbaa !237
  %i.db = icmp ult ptr %i.cx, %i.u
  br i1 %i.db, label %.lr.ph66, label %unicode_char.exit, !llvm.loop !421

unicode_char.exit:                                ; preds = %.lr.ph66, %middle.block, %vec.epilog.middle.block, %.preheader, %_PyUnicode_DATA.exit19.i, %_PyUnicode_DATA.exit.i, %bb.d, %bb.c, %bb.a, %_PyUnicode_DATA.exit, %ucs2lib_find_max_char.exit
  %.040 = phi ptr [ %i.at, %_PyUnicode_DATA.exit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ null, %ucs2lib_find_max_char.exit ], [ %i.j, %_PyUnicode_DATA.exit.i ], [ %i.i, %bb.c ], [ null, %bb.d ], [ %i.j, %_PyUnicode_DATA.exit19.i ], [ %i.at, %.preheader ], [ %i.at, %middle.block ], [ %i.at, %vec.epilog.middle.block ], [ %i.at, %.lr.ph66 ]
  ret ptr %.040
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_PyUnicode_FromUCS4(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %2 = ptrtoaddr ptr %0 to i64                    ; 2 uses
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
  %.067.lcssa = phi ptr [ %.0.i78, %_PyUnicode_DATA.exit ], [ %i.ck, %.lr.ph110 ] ; 6 uses
  %.065.lcssa = phi ptr [ %0, %_PyUnicode_DATA.exit ], [ %i.cj, %.lr.ph110 ] ; 8 uses
  %i.az = icmp ult ptr %.065.lcssa, %i.u
  br i1 %i.az, label %.lr.ph115.preheader, label %unicode_char.exit

.lr.ph115.preheader:                              ; preds = %.preheader
  %i.ba = ptrtoaddr ptr %.065.lcssa to i64
  %i.bb = add i64 %.idx95, %2
  %i.bc = xor i64 %i.ba, -1
  %i.bd = add i64 %i.bb, %i.bc                    ; 4 uses
  %i.be = lshr i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.bd, 140
  br i1 %min.iters.check165, label %.lr.ph115.preheader179, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph115.preheader
  %i.bg = lshr i64 %i.bd, 2
  %i.bh = getelementptr i8, ptr %.067.lcssa, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 1
  %i.bj = and i64 %i.bd, -4
  %i.bk = getelementptr i8, ptr %.065.lcssa, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  %bound0 = icmp ult ptr %.067.lcssa, %i.bl
  %bound1 = icmp ult ptr %.065.lcssa, %i.bi
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph115.preheader179, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck
  %n.vec167 = and i64 %i.bf, 9223372036854775800  ; 4 uses
  %i.bm = shl i64 %n.vec167, 2
  %i.bn = getelementptr i8, ptr %.065.lcssa, i64 %i.bm
  %i.bo = getelementptr i8, ptr %.067.lcssa, i64 %n.vec167
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next174, %vector.body168 ] ; 3 uses
  %i.bp = shl i64 %index169, 2
  %next.gep170 = getelementptr i8, ptr %.065.lcssa, i64 %i.bp ; 2 uses
  %next.gep171 = getelementptr i8, ptr %.067.lcssa, i64 %index169 ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep170, i64 16
  %wide.load172 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !43, !alias.scope !433
  %wide.load173 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !43, !alias.scope !433
  %i.br = trunc <4 x i32> %wide.load172 to <4 x i8>
  %i.bs = trunc <4 x i32> %wide.load173 to <4 x i8>
  %i.bt = getelementptr i8, ptr %next.gep171, i64 4
  store <4 x i8> %i.br, ptr %next.gep171, align 1, !tbaa !237, !alias.scope !434, !noalias !433
  store <4 x i8> %i.bs, ptr %i.bt, align 1, !tbaa !237, !alias.scope !434, !noalias !433
  %index.next174 = add nuw i64 %index169, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next174, %n.vec167
  br i1 %i.bu, label %middle.block175, label %vector.body168, !llvm.loop !427

middle.block175:                                  ; preds = %vector.body168
  %cmp.n176 = icmp eq i64 %i.bf, %n.vec167
  br i1 %cmp.n176, label %unicode_char.exit, label %.lr.ph115.preheader179

.lr.ph115.preheader179:                           ; preds = %vector.memcheck, %.lr.ph115.preheader, %middle.block175
  %.166114.ph = phi ptr [ %.065.lcssa, %vector.memcheck ], [ %.065.lcssa, %.lr.ph115.preheader ], [ %i.bn, %middle.block175 ]
  %.168113.ph = phi ptr [ %.067.lcssa, %vector.memcheck ], [ %.067.lcssa, %.lr.ph115.preheader ], [ %i.bo, %middle.block175 ]
  br label %.lr.ph115

.lr.ph110:                                        ; preds = %_PyUnicode_DATA.exit, %.lr.ph110
  %.065109 = phi ptr [ %i.cj, %.lr.ph110 ], [ %0, %_PyUnicode_DATA.exit ] ; 5 uses
  %.067108 = phi ptr [ %i.ck, %.lr.ph110 ], [ %.0.i78, %_PyUnicode_DATA.exit ] ; 5 uses
  %i.bv = load i32, ptr %.065109, align 4, !tbaa !43
  %i.bw = trunc i32 %i.bv to i8
  store i8 %i.bw, ptr %.067108, align 1, !tbaa !237
  %i.bx = getelementptr i8, ptr %.065109, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !43
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr i8, ptr %.067108, i64 1
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !237
  %i.cb = getelementptr i8, ptr %.065109, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !43
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr i8, ptr %.067108, i64 2
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !237
  %i.cf = getelementptr i8, ptr %.065109, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !43
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr i8, ptr %.067108, i64 3
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !237
  %i.cj = getelementptr i8, ptr %.065109, i64 16  ; 3 uses
  %i.ck = getelementptr i8, ptr %.067108, i64 4   ; 2 uses
  %i.cl = icmp ult ptr %i.cj, %i.x
  br i1 %i.cl, label %.lr.ph110, label %.preheader, !llvm.loop !428

.lr.ph115:                                        ; preds = %.lr.ph115.preheader179, %.lr.ph115
  %.166114 = phi ptr [ %i.cm, %.lr.ph115 ], [ %.166114.ph, %.lr.ph115.preheader179 ] ; 2 uses
  %.168113 = phi ptr [ %i.cp, %.lr.ph115 ], [ %.168113.ph, %.lr.ph115.preheader179 ] ; 2 uses
  %i.cm = getelementptr i8, ptr %.166114, i64 4   ; 2 uses
  %i.cn = load i32, ptr %.166114, align 4, !tbaa !43
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr i8, ptr %.168113, i64 1
  store i8 %i.co, ptr %.168113, align 1, !tbaa !237
  %i.cq = icmp ult ptr %i.cm, %i.u
  br i1 %i.cq, label %.lr.ph115, label %unicode_char.exit, !llvm.loop !429

bb.y:                                             ; preds = %bb.u
  %i.cr = icmp ult i32 %.236.i, 65536
  %i.cs = getelementptr i8, ptr %i.at, i64 32
  %.val.i79 = load i32, ptr %i.cs, align 8        ; 3 uses
  %i.ct = and i32 %.val.i79, 32
  %.not.i80 = icmp eq i32 %i.ct, 0                ; 2 uses
  br i1 %i.cr, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %.not.i80, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cu = and i32 %.val.i79, 64
  %.not.i.i81 = icmp eq i32 %i.cu, 0
  %.0.v.i.i82 = select i1 %.not.i.i81, i64 56, i64 40
  %.0.i.i83 = getelementptr i8, ptr %i.at, i64 %.0.v.i.i82
  br label %_PyUnicode_DATA.exit86

bb.ab:                                            ; preds = %bb.z
  %i.cv = getelementptr i8, ptr %i.at, i64 56
  %.val4.i85 = load ptr, ptr %i.cv, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit86

_PyUnicode_DATA.exit86:                           ; preds = %bb.aa, %bb.ab
  %.0.i84 = phi ptr [ %.0.i.i83, %bb.aa ], [ %.val4.i85, %bb.ab ] ; 2 uses
  br i1 %i.y, label %.lr.ph, label %.preheader96

.preheader96:                                     ; preds = %.lr.ph, %_PyUnicode_DATA.exit86
  %.063.lcssa = phi ptr [ %.0.i84, %_PyUnicode_DATA.exit86 ], [ %i.dr, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %_PyUnicode_DATA.exit86 ], [ %i.dq, %.lr.ph ] ; 5 uses
  %i.cw = icmp ult ptr %.0.lcssa, %i.u
  br i1 %i.cw, label %.lr.ph107.preheader, label %unicode_char.exit

.lr.ph107.preheader:                              ; preds = %.preheader96
  %i.cx = ptrtoaddr ptr %.0.lcssa to i64
  %i.cy = add i64 %.idx95, %2
  %i.cz = xor i64 %i.cx, -1
  %i.da = add i64 %i.cy, %i.cz                    ; 2 uses
  %i.db = lshr i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.da, 28
  br i1 %min.iters.check, label %.lr.ph107.preheader181, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph107.preheader
  %n.vec = and i64 %i.dc, 9223372036854775800     ; 4 uses
  %i.dd = shl i64 %n.vec, 2
  %i.de = getelementptr i8, ptr %.0.lcssa, i64 %i.dd
  %i.df = shl nuw i64 %n.vec, 1
  %i.dg = getelementptr i8, ptr %.063.lcssa, i64 %i.df
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dh = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %i.dh ; 2 uses
  %i.di = shl i64 %index, 1
  %next.gep159 = getelementptr i8, ptr %.063.lcssa, i64 %i.di ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !43
  %wide.load160 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !43
  %i.dk = trunc <4 x i32> %wide.load to <4 x i16>
  %i.dl = trunc <4 x i32> %wide.load160 to <4 x i16>
  %i.dm = getelementptr i8, ptr %next.gep159, i64 8
  store <4 x i16> %i.dk, ptr %next.gep159, align 2, !tbaa !240
  store <4 x i16> %i.dl, ptr %i.dm, align 2, !tbaa !240
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !430

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %unicode_char.exit, label %.lr.ph107.preheader181

.lr.ph107.preheader181:                           ; preds = %.lr.ph107.preheader, %middle.block
  %.1106.ph = phi ptr [ %.0.lcssa, %.lr.ph107.preheader ], [ %i.de, %middle.block ]
  %.164105.ph = phi ptr [ %.063.lcssa, %.lr.ph107.preheader ], [ %i.dg, %middle.block ]
  br label %.lr.ph107

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit86, %.lr.ph
  %.0103 = phi ptr [ %i.dq, %.lr.ph ], [ %0, %_PyUnicode_DATA.exit86 ] ; 2 uses
  %.063102 = phi ptr [ %i.dr, %.lr.ph ], [ %.0.i84, %_PyUnicode_DATA.exit86 ] ; 2 uses
  %i.do = load <4 x i32>, ptr %.0103, align 4, !tbaa !43
  %i.dp = trunc <4 x i32> %i.do to <4 x i16>
  store <4 x i16> %i.dp, ptr %.063102, align 2, !tbaa !240
  %i.dq = getelementptr i8, ptr %.0103, i64 16    ; 3 uses
  %i.dr = getelementptr i8, ptr %.063102, i64 8   ; 2 uses
  %i.ds = icmp ult ptr %i.dq, %i.x
  br i1 %i.ds, label %.lr.ph, label %.preheader96, !llvm.loop !431

.lr.ph107:                                        ; preds = %.lr.ph107.preheader181, %.lr.ph107
  %.1106 = phi ptr [ %i.dt, %.lr.ph107 ], [ %.1106.ph, %.lr.ph107.preheader181 ] ; 2 uses
  %.164105 = phi ptr [ %i.dw, %.lr.ph107 ], [ %.164105.ph, %.lr.ph107.preheader181 ] ; 2 uses
  %i.dt = getelementptr i8, ptr %.1106, i64 4     ; 2 uses
  %i.du = load i32, ptr %.1106, align 4, !tbaa !43
  %i.dv = trunc i32 %i.du to i16
  %i.dw = getelementptr i8, ptr %.164105, i64 2
  store i16 %i.dv, ptr %.164105, align 2, !tbaa !240
  %i.dx = icmp ult ptr %i.dt, %i.u
  br i1 %i.dx, label %.lr.ph107, label %unicode_char.exit, !llvm.loop !432

bb.ac:                                            ; preds = %bb.y
  br i1 %.not.i80, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dy = and i32 %.val.i79, 64
  %.not.i.i89 = icmp eq i32 %i.dy, 0
  %.0.v.i.i90 = select i1 %.not.i.i89, i64 56, i64 40
  %.0.i.i91 = getelementptr i8, ptr %i.at, i64 %.0.v.i.i90
  br label %_PyUnicode_DATA.exit94

bb.ae:                                            ; preds = %bb.ac
  %i.dz = getelementptr i8, ptr %i.at, i64 56
  %.val4.i93 = load ptr, ptr %i.dz, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit94

_PyUnicode_DATA.exit94:                           ; preds = %bb.ad, %bb.ae
  %.0.i92 = phi ptr [ %.0.i.i91, %bb.ad ], [ %.val4.i93, %bb.ae ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0.i92, ptr align 4 %0, i64 %.idx95, i1 false)
  br label %unicode_char.exit

unicode_char.exit:                                ; preds = %.lr.ph107, %.lr.ph115, %middle.block, %middle.block175, %.preheader96, %.preheader, %_PyUnicode_DATA.exit19.i, %_PyUnicode_DATA.exit.i, %bb.d, %bb.c, %bb.a, %_PyUnicode_DATA.exit94, %ucs4lib_find_max_char.exit
  %.069 = phi ptr [ %i.at, %_PyUnicode_DATA.exit94 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ null, %ucs4lib_find_max_char.exit ], [ %i.at, %.preheader ], [ %i.h, %_PyUnicode_DATA.exit.i ], [ %i.g, %bb.c ], [ null, %bb.d ], [ %i.h, %_PyUnicode_DATA.exit19.i ], [ %i.at, %.preheader96 ], [ %i.at, %middle.block175 ], [ %i.at, %middle.block ], [ %i.at, %.lr.ph115 ], [ %i.at, %.lr.ph107 ]
  ret ptr %.069
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @_PyUnicode_FindMaxChar(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val24 = load i64, ptr %i.b, align 8, !tbaa !239
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
  %.val4.i = load ptr, ptr %i.n, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.g, %bb.h
  %.0.i27 = phi ptr [ %.val4.i, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.o = zext nneg i32 %i.l to i64                ; 2 uses
  %i.p = mul i64 %2, %i.o                         ; 3 uses
  %i.q = getelementptr i8, ptr %.0.i27, i64 %i.p  ; 9 uses
  %i.r = mul i64 %1, %i.o                         ; 3 uses
  %i.s = getelementptr i8, ptr %.0.i27, i64 %i.r  ; 9 uses
  switch i32 %i.l, label %bb.y [
    i32 1, label %.preheader
    i32 2, label %bb.l
    i32 4, label %bb.r
  ]

.preheader:                                       ; preds = %_PyUnicode_DATA.exit, %.thread31.i
  %.019.i = phi ptr [ %i.aa, %.thread31.i ], [ %i.s, %_PyUnicode_DATA.exit ] ; 4 uses
  %i.t = icmp ult ptr %.019.i, %i.q
  br i1 %i.t, label %bb.i, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.i:                                             ; preds = %.preheader
  %i.u = ptrtoint ptr %.019.i to i64
  %i.v = and i64 %i.u, 7
  %.not.i28 = icmp eq i64 %i.v, 0
  br i1 %.not.i28, label %.preheader.i, label %.thread31.i

.preheader.i:                                     ; preds = %bb.i, %bb.j
  %.017.i = phi ptr [ %i.w, %bb.j ], [ %.019.i, %bb.i ] ; 4 uses
  %i.w = getelementptr i8, ptr %.017.i, i64 8     ; 2 uses
  %.not26.i = icmp ugt ptr %i.w, %i.q
  br i1 %.not26.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader.i
  %i.x = load i64, ptr %.017.i, align 8, !tbaa !226
  %i.y = and i64 %i.x, -9187201950435737472
  %.not27.i = icmp eq i64 %i.y, 0
  br i1 %.not27.i, label %.preheader.i, label %PyUnicode_MAX_CHAR_VALUE.exit, !llvm.loop !0

bb.k:                                             ; preds = %.preheader.i
  %i.z = icmp eq ptr %.017.i, %i.q
  br i1 %i.z, label %PyUnicode_MAX_CHAR_VALUE.exit, label %.thread31.i

.thread31.i:                                      ; preds = %bb.k, %bb.i
  %.2.i = phi ptr [ %.019.i, %bb.i ], [ %.017.i, %bb.k ] ; 2 uses
  %i.aa = getelementptr i8, ptr %.2.i, i64 1
  %i.ab = load i8, ptr %.2.i, align 1, !tbaa !237
  %.not28.i = icmp sgt i8 %i.ab, -1
  br i1 %.not28.i, label %.preheader, label %PyUnicode_MAX_CHAR_VALUE.exit, !llvm.loop !1

bb.l:                                             ; preds = %_PyUnicode_DATA.exit
  %gepdiff54 = sub i64 %i.p, %i.r
  %i.ac = ashr exact i64 %gepdiff54, 1
  %i.ad = and i64 %i.ac, -4
  %i.ae = getelementptr [2 x i8], ptr %i.s, i64 %i.ad ; 4 uses
  %i.af = icmp ult ptr %i.s, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %.preheader.i29

.preheader.i29:                                   ; preds = %.loopexit.i, %.loopexit.i.jt4294967040, %.loopexit.i.jt4294901760, %bb.l
  %.029.lcssa.i = phi i32 [ -128, %bb.l ], [ -65536, %.loopexit.i.jt4294901760 ], [ -256, %.loopexit.i.jt4294967040 ], [ %.0294975.i, %.loopexit.i ]
  %.026.lcssa.i = phi ptr [ %i.s, %bb.l ], [ %i.ap, %.loopexit.i.jt4294901760 ], [ %i.ar, %.loopexit.i.jt4294967040 ], [ %i.an, %.loopexit.i ] ; 2 uses
  %.025.lcssa.i = phi i32 [ 127, %bb.l ], [ 65535, %.loopexit.i.jt4294901760 ], [ 255, %.loopexit.i.jt4294967040 ], [ %.0255172.i, %.loopexit.i ] ; 2 uses
  %i.ag = icmp ult ptr %.026.lcssa.i, %i.q
end_hunk_1
begin_hunk_2_@PyUnicode_AsEncodedUnicode:bb.a
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
  %i.e = load i8, ptr %i.d, align 1, !tbaa !237
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #34
  %.not19 = icmp eq i64 %1, %i.f
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
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
  %i.i = load ptr, ptr @PyExc_UnicodeDecodeError, align 8, !tbaa !227
  %i.j = load i64, ptr %i.b, align 8, !tbaa !226  ; 2 uses
  %i.k = add i64 %i.j, 1
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !259
  %i.m = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %i.i, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.166, ptr noundef nonnull %0, i64 noundef %1, i64 noundef %i.j, i64 noundef %i.k, ptr noundef %i.l) #33 ; 5 uses
  %.not21 = icmp eq ptr %i.m, null
  br i1 %.not21, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call ptr @PyCodec_StrictErrors(ptr noundef nonnull %i.m) #33 ; 0 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !237  ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.m, align 8, !tbaa !237
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.m) #33
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.167) #33
  br label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.d
  %i.s = call ptr @PyErr_NoMemory() #33           ; 0 uses
  br label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !258
  %i.u = load i64, ptr %i.b, align 8, !tbaa !226
  %i.v = call ptr @PyUnicode_FromWideChar(ptr noundef %i.t, i64 noundef %i.u)
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !258
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 11840
  %i.e = load i32, ptr %i.d, align 8, !tbaa !264
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 11856
  %i.g = load i32, ptr %i.f, align 8, !tbaa !265
  %i.h = getelementptr i8, ptr %i.c, i64 11848
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !266
  %i.j = tail call fastcc ptr @unicode_decode_utf8(ptr noundef nonnull %0, i64 noundef %i.a, i32 noundef %i.g, ptr noundef %i.i, ptr noundef null)
  br label %PyUnicode_DecodeFSDefaultAndSize.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.c, i64 11832
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !267  ; 2 uses
  %.not18.i = icmp eq ptr %i.l, null
  br i1 %.not18.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.c, i64 11848
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !266
  %i.o = tail call ptr @PyUnicode_Decode(ptr noundef nonnull %0, i64 noundef %i.a, ptr noundef nonnull %i.l, ptr noundef %i.n)
  br label %PyUnicode_DecodeFSDefaultAndSize.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call ptr @_PyInterpreterState_GetConfig(ptr noundef nonnull %i.c) #33
  %i.q = getelementptr i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !268
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 11840
  %i.d = load i32, ptr %i.c, align 8, !tbaa !264
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 11856
  %i.f = load i32, ptr %i.e, align 8, !tbaa !265
  %i.g = getelementptr i8, ptr %i.b, i64 11848
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !266
  %i.i = tail call fastcc ptr @unicode_decode_utf8(ptr noundef %0, i64 noundef %1, i32 noundef %i.f, ptr noundef %i.h, ptr noundef null)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.b, i64 11832
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !267  ; 2 uses
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.b, i64 11848
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !266
  %i.n = tail call ptr @PyUnicode_Decode(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.k, ptr noundef %i.m)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = tail call ptr @_PyInterpreterState_GetConfig(ptr noundef nonnull %i.b) #33
  %i.p = getelementptr i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !268
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
  br i1 %.not71, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %4, align 8, !tbaa !226
  br label %bb.aa

bb.d:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !237     ; 2 uses
  %i.b = icmp sgt i8 %i.a, -1
  br i1 %i.b, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %.not70 = icmp eq ptr %4, null
  br i1 %.not70, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %4, align 8, !tbaa !226
  %.pre = load i8, ptr %0, align 1, !tbaa !237
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.c = phi i8 [ %.pre, %bb.f ], [ %i.a, %bb.e ] ; 2 uses
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.d
  %i.f = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.d
  %i.g = getelementptr i8, ptr %i.f, i64 -8192
  %i.h = icmp slt i8 %i.c, 0
  %i.i = select i1 %i.h, ptr %i.g, ptr %i.e
  br label %bb.aa

bb.h:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %1, 9223372036854775751
  br i1 %i.j, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.k = tail call ptr @PyErr_NoMemory() #33      ; 0 uses
  br label %bb.aa

.thread:                                          ; preds = %bb.d, %bb.h
  %i.l = getelementptr i8, ptr %0, i64 %1         ; 8 uses
  %i.m = tail call fastcc i64 @find_first_nonascii(ptr noundef %0, ptr noundef %i.l) ; 4 uses
  %i.n = icmp eq i64 %i.m, %1
  br i1 %i.n, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.thread
  %i.o = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef 127) ; 6 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.aa, label %bb.k

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
  %.val4.i = load ptr, ptr %i.t, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.l, %bb.m
  %.0.i = phi ptr [ %.0.i.i, %bb.l ], [ %.val4.i, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i, ptr align 1 %0, i64 %1, i1 false)
  %.not69 = icmp eq ptr %4, null
  br i1 %.not69, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %_PyUnicode_DATA.exit
  store i64 %1, ptr %4, align 8, !tbaa !226
  br label %bb.aa

bb.o:                                             ; preds = %.thread
  %i.u = getelementptr i8, ptr %0, i64 %i.m       ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !237   ; 3 uses
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

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader40.i
  %.030.lcssa.i = phi i64 [ 0, %.preheader40.i ], [ %i.an, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %0, %.preheader40.i ], [ %i.ae, %.lr.ph.i ] ; 3 uses
  %i.ad = getelementptr i8, ptr %.0.lcssa.i, i64 8
  %.not3851.i = icmp ugt ptr %i.ad, %i.l
  br i1 %.not3851.i, label %.loopexit.i, label %.lr.ph54.i

.lr.ph.i:                                         ; preds = %.preheader40.i, %.lr.ph.i
  %.043.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %0, %.preheader40.i ] ; 2 uses
  %.03042.i = phi i64 [ %i.an, %.lr.ph.i ], [ 0, %.preheader40.i ]
  %i.ae = getelementptr i8, ptr %.043.i, i64 1    ; 3 uses
  %i.af = load i8, ptr %.043.i, align 1, !tbaa !237
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = xor i32 %i.ag, -1
  %i.ai = lshr i32 %i.ah, 7
  %i.aj = lshr i32 %i.ag, 6
  %i.ak = or i32 %i.ai, %i.aj
  %i.al = and i32 %i.ak, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add i64 %.03042.i, %i.am                ; 2 uses
  %i.ao = ptrtoint ptr %i.ae to i64
  %i.ap = and i64 %i.ao, 7
  %.not.i72 = icmp eq i64 %i.ap, 0
  br i1 %.not.i72, label %.preheader.i, label %.lr.ph.i, !llvm.loop !560

.lr.ph54.i:                                       ; preds = %.preheader.i, %._crit_edge.i
  %.153.i = phi ptr [ %.2.lcssa.i, %._crit_edge.i ], [ %.0.lcssa.i, %.preheader.i ] ; 5 uses
  %.13152.i = phi i64 [ %i.bn, %._crit_edge.i ], [ %.030.lcssa.i, %.preheader.i ]
  %i.aq = ptrtoint ptr %.153.i to i64
  %i.ar = sub i64 %i.z, %i.aq
  %i.as = icmp sgt i64 %i.ar, 2040
  %i.at = getelementptr i8, ptr %.153.i, i64 2040
  %spec.select.i = select i1 %i.as, ptr %i.at, ptr %i.l ; 2 uses
  %i.au = getelementptr i8, ptr %.153.i, i64 8    ; 2 uses
  %.not3945.i = icmp ugt ptr %i.au, %spec.select.i
  br i1 %.not3945.i, label %._crit_edge.i, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph54.i, %.lr.ph48.i
  %i.av = phi ptr [ %i.bd, %.lr.ph48.i ], [ %i.au, %.lr.ph54.i ] ; 3 uses
  %.247.i = phi ptr [ %i.av, %.lr.ph48.i ], [ %.153.i, %.lr.ph54.i ]
  %.03446.i = phi i64 [ %i.bc, %.lr.ph48.i ], [ 0, %.lr.ph54.i ]
  %i.aw = load i64, ptr %.247.i, align 8, !tbaa !226 ; 2 uses
  %i.ax = xor i64 %i.aw, -1
  %i.ay = lshr i64 %i.ax, 7
  %i.az = lshr i64 %i.aw, 6
  %i.ba = or i64 %i.ay, %i.az
  %i.bb = and i64 %i.ba, 72340172838076673
  %i.bc = add i64 %i.bb, %.03446.i                ; 2 uses
  %i.bd = getelementptr i8, ptr %i.av, i64 8      ; 2 uses
  %.not39.i = icmp ugt ptr %i.bd, %spec.select.i
  br i1 %.not39.i, label %._crit_edge.i, label %.lr.ph48.i, !llvm.loop !561

._crit_edge.i:                                    ; preds = %.lr.ph48.i, %.lr.ph54.i
  %.034.lcssa.i = phi i64 [ 0, %.lr.ph54.i ], [ %i.bc, %.lr.ph48.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.153.i, %.lr.ph54.i ], [ %i.av, %.lr.ph48.i ] ; 3 uses
  %i.be = and i64 %.034.lcssa.i, 71777214294589695
  %i.bf = lshr i64 %.034.lcssa.i, 8
  %i.bg = and i64 %i.bf, 71777214294589695
  %i.bh = add nuw nsw i64 %i.bg, %i.be            ; 2 uses
  %i.bi = lshr i64 %i.bh, 16
  %i.bj = add nuw nsw i64 %i.bi, %i.bh            ; 2 uses
  %i.bk = lshr i64 %i.bj, 32
  %i.bl = add nuw nsw i64 %i.bk, %i.bj
  %i.bm = and i64 %i.bl, 2047
  %i.bn = add i64 %i.bm, %.13152.i                ; 2 uses
  %i.bo = getelementptr i8, ptr %.2.lcssa.i, i64 8
  %.not38.i = icmp ugt ptr %i.bo, %i.l
  br i1 %.not38.i, label %.loopexit.i, label %.lr.ph54.i, !llvm.loop !562

.loopexit.i:                                      ; preds = %._crit_edge.i, %.preheader.i, %bb.p
  %.232.i = phi i64 [ 0, %bb.p ], [ %.030.lcssa.i, %.preheader.i ], [ %i.bn, %._crit_edge.i ] ; 3 uses
  %.3.i = phi ptr [ %0, %bb.p ], [ %.0.lcssa.i, %.preheader.i ], [ %.2.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.bp = icmp ult ptr %.3.i, %i.l
  br i1 %i.bp, label %.lr.ph60.i.preheader, label %utf8_count_codepoints.exit

.lr.ph60.i.preheader:                             ; preds = %.loopexit.i
  %i.bq = ptrtoaddr ptr %.3.i to i64
  %i.br = add i64 %1, %5
  %i.bs = sub i64 %i.br, %i.bq                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.bs, 4
  br i1 %min.iters.check, label %.lr.ph60.i.preheader115, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph60.i.preheader
  %n.vec = and i64 %i.bs, -4                      ; 3 uses
  %i.bt = getelementptr i8, ptr %.3.i, i64 %n.vec
  %i.bu = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.232.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.bu, %vector.ph ], [ %i.ck, %vector.body ]
  %vec.phi113 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cl, %vector.body ]
  %next.gep = getelementptr i8, ptr %.3.i, i64 %index ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !237
  %wide.load114 = load <2 x i8>, ptr %i.bv, align 1, !tbaa !237
  %i.bw = zext <2 x i8> %wide.load to <2 x i32>   ; 2 uses
  %i.bx = zext <2 x i8> %wide.load114 to <2 x i32> ; 2 uses
  %i.by = xor <2 x i32> %i.bw, splat (i32 -1)
  %i.bz = xor <2 x i32> %i.bx, splat (i32 -1)
  %i.ca = lshr <2 x i32> %i.by, splat (i32 7)
  %i.cb = lshr <2 x i32> %i.bz, splat (i32 7)
  %i.cc = lshr <2 x i32> %i.bw, splat (i32 6)
  %i.cd = lshr <2 x i32> %i.bx, splat (i32 6)
  %i.ce = or <2 x i32> %i.ca, %i.cc
  %i.cf = or <2 x i32> %i.cb, %i.cd
  %i.cg = and <2 x i32> %i.ce, splat (i32 1)
  %i.ch = and <2 x i32> %i.cf, splat (i32 1)
  %i.ci = zext nneg <2 x i32> %i.cg to <2 x i64>
  %i.cj = zext nneg <2 x i32> %i.ch to <2 x i64>
  %i.ck = add <2 x i64> %vec.phi, %i.ci           ; 2 uses
  %i.cl = add <2 x i64> %vec.phi113, %i.cj        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !563

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cl, %i.ck
  %i.cn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %utf8_count_codepoints.exit, label %.lr.ph60.i.preheader115

.lr.ph60.i.preheader115:                          ; preds = %.lr.ph60.i.preheader, %middle.block
  %.458.i.ph = phi ptr [ %.3.i, %.lr.ph60.i.preheader ], [ %i.bt, %middle.block ]
  %.33357.i.ph = phi i64 [ %.232.i, %.lr.ph60.i.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %.lr.ph60.i.preheader115, %.lr.ph60.i
  %.458.i = phi ptr [ %i.co, %.lr.ph60.i ], [ %.458.i.ph, %.lr.ph60.i.preheader115 ] ; 2 uses
  %.33357.i = phi i64 [ %i.cx, %.lr.ph60.i ], [ %.33357.i.ph, %.lr.ph60.i.preheader115 ]
  %i.co = getelementptr i8, ptr %.458.i, i64 1    ; 2 uses
  %i.cp = load i8, ptr %.458.i, align 1, !tbaa !237
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = xor i32 %i.cq, -1
  %i.cs = lshr i32 %i.cr, 7
  %i.ct = lshr i32 %i.cq, 6
  %i.cu = or i32 %i.cs, %i.ct
  %i.cv = and i32 %i.cu, 1
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = add i64 %.33357.i, %i.cw                ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.co, %i.l
  br i1 %exitcond.not.i, label %utf8_count_codepoints.exit, label %.lr.ph60.i, !llvm.loop !564

utf8_count_codepoints.exit:                       ; preds = %.lr.ph60.i, %middle.block, %.loopexit.i
  %.333.lcssa.i = phi i64 [ %.232.i, %.loopexit.i ], [ %i.cn, %middle.block ], [ %i.cx, %.lr.ph60.i ] ; 2 uses
  %i.cy = icmp ult i8 %i.v, -60
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %utf8_count_codepoints.exit
  %i.cz = icmp samesign ult i8 %i.v, -16
  %. = select i1 %i.cz, i32 65535, i32 1114111
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %utf8_count_codepoints.exit, %bb.o
  %i.da = phi i1 [ true, %bb.o ], [ false, %bb.q ], [ true, %utf8_count_codepoints.exit ]
  %.056 = phi i32 [ 127, %bb.o ], [ %., %bb.q ], [ 255, %utf8_count_codepoints.exit ]
  %.0 = phi i64 [ %1, %bb.o ], [ %.333.lcssa.i, %bb.q ], [ %.333.lcssa.i, %utf8_count_codepoints.exit ]
  %i.db = tail call ptr @PyUnicode_New(i64 noundef %.0, i32 noundef %.056) ; 5 uses
  %.not = icmp eq ptr %i.db, null
  br i1 %.not, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @_PyUnicodeWriter_InitWithBuffer(ptr noundef nonnull %6, ptr noundef nonnull %i.db) #33
  br i1 %i.da, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr i8, ptr %i.db, i64 32
  %.val.i73 = load i32, ptr %i.dc, align 8        ; 2 uses
  %i.dd = and i32 %.val.i73, 32
  %.not.i74 = icmp eq i32 %i.dd, 0
  br i1 %.not.i74, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = and i32 %.val.i73, 64
  %.not.i.i75 = icmp eq i32 %i.de, 0
  %.0.v.i.i76 = select i1 %.not.i.i75, i64 56, i64 40
  %.0.i.i77 = getelementptr i8, ptr %i.db, i64 %.0.v.i.i76
  br label %_PyUnicode_DATA.exit80

bb.v:                                             ; preds = %bb.t
  %i.df = getelementptr i8, ptr %i.db, i64 56
  %.val4.i79 = load ptr, ptr %i.df, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit80

_PyUnicode_DATA.exit80:                           ; preds = %bb.u, %bb.v
  %.0.i78 = phi ptr [ %.0.i.i77, %bb.u ], [ %.val4.i79, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i78, ptr align 1 %0, i64 %i.m, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.m, ptr %i.dg, align 8, !tbaa !249
  br label %bb.w

bb.w:                                             ; preds = %_PyUnicode_DATA.exit80, %bb.s
  %.058 = phi ptr [ %i.u, %_PyUnicode_DATA.exit80 ], [ %0, %bb.s ]
  %i.dh = call fastcc i32 @unicode_decode_utf8_impl(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %.058, ptr noundef %i.l, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  %i.di = icmp slt i32 %i.dh, 0
  br i1 %i.di, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %6) #33
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dj = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %6) #33
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1 = phi ptr [ null, %bb.x ], [ %i.dj, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.c, %bb.b, %_PyUnicode_DATA.exit, %bb.n, %bb.j, %bb.r, %bb.z, %bb.i, %bb.g
  %.4 = phi ptr [ null, %bb.r ], [ %i.i, %bb.g ], [ null, %bb.i ], [ %i.o, %_PyUnicode_DATA.exit ], [ null, %bb.j ], [ %i.o, %bb.n ], [ %.1, %bb.z ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.c ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 131073) i32 @PyUnicode_FSConverter(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !227    ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !237  ; 2 uses
  %.not.i25 = icmp sgt i32 %i.c, -1
  br i1 %.not.i25, label %bb.c, label %Py_DECREF.exit26

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !237
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit26

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #33
  br label %Py_DECREF.exit26

Py_DECREF.exit26:                                 ; preds = %bb.b, %bb.c, %bb.d
  store ptr null, ptr %1, align 8, !tbaa !227
  br label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyOS_FSPath(ptr noundef nonnull %0) #33 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.i = getelementptr i8, ptr %.val, i64 168
  %.val29 = load i64, ptr %i.i, align 8, !tbaa !234
  %i.j = and i64 %.val29, 134217728
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 6 uses
  %i.m = getelementptr i8, ptr %i.l, i64 11840
  %i.n = load i32, ptr %i.m, align 8, !tbaa !264
  %.not.i30 = icmp eq i32 %i.n, 0
  br i1 %.not.i30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %i.l, i64 11856
  %i.p = load i32, ptr %i.o, align 8, !tbaa !265
  %i.q = getelementptr i8, ptr %i.l, i64 11848
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !266
  %i.s = tail call fastcc ptr @unicode_encode_utf8(ptr noundef nonnull %i.f, i32 noundef %i.p, ptr noundef %i.r)
  br label %PyUnicode_EncodeFSDefault.exit

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.l, i64 11832
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !267  ; 2 uses
  %.not15.i = icmp eq ptr %i.u, null
  br i1 %.not15.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %i.l, i64 11848
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !266
  %i.x = tail call ptr @PyUnicode_AsEncodedString(ptr noundef nonnull %i.f, ptr noundef nonnull %i.u, ptr noundef %i.w)
  br label %PyUnicode_EncodeFSDefault.exit

bb.k:                                             ; preds = %bb.i
  %i.y = tail call ptr @_PyInterpreterState_GetConfig(ptr noundef nonnull %i.l) #33
  %i.z = getelementptr i8, ptr %i.y, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !268
  %i.ab = tail call fastcc i32 @get_error_handler_wide(ptr noundef %i.aa)
  %i.ac = tail call fastcc ptr @unicode_encode_locale(ptr noundef nonnull %i.f, i32 noundef %i.ab, i32 noundef 0)
  br label %PyUnicode_EncodeFSDefault.exit

PyUnicode_EncodeFSDefault.exit:                   ; preds = %bb.h, %bb.j, %bb.k
  %.0.i = phi ptr [ %i.s, %bb.h ], [ %i.x, %bb.j ], [ %i.ac, %bb.k ] ; 2 uses
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !237 ; 2 uses
  %.not.i23 = icmp sgt i32 %i.ad, -1
  br i1 %.not.i23, label %bb.l, label %Py_DECREF.exit24

bb.l:                                             ; preds = %PyUnicode_EncodeFSDefault.exit
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.f, align 8, !tbaa !237
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %Py_DECREF.exit24

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #33
  br label %Py_DECREF.exit24

Py_DECREF.exit24:                                 ; preds = %PyUnicode_EncodeFSDefault.exit, %bb.l, %bb.m
  %.not21 = icmp eq ptr %.0.i, null
  br i1 %.not21, label %Py_DECREF.exit, label %bb.n

bb.n:                                             ; preds = %bb.f, %Py_DECREF.exit24
  %.0 = phi ptr [ %.0.i, %Py_DECREF.exit24 ], [ %i.f, %bb.f ] ; 6 uses
  %i.ag = getelementptr i8, ptr %.0, i64 16
  %.0.val = load i64, ptr %i.ag, align 8, !tbaa !263
  %i.ah = getelementptr i8, ptr %.0, i64 32
  %i.ai = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #34
  %.not22 = icmp eq i64 %.0.val, %i.ai
  br i1 %.not22, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.aj, ptr noundef nonnull @.str.54) #33
  %i.ak = load i32, ptr %.0, align 8, !tbaa !237  ; 2 uses
  %.not.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i, label %bb.p, label %Py_DECREF.exit

bb.p:                                             ; preds = %bb.o
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %.0, align 8, !tbaa !237
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.q, label %Py_DECREF.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0) #33
  br label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.n
  store ptr %.0, ptr %1, align 8, !tbaa !227
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.q, %bb.p, %bb.o, %Py_DECREF.exit24, %bb.e, %bb.r, %Py_DECREF.exit26
  %.017 = phi i32 [ 1, %Py_DECREF.exit26 ], [ 0, %bb.e ], [ 0, %Py_DECREF.exit24 ], [ 131072, %bb.r ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ]
  ret i32 %.017
}

declare ptr @PyOS_FSPath(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 131073) i32 @PyUnicode_FSDecoder(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !227    ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !237  ; 2 uses
  %.not.i30 = icmp sgt i32 %i.c, -1
  br i1 %.not.i30, label %bb.c, label %Py_DECREF.exit31

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !237
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit31

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #33
  br label %Py_DECREF.exit31

Py_DECREF.exit31:                                 ; preds = %bb.b, %bb.c, %bb.d
  store ptr null, ptr %1, align 8, !tbaa !227
  br label %Py_DECREF.exit27

bb.e:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyOS_FSPath(ptr noundef nonnull %0) #33 ; 11 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_DECREF.exit27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val36 = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.i = getelementptr i8, ptr %.val36, i64 168
  %.val38 = load i64, ptr %i.i, align 8, !tbaa !234 ; 2 uses
  %i.j = and i64 %.val38, 268435456
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.k = and i64 %.val38, 134217728
  %.not24 = icmp eq i64 %i.k, 0
  br i1 %.not24, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr i8, ptr %i.f, i64 32       ; 3 uses
  %i.m = getelementptr i8, ptr %i.f, i64 16
  %.val39 = load i64, ptr %i.m, align 8, !tbaa !263 ; 3 uses
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46   ; 6 uses
  %i.p = getelementptr i8, ptr %i.o, i64 11840
  %i.q = load i32, ptr %i.p, align 8, !tbaa !264
  %.not.i40 = icmp eq i32 %i.q, 0
  br i1 %.not.i40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %i.o, i64 11856
  %i.s = load i32, ptr %i.r, align 8, !tbaa !265
  %i.t = getelementptr i8, ptr %i.o, i64 11848
end_hunk_2
begin_hunk_3_@unicode_askind:bb.a
  %i.t = zext i8 %i.s to i16
  %i.u = getelementptr i8, ptr %i.e, i64 4
  store i16 %i.t, ptr %i.u, align 2, !tbaa !240
  %i.v = getelementptr i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !237
  %i.x = zext i8 %i.w to i16
  %i.y = getelementptr i8, ptr %i.e, i64 6
  store i16 %i.x, ptr %i.y, align 2, !tbaa !240
  %i.z = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %i.aa = getelementptr i8, ptr %i.e, i64 8       ; 2 uses
  br label %.lr.ph121.prol.loopexit

.lr.ph121.prol.loopexit:                          ; preds = %.lr.ph121.prol, %.lr.ph121.preheader
  %.088120.unr = phi ptr [ %1, %.lr.ph121.preheader ], [ %i.z, %.lr.ph121.prol ]
  %.090119.unr = phi ptr [ %i.e, %.lr.ph121.preheader ], [ %i.aa, %.lr.ph121.prol ]
  %.lcssa217.unr = phi ptr [ poison, %.lr.ph121.preheader ], [ %i.z, %.lr.ph121.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph121.preheader ], [ %i.aa, %.lr.ph121.prol ]
  %i.ab = icmp ult i64 %i.j, 4
  br i1 %i.ab, label %.preheader.loopexit, label %.lr.ph121

.preheader.loopexit:                              ; preds = %.lr.ph121, %.lr.ph121.prol.loopexit
  %.lcssa217 = phi ptr [ %.lcssa217.unr, %.lr.ph121.prol.loopexit ], [ %i.cc, %.lr.ph121 ] ; 2 uses
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph121.prol.loopexit ], [ %i.cd, %.lr.ph121 ]
  %.pre = ptrtoaddr ptr %.lcssa217 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.d
  %.088.lcssa135.pre-phi = phi i64 [ %.pre, %.preheader.loopexit ], [ %i.a, %bb.d ] ; 2 uses
  %.090.lcssa = phi ptr [ %.lcssa, %.preheader.loopexit ], [ %i.e, %bb.d ] ; 8 uses
  %.088.lcssa = phi ptr [ %.lcssa217, %.preheader.loopexit ], [ %1, %bb.d ] ; 9 uses
  %i.ac = icmp ult ptr %.088.lcssa, %i.f
  br i1 %i.ac, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.ad = add i64 %2, %i.a                        ; 2 uses
  %i.ae = sub i64 %i.ad, %.088.lcssa135.pre-phi   ; 8 uses
  %scevgep136 = getelementptr i8, ptr %.088.lcssa, i64 %i.ae ; 2 uses
  %min.iters.check189 = icmp ult i64 %i.ae, 4
  br i1 %min.iters.check189, label %.lr.ph126.preheader, label %vector.memcheck190

vector.memcheck190:                               ; preds = %iter.check
  %i.af = sub i64 %i.ad, %.088.lcssa135.pre-phi
  %i.ag = shl i64 %i.af, 1
  %i.ah = getelementptr i8, ptr %.090.lcssa, i64 %i.ag
  %bound0191 = icmp ult ptr %.090.lcssa, %scevgep136
  %bound1192 = icmp ult ptr %.088.lcssa, %i.ah
  %found.conflict193 = and i1 %bound0191, %bound1192
  br i1 %found.conflict193, label %.lr.ph126.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck190
  %min.iters.check194 = icmp ult i64 %i.ae, 16
  br i1 %min.iters.check194, label %vec.epilog.ph, label %vector.ph195

vector.ph195:                                     ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.ae, 12
  %n.vec196 = and i64 %i.ae, -16                  ; 5 uses
  %i.aj = getelementptr i8, ptr %.088.lcssa, i64 %n.vec196
  %i.ak = shl i64 %n.vec196, 1
  %i.al = getelementptr i8, ptr %.090.lcssa, i64 %i.ak
  br label %vector.body197

vector.body197:                                   ; preds = %vector.ph195, %vector.body197
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next203, %vector.body197 ] ; 3 uses
  %next.gep199 = getelementptr i8, ptr %.088.lcssa, i64 %index198 ; 2 uses
  %i.am = shl i64 %index198, 1
  %next.gep200 = getelementptr i8, ptr %.090.lcssa, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep199, i64 8
  %wide.load201 = load <8 x i8>, ptr %next.gep199, align 1, !tbaa !237, !alias.scope !655
  %wide.load202 = load <8 x i8>, ptr %i.an, align 1, !tbaa !237, !alias.scope !655
  %i.ao = zext <8 x i8> %wide.load201 to <8 x i16>
  %i.ap = zext <8 x i8> %wide.load202 to <8 x i16>
  %i.aq = getelementptr i8, ptr %next.gep200, i64 16
  store <8 x i16> %i.ao, ptr %next.gep200, align 2, !tbaa !240, !alias.scope !656, !noalias !655
  store <8 x i16> %i.ap, ptr %i.aq, align 2, !tbaa !240, !alias.scope !656, !noalias !655
  %index.next203 = add nuw i64 %index198, 16      ; 2 uses
  %i.ar = icmp eq i64 %index.next203, %n.vec196
  br i1 %i.ar, label %middle.block204, label %vector.body197, !llvm.loop !642

middle.block204:                                  ; preds = %vector.body197
  %cmp.n205 = icmp eq i64 %i.ae, %n.vec196
  br i1 %cmp.n205, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block204
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph126.preheader, label %vec.epilog.ph, !prof !244

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec196, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec208 = and i64 %i.ae, -4                   ; 4 uses
  %i.as = getelementptr i8, ptr %.088.lcssa, i64 %n.vec208
  %i.at = shl i64 %n.vec208, 1
  %i.au = getelementptr i8, ptr %.090.lcssa, i64 %i.at
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index209 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next213, %vec.epilog.vector.body ] ; 3 uses
  %next.gep210 = getelementptr i8, ptr %.088.lcssa, i64 %index209
  %i.av = shl i64 %index209, 1
  %next.gep211 = getelementptr i8, ptr %.090.lcssa, i64 %i.av
  %wide.load212 = load <4 x i8>, ptr %next.gep210, align 1, !tbaa !237, !alias.scope !655
  %i.aw = zext <4 x i8> %wide.load212 to <4 x i16>
  store <4 x i16> %i.aw, ptr %next.gep211, align 2, !tbaa !240, !alias.scope !656, !noalias !655
  %index.next213 = add nuw i64 %index209, 4       ; 2 uses
  %i.ax = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !643

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n214 = icmp eq i64 %i.ae, %n.vec208
  br i1 %cmp.n214, label %.loopexit, label %.lr.ph126.preheader

.lr.ph126.preheader:                              ; preds = %iter.check, %vector.memcheck190, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.189125.ph = phi ptr [ %.088.lcssa, %iter.check ], [ %.088.lcssa, %vector.memcheck190 ], [ %i.aj, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  %.191124.ph = phi ptr [ %.090.lcssa, %iter.check ], [ %.090.lcssa, %vector.memcheck190 ], [ %i.al, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph126

.lr.ph121:                                        ; preds = %.lr.ph121.prol.loopexit, %.lr.ph121
  %.088120 = phi ptr [ %i.cc, %.lr.ph121 ], [ %.088120.unr, %.lr.ph121.prol.loopexit ] ; 9 uses
  %.090119 = phi ptr [ %i.cd, %.lr.ph121 ], [ %.090119.unr, %.lr.ph121.prol.loopexit ] ; 9 uses
  %i.ay = load i8, ptr %.088120, align 1, !tbaa !237
  %i.az = zext i8 %i.ay to i16
  store i16 %i.az, ptr %.090119, align 2, !tbaa !240
  %i.ba = getelementptr i8, ptr %.088120, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !237
  %i.bc = zext i8 %i.bb to i16
  %i.bd = getelementptr i8, ptr %.090119, i64 2
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !240
  %i.be = getelementptr i8, ptr %.088120, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !237
  %i.bg = zext i8 %i.bf to i16
  %i.bh = getelementptr i8, ptr %.090119, i64 4
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !240
  %i.bi = getelementptr i8, ptr %.088120, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !237
  %i.bk = zext i8 %i.bj to i16
  %i.bl = getelementptr i8, ptr %.090119, i64 6
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !240
  %i.bm = getelementptr i8, ptr %.088120, i64 4
  %i.bn = getelementptr i8, ptr %.090119, i64 8
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !237
  %i.bp = zext i8 %i.bo to i16
  store i16 %i.bp, ptr %i.bn, align 2, !tbaa !240
  %i.bq = getelementptr i8, ptr %.088120, i64 5
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !237
  %i.bs = zext i8 %i.br to i16
  %i.bt = getelementptr i8, ptr %.090119, i64 10
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !240
  %i.bu = getelementptr i8, ptr %.088120, i64 6
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !237
  %i.bw = zext i8 %i.bv to i16
  %i.bx = getelementptr i8, ptr %.090119, i64 12
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !240
  %i.by = getelementptr i8, ptr %.088120, i64 7
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !237
  %i.ca = zext i8 %i.bz to i16
  %i.cb = getelementptr i8, ptr %.090119, i64 14
  store i16 %i.ca, ptr %i.cb, align 2, !tbaa !240
  %i.cc = getelementptr i8, ptr %.088120, i64 8   ; 3 uses
  %i.cd = getelementptr i8, ptr %.090119, i64 16  ; 2 uses
  %i.ce = icmp ult ptr %i.cc, %i.h
  br i1 %i.ce, label %.lr.ph121, label %.preheader.loopexit, !llvm.loop !644

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %.lr.ph126
  %.189125 = phi ptr [ %i.cf, %.lr.ph126 ], [ %.189125.ph, %.lr.ph126.preheader ] ; 2 uses
  %.191124 = phi ptr [ %i.ci, %.lr.ph126 ], [ %.191124.ph, %.lr.ph126.preheader ] ; 2 uses
  %i.cf = getelementptr i8, ptr %.189125, i64 1   ; 2 uses
  %i.cg = load i8, ptr %.189125, align 1, !tbaa !237
  %i.ch = zext i8 %i.cg to i16
  %i.ci = getelementptr i8, ptr %.191124, i64 2
  store i16 %i.ch, ptr %.191124, align 2, !tbaa !240
  %exitcond137.not = icmp eq ptr %i.cf, %scevgep136
  br i1 %exitcond137.not, label %.loopexit, label %.lr.ph126, !llvm.loop !645

bb.e:                                             ; preds = %bb.a
  %i.cj = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.cj, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ck = shl nuw nsw i64 %2, 2
  %i.cl = tail call ptr @PyMem_Malloc(i64 noundef %i.ck) #33 ; 16 uses
  %.not = icmp eq ptr %i.cl, null
  br i1 %.not, label %.loopexit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cm = icmp eq i32 %0, 2
  %i.cn = and i64 %2, 2305843009213693948         ; 2 uses
  br i1 %i.cm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.co = getelementptr [2 x i8], ptr %1, i64 %2  ; 2 uses
  %i.cp = getelementptr [2 x i8], ptr %1, i64 %i.cn ; 2 uses
  %i.cq = icmp ult ptr %1, %i.cp
  br i1 %i.cq, label %.lr.ph113, label %.preheader101

.preheader101:                                    ; preds = %.lr.ph113, %bb.h
  %.086.lcssa = phi ptr [ %i.cl, %bb.h ], [ %i.dl, %.lr.ph113 ] ; 3 uses
  %.084.lcssa = phi ptr [ %1, %bb.h ], [ %i.dk, %.lr.ph113 ] ; 5 uses
  %i.cr = icmp ult ptr %.084.lcssa, %i.co
  br i1 %i.cr, label %.lr.ph118.preheader, label %.loopexit

.lr.ph118.preheader:                              ; preds = %.preheader101
  %.084.lcssa168 = ptrtoaddr ptr %.084.lcssa to i64
  %4 = shl nuw nsw i64 %2, 1
  %i.cs = add i64 %4, %i.a
  %i.ct = xor i64 %.084.lcssa168, -1
  %i.cu = add i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = lshr i64 %i.cu, 1
  %i.cw = add nuw i64 %i.cv, 1                    ; 2 uses
  %min.iters.check169 = icmp ult i64 %i.cu, 14
  br i1 %min.iters.check169, label %.lr.ph118.preheader218, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph118.preheader
  %n.vec171 = and i64 %i.cw, -8                   ; 4 uses
  %i.cx = shl i64 %n.vec171, 1
  %i.cy = getelementptr i8, ptr %.084.lcssa, i64 %i.cx
  %i.cz = shl i64 %n.vec171, 2
  %i.da = getelementptr i8, ptr %.086.lcssa, i64 %i.cz
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next178, %vector.body172 ] ; 3 uses
  %i.db = shl i64 %index173, 1
  %next.gep174 = getelementptr i8, ptr %.084.lcssa, i64 %i.db ; 2 uses
  %i.dc = shl i64 %index173, 2
  %next.gep175 = getelementptr i8, ptr %.086.lcssa, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep174, i64 8
  %wide.load176 = load <4 x i16>, ptr %next.gep174, align 2, !tbaa !240
  %wide.load177 = load <4 x i16>, ptr %i.dd, align 2, !tbaa !240
  %i.de = zext <4 x i16> %wide.load176 to <4 x i32>
  %i.df = zext <4 x i16> %wide.load177 to <4 x i32>
  %i.dg = getelementptr i8, ptr %next.gep175, i64 16
  store <4 x i32> %i.de, ptr %next.gep175, align 4, !tbaa !43
  store <4 x i32> %i.df, ptr %i.dg, align 4, !tbaa !43
  %index.next178 = add nuw i64 %index173, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next178, %n.vec171
  br i1 %i.dh, label %middle.block179, label %vector.body172, !llvm.loop !646

middle.block179:                                  ; preds = %vector.body172
  %cmp.n180 = icmp eq i64 %i.cw, %n.vec171
  br i1 %cmp.n180, label %.loopexit, label %.lr.ph118.preheader218

.lr.ph118.preheader218:                           ; preds = %.lr.ph118.preheader, %middle.block179
  %.185117.ph = phi ptr [ %.084.lcssa, %.lr.ph118.preheader ], [ %i.cy, %middle.block179 ]
  %.187116.ph = phi ptr [ %.086.lcssa, %.lr.ph118.preheader ], [ %i.da, %middle.block179 ]
  br label %.lr.ph118

.lr.ph113:                                        ; preds = %bb.h, %.lr.ph113
  %.084112 = phi ptr [ %i.dk, %.lr.ph113 ], [ %1, %bb.h ] ; 2 uses
  %.086111 = phi ptr [ %i.dl, %.lr.ph113 ], [ %i.cl, %bb.h ] ; 2 uses
  %i.di = load <4 x i16>, ptr %.084112, align 2, !tbaa !240
  %i.dj = zext <4 x i16> %i.di to <4 x i32>
  store <4 x i32> %i.dj, ptr %.086111, align 4, !tbaa !43
  %i.dk = getelementptr i8, ptr %.084112, i64 8   ; 3 uses
  %i.dl = getelementptr i8, ptr %.086111, i64 16  ; 2 uses
  %i.dm = icmp ult ptr %i.dk, %i.cp
  br i1 %i.dm, label %.lr.ph113, label %.preheader101, !llvm.loop !647

.lr.ph118:                                        ; preds = %.lr.ph118.preheader218, %.lr.ph118
  %.185117 = phi ptr [ %i.dn, %.lr.ph118 ], [ %.185117.ph, %.lr.ph118.preheader218 ] ; 2 uses
  %.187116 = phi ptr [ %i.dq, %.lr.ph118 ], [ %.187116.ph, %.lr.ph118.preheader218 ] ; 2 uses
  %i.dn = getelementptr i8, ptr %.185117, i64 2   ; 2 uses
  %i.do = load i16, ptr %.185117, align 2, !tbaa !240
  %i.dp = zext i16 %i.do to i32
  %i.dq = getelementptr i8, ptr %.187116, i64 4
  store i32 %i.dp, ptr %.187116, align 4, !tbaa !43
  %i.dr = icmp ult ptr %i.dn, %i.co
  br i1 %i.dr, label %.lr.ph118, label %.loopexit, !llvm.loop !648

bb.i:                                             ; preds = %bb.g
  %i.ds = getelementptr i8, ptr %1, i64 %2
  %i.dt = getelementptr i8, ptr %1, i64 %i.cn     ; 2 uses
  %i.du = icmp ult ptr %1, %i.dt
  br i1 %i.du, label %.lr.ph.preheader, label %.preheader103

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.dv = add nsw i64 %2, -4                      ; 2 uses
  %i.dw = and i64 %i.dv, 4
  %lcmp.mod.not.not = icmp eq i64 %i.dw, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.dx = load i8, ptr %1, align 1, !tbaa !237
  %i.dy = zext i8 %i.dx to i32
  store i32 %i.dy, ptr %i.cl, align 4, !tbaa !43
  %i.dz = getelementptr i8, ptr %1, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !237
  %i.eb = zext i8 %i.ea to i32
  %i.ec = getelementptr i8, ptr %i.cl, i64 4
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !43
  %i.ed = getelementptr i8, ptr %1, i64 2
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !237
  %i.ef = zext i8 %i.ee to i32
  %i.eg = getelementptr i8, ptr %i.cl, i64 8
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !43
  %i.eh = getelementptr i8, ptr %1, i64 3
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !237
  %i.ej = zext i8 %i.ei to i32
  %i.ek = getelementptr i8, ptr %i.cl, i64 12
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !43
  %i.el = getelementptr i8, ptr %1, i64 4         ; 2 uses
  %i.em = getelementptr i8, ptr %i.cl, i64 16     ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0106.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.el, %.lr.ph.prol ]
  %.082105.unr = phi ptr [ %i.cl, %.lr.ph.preheader ], [ %i.em, %.lr.ph.prol ]
  %.lcssa225.unr.a = phi ptr [ poison, %.lr.ph.preheader ], [ %i.el, %.lr.ph.prol ]
  %.lcssa224.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.em, %.lr.ph.prol ]
  %i.en = icmp ult i64 %i.dv, 4
  br i1 %i.en, label %.preheader103.loopexit, label %.lr.ph

.preheader103.loopexit:                           ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa225.a = phi ptr [ %.lcssa225.unr.a, %.lr.ph.prol.loopexit ], [ %i.gh, %.lr.ph ] ; 2 uses
  %.lcssa224 = phi ptr [ %.lcssa224.unr, %.lr.ph.prol.loopexit ], [ %i.gi, %.lr.ph ]
  %.pre138 = ptrtoaddr ptr %.lcssa225.a to i64
  br label %.preheader103

.preheader103:                                    ; preds = %.preheader103.loopexit, %bb.i
  %.0.lcssa134.pre-phi = phi i64 [ %.pre138, %.preheader103.loopexit ], [ %i.a, %bb.i ] ; 2 uses
  %.082.lcssa = phi ptr [ %.lcssa224, %.preheader103.loopexit ], [ %i.cl, %bb.i ] ; 6 uses
  %.0.lcssa = phi ptr [ %.lcssa225.a, %.preheader103.loopexit ], [ %1, %bb.i ] ; 7 uses
  %i.eo = icmp ult ptr %.0.lcssa, %i.ds
  br i1 %i.eo, label %.lr.ph110.preheader, label %.loopexit

.lr.ph110.preheader:                              ; preds = %.preheader103
  %i.ep = add i64 %2, %i.a                        ; 2 uses
  %i.eq = sub i64 %i.ep, %.0.lcssa134.pre-phi     ; 4 uses
  %scevgep = getelementptr i8, ptr %.0.lcssa, i64 %i.eq ; 2 uses
  %min.iters.check = icmp ult i64 %i.eq, 20
  br i1 %min.iters.check, label %.lr.ph110.preheader222, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110.preheader
  %i.er = sub i64 %i.ep, %.0.lcssa134.pre-phi
  %i.es = shl i64 %i.er, 2
  %i.et = getelementptr i8, ptr %.082.lcssa, i64 %i.es
  %bound0 = icmp ult ptr %.082.lcssa, %scevgep
  %bound1 = icmp ult ptr %.0.lcssa, %i.et
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader222, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eq, -8                      ; 4 uses
  %i.eu = getelementptr i8, ptr %.0.lcssa, i64 %n.vec
  %i.ev = shl i64 %n.vec, 2
  %i.ew = getelementptr i8, ptr %.082.lcssa, i64 %i.ev
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %index ; 2 uses
  %i.ex = shl i64 %index, 2
  %next.gep165 = getelementptr i8, ptr %.082.lcssa, i64 %i.ex ; 2 uses
  %i.ey = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !237, !alias.scope !657
  %wide.load166 = load <4 x i8>, ptr %i.ey, align 1, !tbaa !237, !alias.scope !657
  %i.ez = zext <4 x i8> %wide.load to <4 x i32>
  %i.fa = zext <4 x i8> %wide.load166 to <4 x i32>
  %i.fb = getelementptr i8, ptr %next.gep165, i64 16
  store <4 x i32> %i.ez, ptr %next.gep165, align 4, !tbaa !43, !alias.scope !658, !noalias !657
  store <4 x i32> %i.fa, ptr %i.fb, align 4, !tbaa !43, !alias.scope !658, !noalias !657
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !652

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eq, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph110.preheader222

.lr.ph110.preheader222:                           ; preds = %vector.memcheck, %.lr.ph110.preheader, %middle.block
  %.1109.ph = phi ptr [ %.0.lcssa, %vector.memcheck ], [ %.0.lcssa, %.lr.ph110.preheader ], [ %i.eu, %middle.block ]
  %.183108.ph = phi ptr [ %.082.lcssa, %vector.memcheck ], [ %.082.lcssa, %.lr.ph110.preheader ], [ %i.ew, %middle.block ]
  br label %.lr.ph110

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0106 = phi ptr [ %i.gh, %.lr.ph ], [ %.0106.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.082105 = phi ptr [ %i.gi, %.lr.ph ], [ %.082105.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.fd = load i8, ptr %.0106, align 1, !tbaa !237
  %i.fe = zext i8 %i.fd to i32
  store i32 %i.fe, ptr %.082105, align 4, !tbaa !43
  %i.ff = getelementptr i8, ptr %.0106, i64 1
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !237
  %i.fh = zext i8 %i.fg to i32
  %i.fi = getelementptr i8, ptr %.082105, i64 4
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !43
  %i.fj = getelementptr i8, ptr %.0106, i64 2
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !237
  %i.fl = zext i8 %i.fk to i32
  %i.fm = getelementptr i8, ptr %.082105, i64 8
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !43
  %i.fn = getelementptr i8, ptr %.0106, i64 3
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !237
  %i.fp = zext i8 %i.fo to i32
  %i.fq = getelementptr i8, ptr %.082105, i64 12
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !43
  %i.fr = getelementptr i8, ptr %.0106, i64 4
  %i.fs = getelementptr i8, ptr %.082105, i64 16
  %i.ft = load i8, ptr %i.fr, align 1, !tbaa !237
  %i.fu = zext i8 %i.ft to i32
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !43
  %i.fv = getelementptr i8, ptr %.0106, i64 5
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !237
  %i.fx = zext i8 %i.fw to i32
  %i.fy = getelementptr i8, ptr %.082105, i64 20
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !43
  %i.fz = getelementptr i8, ptr %.0106, i64 6
end_hunk_3
begin_hunk_4_@unicode_sizeof:bb.a
  %i.m = add i64 %i.l, 64
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
  %i.m = tail call ptr @PyMem_Malloc(i64 noundef %i.l) #33 ; 14 uses
  %2 = ptrtoaddr ptr %i.m to i64                  ; 2 uses
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
  %.073.lcssa = phi ptr [ %.0.i85, %bb.k ], [ %i.bp, %.lr.ph98 ] ; 6 uses
  %.071.lcssa = phi ptr [ %i.m, %bb.k ], [ %i.bo, %.lr.ph98 ] ; 8 uses
  %i.ae = icmp ult ptr %.071.lcssa, %i.t
  br i1 %i.ae, label %.lr.ph103.preheader, label %.loopexit

.lr.ph103.preheader:                              ; preds = %.preheader
  %i.af = ptrtoaddr ptr %.071.lcssa to i64
  %i.ag = add i64 %.idx79, %2
  %i.ah = xor i64 %i.af, -1
  %i.ai = add i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = lshr i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check128 = icmp ult i64 %i.ai, 140
  br i1 %min.iters.check128, label %.lr.ph103.preheader142, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph103.preheader
  %i.al = lshr i64 %i.ai, 2
  %i.am = getelementptr i8, ptr %.073.lcssa, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 1
  %i.ao = and i64 %i.ai, -4
  %i.ap = getelementptr i8, ptr %.071.lcssa, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %bound0 = icmp ult ptr %.073.lcssa, %i.aq
  %bound1 = icmp ult ptr %.071.lcssa, %i.an
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph103.preheader142, label %vector.ph129

vector.ph129:                                     ; preds = %vector.memcheck
  %n.vec130 = and i64 %i.ak, 9223372036854775800  ; 4 uses
  %i.ar = shl i64 %n.vec130, 2
  %i.as = getelementptr i8, ptr %.071.lcssa, i64 %i.ar
  %i.at = getelementptr i8, ptr %.073.lcssa, i64 %n.vec130
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph129
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next137, %vector.body131 ] ; 3 uses
  %i.au = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %.071.lcssa, i64 %i.au ; 2 uses
  %next.gep134 = getelementptr i8, ptr %.073.lcssa, i64 %index132 ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep133, i64 16
  %wide.load135 = load <4 x i32>, ptr %next.gep133, align 4, !tbaa !43, !alias.scope !969
  %wide.load136 = load <4 x i32>, ptr %i.av, align 4, !tbaa !43, !alias.scope !969
  %i.aw = trunc <4 x i32> %wide.load135 to <4 x i8>
  %i.ax = trunc <4 x i32> %wide.load136 to <4 x i8>
  %i.ay = getelementptr i8, ptr %next.gep134, i64 4
  store <4 x i8> %i.aw, ptr %next.gep134, align 1, !tbaa !237, !alias.scope !970, !noalias !969
  store <4 x i8> %i.ax, ptr %i.ay, align 1, !tbaa !237, !alias.scope !970, !noalias !969
  %index.next137 = add nuw i64 %index132, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next137, %n.vec130
  br i1 %i.az, label %middle.block138, label %vector.body131, !llvm.loop !963

middle.block138:                                  ; preds = %vector.body131
  %cmp.n139 = icmp eq i64 %i.ak, %n.vec130
  br i1 %cmp.n139, label %.loopexit, label %.lr.ph103.preheader142

.lr.ph103.preheader142:                           ; preds = %vector.memcheck, %.lr.ph103.preheader, %middle.block138
  %.172102.ph = phi ptr [ %.071.lcssa, %vector.memcheck ], [ %.071.lcssa, %.lr.ph103.preheader ], [ %i.as, %middle.block138 ]
  %.174101.ph = phi ptr [ %.073.lcssa, %vector.memcheck ], [ %.073.lcssa, %.lr.ph103.preheader ], [ %i.at, %middle.block138 ]
  br label %.lr.ph103

.lr.ph98:                                         ; preds = %bb.k, %.lr.ph98
  %.07197 = phi ptr [ %i.bo, %.lr.ph98 ], [ %i.m, %bb.k ] ; 5 uses
  %.07396 = phi ptr [ %i.bp, %.lr.ph98 ], [ %.0.i85, %bb.k ] ; 5 uses
  %i.ba = load i32, ptr %.07197, align 4, !tbaa !43
  %i.bb = trunc i32 %i.ba to i8
  store i8 %i.bb, ptr %.07396, align 1, !tbaa !237
  %i.bc = getelementptr i8, ptr %.07197, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !43
  %i.be = trunc i32 %i.bd to i8
  %i.bf = getelementptr i8, ptr %.07396, i64 1
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !237
  %i.bg = getelementptr i8, ptr %.07197, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !43
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = getelementptr i8, ptr %.07396, i64 2
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !237
  %i.bk = getelementptr i8, ptr %.07197, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !43
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr i8, ptr %.07396, i64 3
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !237
  %i.bo = getelementptr i8, ptr %.07197, i64 16   ; 3 uses
  %i.bp = getelementptr i8, ptr %.07396, i64 4    ; 2 uses
  %i.bq = icmp ult ptr %i.bo, %i.ac
  br i1 %i.bq, label %.lr.ph98, label %.preheader, !llvm.loop !964

.lr.ph103:                                        ; preds = %.lr.ph103.preheader142, %.lr.ph103
  %.172102 = phi ptr [ %i.br, %.lr.ph103 ], [ %.172102.ph, %.lr.ph103.preheader142 ] ; 2 uses
  %.174101 = phi ptr [ %i.bu, %.lr.ph103 ], [ %.174101.ph, %.lr.ph103.preheader142 ] ; 2 uses
  %i.br = getelementptr i8, ptr %.172102, i64 4   ; 2 uses
  %i.bs = load i32, ptr %.172102, align 4, !tbaa !43
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = getelementptr i8, ptr %.174101, i64 1
  store i8 %i.bt, ptr %.174101, align 1, !tbaa !237
  %i.bv = icmp ult ptr %i.br, %i.t
  br i1 %i.bv, label %.lr.ph103, label %.loopexit, !llvm.loop !965

bb.l:                                             ; preds = %_PyUnicode_DATA.exit87
  %i.bw = ashr exact i64 %.idx79, 2
  %i.bx = and i64 %i.bw, -4
  %i.by = getelementptr [4 x i8], ptr %i.m, i64 %i.bx ; 2 uses
  %i.bz = icmp ult ptr %i.m, %i.by
  br i1 %i.bz, label %.lr.ph, label %.preheader88

.preheader88:                                     ; preds = %.lr.ph, %bb.l
  %.069.lcssa = phi ptr [ %.0.i85, %bb.l ], [ %i.cv, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %i.m, %bb.l ], [ %i.cu, %.lr.ph ] ; 5 uses
  %i.ca = icmp ult ptr %.0.lcssa, %i.t
  br i1 %i.ca, label %.lr.ph95.preheader, label %.loopexit

.lr.ph95.preheader:                               ; preds = %.preheader88
  %i.cb = ptrtoaddr ptr %.0.lcssa to i64
  %i.cc = add i64 %.idx79, %2
  %i.cd = xor i64 %i.cb, -1
  %i.ce = add i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = lshr i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ce, 28
  br i1 %min.iters.check, label %.lr.ph95.preheader144, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph95.preheader
  %n.vec = and i64 %i.cg, 9223372036854775800     ; 4 uses
  %i.ch = shl i64 %n.vec, 2
  %i.ci = getelementptr i8, ptr %.0.lcssa, i64 %i.ch
  %i.cj = shl nuw i64 %n.vec, 1
  %i.ck = getelementptr i8, ptr %.069.lcssa, i64 %i.cj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %i.cl ; 2 uses
  %i.cm = shl i64 %index, 1
  %next.gep122 = getelementptr i8, ptr %.069.lcssa, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !43
  %wide.load123 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !43
  %i.co = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cp = trunc <4 x i32> %wide.load123 to <4 x i16>
  %i.cq = getelementptr i8, ptr %next.gep122, i64 8
  store <4 x i16> %i.co, ptr %next.gep122, align 2, !tbaa !240
  store <4 x i16> %i.cp, ptr %i.cq, align 2, !tbaa !240
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !966

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph95.preheader144

.lr.ph95.preheader144:                            ; preds = %.lr.ph95.preheader, %middle.block
  %.194.ph = phi ptr [ %.0.lcssa, %.lr.ph95.preheader ], [ %i.ci, %middle.block ]
  %.17093.ph = phi ptr [ %.069.lcssa, %.lr.ph95.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph95

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %.091 = phi ptr [ %i.cu, %.lr.ph ], [ %i.m, %bb.l ] ; 2 uses
  %.06990 = phi ptr [ %i.cv, %.lr.ph ], [ %.0.i85, %bb.l ] ; 2 uses
  %i.cs = load <4 x i32>, ptr %.091, align 4, !tbaa !43
  %i.ct = trunc <4 x i32> %i.cs to <4 x i16>
  store <4 x i16> %i.ct, ptr %.06990, align 2, !tbaa !240
  %i.cu = getelementptr i8, ptr %.091, i64 16     ; 3 uses
  %i.cv = getelementptr i8, ptr %.06990, i64 8    ; 2 uses
  %i.cw = icmp ult ptr %i.cu, %i.by
  br i1 %i.cw, label %.lr.ph, label %.preheader88, !llvm.loop !967

.lr.ph95:                                         ; preds = %.lr.ph95.preheader144, %.lr.ph95
  %.194 = phi ptr [ %i.cx, %.lr.ph95 ], [ %.194.ph, %.lr.ph95.preheader144 ] ; 2 uses
  %.17093 = phi ptr [ %i.da, %.lr.ph95 ], [ %.17093.ph, %.lr.ph95.preheader144 ] ; 2 uses
  %i.cx = getelementptr i8, ptr %.194, i64 4      ; 2 uses
  %i.cy = load i32, ptr %.194, align 4, !tbaa !43
  %i.cz = trunc i32 %i.cy to i16
  %i.da = getelementptr i8, ptr %.17093, i64 2
  store i16 %i.cz, ptr %.17093, align 2, !tbaa !240
  %i.db = icmp ult ptr %i.cx, %i.t
  br i1 %i.db, label %.lr.ph95, label %.loopexit, !llvm.loop !968

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
  %i.j = load i32, ptr %4, align 4, !tbaa !43
  %i.k = getelementptr [4 x i8], ptr %i.a, i64 %.03647.epil.init
  %i.l = load i32, ptr %i.k, align 4, !tbaa !43   ; 2 uses
  %..epil = call i32 @llvm.umax.i32(i32 %i.j, i32 %i.l)
  store i32 %..epil, ptr %4, align 4, !tbaa !43
  %i.m = getelementptr [4 x i8], ptr %3, i64 %.03647.epil.init
  store i32 %i.l, ptr %i.m, align 4, !tbaa !43
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.epil.preheader, %.preheader.loopexit.unr-lcssa, %PyUnicode_READ.exit
  %.036.lcssa = phi i64 [ 0, %PyUnicode_READ.exit ], [ %wide.trip.count, %.preheader.loopexit.unr-lcssa ], [ %wide.trip.count, %.lr.ph.epil.preheader ] ; 2 uses
  %i.n = icmp sgt i64 %2, 1
  br i1 %i.n, label %.lr.ph55, label %._crit_edge56

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03647 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.o = load i32, ptr %4, align 4, !tbaa !43
  %i.p = getelementptr [4 x i8], ptr %i.a, i64 %.03647
  %i.q = load i32, ptr %i.p, align 4, !tbaa !43   ; 2 uses
  %. = call i32 @llvm.umax.i32(i32 %i.o, i32 %i.q)
  store i32 %., ptr %4, align 4, !tbaa !43
  %i.r = or disjoint i64 %.03647, 1               ; 2 uses
  %i.s = getelementptr [4 x i8], ptr %3, i64 %.03647
  store i32 %i.q, ptr %i.s, align 4, !tbaa !43
  %i.t = load i32, ptr %4, align 4, !tbaa !43
  %i.u = getelementptr [4 x i8], ptr %i.a, i64 %i.r
  %i.v = load i32, ptr %i.u, align 4, !tbaa !43   ; 2 uses
  %..1 = call i32 @llvm.umax.i32(i32 %i.t, i32 %i.v)
  store i32 %..1, ptr %4, align 4, !tbaa !43
  %i.w = add nuw nsw i64 %.03647, 2               ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %3, i64 %i.r
  store i32 %i.v, ptr %i.x, align 4, !tbaa !43
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !971

.lr.ph55:                                         ; preds = %.preheader, %._crit_edge
  %.13754 = phi i64 [ %.2.lcssa, %._crit_edge ], [ %.036.lcssa, %.preheader ] ; 3 uses
  %.03853 = phi i64 [ %i.az, %._crit_edge ], [ 1, %.preheader ] ; 5 uses
  switch i32 %0, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph55
  %i.y = getelementptr i8, ptr %1, i64 %.03853
  %i.z = load i8, ptr %i.y, align 1, !tbaa !237
  %i.aa = zext i8 %i.z to i32
  br label %PyUnicode_READ.exit46

bb.f:                                             ; preds = %.lr.ph55
  %i.ab = getelementptr [2 x i8], ptr %1, i64 %.03853
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !240
  %i.ad = zext i16 %i.ac to i32
  br label %PyUnicode_READ.exit46

bb.g:                                             ; preds = %.lr.ph55
  %i.ae = getelementptr [4 x i8], ptr %1, i64 %.03853
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !43
  br label %PyUnicode_READ.exit46

PyUnicode_READ.exit46:                            ; preds = %bb.e, %bb.f, %bb.g
  %.0.i45 = phi i32 [ %i.aa, %bb.e ], [ %i.ad, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = call fastcc i32 @lower_ucs4(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %.03853, i32 noundef %.0.i45, ptr noundef %i.a) ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph51.preheader, label %._crit_edge

.lr.ph51.preheader:                               ; preds = %PyUnicode_READ.exit46
  %wide.trip.count61 = zext nneg i32 %i.ag to i64 ; 2 uses
  %xtraiter68 = and i64 %wide.trip.count61, 1
end_hunk_4
