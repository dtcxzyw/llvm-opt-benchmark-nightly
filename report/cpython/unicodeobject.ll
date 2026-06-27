inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@_PyUnicode_IsModifiable:bb.a
}

declare ptr @PyErr_NoMemory() local_unnamed_addr #3

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_Py_NewReferenceNoTotal(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_New(i64 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %1, 127                     ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i32 %1, 256
  br i1 %i.c, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ult i32 %1, 65536
  br i1 %i.d, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp ugt i32 %1, 1114111
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.26) #33
  br label %bb.u

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.g = phi i1 [ false, %bb.d ], [ true, %bb.b ], [ true, %bb.c ], [ false, %bb.e ]
  %i.h = phi i1 [ true, %bb.d ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.e ]
  %.046 = phi i32 [ 40, %bb.d ], [ 100, %bb.b ], [ 36, %bb.c ], [ 48, %bb.e ]
  %.044 = phi i64 [ 2, %bb.d ], [ 1, %bb.b ], [ 1, %bb.c ], [ 4, %bb.e ] ; 2 uses
  %.0 = phi i64 [ 56, %bb.d ], [ 40, %bb.b ], [ 56, %bb.c ], [ 56, %bb.e ] ; 2 uses
  %i.i = icmp slt i64 %0, 0
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.27) #33
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.k = xor i64 %.0, 9223372036854775807
  %i.l = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.044, i1 true)
  %i.m = lshr i64 %i.k, %i.l
  %.not = icmp samesign ult i64 %0, %i.m
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = tail call ptr @PyErr_NoMemory() #33
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.o = add nuw nsw i64 %0, 1
  %i.p = mul i64 %.044, %i.o
  %i.q = add i64 %.0, %i.p
  %i.r = tail call ptr @PyObject_Malloc(i64 noundef %i.q) #33 ; 12 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.t = tail call ptr @PyErr_NoMemory() #33
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.u = getelementptr i8, ptr %i.r, i64 8
  store ptr @PyUnicode_Type, ptr %i.u, align 8, !tbaa !197
  %i.v = load i32, ptr @PyUnicode_Type, align 8, !tbaa !205 ; 2 uses
  %i.w = icmp ugt i32 %i.v, -1073741825
  br i1 %i.w, label %_PyObject_Init.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = add nuw i32 %i.v, 1
  store i32 %i.x, ptr @PyUnicode_Type, align 8, !tbaa !205
  br label %_PyObject_Init.exit

_PyObject_Init.exit:                              ; preds = %bb.m, %bb.n
  tail call void @_Py_NewReference(ptr noundef nonnull %i.r) #33
  %i.y = getelementptr i8, ptr %i.r, i64 40       ; 3 uses
  %i.z = getelementptr i8, ptr %i.r, i64 56       ; 3 uses
  %i.aa = getelementptr i8, ptr %i.r, i64 16
  store i64 %0, ptr %i.aa, align 8, !tbaa !207
  %i.ab = getelementptr i8, ptr %i.r, i64 24
  store i64 -1, ptr %i.ab, align 8, !tbaa !217
  %i.ac = getelementptr i8, ptr %i.r, i64 32      ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, -256
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
  %.0.i.i285.pn700 = ptrtoint ptr %.0.i.i285.pn to i64 ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.i.i285.pn, i64 %3 ; 5 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 %4     ; 2 uses
  %i.ar = and i64 %4, -4
  %i.as = getelementptr i8, ptr %i.ap, i64 %i.ar  ; 2 uses
  %i.at = icmp ult ptr %i.ap, %i.as
  br i1 %i.at, label %.lr.ph488, label %.preheader

.preheader:                                       ; preds = %.lr.ph488, %_PyUnicode_DATA.exit296
  %.0231.lcssa = phi ptr [ %i.ap, %_PyUnicode_DATA.exit296 ], [ %i.cg, %.lr.ph488 ] ; 10 uses
  %.0229.lcssa = phi ptr [ %i.am, %_PyUnicode_DATA.exit296 ], [ %i.ch, %.lr.ph488 ] ; 8 uses
  %.0231.lcssa701 = ptrtoint ptr %.0231.lcssa to i64 ; 3 uses
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
  %scevgep702.a = getelementptr i8, ptr %.0229.lcssa, i64 %i.bb
  %i.bc = sub i64 %i.az, %.0231.lcssa701
  %scevgep703 = getelementptr i8, ptr %.0231.lcssa, i64 %i.bc
  %bound0704 = icmp ult ptr %.0229.lcssa, %scevgep703
  %bound1705 = icmp ult ptr %.0231.lcssa, %scevgep702.a
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
  %next.gep716.a = getelementptr i8, ptr %.0229.lcssa, i64 %i.bg ; 2 uses
  %next.gep717 = getelementptr i8, ptr %.0231.lcssa, i64 %index715 ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep717, i64 8
  %wide.load718.a = load <8 x i8>, ptr %next.gep717, align 1, !tbaa !205, !alias.scope !222
  %wide.load719 = load <8 x i8>, ptr %i.bh, align 1, !tbaa !205, !alias.scope !222
  %i.bi = zext <8 x i8> %wide.load718.a to <8 x i16>
  %i.bj = zext <8 x i8> %wide.load719 to <8 x i16>
  %i.bk = getelementptr i8, ptr %next.gep716.a, i64 16
  store <8 x i16> %i.bi, ptr %next.gep716.a, align 2, !tbaa !208, !alias.scope !225, !noalias !222
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
  %next.gep735.a = getelementptr i8, ptr %.0229.lcssa, i64 %i.bp
  %next.gep736 = getelementptr i8, ptr %.0231.lcssa, i64 %index734
  %wide.load737 = load <4 x i8>, ptr %next.gep736, align 1, !tbaa !205, !alias.scope !222
  %i.bq = zext <4 x i8> %wide.load737 to <4 x i16>
  store <4 x i16> %i.bq, ptr %next.gep735.a, align 2, !tbaa !208, !alias.scope !225, !noalias !222
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
end_hunk_0
begin_hunk_1_@unicode_encode_call_errorhandler:bb.a
  br label %Py_DECREF.exit45

Py_DECREF.exit45:                                 ; preds = %bb.v, %bb.u, %bb.t, %bb.p, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %Py_DECREF.exit
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.p ], [ %i.av, %Py_DECREF.exit ], [ null, %bb.l ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.t ], [ null, %bb.u ], [ null, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @raise_encode_exception(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #1 {
bb.a:
  tail call fastcc void @make_encode_exception(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5)
  %i.a = load ptr, ptr %0, align 8, !tbaa !194    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyCodec_StrictErrors(ptr noundef nonnull %i.a) #33 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @PyBytesWriter_GrowAndUpdatePointer(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsUTF32String(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_PyUnicode_EncodeUTF32(ptr noundef %0, ptr noundef null, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeUTF16Stateful(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct._PyUnicodeWriter, align 8   ; 18 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr %0, ptr %i.a, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  store ptr null, ptr %i.f, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr null, ptr %i.g, align 8, !tbaa !194
  store ptr %0, ptr %i.d, align 8, !tbaa !355
  %i.h = getelementptr i8, ptr %0, i64 %1         ; 4 uses
  store ptr %i.h, ptr %i.e, align 8, !tbaa !355
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %3, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.041 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.j = icmp eq i32 %.041, 0
  %i.k = icmp sgt i64 %1, 1
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = load i16, ptr %0, align 1
  switch i16 %i.l, label %bb.f [
    i16 -257, label %.sink.split
    i16 -2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.142.ph = phi i32 [ 1, %bb.e ], [ -1, %bb.d ]
  %i.m = getelementptr i8, ptr %0, i64 2          ; 2 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !355
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %i.n = phi ptr [ %0, %bb.d ], [ %i.m, %.sink.split ] ; 2 uses
  %.142 = phi i32 [ 0, %bb.d ], [ %.142.ph, %.sink.split ] ; 3 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.142, ptr %3, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %.pre350 = phi ptr [ %0, %bb.c ], [ %i.n, %bb.g ], [ %i.n, %bb.f ] ; 3 uses
  %.2 = phi i32 [ %.041, %bb.c ], [ %.142, %bb.g ], [ %.142, %bb.f ]
  %i.o = icmp eq ptr %.pre350, %i.h
  br i1 %i.o, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not56 = icmp eq ptr %4, null
  br i1 %.not56, label %Py_XDECREF.exit159, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %1, ptr %4, align 8, !tbaa !193
  br label %Py_XDECREF.exit159

bb.k:                                             ; preds = %bb.h
  %i.p = icmp slt i32 %.2, 1                      ; 7 uses
  %i.q = select i1 %i.p, ptr @.str.78, ptr @.str.79
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %5) #33
  %i.r = ptrtoint ptr %i.h to i64
  %i.s = ptrtoint ptr %.pre350 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = add i64 %i.t, 1
  %i.v = sdiv i64 %i.u, 2                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.v, ptr %i.w, align 8, !tbaa !346
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !276
  %i.z = icmp ugt i32 %i.y, 126
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !278
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !279
  %i.ae = sub i64 %i.ab, %i.ad
  %i.af = icmp sle i64 %i.v, %i.ae
  %.off51 = add i64 %i.t, 2
  %i.ag = icmp ult i64 %.off51, 3
  %or.cond6 = or i1 %i.ag, %i.af
  br i1 %or.cond6, label %.preheader, label %bb.n

bb.m:                                             ; preds = %bb.k
  %.off = add i64 %i.t, 2
  %.old5 = icmp ult i64 %.off, 3
  br i1 %.old5, label %.preheader, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ah = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %5, i64 noundef %i.v, i32 noundef 127) #33
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %.thread165.thread, label %.preheader

.thread165.thread:                                ; preds = %bb.n
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %5) #33
  br label %Py_XDECREF.exit156

.preheader:                                       ; preds = %bb.l, %bb.m, %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 7 uses
  %i.am = xor i1 %i.p, true
  %i.an = zext i1 %i.p to i64                     ; 13 uses
  %i.ao = zext i1 %i.am to i64                    ; 13 uses
  %.not53 = icmp eq ptr %4, null                  ; 2 uses
  %i.ap = icmp ne ptr %4, null
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %select.unfold
  %i.ar = phi ptr [ %.pre350, %.preheader ], [ %i.pn, %select.unfold ] ; 21 uses
  %i.as = phi ptr [ %i.h, %.preheader ], [ %.pre, %select.unfold ] ; 5 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp sgt i64 %i.av, 1
  br i1 %i.aw, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ax = load i32, ptr %i.aj, align 8, !tbaa !280
  switch i32 %i.ax, label %bb.as [
    i32 1, label %bb.q
    i32 2, label %bb.al
  ]

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %5, align 8, !tbaa !352
  %i.az = getelementptr i8, ptr %i.ay, i64 32
  %.val = load i32, ptr %i.az, align 8
  %i.ba = and i32 %.val, 64
  %.not52 = icmp eq i32 %i.ba, 0
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !281 ; 3 uses
  %i.bc = load i64, ptr %i.al, align 8, !tbaa !193
  %i.bd = getelementptr i8, ptr %i.bb, i64 %i.bc  ; 8 uses
  %i.be = getelementptr i8, ptr %i.as, i64 -1     ; 19 uses
  %i.bf = icmp ult ptr %i.ar, %i.be               ; 4 uses
  br i1 %.not52, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.p, label %.split.i.preheader, label %.split.us.i.preheader.a

.split.us.i.preheader.a:                          ; preds = %bb.r
  br i1 %i.bf, label %.lr.ph228.a, label %asciilib_utf16_decode.exit

.split.i.preheader:                               ; preds = %bb.r
  br i1 %i.bf, label %.lr.ph240, label %asciilib_utf16_decode.exit

.lr.ph228.a:                                      ; preds = %.split.us.i.preheader.a, %.split.us.i
  %.067.us.i227 = phi ptr [ %i.bt, %.split.us.i ], [ %i.bd, %.split.us.i.preheader.a ] ; 3 uses
  %.070.us.i226 = phi ptr [ %i.bq, %.split.us.i ], [ %i.ar, %.split.us.i.preheader.a ] ; 5 uses
  %i.bg = ptrtoint ptr %.070.us.i226 to i64
  %i.bh = and i64 %i.bg, 7
  %.not81.us.i = icmp eq i64 %i.bh, 0
  br i1 %.not81.us.i, label %.preheader.us.i, label %bb.s

.thread.us.i:                                     ; preds = %bb.u, %.lr.ph.us.i, %.preheader.us.i
  %.168.lcssa.us.i = phi ptr [ %.067.us.i227, %.preheader.us.i ], [ %i.cj, %bb.u ], [ %.168128.us.us.i.a, %.lr.ph.us.i ] ; 2 uses
  %.060.lcssa.us.i = phi ptr [ %.070.us.i226, %.preheader.us.i ], [ %i.bw, %bb.u ], [ %.060129.us.us.i.a, %.lr.ph.us.i ] ; 3 uses
  %.not85.us.i.a = icmp ult ptr %.060.lcssa.us.i, %i.be
  br i1 %.not85.us.i.a, label %bb.s, label %asciilib_utf16_decode.exit

