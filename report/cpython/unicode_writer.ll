inline.NumInlined: 41
inline.NumDeleted: 21
begin_hunk_0_@_PyUnicodeWriter_WriteASCIIString:bb.a
.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.08296 = phi ptr [ %i.ds, %.lr.ph ], [ %1, %bb.o ] ; 5 uses
  %.08495 = phi ptr [ %i.dt, %.lr.ph ], [ %i.cl, %bb.o ] ; 5 uses
  %i.de = load i8, ptr %.08296, align 1, !tbaa !23
  %i.df = zext i8 %i.de to i32
  store i32 %i.df, ptr %.08495, align 4, !tbaa !7
  %i.dg = getelementptr i8, ptr %.08296, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !23
  %i.di = zext i8 %i.dh to i32
  %i.dj = getelementptr i8, ptr %.08495, i64 4
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !7
  %i.dk = getelementptr i8, ptr %.08296, i64 2
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !23
  %i.dm = zext i8 %i.dl to i32
  %i.dn = getelementptr i8, ptr %.08495, i64 8
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !7
  %i.do = getelementptr i8, ptr %.08296, i64 3
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !23
  %i.dq = zext i8 %i.dp to i32
  %i.dr = getelementptr i8, ptr %.08495, i64 12
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !7
  %i.ds = getelementptr i8, ptr %.08296, i64 4    ; 4 uses
  %i.dt = getelementptr i8, ptr %.08495, i64 16   ; 2 uses
  %i.du = icmp ult ptr %i.ds, %i.co
  br i1 %i.du, label %.lr.ph, label %.preheader93.loopexit, !llvm.loop !67

.lr.ph100:                                        ; preds = %.lr.ph100.preheader171, %.lr.ph100
  %.18399 = phi ptr [ %i.dv, %.lr.ph100 ], [ %.18399.ph, %.lr.ph100.preheader171 ] ; 2 uses
  %.18598 = phi ptr [ %i.dy, %.lr.ph100 ], [ %.18598.ph, %.lr.ph100.preheader171 ] ; 2 uses
  %i.dv = getelementptr i8, ptr %.18399, i64 1    ; 2 uses
  %i.dw = load i8, ptr %.18399, align 1, !tbaa !23
  %i.dx = zext i8 %i.dw to i32
  %i.dy = getelementptr i8, ptr %.18598, i64 4
  store i32 %i.dx, ptr %.18598, align 4, !tbaa !7
  %exitcond.not = icmp eq ptr %i.dv, %scevgep
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph100, !llvm.loop !68

bb.p:                                             ; preds = %.critedge
  unreachable

.loopexit:                                        ; preds = %.lr.ph100, %.lr.ph108, %middle.block, %middle.block156, %vec.epilog.middle.block, %.preheader93, %.preheader, %bb.m
  %i.dz = phi i64 [ %i.ap, %middle.block156 ], [ %.pre, %bb.m ], [ %i.ap, %.preheader93 ], [ %i.ap, %.preheader ], [ %i.ap, %middle.block ], [ %i.ap, %vec.epilog.middle.block ], [ %i.ap, %.lr.ph108 ], [ %i.ap, %.lr.ph100 ]
  %i.ea = getelementptr i8, ptr %0, i64 32
  %i.eb = add i64 %i.dz, %.081
  store i64 %i.eb, ptr %i.ea, align 8, !tbaa !25
  br label %bb.q

bb.q:                                             ; preds = %.split90, %_PyUnicodeWriter_Update.exit, %bb.e, %.loopexit
  %.1 = phi i32 [ -1, %bb.e ], [ 0, %.loopexit ], [ 0, %_PyUnicodeWriter_Update.exit ], [ -1, %.split90 ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @_PyUnicode_FromASCII(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyUnicodeWriter_WriteASCII(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @_PyUnicodeWriter_WriteASCIIString(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PyUnicodeWriter_WriteUTF8(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.b, %bb.b ], [ %2, %bb.a ]
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25
  %i.e = tail call i32 @_PyUnicode_DecodeUTF8Writer(ptr noundef %0, ptr noundef %1, i64 noundef %.0, i32 noundef 1, ptr noundef null, ptr noundef null) #9 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %i.d, ptr %i.c, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 %i.e
}

declare i32 @_PyUnicode_DecodeUTF8Writer(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @PyUnicodeWriter_DecodeUTF8Stateful(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.b, %bb.b ], [ %2, %bb.a ]
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25
  %i.e = tail call i32 @_PyUnicode_DecodeUTF8Writer(ptr noundef %0, ptr noundef %1, i64 noundef %.0, i32 noundef 0, ptr noundef %3, ptr noundef %4) #9 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store i64 %i.d, ptr %i.c, align 8, !tbaa !25
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %4, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyUnicodeWriter_WriteLatin1String(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 %2         ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread31.i, %bb.a
  %.021.i = phi ptr [ %1, %bb.a ], [ %i.j, %.thread31.i ] ; 4 uses
  %i.c = icmp ult ptr %.021.i, %i.b
  br i1 %i.c, label %bb.c, label %ucs1lib_find_max_char.exit

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %.021.i to i64
  %i.e = and i64 %i.d, 7
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.preheader.i, label %.thread31.i

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %.019.i = phi ptr [ %i.f, %bb.d ], [ %.021.i, %bb.c ] ; 4 uses
  %i.f = getelementptr i8, ptr %.019.i, i64 8     ; 2 uses
  %.not26.i = icmp ugt ptr %i.f, %i.b
  br i1 %.not26.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.g = load i64, ptr %.019.i, align 8, !tbaa !69
  %i.h = and i64 %i.g, -9187201950435737472
  %.not27.i = icmp eq i64 %i.h, 0
  br i1 %.not27.i, label %.preheader.i, label %ucs1lib_find_max_char.exit, !llvm.loop !70

bb.e:                                             ; preds = %.preheader.i
  %i.i = icmp eq ptr %.019.i, %i.b
  br i1 %i.i, label %ucs1lib_find_max_char.exit, label %.thread31.i

.thread31.i:                                      ; preds = %bb.e, %bb.c
  %.223.i = phi ptr [ %.021.i, %bb.c ], [ %.019.i, %bb.e ] ; 2 uses
  %i.j = getelementptr i8, ptr %.223.i, i64 1
  %i.k = load i8, ptr %.223.i, align 1, !tbaa !23
  %.not28.i = icmp sgt i8 %i.k, -1
  br i1 %.not28.i, label %bb.b, label %ucs1lib_find_max_char.exit, !llvm.loop !71

ucs1lib_find_max_char.exit:                       ; preds = %bb.b, %bb.e, %.thread31.i, %bb.d
  %.5.i = phi i32 [ 255, %bb.d ], [ 127, %bb.b ], [ 127, %bb.e ], [ 255, %.thread31.i ] ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !29
  %.not = icmp ugt i32 %.5.i, %i.m
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %ucs1lib_find_max_char.exit
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !28
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25
  %i.r = sub i64 %i.o, %i.q
  %i.s = icmp sle i64 %2, %i.r
  %i.t = icmp eq i64 %2, 0
  %or.cond = or i1 %i.t, %i.s
  br i1 %or.cond, label %.critedge, label %.split20

bb.g:                                             ; preds = %ucs1lib_find_max_char.exit
  %.old1 = icmp eq i64 %2, 0
  br i1 %.old1, label %.critedge, label %.split20

.split20:                                         ; preds = %bb.g, %bb.f
  %i.u = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %2, i32 noundef %.5.i)
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.n, label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g, %.split20
  %i.w = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !25   ; 14 uses
  %i.z = getelementptr i8, ptr %i.w, i64 32
  %i.aa = load i32, ptr %i.z, align 8             ; 3 uses
  %i.ab = and i32 %i.aa, 32
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.ac = and i32 %i.aa, 64
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.w, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.i:                                             ; preds = %.critedge
  %i.ad = getelementptr i8, ptr %i.w, i64 56
  %.val4.i.i = load ptr, ptr %i.ad, align 8, !tbaa !23
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.h ], [ %.val4.i.i, %bb.i ] ; 5 uses
  %3 = and i32 %i.aa, 28
  switch i32 %3, label %bb.m [
    i32 4, label %bb.j
    i32 8, label %bb.k
    i32 16, label %bb.l
  ]

bb.j:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.ae = getelementptr i8, ptr %.0.i.i, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr readonly align 1 %1, i64 %2, i1 false)
  %.pre = load i64, ptr %i.x, align 8, !tbaa !25
  br label %unicode_write_cstr.exit

bb.k:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.af = icmp ult ptr %1, %i.b
  br i1 %i.af, label %iter.check, label %unicode_write_cstr.exit

iter.check:                                       ; preds = %bb.k
  %i.ag = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.y ; 7 uses
  %min.iters.check49 = icmp ult i64 %2, 4
  br i1 %min.iters.check49, label %.lr.ph33.i.preheader, label %vector.memcheck43

vector.memcheck43:                                ; preds = %iter.check
  %i.ah = add i64 %i.y, %2
  %i.ai = shl i64 %i.ah, 1
  %scevgep44 = getelementptr i8, ptr %.0.i.i, i64 %i.ai
  %bound045 = icmp ult ptr %i.ag, %i.b
  %bound146 = icmp ult ptr %1, %scevgep44
  %found.conflict47 = and i1 %bound045, %bound146
  br i1 %found.conflict47, label %.lr.ph33.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck43
  %min.iters.check50 = icmp ult i64 %2, 16
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph51

vector.ph51:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf52 = and i64 %2, 12
  %n.vec53 = and i64 %2, -16                      ; 5 uses
  %i.aj = getelementptr i8, ptr %1, i64 %n.vec53
  %i.ak = shl i64 %n.vec53, 1
  %i.al = getelementptr i8, ptr %i.ag, i64 %i.ak
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next60, %vector.body54 ] ; 3 uses
  %next.gep56 = getelementptr i8, ptr %1, i64 %index55 ; 2 uses
  %i.am = shl i64 %index55, 1
  %next.gep57 = getelementptr i8, ptr %i.ag, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep56, i64 8
  %wide.load58 = load <8 x i8>, ptr %next.gep56, align 1, !tbaa !23, !alias.scope !72
  %wide.load59 = load <8 x i8>, ptr %i.an, align 1, !tbaa !23, !alias.scope !72
  %i.ao = sext <8 x i8> %wide.load58 to <8 x i16>
  %i.ap = sext <8 x i8> %wide.load59 to <8 x i16>
  %i.aq = getelementptr i8, ptr %next.gep57, i64 16
  store <8 x i16> %i.ao, ptr %next.gep57, align 2, !tbaa !38, !alias.scope !75, !noalias !72
  store <8 x i16> %i.ap, ptr %i.aq, align 2, !tbaa !38, !alias.scope !75, !noalias !72
  %index.next60 = add nuw i64 %index55, 16        ; 2 uses
  %i.ar = icmp eq i64 %index.next60, %n.vec53
  br i1 %i.ar, label %middle.block61, label %vector.body54, !llvm.loop !77

middle.block61:                                   ; preds = %vector.body54
  %cmp.n62 = icmp eq i64 %2, %n.vec53
  br i1 %cmp.n62, label %unicode_write_cstr.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block61
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf52, 0
  br i1 %min.epilog.iters.check, label %.lr.ph33.i.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec53, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec66 = and i64 %2, -4                       ; 4 uses
  %i.as = getelementptr i8, ptr %1, i64 %n.vec66
  %i.at = shl i64 %n.vec66, 1
  %i.au = getelementptr i8, ptr %i.ag, i64 %i.at
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index67 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next71, %vec.epilog.vector.body ] ; 3 uses
  %next.gep68 = getelementptr i8, ptr %1, i64 %index67
  %i.av = shl i64 %index67, 1
  %next.gep69 = getelementptr i8, ptr %i.ag, i64 %i.av
  %wide.load70 = load <4 x i8>, ptr %next.gep68, align 1, !tbaa !23, !alias.scope !72
  %i.aw = sext <4 x i8> %wide.load70 to <4 x i16>
  store <4 x i16> %i.aw, ptr %next.gep69, align 2, !tbaa !38, !alias.scope !75, !noalias !72
  %index.next71 = add nuw i64 %index67, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next71, %n.vec66
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !78

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n72 = icmp eq i64 %2, %n.vec66
  br i1 %cmp.n72, label %unicode_write_cstr.exit, label %.lr.ph33.i.preheader