bb.s:                                             ; preds = %.thread.us.i, %.lr.ph228.a
  %.171.us.i = phi ptr [ %.070.us.i226, %.lr.ph228.a ], [ %.060.lcssa.us.i, %.thread.us.i ] ; 4 uses
  %.4.us.i = phi ptr [ %.067.us.i227, %.lr.ph228.a ], [ %.168.lcssa.us.i, %.thread.us.i ] ; 4 uses
  %i.bi = getelementptr i8, ptr %.171.us.i, i64 %i.an
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !205
  %i.bk = zext i8 %i.bj to i32                    ; 3 uses
  %i.bl = shl nuw nsw i32 %i.bk, 8
  %i.bm = getelementptr i8, ptr %.171.us.i, i64 %i.ao
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !205 ; 2 uses
  %i.bo = zext i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bl, %i.bo            ; 3 uses
  %i.bq = getelementptr i8, ptr %.171.us.i, i64 2 ; 5 uses
  %i.br = and i32 %i.bk, 248
  %.not120.us.i.a = icmp eq i32 %i.br, 216
  br i1 %.not120.us.i.a, label %.split143.us.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = icmp samesign ugt i32 %i.bp, 127
  br i1 %i.bs, label %asciilib_utf16_decode.exit, label %.split.us.i

.split.us.i:                                      ; preds = %bb.t
  %i.bt = getelementptr i8, ptr %.4.us.i, i64 1   ; 2 uses
  store i8 %i.bn, ptr %.4.us.i, align 1, !tbaa !205
  %i.bu = icmp ult ptr %i.bq, %i.be
  br i1 %i.bu, label %.lr.ph228.a, label %asciilib_utf16_decode.exit

.preheader.us.i:                                  ; preds = %.lr.ph228.a
  %i.bv = getelementptr i8, ptr %.070.us.i226, i64 8 ; 2 uses
  %.not82127.us.i = icmp ugt ptr %i.bv, %i.be
  br i1 %.not82127.us.i, label %.thread.us.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.preheader.us.i, %bb.u
  %i.bw = phi ptr [ %i.ck, %bb.u ], [ %i.bv, %.preheader.us.i ] ; 3 uses
  %.060129.us.us.i.a = phi ptr [ %i.bw, %bb.u ], [ %.070.us.i226, %.preheader.us.i ] ; 2 uses
  %.168128.us.us.i.a = phi ptr [ %i.cj, %bb.u ], [ %.067.us.i227, %.preheader.us.i ] ; 6 uses
  %i.bx = load i64, ptr %.060129.us.us.i.a, align 8, !tbaa !193 ; 5 uses
  %i.by = and i64 %i.bx, -9151454082924314369
  %.not83.us.us.i = icmp eq i64 %i.by, 0
  br i1 %.not83.us.us.i, label %bb.u, label %.thread.us.i

bb.u:                                             ; preds = %.lr.ph.us.i
  %6 = lshr exact i64 %i.bx, 8
  %i.bz = trunc i64 %6 to i8
  store i8 %i.bz, ptr %.168128.us.us.i.a, align 1, !tbaa !205
  %i.ca = lshr i64 %i.bx, 24
  %i.cb = trunc i64 %i.ca to i8
  %i.cc = getelementptr i8, ptr %.168128.us.us.i.a, i64 1
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !205
  %i.cd = lshr i64 %i.bx, 40
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = getelementptr i8, ptr %.168128.us.us.i.a, i64 2
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !205
  %i.cg = lshr i64 %i.bx, 56
  %i.ch = trunc nuw nsw i64 %i.cg to i8
  %i.ci = getelementptr i8, ptr %.168128.us.us.i.a, i64 3
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !205
  %i.cj = getelementptr i8, ptr %.168128.us.us.i.a, i64 4 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bw, i64 8      ; 2 uses
  %.not82.us.us.i = icmp ugt ptr %i.ck, %i.be
  br i1 %.not82.us.us.i, label %.thread.us.i, label %.lr.ph.us.i

.lr.ph240:                                        ; preds = %.split.i.preheader, %.split.i
  %.067.i239 = phi ptr [ %i.ed, %.split.i ], [ %i.bd, %.split.i.preheader ] ; 3 uses
  %.070.i238 = phi ptr [ %i.dl, %.split.i ], [ %i.ar, %.split.i.preheader ] ; 5 uses
  %i.cl = ptrtoint ptr %.070.i238 to i64
  %i.cm = and i64 %i.cl, 7
  %.not81.i.a = icmp eq i64 %i.cm, 0
  br i1 %.not81.i.a, label %.preheader.i, label %bb.w

.preheader.i:                                     ; preds = %.lr.ph240
  %i.cn = getelementptr i8, ptr %.070.i238, i64 8 ; 2 uses
  %.not82127.i = icmp ugt ptr %i.cn, %i.be
  br i1 %.not82127.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.v
  %i.co = phi ptr [ %i.dc, %bb.v ], [ %i.cn, %.preheader.i ] ; 3 uses
  %.060129.i.a = phi ptr [ %i.co, %bb.v ], [ %.070.i238, %.preheader.i ] ; 2 uses
  %.168128.i.a = phi ptr [ %i.db, %bb.v ], [ %.067.i239, %.preheader.i ] ; 6 uses
  %i.cp = load i64, ptr %.060129.i.a, align 8, !tbaa !193 ; 5 uses
  %i.cq = and i64 %i.cp, -35747867511423104
  %.not84.i.a = icmp eq i64 %i.cq, 0
  br i1 %.not84.i.a, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %.lr.ph.i
  %i.cr = trunc i64 %i.cp to i8
  store i8 %i.cr, ptr %.168128.i.a, align 1, !tbaa !205
  %i.cs = lshr i64 %i.cp, 16
  %i.ct = trunc i64 %i.cs to i8
  %i.cu = getelementptr i8, ptr %.168128.i.a, i64 1
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !205
  %i.cv = lshr i64 %i.cp, 32
  %i.cw = trunc i64 %i.cv to i8
  %i.cx = getelementptr i8, ptr %.168128.i.a, i64 2
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !205
  %i.cy = lshr i64 %i.cp, 48
  %i.cz = trunc nuw nsw i64 %i.cy to i8
  %i.da = getelementptr i8, ptr %.168128.i.a, i64 3
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !205
  %i.db = getelementptr i8, ptr %.168128.i.a, i64 4 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.co, i64 8      ; 2 uses
  %.not82.i = icmp ugt ptr %i.dc, %i.be
  br i1 %.not82.i, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.v, %.lr.ph.i, %.preheader.i
  %.168.lcssa.i = phi ptr [ %.067.i239, %.preheader.i ], [ %i.db, %bb.v ], [ %.168128.i.a, %.lr.ph.i ] ; 2 uses
  %.060.lcssa.i = phi ptr [ %.070.i238, %.preheader.i ], [ %i.co, %bb.v ], [ %.060129.i.a, %.lr.ph.i ] ; 3 uses
  %.not85.i.a = icmp ult ptr %.060.lcssa.i, %i.be
  br i1 %.not85.i.a, label %bb.w, label %asciilib_utf16_decode.exit

bb.w:                                             ; preds = %.thread.i, %.lr.ph240
  %.171.i = phi ptr [ %.070.i238, %.lr.ph240 ], [ %.060.lcssa.i, %.thread.i ] ; 4 uses
  %.4.i = phi ptr [ %.067.i239, %.lr.ph240 ], [ %.168.lcssa.i, %.thread.i ] ; 4 uses
  %i.dd = getelementptr i8, ptr %.171.i, i64 %i.an
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !205
  %i.df = zext i8 %i.de to i32                    ; 3 uses
  %i.dg = shl nuw nsw i32 %i.df, 8
  %i.dh = getelementptr i8, ptr %.171.i, i64 %i.ao
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !205 ; 2 uses
  %i.dj = zext i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dg, %i.dj            ; 3 uses
  %i.dl = getelementptr i8, ptr %.171.i, i64 2    ; 5 uses
  %i.dm = and i32 %i.df, 248
  %.not120.i.a = icmp eq i32 %i.dm, 216
  br i1 %.not120.i.a, label %.split143.us.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dn = icmp samesign ugt i32 %i.dk, 127
  br i1 %i.dn, label %asciilib_utf16_decode.exit, label %.split.i

.split143.us.i:                                   ; preds = %bb.s, %bb.w
  %.us-phi144.i.a = phi ptr [ %.171.i, %bb.w ], [ %.171.us.i, %bb.s ]
  %.us-phi145.i.a = phi ptr [ %.4.i, %bb.w ], [ %.4.us.i, %bb.s ] ; 4 uses
  %.us-phi147.i = phi i32 [ %i.df, %bb.w ], [ %i.bk, %bb.s ]
  %.us-phi149.i.a = phi i32 [ %i.dk, %bb.w ], [ %i.bp, %bb.s ]
  %.us-phi150.i = phi ptr [ %i.dl, %bb.w ], [ %i.bq, %bb.s ] ; 5 uses
  %i.do = and i32 %.us-phi147.i, 220
  %.not121.i.a = icmp eq i32 %i.do, 216
  br i1 %.not121.i.a, label %bb.y, label %asciilib_utf16_decode.exit

bb.y:                                             ; preds = %.split143.us.i
  %.not88.i.a = icmp ult ptr %.us-phi150.i, %i.be
  br i1 %.not88.i.a, label %bb.z, label %asciilib_utf16_decode.exit

bb.z:                                             ; preds = %bb.y
  %i.dp = getelementptr i8, ptr %.us-phi150.i, i64 %i.an
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !205
  %i.dr = zext i8 %i.dq to i32                    ; 2 uses
  %i.ds = getelementptr i8, ptr %.us-phi144.i.a, i64 4 ; 2 uses
  %i.dt = and i32 %i.dr, 252
  %.not122.i.a = icmp eq i32 %i.dt, 220
  br i1 %.not122.i.a, label %bb.aa, label %asciilib_utf16_decode.exit

bb.aa:                                            ; preds = %bb.z
  %i.du = shl nuw nsw i32 %i.dr, 8
  %i.dv = getelementptr i8, ptr %.us-phi150.i, i64 %i.ao
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !205
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl nuw nsw i32 %.us-phi149.i.a, 10
  %i.dz = and i32 %i.dy, 1047552
  %.masked.i = and i32 %i.du, 768
  %i.ea = or disjoint i32 %.masked.i, %i.dx
  %i.eb = add nuw nsw i32 %i.dz, 65536
  %i.ec = or disjoint i32 %i.ea, %i.eb
  br label %asciilib_utf16_decode.exit

.split.i:                                         ; preds = %bb.x
  %i.ed = getelementptr i8, ptr %.4.i, i64 1      ; 2 uses
  store i8 %i.di, ptr %.4.i, align 1, !tbaa !205
  %i.ee = icmp ult ptr %i.dl, %i.be
  br i1 %i.ee, label %.lr.ph240, label %asciilib_utf16_decode.exit

asciilib_utf16_decode.exit:                       ; preds = %bb.t, %.thread.us.i, %.split.us.i, %bb.x, %.thread.i, %.split.i, %.split.us.i.preheader.a, %.split.i.preheader, %.split143.us.i, %bb.y, %bb.z, %bb.aa
  %.474.i = phi ptr [ %.us-phi150.i, %bb.y ], [ %i.ds, %bb.aa ], [ %i.ds, %bb.z ], [ %.us-phi150.i, %.split143.us.i ], [ %i.dl, %.split.i ], [ %i.ar, %.split.i.preheader ], [ %i.ar, %.split.us.i.preheader.a ], [ %.060.lcssa.i, %.thread.i ], [ %i.dl, %bb.x ], [ %i.bq, %bb.t ], [ %i.bq, %.split.us.i ], [ %.060.lcssa.us.i, %.thread.us.i ] ; 2 uses
  %.7.i = phi ptr [ %.us-phi145.i.a, %bb.y ], [ %.us-phi145.i.a, %bb.aa ], [ %.us-phi145.i.a, %bb.z ], [ %.us-phi145.i.a, %.split143.us.i ], [ %i.ed, %.split.i ], [ %i.bd, %.split.i.preheader ], [ %i.bd, %.split.us.i.preheader.a ], [ %.168.lcssa.i, %.thread.i ], [ %.4.i, %bb.x ], [ %.4.us.i, %bb.t ], [ %i.bt, %.split.us.i ], [ %.168.lcssa.us.i, %.thread.us.i ]
  %.266.i = phi i32 [ 1, %bb.y ], [ %i.ec, %bb.aa ], [ 3, %bb.z ], [ 2, %.split143.us.i ], [ 0, %.split.i ], [ 0, %.split.i.preheader ], [ 0, %.split.us.i.preheader.a ], [ 0, %.thread.i ], [ %i.dk, %bb.x ], [ %i.bp, %bb.t ], [ 0, %.split.us.i ], [ 0, %.thread.us.i ]
  store ptr %.474.i, ptr %i.d, align 8, !tbaa !355
  %i.ef = ptrtoint ptr %.7.i to i64
  %i.eg = ptrtoint ptr %i.bb to i64
  %i.eh = sub i64 %i.ef, %i.eg
  br label %bb.bf

bb.ab:                                            ; preds = %bb.q
  br i1 %i.p, label %.split.i59.preheader, label %.split.us.i79.preheader

.split.us.i79.preheader:                          ; preds = %bb.ab
  br i1 %i.bf, label %.lr.ph252.a, label %ucs1lib_utf16_decode.exit

.split.i59.preheader:                             ; preds = %bb.ab
  br i1 %i.bf, label %.lr.ph259, label %ucs1lib_utf16_decode.exit

.lr.ph252.a:                                      ; preds = %.split.us.i79.preheader, %.split.us.i79
  %.067.us.i81251 = phi ptr [ %i.er, %.split.us.i79 ], [ %i.bd, %.split.us.i79.preheader ] ; 3 uses
  %.070.us.i80250 = phi ptr [ %i.ep, %.split.us.i79 ], [ %i.ar, %.split.us.i79.preheader ] ; 5 uses
  %i.ei = ptrtoint ptr %.070.us.i80250 to i64
  %i.ej = and i64 %i.ei, 7
  %.not81.us.i82 = icmp eq i64 %i.ej, 0
  br i1 %.not81.us.i82, label %.preheader.us.i85, label %bb.ac

.thread.us.i88:                                   ; preds = %bb.ae, %.lr.ph.us.i86, %.preheader.us.i85
  %.168.lcssa.us.i89 = phi ptr [ %.067.us.i81251, %.preheader.us.i85 ], [ %i.fh, %bb.ae ], [ %.168129.us.us.i, %.lr.ph.us.i86 ] ; 2 uses
  %.060.lcssa.us.i90 = phi ptr [ %.070.us.i80250, %.preheader.us.i85 ], [ %i.eu, %bb.ae ], [ %.060130.us.us.i, %.lr.ph.us.i86 ] ; 3 uses
  %.not85.us.i91 = icmp ult ptr %.060.lcssa.us.i90, %i.be
  br i1 %.not85.us.i91, label %bb.ac, label %ucs1lib_utf16_decode.exit

bb.ac:                                            ; preds = %.thread.us.i88, %.lr.ph252.a
  %.171.us.i83 = phi ptr [ %.070.us.i80250, %.lr.ph252.a ], [ %.060.lcssa.us.i90, %.thread.us.i88 ] ; 4 uses
  %.4.us.i84 = phi ptr [ %.067.us.i81251, %.lr.ph252.a ], [ %.168.lcssa.us.i89, %.thread.us.i88 ] ; 4 uses
  %i.ek = getelementptr i8, ptr %.171.us.i83, i64 %i.an
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !205 ; 2 uses
  %i.em = zext i8 %i.el to i32                    ; 3 uses
  %i.en = getelementptr i8, ptr %.171.us.i83, i64 %i.ao
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !205 ; 3 uses
  %i.ep = getelementptr i8, ptr %.171.us.i83, i64 2 ; 5 uses
  %i.eq = and i32 %i.em, 248
  %.not121.us.i = icmp eq i32 %i.eq, 216
  br i1 %.not121.us.i, label %.split160.us.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not87.us.i = icmp eq i8 %i.el, 0
  br i1 %.not87.us.i, label %.split.us.i79, label %.thread107.loopexit.split.loop.exit141.i

.split.us.i79:                                    ; preds = %bb.ad
  %i.er = getelementptr i8, ptr %.4.us.i84, i64 1 ; 2 uses
  store i8 %i.eo, ptr %.4.us.i84, align 1, !tbaa !205
  %i.es = icmp ult ptr %i.ep, %i.be
  br i1 %i.es, label %.lr.ph252.a, label %ucs1lib_utf16_decode.exit

.preheader.us.i85:                                ; preds = %.lr.ph252.a
  %i.et = getelementptr i8, ptr %.070.us.i80250, i64 8 ; 2 uses
  %.not82128.us.i = icmp ugt ptr %i.et, %i.be
  br i1 %.not82128.us.i, label %.thread.us.i88, label %.lr.ph.us.i86

.lr.ph.us.i86:                                    ; preds = %.preheader.us.i85, %bb.ae
  %i.eu = phi ptr [ %i.fi, %bb.ae ], [ %i.et, %.preheader.us.i85 ] ; 3 uses
  %.060130.us.us.i = phi ptr [ %i.eu, %bb.ae ], [ %.070.us.i80250, %.preheader.us.i85 ] ; 2 uses
  %.168129.us.us.i = phi ptr [ %i.fh, %bb.ae ], [ %.067.us.i81251, %.preheader.us.i85 ] ; 6 uses
  %i.ev = load i64, ptr %.060130.us.us.i, align 8, !tbaa !193 ; 5 uses
  %i.ew = and i64 %i.ev, 71777214294589695
  %.not83.us.us.i87 = icmp eq i64 %i.ew, 0
  br i1 %.not83.us.us.i87, label %bb.ae, label %.thread.us.i88

bb.ae:                                            ; preds = %.lr.ph.us.i86
  %7 = lshr exact i64 %i.ev, 8
  %i.ex = trunc i64 %7 to i8
  store i8 %i.ex, ptr %.168129.us.us.i, align 1, !tbaa !205
  %i.ey = lshr i64 %i.ev, 24
  %i.ez = trunc i64 %i.ey to i8
  %i.fa = getelementptr i8, ptr %.168129.us.us.i, i64 1
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !205
  %i.fb = lshr i64 %i.ev, 40
  %i.fc = trunc i64 %i.fb to i8
  %i.fd = getelementptr i8, ptr %.168129.us.us.i, i64 2
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !205
  %i.fe = lshr i64 %i.ev, 56
  %i.ff = trunc nuw i64 %i.fe to i8
  %i.fg = getelementptr i8, ptr %.168129.us.us.i, i64 3
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !205
  %i.fh = getelementptr i8, ptr %.168129.us.us.i, i64 4 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.eu, i64 8      ; 2 uses
  %.not82.us.us.i92 = icmp ugt ptr %i.fi, %i.be
  br i1 %.not82.us.us.i92, label %.thread.us.i88, label %.lr.ph.us.i86

.lr.ph259:                                        ; preds = %.split.i59.preheader, %.split.i59
  %.067.i61258 = phi ptr [ %i.gz, %.split.i59 ], [ %i.bd, %.split.i59.preheader ] ; 3 uses
  %.070.i60257 = phi ptr [ %i.gg, %.split.i59 ], [ %i.ar, %.split.i59.preheader ] ; 5 uses
  %i.fj = ptrtoint ptr %.070.i60257 to i64
  %i.fk = and i64 %i.fj, 7
  %.not81.i65 = icmp eq i64 %i.fk, 0
  br i1 %.not81.i65, label %.preheader.i71, label %bb.ag

.preheader.i71:                                   ; preds = %.lr.ph259
  %i.fl = getelementptr i8, ptr %.070.i60257, i64 8 ; 2 uses
  %.not82128.i = icmp ugt ptr %i.fl, %i.be
  br i1 %.not82128.i, label %.thread.i74, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %.preheader.i71, %bb.af
  %i.fm = phi ptr [ %i.ga, %bb.af ], [ %i.fl, %.preheader.i71 ] ; 3 uses
  %.060130.i = phi ptr [ %i.fm, %bb.af ], [ %.070.i60257, %.preheader.i71 ] ; 2 uses
  %.168129.i = phi ptr [ %i.fz, %bb.af ], [ %.067.i61258, %.preheader.i71 ] ; 6 uses
  %i.fn = load i64, ptr %.060130.i, align 8, !tbaa !193 ; 5 uses
  %i.fo = and i64 %i.fn, -71777214294589696
  %.not84.i73 = icmp eq i64 %i.fo, 0
  br i1 %.not84.i73, label %bb.af, label %.thread.i74

bb.af:                                            ; preds = %.lr.ph.i72
  %i.fp = trunc i64 %i.fn to i8
  store i8 %i.fp, ptr %.168129.i, align 1, !tbaa !205
  %i.fq = lshr i64 %i.fn, 16
  %i.fr = trunc i64 %i.fq to i8
  %i.fs = getelementptr i8, ptr %.168129.i, i64 1
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !205
  %i.ft = lshr i64 %i.fn, 32
  %i.fu = trunc i64 %i.ft to i8
  %i.fv = getelementptr i8, ptr %.168129.i, i64 2
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !205
  %i.fw = lshr i64 %i.fn, 48
  %i.fx = trunc nuw i64 %i.fw to i8
  %i.fy = getelementptr i8, ptr %.168129.i, i64 3
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !205
  %i.fz = getelementptr i8, ptr %.168129.i, i64 4 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fm, i64 8      ; 2 uses
  %.not82.i78 = icmp ugt ptr %i.ga, %i.be
  br i1 %.not82.i78, label %.thread.i74, label %.lr.ph.i72

.thread.i74:                                      ; preds = %bb.af, %.lr.ph.i72, %.preheader.i71
  %.168.lcssa.i75 = phi ptr [ %.067.i61258, %.preheader.i71 ], [ %i.fz, %bb.af ], [ %.168129.i, %.lr.ph.i72 ] ; 2 uses
  %.060.lcssa.i76 = phi ptr [ %.070.i60257, %.preheader.i71 ], [ %i.fm, %bb.af ], [ %.060130.i, %.lr.ph.i72 ] ; 3 uses
  %.not85.i77 = icmp ult ptr %.060.lcssa.i76, %i.be
  br i1 %.not85.i77, label %bb.ag, label %ucs1lib_utf16_decode.exit

bb.ag:                                            ; preds = %.thread.i74, %.lr.ph259
  %.171.i66 = phi ptr [ %.070.i60257, %.lr.ph259 ], [ %.060.lcssa.i76, %.thread.i74 ] ; 4 uses
  %.4.i67 = phi ptr [ %.067.i61258, %.lr.ph259 ], [ %.168.lcssa.i75, %.thread.i74 ] ; 4 uses
  %i.gb = getelementptr i8, ptr %.171.i66, i64 %i.an
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !205 ; 2 uses
  %i.gd = zext i8 %i.gc to i32                    ; 3 uses
  %i.ge = getelementptr i8, ptr %.171.i66, i64 %i.ao
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !205 ; 3 uses
  %i.gg = getelementptr i8, ptr %.171.i66, i64 2  ; 5 uses
  %i.gh = and i32 %i.gd, 248
  %.not121.i68.a = icmp eq i32 %i.gh, 216
  br i1 %.not121.i68.a, label %.split160.us.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not87.i = icmp eq i8 %i.gc, 0
  br i1 %.not87.i, label %.split.i59, label %.thread107.loopexit.split.loop.exit141.i

.split160.us.i:                                   ; preds = %bb.ac, %bb.ag
  %.us-phi161.i.a = phi i32 [ %i.gd, %bb.ag ], [ %i.em, %bb.ac ] ; 2 uses
  %.us-phi162.i.a = phi i8 [ %i.gf, %bb.ag ], [ %i.eo, %bb.ac ]
  %.us-phi163.i.a = phi ptr [ %.171.i66, %bb.ag ], [ %.171.us.i83, %bb.ac ]
  %.us-phi164.i = phi ptr [ %.4.i67, %bb.ag ], [ %.4.us.i84, %bb.ac ] ; 4 uses
  %.us-phi168.i.a = phi ptr [ %i.gg, %bb.ag ], [ %i.ep, %bb.ac ] ; 5 uses
  %i.gi = zext i8 %.us-phi162.i.a to i32
  %i.gj = and i32 %.us-phi161.i.a, 220
  %.not122.i69 = icmp eq i32 %i.gj, 216
  br i1 %.not122.i69, label %bb.ai, label %ucs1lib_utf16_decode.exit

bb.ai:                                            ; preds = %.split160.us.i
  %.not89.i = icmp ult ptr %.us-phi168.i.a, %i.be
  br i1 %.not89.i, label %bb.aj, label %ucs1lib_utf16_decode.exit

bb.aj:                                            ; preds = %bb.ai
  %i.gk = getelementptr i8, ptr %.us-phi168.i.a, i64 %i.an
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !205
  %i.gm = zext i8 %i.gl to i32                    ; 2 uses
  %i.gn = getelementptr i8, ptr %.us-phi163.i.a, i64 4 ; 2 uses
  %i.go = and i32 %i.gm, 252
  %.not123.i = icmp eq i32 %i.go, 220
  br i1 %.not123.i, label %bb.ak, label %ucs1lib_utf16_decode.exit

bb.ak:                                            ; preds = %bb.aj
  %i.gp = shl nuw nsw i32 %i.gm, 8
  %i.gq = getelementptr i8, ptr %.us-phi168.i.a, i64 %i.ao
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !205
  %i.gs = zext i8 %i.gr to i32
  %i.gt = shl nuw nsw i32 %.us-phi161.i.a, 18
  %i.gu = shl nuw nsw i32 %i.gi, 10
  %.masked176.i = and i32 %i.gt, 786432
  %.masked.i70 = and i32 %i.gp, 768
  %i.gv = or disjoint i32 %.masked.i70, %i.gs
  %i.gw = or disjoint i32 %.masked176.i, 65536
  %i.gx = add nuw nsw i32 %i.gw, %i.gu
  %i.gy = or disjoint i32 %i.gx, %i.gv
  br label %ucs1lib_utf16_decode.exit

.split.i59:                                       ; preds = %bb.ah
  %i.gz = getelementptr i8, ptr %.4.i67, i64 1    ; 2 uses
  store i8 %i.gf, ptr %.4.i67, align 1, !tbaa !205
  %i.ha = icmp ult ptr %i.gg, %i.be
  br i1 %i.ha, label %.lr.ph259, label %ucs1lib_utf16_decode.exit

.thread107.loopexit.split.loop.exit141.i:         ; preds = %bb.ad, %bb.ah
  %.us-phi169.i.a = phi i32 [ %i.gd, %bb.ah ], [ %i.em, %bb.ad ]
  %.us-phi170.i.a = phi i8 [ %i.gf, %bb.ah ], [ %i.eo, %bb.ad ]
  %.us-phi171.i.a = phi ptr [ %i.gg, %bb.ah ], [ %i.ep, %bb.ad ]
  %.us-phi172.i = phi ptr [ %.4.i67, %bb.ah ], [ %.4.us.i84, %bb.ad ]
  %i.hb = shl nuw nsw i32 %.us-phi169.i.a, 8
  %i.hc = zext i8 %.us-phi170.i.a to i32
  %i.hd = or disjoint i32 %i.hb, %i.hc
  br label %ucs1lib_utf16_decode.exit