.lr.ph33.i.preheader:                             ; preds = %vector.memcheck43, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02632.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck43 ], [ %i.aj, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ] ; 3 uses
  %.02731.i.ph = phi ptr [ %i.ag, %iter.check ], [ %i.ag, %vector.memcheck43 ], [ %i.al, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ] ; 2 uses
  %i.ay = add i64 %2, %i.a                        ; 2 uses
  %.02632.i.ph79 = ptrtoint ptr %.02632.i.ph to i64 ; 2 uses
  %i.az = sub i64 %i.ay, %.02632.i.ph79
  %xtraiter80 = and i64 %i.az, 7                  ; 2 uses
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %.lr.ph33.i.prol.loopexit, label %.lr.ph33.i.prol

.lr.ph33.i.prol:                                  ; preds = %.lr.ph33.i.preheader, %.lr.ph33.i.prol
  %.02632.i.prol = phi ptr [ %i.bd, %.lr.ph33.i.prol ], [ %.02632.i.ph, %.lr.ph33.i.preheader ] ; 2 uses
  %.02731.i.prol = phi ptr [ %i.bc, %.lr.ph33.i.prol ], [ %.02731.i.ph, %.lr.ph33.i.preheader ] ; 2 uses
  %prol.iter82 = phi i64 [ %prol.iter82.next, %.lr.ph33.i.prol ], [ 0, %.lr.ph33.i.preheader ]
  %i.ba = load i8, ptr %.02632.i.prol, align 1, !tbaa !23
  %i.bb = sext i8 %i.ba to i16
  store i16 %i.bb, ptr %.02731.i.prol, align 2, !tbaa !38
  %i.bc = getelementptr i8, ptr %.02731.i.prol, i64 2 ; 2 uses
  %i.bd = getelementptr i8, ptr %.02632.i.prol, i64 1 ; 2 uses
  %prol.iter82.next = add i64 %prol.iter82, 1     ; 2 uses
  %prol.iter82.cmp.not = icmp eq i64 %prol.iter82.next, %xtraiter80
  br i1 %prol.iter82.cmp.not, label %.lr.ph33.i.prol.loopexit, label %.lr.ph33.i.prol, !llvm.loop !79