ucs1lib_utf16_decode.exit:                        ; preds = %.thread.us.i88, %.split.us.i79, %.thread.i74, %.split.i59, %.split.us.i79.preheader, %.split.i59.preheader, %.split160.us.i, %bb.ai, %bb.aj, %bb.ak, %.thread107.loopexit.split.loop.exit141.i
  %.474.i62 = phi ptr [ %.us-phi168.i.a, %bb.ai ], [ %i.gn, %bb.ak ], [ %i.gn, %bb.aj ], [ %.us-phi168.i.a, %.split160.us.i ], [ %.us-phi171.i.a, %.thread107.loopexit.split.loop.exit141.i ], [ %i.ar, %.split.us.i79.preheader ], [ %i.ar, %.split.i59.preheader ], [ %i.gg, %.split.i59 ], [ %.060.lcssa.i76, %.thread.i74 ], [ %.060.lcssa.us.i90, %.thread.us.i88 ], [ %i.ep, %.split.us.i79 ] ; 2 uses
  %.7.i63 = phi ptr [ %.us-phi164.i, %bb.ai ], [ %.us-phi164.i, %bb.ak ], [ %.us-phi164.i, %bb.aj ], [ %.us-phi164.i, %.split160.us.i ], [ %.us-phi172.i, %.thread107.loopexit.split.loop.exit141.i ], [ %i.bd, %.split.us.i79.preheader ], [ %i.bd, %.split.i59.preheader ], [ %i.gz, %.split.i59 ], [ %.168.lcssa.i75, %.thread.i74 ], [ %.168.lcssa.us.i89, %.thread.us.i88 ], [ %i.er, %.split.us.i79 ]
  %.266.i64 = phi i32 [ 1, %bb.ai ], [ %i.gy, %bb.ak ], [ 3, %bb.aj ], [ 2, %.split160.us.i ], [ %i.hd, %.thread107.loopexit.split.loop.exit141.i ], [ 0, %.split.us.i79.preheader ], [ 0, %.split.i59.preheader ], [ 0, %.thread.i74 ], [ 0, %.split.i59 ], [ 0, %.split.us.i79 ], [ 0, %.thread.us.i88 ]
  store ptr %.474.i62, ptr %i.d, align 8, !tbaa !355
  %i.he = ptrtoint ptr %.7.i63 to i64
  %i.hf = ptrtoint ptr %i.bb to i64
  %i.hg = sub i64 %i.he, %i.hf
  br label %bb.bf

bb.al:                                            ; preds = %bb.p
  %i.hh = load ptr, ptr %i.ak, align 8, !tbaa !281 ; 2 uses
  %i.hi = load i64, ptr %i.al, align 8, !tbaa !193
  %i.hj = getelementptr [2 x i8], ptr %i.hh, i64 %i.hi ; 4 uses
  %i.hk = getelementptr i8, ptr %i.as, i64 -1     ; 10 uses
  %i.hl = icmp ult ptr %i.ar, %i.hk               ; 2 uses
  br i1 %i.p, label %.split.i94.preheader, label %.split.us.i110.preheader

.split.us.i110.preheader:                         ; preds = %bb.al
  br i1 %i.hl, label %.lr.ph.a, label %ucs2lib_utf16_decode.exit

.split.i94.preheader:                             ; preds = %bb.al
  br i1 %i.hl, label %.lr.ph221, label %ucs2lib_utf16_decode.exit

.lr.ph.a:                                         ; preds = %.split.us.i110.preheader, %.split.us.i110
  %.067.us.i112215 = phi ptr [ %i.hz, %.split.us.i110 ], [ %i.hj, %.split.us.i110.preheader ] ; 3 uses
  %.070.us.i111214 = phi ptr [ %i.hw, %.split.us.i110 ], [ %i.ar, %.split.us.i110.preheader ] ; 5 uses
  %i.hm = ptrtoint ptr %.070.us.i111214 to i64
  %i.hn = and i64 %i.hm, 7
  %.not79.us.i = icmp eq i64 %i.hn, 0
  br i1 %.not79.us.i, label %.preheader.us.i115, label %bb.am

.thread.us.i117:                                  ; preds = %bb.an, %.lr.ph.us.i116, %.preheader.us.i115
  %.168.lcssa.us.i118 = phi ptr [ %.067.us.i112215, %.preheader.us.i115 ], [ %i.if, %bb.an ], [ %.168125.us.us.i, %.lr.ph.us.i116 ] ; 2 uses
  %.060.lcssa.us.i119 = phi ptr [ %.070.us.i111214, %.preheader.us.i115 ], [ %i.ic, %bb.an ], [ %.060126.us.us.i, %.lr.ph.us.i116 ] ; 3 uses
  %.not83.us.i = icmp ult ptr %.060.lcssa.us.i119, %i.hk
  br i1 %.not83.us.i, label %bb.am, label %ucs2lib_utf16_decode.exit

bb.am:                                            ; preds = %.thread.us.i117, %.lr.ph.a
  %.171.us.i113 = phi ptr [ %.070.us.i111214, %.lr.ph.a ], [ %.060.lcssa.us.i119, %.thread.us.i117 ] ; 4 uses
  %.4.us.i114 = phi ptr [ %.067.us.i112215, %.lr.ph.a ], [ %.168.lcssa.us.i118, %.thread.us.i117 ] ; 3 uses
  %i.ho = getelementptr i8, ptr %.171.us.i113, i64 %i.an
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !205
  %i.hq = zext i8 %i.hp to i32                    ; 3 uses
  %i.hr = shl nuw nsw i32 %i.hq, 8
  %i.hs = getelementptr i8, ptr %.171.us.i113, i64 %i.ao
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !205
  %i.hu = zext i8 %i.ht to i32
  %i.hv = or disjoint i32 %i.hr, %i.hu            ; 2 uses
  %i.hw = getelementptr i8, ptr %.171.us.i113, i64 2 ; 4 uses
  %i.hx = and i32 %i.hq, 248
  %.not117.us.i = icmp eq i32 %i.hx, 216
  br i1 %.not117.us.i, label %.split139.us.i, label %.split.us.i110

.split.us.i110:                                   ; preds = %bb.am
  %i.hy = trunc nuw i32 %i.hv to i16
  %i.hz = getelementptr i8, ptr %.4.us.i114, i64 2 ; 2 uses
  store i16 %i.hy, ptr %.4.us.i114, align 2, !tbaa !208
  %i.ia = icmp ult ptr %i.hw, %i.hk
  br i1 %i.ia, label %.lr.ph.a, label %ucs2lib_utf16_decode.exit

.preheader.us.i115:                               ; preds = %.lr.ph.a
  %i.ib = getelementptr i8, ptr %.070.us.i111214, i64 8 ; 2 uses
  %.not80124.us.i = icmp ugt ptr %i.ib, %i.hk
  br i1 %.not80124.us.i, label %.thread.us.i117, label %.lr.ph.us.i116

.lr.ph.us.i116:                                   ; preds = %.preheader.us.i115, %bb.an
  %i.ic = phi ptr [ %i.ig, %bb.an ], [ %i.ib, %.preheader.us.i115 ] ; 3 uses
  %.060126.us.us.i = phi ptr [ %i.ic, %bb.an ], [ %.070.us.i111214, %.preheader.us.i115 ] ; 2 uses
  %.168125.us.us.i = phi ptr [ %i.if, %bb.an ], [ %.067.us.i112215, %.preheader.us.i115 ] ; 3 uses
  %i.id = load i64, ptr %.060126.us.us.i, align 8, !tbaa !193 ; 3 uses
  %i.ie = and i64 %i.id, 36029346783166592
  %.not81.us.us.i = icmp eq i64 %i.ie, 0
  br i1 %.not81.us.us.i, label %bb.an, label %.thread.us.i117

bb.an:                                            ; preds = %.lr.ph.us.i116
  %8 = lshr i64 %i.id, 8
  %9 = and i64 %8, 71777214294589695
  %10 = shl i64 %i.id, 8
  %11 = and i64 %10, 9151454082924314368
  %12 = or disjoint i64 %9, %11
  store i64 %12, ptr %.168125.us.us.i, align 2
  %i.if = getelementptr i8, ptr %.168125.us.us.i, i64 8 ; 2 uses
  %i.ig = getelementptr i8, ptr %i.ic, i64 8      ; 2 uses
  %.not80.us.us.i = icmp ugt ptr %i.ig, %i.hk
  br i1 %.not80.us.us.i, label %.thread.us.i117, label %.lr.ph.us.i116

.lr.ph221:                                        ; preds = %.split.i94.preheader, %.split.i94
  %.067.i96220 = phi ptr [ %i.jp, %.split.i94 ], [ %i.hj, %.split.i94.preheader ] ; 3 uses
  %.070.i95219 = phi ptr [ %i.ix, %.split.i94 ], [ %i.ar, %.split.i94.preheader ] ; 5 uses
  %i.ih = ptrtoint ptr %.070.i95219 to i64
  %i.ii = and i64 %i.ih, 7
  %.not79.i.a = icmp eq i64 %i.ii, 0
  br i1 %.not79.i.a, label %.preheader.i104, label %bb.ap

.preheader.i104:                                  ; preds = %.lr.ph221
  %i.ij = getelementptr i8, ptr %.070.i95219, i64 8 ; 2 uses
  %.not80124.i = icmp ugt ptr %i.ij, %i.hk
  br i1 %.not80124.i, label %.thread.i107, label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.preheader.i104, %bb.ao
  %i.ik = phi ptr [ %i.io, %bb.ao ], [ %i.ij, %.preheader.i104 ] ; 3 uses
  %.060126.i = phi ptr [ %i.ik, %bb.ao ], [ %.070.i95219, %.preheader.i104 ] ; 2 uses
  %.168125.i = phi ptr [ %i.in, %bb.ao ], [ %.067.i96220, %.preheader.i104 ] ; 3 uses
  %i.il = load i64, ptr %.060126.i, align 8, !tbaa !193 ; 2 uses
  %i.im = and i64 %i.il, -9223231297218904064
  %.not82.i106 = icmp eq i64 %i.im, 0
  br i1 %.not82.i106, label %bb.ao, label %.thread.i107

bb.ao:                                            ; preds = %.lr.ph.i105
  store i64 %i.il, ptr %.168125.i, align 2
  %i.in = getelementptr i8, ptr %.168125.i, i64 8 ; 2 uses
  %i.io = getelementptr i8, ptr %i.ik, i64 8      ; 2 uses
  %.not80.i = icmp ugt ptr %i.io, %i.hk
  br i1 %.not80.i, label %.thread.i107, label %.lr.ph.i105

.thread.i107:                                     ; preds = %bb.ao, %.lr.ph.i105, %.preheader.i104
  %.168.lcssa.i108 = phi ptr [ %.067.i96220, %.preheader.i104 ], [ %i.in, %bb.ao ], [ %.168125.i, %.lr.ph.i105 ] ; 2 uses
  %.060.lcssa.i109 = phi ptr [ %.070.i95219, %.preheader.i104 ], [ %i.ik, %bb.ao ], [ %.060126.i, %.lr.ph.i105 ] ; 3 uses
  %.not83.i = icmp ult ptr %.060.lcssa.i109, %i.hk
  br i1 %.not83.i, label %bb.ap, label %ucs2lib_utf16_decode.exit

bb.ap:                                            ; preds = %.thread.i107, %.lr.ph221
  %.171.i100 = phi ptr [ %.070.i95219, %.lr.ph221 ], [ %.060.lcssa.i109, %.thread.i107 ] ; 4 uses
  %.4.i101 = phi ptr [ %.067.i96220, %.lr.ph221 ], [ %.168.lcssa.i108, %.thread.i107 ] ; 3 uses
  %i.ip = getelementptr i8, ptr %.171.i100, i64 %i.an
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !205
  %i.ir = zext i8 %i.iq to i32                    ; 3 uses
  %i.is = shl nuw nsw i32 %i.ir, 8
  %i.it = getelementptr i8, ptr %.171.i100, i64 %i.ao
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !205
  %i.iv = zext i8 %i.iu to i32
  %i.iw = or disjoint i32 %i.is, %i.iv            ; 2 uses
  %i.ix = getelementptr i8, ptr %.171.i100, i64 2 ; 4 uses
  %i.iy = and i32 %i.ir, 248
  %.not117.i.a = icmp eq i32 %i.iy, 216
  br i1 %.not117.i.a, label %.split139.us.i, label %.split.i94

.split139.us.i:                                   ; preds = %bb.am, %bb.ap
  %.us-phi140.i.a = phi ptr [ %.171.i100, %bb.ap ], [ %.171.us.i113, %bb.am ]
  %.us-phi141.i = phi ptr [ %.4.i101, %bb.ap ], [ %.4.us.i114, %bb.am ] ; 4 uses
  %.us-phi143.i = phi i32 [ %i.ir, %bb.ap ], [ %i.hq, %bb.am ]
  %.us-phi145.i102 = phi i32 [ %i.iw, %bb.ap ], [ %i.hv, %bb.am ]
  %.us-phi146.i = phi ptr [ %i.ix, %bb.ap ], [ %i.hw, %bb.am ] ; 5 uses
  %i.iz = and i32 %.us-phi143.i, 220
  %.not118.i.a = icmp eq i32 %i.iz, 216
  br i1 %.not118.i.a, label %bb.aq, label %ucs2lib_utf16_decode.exit

bb.aq:                                            ; preds = %.split139.us.i
  %.not86.i = icmp ult ptr %.us-phi146.i, %i.hk
  br i1 %.not86.i, label %bb.ar, label %ucs2lib_utf16_decode.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ja = getelementptr i8, ptr %.us-phi146.i, i64 %i.an
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !205
  %i.jc = zext i8 %i.jb to i32                    ; 2 uses
  %i.jd = getelementptr i8, ptr %.us-phi140.i.a, i64 4 ; 2 uses
  %i.je = and i32 %i.jc, 252
  %.not119.i = icmp eq i32 %i.je, 220
  br i1 %.not119.i, label %.thread91.i, label %ucs2lib_utf16_decode.exit

.thread91.i:                                      ; preds = %bb.ar
  %i.jf = shl nuw nsw i32 %i.jc, 8
  %i.jg = getelementptr i8, ptr %.us-phi146.i, i64 %i.ao
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !205
  %i.ji = zext i8 %i.jh to i32
  %i.jj = shl nuw nsw i32 %.us-phi145.i102, 10
  %i.jk = and i32 %i.jj, 1047552
  %.masked.i103 = and i32 %i.jf, 768
  %i.jl = or disjoint i32 %.masked.i103, %i.ji
  %i.jm = add nuw nsw i32 %i.jk, 65536
  %i.jn = or disjoint i32 %i.jl, %i.jm
  br label %ucs2lib_utf16_decode.exit

.split.i94:                                       ; preds = %bb.ap
  %i.jo = trunc nuw i32 %i.iw to i16
  %i.jp = getelementptr i8, ptr %.4.i101, i64 2   ; 2 uses
  store i16 %i.jo, ptr %.4.i101, align 2, !tbaa !208
  %i.jq = icmp ult ptr %i.ix, %i.hk
  br i1 %i.jq, label %.lr.ph221, label %ucs2lib_utf16_decode.exit

ucs2lib_utf16_decode.exit:                        ; preds = %.thread.us.i117, %.split.us.i110, %.thread.i107, %.split.i94, %.split.us.i110.preheader, %.split.i94.preheader, %.split139.us.i, %bb.aq, %bb.ar, %.thread91.i
  %.474.i97 = phi ptr [ %.us-phi146.i, %.split139.us.i ], [ %i.jd, %bb.ar ], [ %i.jd, %.thread91.i ], [ %.us-phi146.i, %bb.aq ], [ %i.ar, %.split.us.i110.preheader ], [ %i.ix, %.split.i94 ], [ %i.ar, %.split.i94.preheader ], [ %.060.lcssa.i109, %.thread.i107 ], [ %.060.lcssa.us.i119, %.thread.us.i117 ], [ %i.hw, %.split.us.i110 ] ; 2 uses
  %.7.i98 = phi ptr [ %.us-phi141.i, %.split139.us.i ], [ %.us-phi141.i, %bb.ar ], [ %.us-phi141.i, %.thread91.i ], [ %.us-phi141.i, %bb.aq ], [ %i.hj, %.split.us.i110.preheader ], [ %i.jp, %.split.i94 ], [ %i.hj, %.split.i94.preheader ], [ %.168.lcssa.i108, %.thread.i107 ], [ %.168.lcssa.us.i118, %.thread.us.i117 ], [ %i.hz, %.split.us.i110 ]
  %.266.i99 = phi i32 [ 2, %.split139.us.i ], [ 3, %bb.ar ], [ %i.jn, %.thread91.i ], [ 1, %bb.aq ], [ 0, %.split.us.i110.preheader ], [ 0, %.thread.i107 ], [ 0, %.split.i94.preheader ], [ 0, %.split.i94 ], [ 0, %.split.us.i110 ], [ 0, %.thread.us.i117 ]
  store ptr %.474.i97, ptr %i.d, align 8, !tbaa !355
  %i.jr = ptrtoint ptr %.7.i98 to i64
  %i.js = ptrtoint ptr %i.hh to i64
  %i.jt = sub i64 %i.jr, %i.js
  %i.ju = ashr exact i64 %i.jt, 1
  br label %bb.bf

bb.as:                                            ; preds = %bb.p
  %i.jv = load ptr, ptr %i.ak, align 8, !tbaa !281 ; 2 uses
  %i.jw = load i64, ptr %i.al, align 8, !tbaa !193
  %i.jx = getelementptr [4 x i8], ptr %i.jv, i64 %i.jw ; 4 uses
  %i.jy = getelementptr i8, ptr %i.as, i64 -1     ; 11 uses
  %i.jz = icmp ult ptr %i.ar, %i.jy               ; 2 uses
  br i1 %i.p, label %.split.i121.preheader, label %.split.us.i136.preheader.a

.split.us.i136.preheader.a:                       ; preds = %bb.as
  br i1 %i.jz, label %.lr.ph266.a, label %ucs4lib_utf16_decode.exit

.split.i121.preheader:                            ; preds = %bb.as
  br i1 %i.jz, label %.lr.ph286, label %ucs4lib_utf16_decode.exit

.lr.ph266.a:                                      ; preds = %.split.us.i136.preheader.a, %.split.us.i136
  %.067.us.i138265 = phi ptr [ %i.lb, %.split.us.i136 ], [ %i.jx, %.split.us.i136.preheader.a ] ; 3 uses
  %.070.us.i137264 = phi ptr [ %.272.us.i, %.split.us.i136 ], [ %i.ar, %.split.us.i136.preheader.a ] ; 5 uses
  %i.ka = ptrtoint ptr %.070.us.i137264 to i64
  %i.kb = and i64 %i.ka, 7
  %.not79.us.i139 = icmp eq i64 %i.kb, 0
  br i1 %.not79.us.i139, label %.preheader.us.i142, label %bb.at

.thread.us.i145:                                  ; preds = %bb.ay, %.lr.ph.us.i143, %.preheader.us.i142
  %.168.lcssa.us.i146 = phi ptr [ %.067.us.i138265, %.preheader.us.i142 ], [ %i.ls, %bb.ay ], [ %.168114.us.us.i, %.lr.ph.us.i143 ] ; 2 uses
  %.062.lcssa.us.i = phi ptr [ %.070.us.i137264, %.preheader.us.i142 ], [ %i.le, %bb.ay ], [ %.062115.us.us.i, %.lr.ph.us.i143 ] ; 3 uses
  %.not83.us.i147 = icmp ult ptr %.062.lcssa.us.i, %i.jy
  br i1 %.not83.us.i147, label %bb.at, label %ucs4lib_utf16_decode.exit

bb.at:                                            ; preds = %.thread.us.i145, %.lr.ph266.a
  %.171.us.i140 = phi ptr [ %.070.us.i137264, %.lr.ph266.a ], [ %.062.lcssa.us.i, %.thread.us.i145 ] ; 4 uses
  %.4.us.i141 = phi ptr [ %.067.us.i138265, %.lr.ph266.a ], [ %.168.lcssa.us.i146, %.thread.us.i145 ] ; 5 uses
  %i.kc = getelementptr i8, ptr %.171.us.i140, i64 %i.an
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !205
  %i.ke = zext i8 %i.kd to i32                    ; 3 uses
  %i.kf = shl nuw nsw i32 %i.ke, 8
  %i.kg = getelementptr i8, ptr %.171.us.i140, i64 %i.ao
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !205
  %i.ki = zext i8 %i.kh to i32
  %i.kj = or disjoint i32 %i.kf, %i.ki            ; 2 uses
  %i.kk = getelementptr i8, ptr %.171.us.i140, i64 2 ; 6 uses
  %i.kl = and i32 %i.ke, 248
  %.not110.us.i.a = icmp eq i32 %i.kl, 216
  br i1 %.not110.us.i.a, label %bb.au, label %.split.us.i136, !llvm.loop !505

bb.au:                                            ; preds = %bb.at
  %i.km = and i32 %i.ke, 220
  %.not111.us.i.a = icmp eq i32 %i.km, 216
  br i1 %.not111.us.i.a, label %bb.av, label %ucs4lib_utf16_decode.exit

bb.av:                                            ; preds = %bb.au
  %.not86.us.i = icmp ult ptr %i.kk, %i.jy
  br i1 %.not86.us.i, label %bb.aw, label %ucs4lib_utf16_decode.exit

bb.aw:                                            ; preds = %bb.av
  %i.kn = getelementptr i8, ptr %i.kk, i64 %i.an
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !205
  %i.kp = zext i8 %i.ko to i32                    ; 2 uses
  %i.kq = getelementptr i8, ptr %.171.us.i140, i64 4 ; 2 uses
  %i.kr = and i32 %i.kp, 252
  %.not112.us.i = icmp eq i32 %i.kr, 220
  br i1 %.not112.us.i, label %bb.ax, label %ucs4lib_utf16_decode.exit

bb.ax:                                            ; preds = %bb.aw
  %i.ks = shl nuw nsw i32 %i.kp, 8
  %i.kt = getelementptr i8, ptr %i.kk, i64 %i.ao
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !205
  %i.kv = zext i8 %i.ku to i32
  %i.kw = shl nuw nsw i32 %i.kj, 10
  %i.kx = and i32 %i.kw, 1047552
  %.masked.us.i = and i32 %i.ks, 768
  %i.ky = or disjoint i32 %.masked.us.i, %i.kv
  %i.kz = add nuw nsw i32 %i.kx, 65536
  %i.la = or disjoint i32 %i.ky, %i.kz
  br label %.split.us.i136

.split.us.i136:                                   ; preds = %bb.ax, %bb.at
  %.sink.i = phi i32 [ %i.la, %bb.ax ], [ %i.kj, %bb.at ]
  %.272.us.i = phi ptr [ %i.kq, %bb.ax ], [ %i.kk, %bb.at ] ; 3 uses
  %i.lb = getelementptr i8, ptr %.4.us.i141, i64 4 ; 2 uses
  store i32 %.sink.i, ptr %.4.us.i141, align 4, !tbaa !7
  %i.lc = icmp ult ptr %.272.us.i, %i.jy
  br i1 %i.lc, label %.lr.ph266.a, label %ucs4lib_utf16_decode.exit

.preheader.us.i142:                               ; preds = %.lr.ph266.a
  %i.ld = getelementptr i8, ptr %.070.us.i137264, i64 8 ; 2 uses
  %.not80113.us.i = icmp ugt ptr %i.ld, %i.jy
  br i1 %.not80113.us.i, label %.thread.us.i145, label %.lr.ph.us.i143

.lr.ph.us.i143:                                   ; preds = %.preheader.us.i142, %bb.ay
  %i.le = phi ptr [ %i.lt, %bb.ay ], [ %i.ld, %.preheader.us.i142 ] ; 3 uses
  %.062115.us.us.i = phi ptr [ %i.le, %bb.ay ], [ %.070.us.i137264, %.preheader.us.i142 ] ; 2 uses
  %.168114.us.us.i = phi ptr [ %i.ls, %bb.ay ], [ %.067.us.i138265, %.preheader.us.i142 ] ; 6 uses
  %i.lf = load i64, ptr %.062115.us.us.i, align 8, !tbaa !193 ; 3 uses
  %i.lg = and i64 %i.lf, 36029346783166592
  %.not81.us.us.i144 = icmp eq i64 %i.lg, 0
  br i1 %.not81.us.us.i144, label %bb.ay, label %.thread.us.i145

bb.ay:                                            ; preds = %.lr.ph.us.i143
  %13 = lshr i64 %i.lf, 8
  %14 = and i64 %13, 71777214294589695
  %15 = shl i64 %i.lf, 8
  %16 = and i64 %15, 9151454082924314368
  %17 = or disjoint i64 %14, %16                  ; 3 uses
  %i.lh = trunc i64 %17 to i32                    ; 2 uses
  %i.li = and i32 %i.lh, 32767
  store i32 %i.li, ptr %.168114.us.us.i, align 4, !tbaa !7
  %i.lj = lshr i32 %i.lh, 16
  %i.lk = getelementptr i8, ptr %.168114.us.us.i, i64 4
  store i32 %i.lj, ptr %i.lk, align 4, !tbaa !7
  %i.ll = lshr i64 %17, 32
  %i.lm = trunc nuw nsw i64 %i.ll to i32
  %i.ln = and i32 %i.lm, 32767
  %i.lo = getelementptr i8, ptr %.168114.us.us.i, i64 8
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !7
  %i.lp = lshr i64 %17, 48
  %i.lq = trunc nuw nsw i64 %i.lp to i32
  %i.lr = getelementptr i8, ptr %.168114.us.us.i, i64 12
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !7
  %i.ls = getelementptr i8, ptr %.168114.us.us.i, i64 16 ; 2 uses
  %i.lt = getelementptr i8, ptr %i.le, i64 8      ; 2 uses
  %.not80.us.us.i148 = icmp ugt ptr %i.lt, %i.jy
  br i1 %.not80.us.us.i148, label %.thread.us.i145, label %.lr.ph.us.i143

.lr.ph286:                                        ; preds = %.split.i121.preheader, %.split.i121
  %.067.i123285 = phi ptr [ %i.nm, %.split.i121 ], [ %i.jx, %.split.i121.preheader ] ; 3 uses
  %.070.i122284 = phi ptr [ %.272.i, %.split.i121 ], [ %i.ar, %.split.i121.preheader ] ; 5 uses
  %i.lu = ptrtoint ptr %.070.i122284 to i64
  %i.lv = and i64 %i.lu, 7
  %.not79.i124 = icmp eq i64 %i.lv, 0
  br i1 %.not79.i124, label %.preheader.i129, label %bb.ba