.lr.ph33.i.prol.loopexit:                         ; preds = %.lr.ph33.i.prol, %.lr.ph33.i.preheader
  %.02632.i.unr = phi ptr [ %.02632.i.ph, %.lr.ph33.i.preheader ], [ %i.bd, %.lr.ph33.i.prol ]
  %.02731.i.unr = phi ptr [ %.02731.i.ph, %.lr.ph33.i.preheader ], [ %i.bc, %.lr.ph33.i.prol ]
  %i.be = sub i64 %.02632.i.ph79, %i.ay
  %i.bf = icmp ugt i64 %i.be, -8
  br i1 %i.bf, label %unicode_write_cstr.exit, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %.lr.ph33.i.prol.loopexit, %.lr.ph33.i
  %.02632.i = phi ptr [ %i.cl, %.lr.ph33.i ], [ %.02632.i.unr, %.lr.ph33.i.prol.loopexit ] ; 9 uses
  %.02731.i = phi ptr [ %i.ck, %.lr.ph33.i ], [ %.02731.i.unr, %.lr.ph33.i.prol.loopexit ] ; 9 uses
  %i.bg = load i8, ptr %.02632.i, align 1, !tbaa !23
  %i.bh = sext i8 %i.bg to i16
  store i16 %i.bh, ptr %.02731.i, align 2, !tbaa !38
  %i.bi = getelementptr i8, ptr %.02731.i, i64 2
  %i.bj = getelementptr i8, ptr %.02632.i, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !23
  %i.bl = sext i8 %i.bk to i16
  store i16 %i.bl, ptr %i.bi, align 2, !tbaa !38
  %i.bm = getelementptr i8, ptr %.02731.i, i64 4
  %i.bn = getelementptr i8, ptr %.02632.i, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !23
  %i.bp = sext i8 %i.bo to i16
  store i16 %i.bp, ptr %i.bm, align 2, !tbaa !38
  %i.bq = getelementptr i8, ptr %.02731.i, i64 6
  %i.br = getelementptr i8, ptr %.02632.i, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !23
  %i.bt = sext i8 %i.bs to i16
  store i16 %i.bt, ptr %i.bq, align 2, !tbaa !38
  %i.bu = getelementptr i8, ptr %.02731.i, i64 8
  %i.bv = getelementptr i8, ptr %.02632.i, i64 4
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !23
  %i.bx = sext i8 %i.bw to i16
  store i16 %i.bx, ptr %i.bu, align 2, !tbaa !38
  %i.by = getelementptr i8, ptr %.02731.i, i64 10
  %i.bz = getelementptr i8, ptr %.02632.i, i64 5
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !23
  %i.cb = sext i8 %i.ca to i16
  store i16 %i.cb, ptr %i.by, align 2, !tbaa !38
  %i.cc = getelementptr i8, ptr %.02731.i, i64 12
  %i.cd = getelementptr i8, ptr %.02632.i, i64 6
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !23
  %i.cf = sext i8 %i.ce to i16
  store i16 %i.cf, ptr %i.cc, align 2, !tbaa !38
  %i.cg = getelementptr i8, ptr %.02731.i, i64 14
  %i.ch = getelementptr i8, ptr %.02632.i, i64 7
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !23
  %i.cj = sext i8 %i.ci to i16
  store i16 %i.cj, ptr %i.cg, align 2, !tbaa !38
  %i.ck = getelementptr i8, ptr %.02731.i, i64 16
  %i.cl = getelementptr i8, ptr %.02632.i, i64 8  ; 2 uses
  %exitcond35.not.i.7 = icmp eq ptr %i.cl, %i.b
  br i1 %exitcond35.not.i.7, label %unicode_write_cstr.exit, label %.lr.ph33.i, !llvm.loop !81