.preheader.i129:                                  ; preds = %.lr.ph286
  %i.lw = getelementptr i8, ptr %.070.i122284, i64 8 ; 2 uses
  %.not80113.i = icmp ugt ptr %i.lw, %i.jy
  br i1 %.not80113.i, label %.thread.i132, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %.preheader.i129, %bb.az
  %i.lx = phi ptr [ %i.mm, %bb.az ], [ %i.lw, %.preheader.i129 ] ; 3 uses
  %.062115.i = phi ptr [ %i.lx, %bb.az ], [ %.070.i122284, %.preheader.i129 ] ; 2 uses
  %.168114.i = phi ptr [ %i.ml, %bb.az ], [ %.067.i123285, %.preheader.i129 ] ; 6 uses
  %i.ly = load i64, ptr %.062115.i, align 8, !tbaa !193 ; 4 uses
  %i.lz = and i64 %i.ly, -9223231297218904064
  %.not82.i131 = icmp eq i64 %i.lz, 0
  br i1 %.not82.i131, label %bb.az, label %.thread.i132

bb.az:                                            ; preds = %.lr.ph.i130
  %i.ma = trunc i64 %i.ly to i32                  ; 2 uses
  %i.mb = and i32 %i.ma, 32767
  store i32 %i.mb, ptr %.168114.i, align 4, !tbaa !7
  %i.mc = lshr i32 %i.ma, 16
  %i.md = getelementptr i8, ptr %.168114.i, i64 4
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !7
  %i.me = lshr i64 %i.ly, 32
  %i.mf = trunc nuw nsw i64 %i.me to i32
  %i.mg = and i32 %i.mf, 32767
  %i.mh = getelementptr i8, ptr %.168114.i, i64 8
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !7
  %i.mi = lshr i64 %i.ly, 48
  %i.mj = trunc nuw nsw i64 %i.mi to i32
  %i.mk = getelementptr i8, ptr %.168114.i, i64 12
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !7
  %i.ml = getelementptr i8, ptr %.168114.i, i64 16 ; 2 uses
  %i.mm = getelementptr i8, ptr %i.lx, i64 8      ; 2 uses
  %.not80.i135 = icmp ugt ptr %i.mm, %i.jy
  br i1 %.not80.i135, label %.thread.i132, label %.lr.ph.i130

.thread.i132:                                     ; preds = %bb.az, %.lr.ph.i130, %.preheader.i129
  %.168.lcssa.i133 = phi ptr [ %.067.i123285, %.preheader.i129 ], [ %i.ml, %bb.az ], [ %.168114.i, %.lr.ph.i130 ] ; 2 uses
  %.062.lcssa.i = phi ptr [ %.070.i122284, %.preheader.i129 ], [ %i.lx, %bb.az ], [ %.062115.i, %.lr.ph.i130 ] ; 3 uses
  %.not83.i134 = icmp ult ptr %.062.lcssa.i, %i.jy
  br i1 %.not83.i134, label %bb.ba, label %ucs4lib_utf16_decode.exit

bb.ba:                                            ; preds = %.thread.i132, %.lr.ph286
  %.171.i125 = phi ptr [ %.070.i122284, %.lr.ph286 ], [ %.062.lcssa.i, %.thread.i132 ] ; 4 uses
  %.4.i126 = phi ptr [ %.067.i123285, %.lr.ph286 ], [ %.168.lcssa.i133, %.thread.i132 ] ; 5 uses
  %i.mn = getelementptr i8, ptr %.171.i125, i64 %i.an
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !205
  %i.mp = zext i8 %i.mo to i32                    ; 3 uses
  %i.mq = shl nuw nsw i32 %i.mp, 8
  %i.mr = getelementptr i8, ptr %.171.i125, i64 %i.ao
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !205
  %i.mt = zext i8 %i.ms to i32
  %i.mu = or disjoint i32 %i.mq, %i.mt            ; 2 uses
  %i.mv = getelementptr i8, ptr %.171.i125, i64 2 ; 6 uses
  %i.mw = and i32 %i.mp, 248
  %.not110.i.a = icmp eq i32 %i.mw, 216
  br i1 %.not110.i.a, label %bb.bb, label %.split.i121, !llvm.loop !505

bb.bb:                                            ; preds = %bb.ba
  %i.mx = and i32 %i.mp, 220
  %.not111.i.a = icmp eq i32 %i.mx, 216
  br i1 %.not111.i.a, label %bb.bc, label %ucs4lib_utf16_decode.exit

bb.bc:                                            ; preds = %bb.bb
  %.not86.i127 = icmp ult ptr %i.mv, %i.jy
  br i1 %.not86.i127, label %bb.bd, label %ucs4lib_utf16_decode.exit

bb.bd:                                            ; preds = %bb.bc
  %i.my = getelementptr i8, ptr %i.mv, i64 %i.an
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !205
  %i.na = zext i8 %i.mz to i32                    ; 2 uses
  %i.nb = getelementptr i8, ptr %.171.i125, i64 4 ; 2 uses
  %i.nc = and i32 %i.na, 252
  %.not112.i = icmp eq i32 %i.nc, 220
  br i1 %.not112.i, label %bb.be, label %ucs4lib_utf16_decode.exit

bb.be:                                            ; preds = %bb.bd
  %i.nd = shl nuw nsw i32 %i.na, 8
  %i.ne = getelementptr i8, ptr %i.mv, i64 %i.ao
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !205
  %i.ng = zext i8 %i.nf to i32
  %i.nh = shl nuw nsw i32 %i.mu, 10
  %i.ni = and i32 %i.nh, 1047552
  %.masked.i128 = and i32 %i.nd, 768
  %i.nj = or disjoint i32 %.masked.i128, %i.ng
  %i.nk = add nuw nsw i32 %i.ni, 65536
  %i.nl = or disjoint i32 %i.nj, %i.nk
  br label %.split.i121

.split.i121:                                      ; preds = %bb.be, %bb.ba
  %.sink149.i = phi i32 [ %i.nl, %bb.be ], [ %i.mu, %bb.ba ]
  %.272.i = phi ptr [ %i.nb, %bb.be ], [ %i.mv, %bb.ba ] ; 3 uses
  %i.nm = getelementptr i8, ptr %.4.i126, i64 4   ; 2 uses
  store i32 %.sink149.i, ptr %.4.i126, align 4, !tbaa !7
  %i.nn = icmp ult ptr %.272.i, %i.jy
  br i1 %i.nn, label %.lr.ph286, label %ucs4lib_utf16_decode.exit

ucs4lib_utf16_decode.exit:                        ; preds = %bb.aw, %bb.av, %bb.au, %.thread.us.i145, %.split.us.i136, %bb.bd, %bb.bc, %bb.bb, %.thread.i132, %.split.i121, %.split.us.i136.preheader.a, %.split.i121.preheader
  %.us-phi.i = phi ptr [ %i.ar, %.split.us.i136.preheader.a ], [ %i.ar, %.split.i121.preheader ], [ %.272.i, %.split.i121 ], [ %i.mv, %bb.bc ], [ %i.nb, %bb.bd ], [ %i.mv, %bb.bb ], [ %.062.lcssa.i, %.thread.i132 ], [ %.062.lcssa.us.i, %.thread.us.i145 ], [ %i.kq, %bb.aw ], [ %i.kk, %bb.au ], [ %i.kk, %bb.av ], [ %.272.us.i, %.split.us.i136 ] ; 2 uses
  %.us-phi126.i.a = phi ptr [ %i.jx, %.split.us.i136.preheader.a ], [ %i.jx, %.split.i121.preheader ], [ %i.nm, %.split.i121 ], [ %.4.i126, %bb.bc ], [ %.4.i126, %bb.bd ], [ %.4.i126, %bb.bb ], [ %.168.lcssa.i133, %.thread.i132 ], [ %.168.lcssa.us.i146, %.thread.us.i145 ], [ %.4.us.i141, %bb.aw ], [ %.4.us.i141, %bb.au ], [ %.4.us.i141, %bb.av ], [ %i.lb, %.split.us.i136 ]
  %.us-phi127.i = phi i32 [ 0, %.split.us.i136.preheader.a ], [ 0, %.split.i121.preheader ], [ 0, %.split.i121 ], [ 1, %bb.bc ], [ 3, %bb.bd ], [ 2, %bb.bb ], [ 0, %.thread.i132 ], [ 0, %.thread.us.i145 ], [ 3, %bb.aw ], [ 2, %bb.au ], [ 1, %bb.av ], [ 0, %.split.us.i136 ]
  store ptr %.us-phi.i, ptr %i.d, align 8, !tbaa !355
  %i.no = ptrtoint ptr %.us-phi126.i.a to i64
  %i.np = ptrtoint ptr %i.jv to i64
  %i.nq = sub i64 %i.no, %i.np
  %i.nr = ashr exact i64 %i.nq, 2
  br label %bb.bf

bb.bf:                                            ; preds = %ucs1lib_utf16_decode.exit, %asciilib_utf16_decode.exit, %ucs4lib_utf16_decode.exit, %ucs2lib_utf16_decode.exit
  %.sink = phi i64 [ %i.hg, %ucs1lib_utf16_decode.exit ], [ %i.eh, %asciilib_utf16_decode.exit ], [ %i.nr, %ucs4lib_utf16_decode.exit ], [ %i.ju, %ucs2lib_utf16_decode.exit ] ; 3 uses
  %i.ns = phi ptr [ %.474.i62, %ucs1lib_utf16_decode.exit ], [ %.474.i, %asciilib_utf16_decode.exit ], [ %.us-phi.i, %ucs4lib_utf16_decode.exit ], [ %.474.i97, %ucs2lib_utf16_decode.exit ] ; 5 uses
  %.1 = phi i32 [ %.266.i64, %ucs1lib_utf16_decode.exit ], [ %.266.i, %asciilib_utf16_decode.exit ], [ %.us-phi127.i, %ucs4lib_utf16_decode.exit ], [ %.266.i99, %ucs2lib_utf16_decode.exit ] ; 6 uses
  store i64 %.sink, ptr %i.al, align 8, !tbaa !193
  switch i32 %.1, label %bb.bl [
    i32 0, label %..thread_crit_edge
    i32 1, label %bb.bh
    i32 2, label %bb.bj
    i32 3, label %bb.bk
  ]

..thread_crit_edge:                               ; preds = %bb.bf
  %.pre351 = load ptr, ptr %i.e, align 8, !tbaa !355
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.o
  %i.nt = phi ptr [ %i.as, %bb.o ], [ %.pre351, %..thread_crit_edge ] ; 2 uses
  %i.nu = phi ptr [ %i.ar, %bb.o ], [ %i.ns, %..thread_crit_edge ] ; 3 uses
  %i.nv = icmp eq ptr %i.nu, %i.nt
  %or.cond3 = or i1 %i.ap, %i.nv
  br i1 %or.cond3, label %bb.bs, label %bb.bg

bb.bg:                                            ; preds = %.thread
  %i.nw = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.nx = ptrtoint ptr %i.nu to i64
  %i.ny = ptrtoint ptr %i.nw to i64               ; 2 uses
  %i.nz = sub i64 %i.nx, %i.ny
  store i64 %i.nz, ptr %i.b, align 8, !tbaa !193
  %i.oa = ptrtoint ptr %i.nt to i64
  %i.ob = sub i64 %i.oa, %i.ny
  br label %bb.br

bb.bh:                                            ; preds = %bb.bf
  %i.oc = getelementptr i8, ptr %i.ns, i64 -2     ; 3 uses
  store ptr %i.oc, ptr %i.d, align 8, !tbaa !355
  br i1 %.not53, label %bb.bi, label %.thread167

bb.bi:                                            ; preds = %bb.bh
  %i.od = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = ptrtoint ptr %i.od to i64               ; 2 uses
  %i.og = sub i64 %i.oe, %i.of
  store i64 %i.og, ptr %i.b, align 8, !tbaa !193
  %i.oh = load ptr, ptr %i.e, align 8, !tbaa !355
  %i.oi = ptrtoint ptr %i.oh to i64
  %i.oj = sub i64 %i.oi, %i.of
  br label %bb.br

bb.bj:                                            ; preds = %bb.bf
  %i.ok = getelementptr i8, ptr %i.ns, i64 -2
  %i.ol = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.om = ptrtoint ptr %i.ok to i64
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = sub i64 %i.om, %i.on                    ; 2 uses
  store i64 %i.oo, ptr %i.b, align 8, !tbaa !193
  %i.op = add i64 %i.oo, 2
  br label %bb.br

bb.bk:                                            ; preds = %bb.bf
  %i.oq = getelementptr i8, ptr %i.ns, i64 -4
  %i.or = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.os = ptrtoint ptr %i.oq to i64
  %i.ot = ptrtoint ptr %i.or to i64
  %i.ou = sub i64 %i.os, %i.ot                    ; 2 uses
  store i64 %i.ou, ptr %i.b, align 8, !tbaa !193
  %i.ov = add i64 %i.ou, 2
  br label %bb.br

bb.bl:                                            ; preds = %bb.bf
  %i.ow = load i32, ptr %i.x, align 4, !tbaa !276
  %.not.i149 = icmp ugt i32 %.1, %i.ow
  br i1 %.not.i149, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ox = load i64, ptr %i.aq, align 8, !tbaa !278
  %i.oy = sub i64 %i.ox, %.sink
  %i.oz = icmp sgt i64 %i.oy, 0
  br i1 %i.oz, label %.critedge.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.pa = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %5, i64 noundef 1, i32 noundef %.1) #33
  %i.pb = icmp slt i32 %i.pa, 0
  br i1 %i.pb, label %.thread165, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.bn
  %.pre.i = load i64, ptr %i.al, align 8, !tbaa !279
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.bm
  %i.pc = phi i64 [ %.pre.i, %..critedge_crit_edge.i ], [ %.sink, %bb.bm ] ; 5 uses
  %i.pd = load i32, ptr %i.aj, align 8, !tbaa !280
  %i.pe = load ptr, ptr %i.ak, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.pd, label %bb.bq [
    i32 1, label %bb.bo
    i32 2, label %bb.bp
  ]

bb.bo:                                            ; preds = %.critedge.i
  %i.pf = trunc i32 %.1 to i8
  %i.pg = getelementptr i8, ptr %i.pe, i64 %i.pc
  store i8 %i.pf, ptr %i.pg, align 1, !tbaa !205
  %.pre11.i = load i64, ptr %i.al, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit

bb.bp:                                            ; preds = %.critedge.i
  %i.ph = trunc i32 %.1 to i16
  %i.pi = getelementptr [2 x i8], ptr %i.pe, i64 %i.pc
  store i16 %i.ph, ptr %i.pi, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit

bb.bq:                                            ; preds = %.critedge.i
  %i.pj = getelementptr [4 x i8], ptr %i.pe, i64 %i.pc
  store i32 %.1, ptr %i.pj, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit

_PyUnicodeWriter_WriteCharInline.exit:            ; preds = %bb.bo, %bb.bp, %bb.bq
  %i.pk = phi i64 [ %.pre11.i, %bb.bo ], [ %i.pc, %bb.bp ], [ %i.pc, %bb.bq ]
  %i.pl = add i64 %i.pk, 1
  store i64 %i.pl, ptr %i.al, align 8, !tbaa !279
  br label %select.unfold

bb.br:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bg
  %.sink460 = phi i64 [ %i.ov, %bb.bk ], [ %i.op, %bb.bj ], [ %i.oj, %bb.bi ], [ %i.ob, %bb.bg ]
  %.043 = phi ptr [ @.str.81, %bb.bk ], [ @.str.80, %bb.bj ], [ @.str.67, %bb.bi ], [ @.str.74, %bb.bg ]
  store i64 %.sink460, ptr %i.c, align 8, !tbaa !193
  %i.pm = call fastcc i32 @unicode_decode_call_errorhandler_writer(ptr noundef %2, ptr noundef %i.f, ptr noundef nonnull %i.q, ptr noundef nonnull %.043, ptr noundef %i.a, ptr noundef %i.e, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.g, ptr noundef %i.d, ptr noundef nonnull %5)
  %.not54 = icmp eq i32 %i.pm, 0
  %.pre349 = load ptr, ptr %i.d, align 8, !tbaa !355
  br i1 %.not54, label %select.unfold, label %.thread165

select.unfold:                                    ; preds = %bb.br, %_PyUnicodeWriter_WriteCharInline.exit
  %i.pn = phi ptr [ %.pre349, %bb.br ], [ %i.ns, %_PyUnicodeWriter_WriteCharInline.exit ]
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !355
  br label %bb.o

bb.bs:                                            ; preds = %.thread
  br i1 %.not53, label %bb.bt, label %.thread167

.thread167:                                       ; preds = %bb.bh, %bb.bs
  %i.po = phi ptr [ %i.nu, %bb.bs ], [ %i.oc, %bb.bh ]
  %i.pp = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = ptrtoint ptr %i.pp to i64
  %i.ps = sub i64 %i.pq, %i.pr
  store i64 %i.ps, ptr %4, align 8, !tbaa !193
  br label %bb.bt

bb.bt:                                            ; preds = %.thread167, %bb.bs
  %i.pt = load ptr, ptr %i.f, align 8, !tbaa !194 ; 4 uses
  %.not.i150 = icmp eq ptr %i.pt, null
  br i1 %.not.i150, label %Py_XDECREF.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !205 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.pu, -1
  br i1 %.not.i.i, label %bb.bv, label %Py_XDECREF.exit

bb.bv:                                            ; preds = %bb.bu
  %i.pv = add nsw i32 %i.pu, -1                   ; 2 uses
  store i32 %i.pv, ptr %i.pt, align 8, !tbaa !205
  %i.pw = icmp eq i32 %i.pv, 0
  br i1 %i.pw, label %bb.bw, label %Py_XDECREF.exit

bb.bw:                                            ; preds = %bb.bv
  call void @_Py_Dealloc(ptr noundef nonnull %i.pt) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.bt, %bb.bu, %bb.bv, %bb.bw
  %i.px = load ptr, ptr %i.g, align 8, !tbaa !194 ; 4 uses
  %.not.i151 = icmp eq ptr %i.px, null
  br i1 %.not.i151, label %Py_XDECREF.exit153, label %bb.bx

bb.bx:                                            ; preds = %Py_XDECREF.exit
  %i.py = load i32, ptr %i.px, align 8, !tbaa !205 ; 2 uses
  %.not.i.i152 = icmp sgt i32 %i.py, -1
  br i1 %.not.i.i152, label %bb.by, label %Py_XDECREF.exit153

bb.by:                                            ; preds = %bb.bx
  %i.pz = add nsw i32 %i.py, -1                   ; 2 uses
  store i32 %i.pz, ptr %i.px, align 8, !tbaa !205
  %i.qa = icmp eq i32 %i.pz, 0
  br i1 %i.qa, label %bb.bz, label %Py_XDECREF.exit153

bb.bz:                                            ; preds = %bb.by
  call void @_Py_Dealloc(ptr noundef nonnull %i.px) #33
  br label %Py_XDECREF.exit153

Py_XDECREF.exit153:                               ; preds = %Py_XDECREF.exit, %bb.bx, %bb.by, %bb.bz
  %i.qb = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %5) #33
  br label %Py_XDECREF.exit159

.thread165:                                       ; preds = %bb.bn, %bb.br
end_hunk_1
begin_hunk_2_@tailmatch:bb.a
  %i.db = getelementptr [4 x i8], ptr %.0.i77, i64 %.05591
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !7
  %.not = icmp eq i32 %i.da, %i.dc
  br i1 %.not, label %bb.ah, label %.loopexit

.loopexit:                                        ; preds = %PyUnicode_READ.exit88.us97.us140, %bb.ac, %PyUnicode_READ.exit88.us97.us, %bb.ab, %PyUnicode_READ.exit88.us97, %bb.ad, %PyUnicode_READ.exit88.us.us128, %bb.z, %PyUnicode_READ.exit88.us.us, %bb.y, %PyUnicode_READ.exit88.us, %bb.aa, %PyUnicode_READ.exit88.us116, %bb.af, %PyUnicode_READ.exit88.us106, %bb.ae, %PyUnicode_READ.exit88, %bb.ah, %.preheader, %PyUnicode_READ.exit82, %PyUnicode_READ.exit86, %bb.e, %bb.d, %bb.ag
  %.0 = phi i32 [ 0, %PyUnicode_READ.exit86 ], [ 0, %bb.d ], [ %i.cy, %bb.ag ], [ 1, %bb.e ], [ 0, %PyUnicode_READ.exit82 ], [ 1, %.preheader ], [ 0, %PyUnicode_READ.exit88.us97 ], [ 0, %PyUnicode_READ.exit88.us97.us ], [ 0, %PyUnicode_READ.exit88 ], [ 0, %PyUnicode_READ.exit88.us106 ], [ 1, %bb.af ], [ 0, %PyUnicode_READ.exit88.us.us128 ], [ 0, %PyUnicode_READ.exit88.us.us ], [ 0, %PyUnicode_READ.exit88.us ], [ 1, %bb.ah ], [ 1, %bb.ae ], [ 0, %PyUnicode_READ.exit88.us116 ], [ 1, %bb.aa ], [ 1, %bb.y ], [ 1, %bb.z ], [ 1, %bb.ad ], [ 1, %bb.ab ], [ 1, %bb.ac ], [ 0, %PyUnicode_READ.exit88.us97.us140 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_Join(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @PySequence_Fast(ptr noundef %1, ptr noundef nonnull @.str.98) #33 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %.val15 = load ptr, ptr %i.c, align 8, !tbaa !197
  %i.d = getelementptr i8, ptr %.val15, i64 168
  %.val17 = load i64, ptr %i.d, align 8, !tbaa !198
  %i.e = and i64 %.val17, 33554432
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !540
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.a, i64 32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ]
  %.in = getelementptr i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %.in, align 8, !tbaa !380
  %i.k = tail call ptr @_PyUnicode_JoinArray(ptr noundef %0, ptr noundef %i.i, i64 noundef %i.j) ; 3 uses
  %i.l = load i32, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %.not.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.a, align 8, !tbaa !205
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #33
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.k, %bb.e ], [ %i.k, %bb.f ], [ %i.k, %bb.g ]
  ret ptr %.0
}

declare ptr @PySequence_Fast(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyUnicode_JoinArray(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  switch i64 %2, label %bb.e [
    i64 0, label %_Py_NewRef.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !194    ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val160 = load ptr, ptr %i.b, align 8, !tbaa !197
  %.not205 = icmp eq ptr %.val160, @PyUnicode_Type
  br i1 %.not205, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !205
  br label %_Py_NewRef.exit

bb.e:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %Py_INCREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val153 = load ptr, ptr %i.g, align 8, !tbaa !197 ; 2 uses
  %i.h = getelementptr i8, ptr %.val153, i64 168
  %.val155 = load i64, ptr %i.h, align 8, !tbaa !198
  %i.i = and i64 %.val155, 268435456
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.thread202, label %bb.g

.thread202:                                       ; preds = %bb.f
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.k = getelementptr i8, ptr %.val153, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !378
  %i.m = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.j, ptr noundef nonnull @.str.99, ptr noundef %i.l) #33 ; 0 uses
  br label %_Py_NewRef.exit

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %0, i64 16
  %.val159 = load i64, ptr %i.n, align 8, !tbaa !207 ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 32
  %.val162 = load i32, ptr %i.o, align 8          ; 2 uses
  %i.p = and i32 %.val162, 64
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.h, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.h:                                             ; preds = %bb.g
  %i.q = lshr i32 %.val162, 2
  %i.r = and i32 %i.q, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.r, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.r, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %switch.select6.i, %bb.h ], [ 127, %bb.g ] ; 2 uses
  %i.s = load i32, ptr %0, align 8, !tbaa !205    ; 2 uses
  %i.t = icmp ugt i32 %i.s, -1073741825
  br i1 %i.t, label %Py_INCREF.exit, label %bb.i

bb.i:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.u = add nuw i32 %i.s, 1
  store i32 %i.u, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.i, %PyUnicode_MAX_CHAR_VALUE.exit, %bb.e
  %.1131 = phi i64 [ %.val159, %bb.i ], [ 1, %bb.e ], [ %.val159, %PyUnicode_MAX_CHAR_VALUE.exit ]
  %.1119 = phi i32 [ %.0.i, %bb.i ], [ 32, %bb.e ], [ %.0.i, %PyUnicode_MAX_CHAR_VALUE.exit ] ; 2 uses
  %.0107 = phi ptr [ %0, %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 106624), %bb.e ], [ %0, %PyUnicode_MAX_CHAR_VALUE.exit ] ; 3 uses
  %.1131.fr = freeze i64 %.1131                   ; 2 uses
  %i.v = icmp sgt i64 %2, 0
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.b, %Py_INCREF.exit
  %.1131.fr278 = phi i64 [ %.1131.fr, %Py_INCREF.exit ], [ 0, %bb.b ] ; 5 uses
  %.0107274 = phi ptr [ %.0107, %Py_INCREF.exit ], [ null, %bb.b ] ; 10 uses
  %.1119272 = phi i32 [ %.1119, %Py_INCREF.exit ], [ 0, %bb.b ]
  %i.w = load ptr, ptr %1, align 8, !tbaa !194    ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val151.peel = load ptr, ptr %i.x, align 8, !tbaa !197 ; 2 uses
  %i.y = getelementptr i8, ptr %.val151.peel, i64 168
  %.val154.peel = load i64, ptr %i.y, align 8, !tbaa !198
  %i.z = and i64 %.val154.peel, 268435456
  %.not146.peel = icmp eq i64 %i.z, 0
  br i1 %.not146.peel, label %.loopexit244, label %bb.j

bb.j:                                             ; preds = %.lr.ph.preheader
  %i.aa = getelementptr i8, ptr %i.w, i64 16
  %.val158.peel = load i64, ptr %i.aa, align 8, !tbaa !207 ; 3 uses
  %i.ab = getelementptr i8, ptr %i.w, i64 32
  %.val161.peel = load i32, ptr %i.ab, align 8    ; 3 uses
  %i.ac = and i32 %.val161.peel, 64
  %.not.i163.peel = icmp eq i32 %i.ac, 0
  br i1 %.not.i163.peel, label %bb.k, label %PyUnicode_MAX_CHAR_VALUE.exit169.peel

bb.k:                                             ; preds = %bb.j
  %i.ad = lshr i32 %.val161.peel, 2
  %i.ae = and i32 %i.ad, 7                        ; 2 uses
  %switch.selectcmp.i165.peel = icmp eq i32 %i.ae, 2
  %switch.select.i166.peel = select i1 %switch.selectcmp.i165.peel, i32 65535, i32 1114111
  %switch.selectcmp5.i167.peel = icmp eq i32 %i.ae, 1
  %switch.select6.i168.peel = select i1 %switch.selectcmp5.i167.peel, i32 255, i32 %switch.select.i166.peel
  br label %PyUnicode_MAX_CHAR_VALUE.exit169.peel