bb.l:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.cm = icmp ult ptr %1, %i.b
  br i1 %i.cm, label %.lr.ph.preheader.i, label %unicode_write_cstr.exit

.lr.ph.preheader.i:                               ; preds = %bb.l
  %i.cn = getelementptr [4 x i8], ptr %.0.i.i, i64 %i.y ; 5 uses
  %min.iters.check = icmp ult i64 %2, 20
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.co = add i64 %i.y, %2
  %i.cp = shl i64 %i.co, 2
  %scevgep = getelementptr i8, ptr %.0.i.i, i64 %i.cp
  %bound0 = icmp ult ptr %i.cn, %i.b
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -8                         ; 4 uses
  %i.cq = shl i64 %n.vec, 2
  %i.cr = getelementptr i8, ptr %i.cn, i64 %i.cq
  %i.cs = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cn, i64 %i.ct ; 2 uses
  %next.gep40 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep40, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep40, align 1, !tbaa !23, !alias.scope !82
  %wide.load41 = load <4 x i8>, ptr %i.cu, align 1, !tbaa !23, !alias.scope !82
  %i.cv = sext <4 x i8> %wide.load to <4 x i32>
  %i.cw = sext <4 x i8> %wide.load41 to <4 x i32>
  %i.cx = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.cv, ptr %next.gep, align 4, !tbaa !7, !alias.scope !85, !noalias !82
end_hunk_0