PyUnicode_MAX_CHAR_VALUE.exit169.peel:            ; preds = %bb.k, %bb.j
  %.0.i164.peel = phi i32 [ %switch.select6.i168.peel, %bb.k ], [ 127, %bb.j ]
  %i.af = tail call i32 @llvm.umax.i32(i32 %.1119272, i32 %.0.i164.peel) ; 2 uses
  %i.ag = icmp slt i64 %.val158.peel, 0
  br i1 %i.ag, label %.loopexit245, label %bb.l

bb.l:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit169.peel
  %.not267 = icmp eq ptr %.0107274, null
  br i1 %.not267, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr i8, ptr %.0107274, i64 32
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = xor i32 %i.ai, %.val161.peel
  %i.ak = and i32 %i.aj, 28
  %.not148.peel = icmp eq i32 %i.ak, 0
  %spec.select149.peel = zext i1 %.not148.peel to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2114.ph.peel = phi i32 [ %spec.select149.peel, %bb.m ], [ 1, %bb.l ] ; 2 uses
  %exitcond.peel.not = icmp eq i64 %2, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.s
  %.1220 = phi ptr [ %i.am, %bb.s ], [ %i.w, %bb.n ]
  %.0112219 = phi i32 [ %.2114.ph, %bb.s ], [ %.2114.ph.peel, %bb.n ]
  %.2120218 = phi i32 [ %i.az, %bb.s ], [ %i.af, %bb.n ]
  %.0125217 = phi i64 [ %i.bi, %bb.s ], [ 1, %bb.n ] ; 3 uses
  %.0128216 = phi i64 [ %i.bd, %bb.s ], [ %.val158.peel, %bb.n ] ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %1, i64 %.0125217
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !194 ; 4 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val151 = load ptr, ptr %i.an, align 8, !tbaa !197 ; 2 uses
  %i.ao = getelementptr i8, ptr %.val151, i64 168
  %.val154 = load i64, ptr %i.ao, align 8, !tbaa !198
  %i.ap = and i64 %.val154, 268435456
  %.not146 = icmp eq i64 %i.ap, 0
  br i1 %.not146, label %.loopexit244, label %bb.o

.loopexit244:                                     ; preds = %.lr.ph, %.lr.ph.preheader
  %.0125217.lcssa = phi i64 [ 0, %.lr.ph.preheader ], [ %.0125217, %.lr.ph ]
  %.val151.lcssa = phi ptr [ %.val151.peel, %.lr.ph.preheader ], [ %.val151, %.lr.ph ]
  %i.aq = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.ar = getelementptr i8, ptr %.val151.lcssa, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !378
  %i.at = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aq, ptr noundef nonnull @.str.100, i64 noundef %.0125217.lcssa, ptr noundef %i.as) #33 ; 0 uses
  br label %bb.ar

bb.o:                                             ; preds = %.lr.ph
  %i.au = getelementptr i8, ptr %i.am, i64 16
  %.val158 = load i64, ptr %i.au, align 8, !tbaa !207
  %i.av = getelementptr i8, ptr %i.am, i64 32
  %.val161 = load i32, ptr %i.av, align 8         ; 3 uses
  %i.aw = and i32 %.val161, 64
  %.not.i163 = icmp eq i32 %i.aw, 0
  br i1 %.not.i163, label %bb.p, label %PyUnicode_MAX_CHAR_VALUE.exit169

bb.p:                                             ; preds = %bb.o
  %i.ax = lshr i32 %.val161, 2
  %i.ay = and i32 %i.ax, 7                        ; 2 uses
  %switch.selectcmp.i165 = icmp eq i32 %i.ay, 2
  %switch.select.i166 = select i1 %switch.selectcmp.i165, i32 65535, i32 1114111
  %switch.selectcmp5.i167 = icmp eq i32 %i.ay, 1
  %switch.select6.i168 = select i1 %switch.selectcmp5.i167, i32 255, i32 %switch.select.i166
  br label %PyUnicode_MAX_CHAR_VALUE.exit169

PyUnicode_MAX_CHAR_VALUE.exit169:                 ; preds = %bb.o, %bb.p
  %.0.i164 = phi i32 [ %switch.select6.i168, %bb.p ], [ 127, %bb.o ]
  %i.az = tail call i32 @llvm.umax.i32(i32 %.2120218, i32 %.0.i164) ; 2 uses
  %spec.select = add i64 %.val158, %.1131.fr278   ; 2 uses
  %i.ba = sub i64 9223372036854775807, %.0128216
  %i.bb = icmp ugt i64 %spec.select, %i.ba
  br i1 %i.bb, label %.loopexit245, label %bb.q

.loopexit245:                                     ; preds = %PyUnicode_MAX_CHAR_VALUE.exit169, %PyUnicode_MAX_CHAR_VALUE.exit169.peel
  %i.bc = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.bc, ptr noundef nonnull @.str.101) #33
  br label %bb.ar

bb.q:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit169
  %i.bd = add i64 %spec.select, %.0128216         ; 2 uses
  %.not310 = icmp eq i32 %.0112219, 0
  br i1 %.not310, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr i8, ptr %.1220, i64 32
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = xor i32 %i.bf, %.val161
  %i.bh = and i32 %i.bg, 28
  %.not148 = icmp eq i32 %i.bh, 0
  %spec.select149 = zext i1 %.not148 to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.2114.ph = phi i32 [ %spec.select149, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.bi = add nuw nsw i64 %.0125217, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !542

._crit_edge:                                      ; preds = %bb.s, %bb.n
  %.2114.ph.lcssa = phi i32 [ %.2114.ph.peel, %bb.n ], [ %.2114.ph, %bb.s ]
  %.lcssa242 = phi i64 [ %.val158.peel, %bb.n ], [ %i.bd, %bb.s ]
  %.lcssa241 = phi i32 [ %i.af, %bb.n ], [ %i.az, %bb.s ]
  %i.bj = tail call ptr @PyUnicode_New(i64 noundef %.lcssa242, i32 noundef %.lcssa241) ; 9 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.ar, label %bb.t

._crit_edge.thread:                               ; preds = %Py_INCREF.exit
  %i.bl = tail call ptr @PyUnicode_New(i64 noundef 0, i32 noundef %.1119) ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.ar, label %.thread

bb.t:                                             ; preds = %._crit_edge
  %i.bn = icmp eq i32 %.2114.ph.lcssa, 0
  br i1 %i.bn, label %.lr.ph228, label %.thread

.lr.ph228:                                        ; preds = %bb.t
  %.not232 = icmp eq i64 %.1131.fr278, 0
  br i1 %.not232, label %.lr.ph228.split.us, label %bb.u

bb.u:                                             ; preds = %.lr.ph228
  %i.bo = load ptr, ptr %1, align 8, !tbaa !194   ; 2 uses
  %.phi.trans.insert253 = getelementptr i8, ptr %i.bo, i64 16
  %.val156.peel.pre = load i64, ptr %.phi.trans.insert253, align 8, !tbaa !207 ; 3 uses
  %.not144.peel = icmp eq i64 %.val156.peel.pre, 0
  br i1 %.not144.peel, label %.critedge.peel, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.bj, i64 noundef 0, ptr noundef nonnull %i.bo, i64 noundef 0, i64 noundef %.val156.peel.pre, i32 noundef 0) ; 0 uses
  br label %.critedge.peel

.critedge.peel:                                   ; preds = %bb.v, %bb.u
  %exitcond249.peel.not = icmp eq i64 %2, 1
  br i1 %exitcond249.peel.not, label %.loopexit, label %.lr.ph228.split.peel.next

.lr.ph228.split.us:                               ; preds = %.lr.ph228, %.critedge.us
  %.0122227.us = phi i64 [ %.2124.us, %.critedge.us ], [ 0, %.lr.ph228 ] ; 3 uses
  %.2127226.us = phi i64 [ %i.bv, %.critedge.us ], [ 0, %.lr.ph228 ] ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %1, i64 %.2127226.us
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !194 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  %.val156.us = load i64, ptr %i.bs, align 8, !tbaa !207 ; 3 uses
  %.not144.us = icmp eq i64 %.val156.us, 0
  br i1 %.not144.us, label %.critedge.us, label %bb.w

bb.w:                                             ; preds = %.lr.ph228.split.us
  %i.bt = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.bj, i64 noundef %.0122227.us, ptr noundef nonnull %i.br, i64 noundef 0, i64 noundef %.val156.us, i32 noundef 0) ; 0 uses
  %i.bu = add i64 %.val156.us, %.0122227.us
  br label %.critedge.us

.critedge.us:                                     ; preds = %bb.w, %.lr.ph228.split.us
  %.2124.us = phi i64 [ %i.bu, %bb.w ], [ %.0122227.us, %.lr.ph228.split.us ]
  %i.bv = add nuw nsw i64 %.2127226.us, 1         ; 2 uses
  %exitcond251.not = icmp eq i64 %i.bv, %2
  br i1 %exitcond251.not, label %.loopexit, label %.lr.ph228.split.us, !llvm.loop !544

.thread:                                          ; preds = %._crit_edge.thread, %bb.t
  %i.bw = phi i1 [ true, %bb.t ], [ false, %._crit_edge.thread ] ; 2 uses
  %.1131.fr277284291 = phi i64 [ %.1131.fr278, %bb.t ], [ %.1131.fr, %._crit_edge.thread ] ; 2 uses
  %.0107273285290 = phi ptr [ %.0107274, %bb.t ], [ %.0107, %._crit_edge.thread ] ; 8 uses
  %i.bx = phi ptr [ %i.bj, %bb.t ], [ %i.bl, %._crit_edge.thread ] ; 8 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 32
  %.val.i = load i32, ptr %i.by, align 8          ; 3 uses
  %i.bz = and i32 %.val.i, 32
  %.not.i170 = icmp eq i32 %i.bz, 0
  br i1 %.not.i170, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread
  %i.ca = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.ca, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.bx, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.y:                                             ; preds = %.thread
  %i.cb = getelementptr i8, ptr %i.bx, i64 56
  %.val4.i = load ptr, ptr %i.cb, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.x, %bb.y
  %.0.i171 = phi ptr [ %.0.i.i, %bb.x ], [ %.val4.i, %bb.y ] ; 4 uses
  %i.cc = lshr i32 %.val.i, 2
  %i.cd = and i32 %i.cc, 7                        ; 2 uses
  %.not143 = icmp eq i64 %.1131.fr277284291, 0
  br i1 %.not143, label %_PyUnicode_DATA.exit179.thread, label %bb.z

bb.z:                                             ; preds = %_PyUnicode_DATA.exit
  %i.ce = getelementptr i8, ptr %.0107273285290, i64 32
  %.val.i172 = load i32, ptr %i.ce, align 8       ; 2 uses
  %i.cf = and i32 %.val.i172, 32
  %.not.i173 = icmp eq i32 %i.cf, 0
  br i1 %.not.i173, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = and i32 %.val.i172, 64
  %.not.i.i174 = icmp eq i32 %i.cg, 0
  %.0.v.i.i175 = select i1 %.not.i.i174, i64 56, i64 40
  %.0.i.i176 = getelementptr i8, ptr %.0107273285290, i64 %.0.v.i.i175
  br label %_PyUnicode_DATA.exit179

bb.ab:                                            ; preds = %bb.z
  %i.ch = getelementptr i8, ptr %.0107273285290, i64 56
  %.val4.i178 = load ptr, ptr %i.ch, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit179

_PyUnicode_DATA.exit179:                          ; preds = %bb.ab, %bb.aa
  %.0108 = phi ptr [ %.val4.i178, %bb.ab ], [ %.0.i.i176, %bb.aa ]
  br i1 %i.bw, label %.lr.ph225, label %.loopexit.thread

_PyUnicode_DATA.exit179.thread:                   ; preds = %_PyUnicode_DATA.exit
  br i1 %i.bw, label %.lr.ph225.thread, label %.loopexit

.lr.ph225.thread:                                 ; preds = %_PyUnicode_DATA.exit179.thread
  %i.ci = zext nneg i32 %i.cd to i64
  br label %.lr.ph225.split.us

.lr.ph225:                                        ; preds = %_PyUnicode_DATA.exit179
  %i.cj = zext nneg i32 %i.cd to i64              ; 3 uses
  %i.ck = mul i64 %.1131.fr277284291, %i.cj       ; 2 uses
  %i.cl = load ptr, ptr %1, align 8, !tbaa !194   ; 4 uses
  %.phi.trans.insert = getelementptr i8, ptr %i.cl, i64 16
  %.val157.peel.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !207 ; 2 uses
  %.not145.peel = icmp eq i64 %.val157.peel.pre, 0
  br i1 %.not145.peel, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph225
  %i.cm = getelementptr i8, ptr %i.cl, i64 32
  %.val.i180.peel = load i32, ptr %i.cm, align 8  ; 2 uses
  %i.cn = and i32 %.val.i180.peel, 32
  %.not.i181.peel = icmp eq i32 %i.cn, 0
  br i1 %.not.i181.peel, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = and i32 %.val.i180.peel, 64
  %.not.i.i182.peel = icmp eq i32 %i.co, 0
  %.0.v.i.i183.peel = select i1 %.not.i.i182.peel, i64 56, i64 40
  %.0.i.i184.peel = getelementptr i8, ptr %i.cl, i64 %.0.v.i.i183.peel
  br label %_PyUnicode_DATA.exit187.peel

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
end_hunk_2
