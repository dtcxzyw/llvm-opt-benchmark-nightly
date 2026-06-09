inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@PyUnicode_FromWideChar:bb.a
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
  %i.bz = icmp ult ptr %i.bx, %i.aj
  br i1 %i.bz, label %.lr.ph68.i, label %.preheader.i, !llvm.loop !271

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader103, %.lr.ph73.i
  %.172.i = phi ptr [ %i.cd, %.lr.ph73.i ], [ %.172.i.ph, %.lr.ph73.i.preheader103 ] ; 2 uses
  %.15271.i = phi ptr [ %i.ca, %.lr.ph73.i ], [ %.15271.i.ph, %.lr.ph73.i.preheader103 ] ; 2 uses
  %i.ca = getelementptr i8, ptr %.15271.i, i64 4  ; 2 uses
  %i.cb = load i32, ptr %.15271.i, align 4, !tbaa !7
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = getelementptr i8, ptr %.172.i, i64 1
  store i8 %i.cc, ptr %.172.i, align 1, !tbaa !205
  %i.ce = icmp ult ptr %i.ca, %i.o
  br i1 %i.ce, label %.lr.ph73.i, label %unicode_write_widechar.exit, !llvm.loop !272

bb.q:                                             ; preds = %_PyUnicode_DATA.exit
  %i.cf = ashr exact i64 %.idx57.i, 2
  %i.cg = and i64 %i.cf, -4
  %i.ch = getelementptr [4 x i8], ptr %0, i64 %i.cg ; 2 uses
  %i.ci = icmp ult ptr %0, %i.ch
  br i1 %i.ci, label %.lr.ph.i24, label %.preheader58.i

.preheader58.i:                                   ; preds = %.lr.ph.i24, %bb.q
  %.055.lcssa.i = phi ptr [ %0, %bb.q ], [ %i.dd, %.lr.ph.i24 ] ; 5 uses
  %.053.lcssa.i = phi ptr [ %.0.i23, %bb.q ], [ %i.de, %.lr.ph.i24 ] ; 3 uses
  %i.cj = icmp ult ptr %.055.lcssa.i, %i.o
  br i1 %i.cj, label %.lr.ph65.i.preheader, label %unicode_write_widechar.exit

.lr.ph65.i.preheader:                             ; preds = %.preheader58.i
  %.055.lcssa.i79 = ptrtoint ptr %.055.lcssa.i to i64 ; 2 uses
  %i.ck = add i64 %.idx57.i, %i.a
  %i.cl = add i64 %.055.lcssa.i79, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %i.cl)
  %i.cm = xor i64 %.055.lcssa.i79, -1
  %i.cn = add i64 %umax, %i.cm                    ; 2 uses
  %i.co = lshr i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cn, 28
  br i1 %min.iters.check, label %.lr.ph65.i.preheader105, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.i.preheader
  %n.vec = and i64 %i.cp, 9223372036854775800     ; 4 uses
  %i.cq = shl nuw i64 %n.vec, 1
  %i.cr = getelementptr i8, ptr %.053.lcssa.i, i64 %i.cq
  %i.cs = shl i64 %n.vec, 2
  %i.ct = getelementptr i8, ptr %.055.lcssa.i, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cu = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.053.lcssa.i, i64 %i.cu ; 2 uses
  %i.cv = shl i64 %index, 2
  %next.gep80 = getelementptr i8, ptr %.055.lcssa.i, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep80, align 4, !tbaa !7
  %wide.load81 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !7
  %i.cx = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cy = trunc <4 x i32> %wide.load81 to <4 x i16>
  %i.cz = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.cx, ptr %next.gep, align 2, !tbaa !208
  store <4 x i16> %i.cy, ptr %i.cz, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !273

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %unicode_write_widechar.exit, label %.lr.ph65.i.preheader105

.lr.ph65.i.preheader105:                          ; preds = %.lr.ph65.i.preheader, %middle.block
  %.15464.i.ph = phi ptr [ %.053.lcssa.i, %.lr.ph65.i.preheader ], [ %i.cr, %middle.block ]
  %.15663.i.ph = phi ptr [ %.055.lcssa.i, %.lr.ph65.i.preheader ], [ %i.ct, %middle.block ]
  br label %.lr.ph65.i

.lr.ph.i24:                                       ; preds = %bb.q, %.lr.ph.i24
  %.05361.i = phi ptr [ %i.de, %.lr.ph.i24 ], [ %.0.i23, %bb.q ] ; 2 uses
  %.05560.i = phi ptr [ %i.dd, %.lr.ph.i24 ], [ %0, %bb.q ] ; 2 uses
  %i.db = load <4 x i32>, ptr %.05560.i, align 4, !tbaa !7
  %i.dc = trunc <4 x i32> %i.db to <4 x i16>
  store <4 x i16> %i.dc, ptr %.05361.i, align 2, !tbaa !208
  %i.dd = getelementptr i8, ptr %.05560.i, i64 16 ; 3 uses
  %i.de = getelementptr i8, ptr %.05361.i, i64 8  ; 2 uses
  %i.df = icmp ult ptr %i.dd, %i.ch
  br i1 %i.df, label %.lr.ph.i24, label %.preheader58.i, !llvm.loop !274

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader105, %.lr.ph65.i
  %.15464.i = phi ptr [ %i.dj, %.lr.ph65.i ], [ %.15464.i.ph, %.lr.ph65.i.preheader105 ] ; 2 uses
  %.15663.i = phi ptr [ %i.dg, %.lr.ph65.i ], [ %.15663.i.ph, %.lr.ph65.i.preheader105 ] ; 2 uses
  %i.dg = getelementptr i8, ptr %.15663.i, i64 4  ; 2 uses
  %i.dh = load i32, ptr %.15663.i, align 4, !tbaa !7
  %i.di = trunc i32 %i.dh to i16
  %i.dj = getelementptr i8, ptr %.15464.i, i64 2
  store i16 %i.di, ptr %.15464.i, align 2, !tbaa !208
  %i.dk = icmp ult ptr %i.dg, %i.o
  br i1 %i.dk, label %.lr.ph65.i, label %unicode_write_widechar.exit, !llvm.loop !275

bb.r:                                             ; preds = %_PyUnicode_DATA.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i23, ptr readonly align 4 %0, i64 %.idx57.i, i1 false)
  br label %unicode_write_widechar.exit

bb.s:                                             ; preds = %_PyUnicode_DATA.exit
  unreachable

unicode_write_widechar.exit:                      ; preds = %.lr.ph65.i, %.lr.ph73.i, %middle.block, %middle.block99, %.preheader.i, %.preheader58.i, %bb.r
  %i.dl = getelementptr i8, ptr %i.z, i64 16
  %.val.i25 = load i64, ptr %i.dl, align 8, !tbaa !207
  switch i64 %.val.i25, label %get_latin1_char.exit [
    i64 0, label %bb.t
    i64 1, label %bb.w
  ]

bb.t:                                             ; preds = %unicode_write_widechar.exit
  %.not26.i = icmp eq ptr %i.z, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %.not26.i, label %get_latin1_char.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dm = load i32, ptr %i.z, align 8, !tbaa !205 ; 2 uses
  %.not.i27.i = icmp sgt i32 %i.dm, -1
  br i1 %.not.i27.i, label %bb.v, label %get_latin1_char.exit

bb.v:                                             ; preds = %bb.u
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  store i32 %i.dn, ptr %i.z, align 8, !tbaa !205
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %Py_DECREF.exit28.sink.split.i, label %get_latin1_char.exit

bb.w:                                             ; preds = %unicode_write_widechar.exit
  %i.dp = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.dq = and i32 %i.dp, 28
  %.not25.i = icmp eq i32 %i.dq, 4
  br i1 %.not25.i, label %bb.x, label %get_latin1_char.exit

bb.x:                                             ; preds = %bb.w
  %i.dr = and i32 %i.dp, 32
  %.not.i30.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i30.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ds = and i32 %i.dp, 64
  %.not.i.i.i = icmp eq i32 %i.ds, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.z, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.z:                                             ; preds = %bb.x
  %i.dt = getelementptr i8, ptr %i.z, i64 56
  %.val4.i.i = load ptr, ptr %i.dt, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.z, %bb.y
  %.0.i.i26 = phi ptr [ %.0.i.i.i, %bb.y ], [ %.val4.i.i, %bb.z ]
  %i.du = load i8, ptr %.0.i.i26, align 1, !tbaa !205 ; 3 uses
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.dv
  %i.dx = and i8 %i.du, 127
  %i.dy = zext nneg i8 %i.dx to i64
  %i.dz = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.dy
  %i.ea = icmp slt i8 %i.du, 0
  %i.eb = select i1 %i.ea, ptr %i.dz, ptr %i.dw   ; 5 uses
  %.not.i27 = icmp eq ptr %i.z, %i.eb
  br i1 %.not.i27, label %get_latin1_char.exit, label %bb.aa

bb.aa:                                            ; preds = %_PyUnicode_DATA.exit.i
  %i.ec = load i32, ptr %i.z, align 8, !tbaa !205 ; 2 uses
  %.not.i.i28 = icmp sgt i32 %i.ec, -1
  br i1 %.not.i.i28, label %bb.ab, label %get_latin1_char.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %i.z, align 8, !tbaa !205
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %Py_DECREF.exit28.sink.split.i, label %get_latin1_char.exit

Py_DECREF.exit28.sink.split.i:                    ; preds = %bb.ab, %bb.v
  %.1.ph.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.v ], [ %i.eb, %bb.ab ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.z) #33
  br label %get_latin1_char.exit

get_latin1_char.exit:                             ; preds = %bb.e, %Py_DECREF.exit28.sink.split.i, %bb.ab, %bb.aa, %_PyUnicode_DATA.exit.i, %bb.w, %bb.v, %bb.u, %bb.t, %unicode_write_widechar.exit, %find_maxchar_surrogates.exit, %bb.i, %bb.h, %.loopexit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %.1.ph.i, %Py_DECREF.exit28.sink.split.i ], [ null, %.loopexit ], [ null, %find_maxchar_surrogates.exit ], [ %i.n, %bb.i ], [ %i.k, %bb.h ], [ %i.z, %unicode_write_widechar.exit ], [ %i.eb, %bb.aa ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.v ], [ %i.z, %bb.w ], [ %i.eb, %_PyUnicode_DATA.exit.i ], [ %i.eb, %bb.ab ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyUnicodeWriter_WriteWideChar(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = icmp slt i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @wcslen(ptr noundef %1) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.024 = phi i64 [ %i.c, %bb.b ], [ %2, %bb.a ]  ; 6 uses
  %i.d = icmp eq i64 %.024, 0
  br i1 %i.d, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr [4 x i8], ptr %1, i64 %.024 ; 6 uses
  %i.f = icmp ult ptr %1, %i.e
  br i1 %i.f, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.034 = phi i32 [ %.135, %bb.f ], [ 0, %bb.d ]
  %i.g = phi i32 [ %i.l, %bb.f ], [ 0, %bb.d ]    ; 2 uses
  %.01315.i = phi ptr [ %i.i, %bb.f ], [ %1, %bb.d ] ; 2 uses
  %i.h = load i32, ptr %.01315.i, align 4, !tbaa !7 ; 5 uses
  %i.i = getelementptr i8, ptr %.01315.i, i64 4   ; 2 uses
  %i.j = icmp ugt i32 %i.h, %i.g
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.k = icmp ugt i32 %i.h, 1114111
  br i1 %i.k, label %find_maxchar_surrogates.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.135 = phi i32 [ %i.h, %bb.e ], [ %.034, %.lr.ph.i ] ; 4 uses
  %i.l = phi i32 [ %i.h, %bb.e ], [ %i.g, %.lr.ph.i ]
  %i.m = icmp ult ptr %i.i, %i.e
  br i1 %i.m, label %.lr.ph.i, label %bb.g, !llvm.loop !264

find_maxchar_surrogates.exit:                     ; preds = %bb.e
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  %i.o = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.125, i32 noundef %i.h, i32 noundef 1114111) #33 ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !276
  %.not = icmp ugt i32 %.135, %i.q
  br i1 %.not, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.d, %bb.g
  %.2.ph41 = phi i32 [ %.135, %bb.g ], [ 0, %bb.d ]
  %i.r = getelementptr i8, ptr %0, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !278
  %i.t = getelementptr i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !279  ; 2 uses
  %i.v = sub i64 %i.s, %i.u
  %.not27 = icmp sgt i64 %.024, %i.v
  br i1 %.not27, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g, %.thread
  %.2.ph42 = phi i32 [ %.2.ph41, %.thread ], [ %.135, %bb.g ]
  %i.w = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %.024, i32 noundef %.2.ph42) #33
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.h
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !279
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.thread
  %i.y = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.u, %.thread ]
  %i.z = getelementptr i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !280 ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !281
  %i.ad = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ae = sext i32 %i.aa to i64
  %i.af = mul i64 %i.y, %i.ae
  %i.ag = getelementptr i8, ptr %i.ac, i64 %i.af  ; 5 uses
  %.idx57.i = shl i64 %.024, 2                    ; 6 uses
  switch i32 %i.aa, label %bb.l [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 4, label %bb.k
  ]

bb.i:                                             ; preds = %.critedge
  %i.ah = ashr exact i64 %.idx57.i, 2
  %i.ai = and i64 %i.ah, -4
  %i.aj = getelementptr [4 x i8], ptr %1, i64 %i.ai ; 2 uses
  %i.ak = icmp ult ptr %1, %i.aj
  br i1 %i.ak, label %.lr.ph68.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph68.i, %bb.i
  %.051.lcssa.i = phi ptr [ %1, %bb.i ], [ %i.bx, %.lr.ph68.i ] ; 8 uses
  %.0.lcssa.i = phi ptr [ %i.ag, %bb.i ], [ %i.by, %.lr.ph68.i ] ; 6 uses
  %.051.lcssa.i83 = ptrtoint ptr %.051.lcssa.i to i64 ; 4 uses
  %i.al = icmp ult ptr %.051.lcssa.i, %i.e
  br i1 %i.al, label %.lr.ph73.i.preheader, label %unicode_write_widechar.exit

.lr.ph73.i.preheader:                             ; preds = %.preheader.i
  %i.am = add i64 %.idx57.i, %i.a
  %i.an = add i64 %.051.lcssa.i83, 4
  %umax86 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %i.an)
  %i.ao = xor i64 %.051.lcssa.i83, -1
  %i.ap = add i64 %umax86, %i.ao                  ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check88 = icmp ult i64 %i.ap, 156
  br i1 %min.iters.check88, label %.lr.ph73.i.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph73.i.preheader
  %i.as = add i64 %.idx57.i, %i.a
  %i.at = add i64 %.051.lcssa.i83, 4
  %umax84 = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %i.at)
  %i.au = xor i64 %.051.lcssa.i83, -1
  %i.av = add i64 %umax84, %i.au                  ; 2 uses
  %i.aw = lshr i64 %i.av, 2
  %i.ax = getelementptr i8, ptr %.0.lcssa.i, i64 %i.aw
  %scevgep = getelementptr i8, ptr %i.ax, i64 1
  %i.ay = and i64 %i.av, -4
  %i.az = getelementptr i8, ptr %.051.lcssa.i, i64 %i.ay
  %scevgep85 = getelementptr i8, ptr %i.az, i64 4
  %bound0 = icmp ult ptr %.0.lcssa.i, %scevgep85
  %bound1 = icmp ult ptr %.051.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.i.preheader103, label %vector.ph89

vector.ph89:                                      ; preds = %vector.memcheck
  %n.vec91 = and i64 %i.ar, 9223372036854775800   ; 4 uses
  %i.ba = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec91
  %i.bb = shl i64 %n.vec91, 2
  %i.bc = getelementptr i8, ptr %.051.lcssa.i, i64 %i.bb
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph89
  %index93 = phi i64 [ 0, %vector.ph89 ], [ %index.next98, %vector.body92 ] ; 3 uses
  %next.gep94 = getelementptr i8, ptr %.0.lcssa.i, i64 %index93 ; 2 uses
  %i.bd = shl i64 %index93, 2
  %next.gep95 = getelementptr i8, ptr %.051.lcssa.i, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load96 = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !7, !alias.scope !282
  %wide.load97 = load <4 x i32>, ptr %i.be, align 4, !tbaa !7, !alias.scope !282
  %i.bf = trunc <4 x i32> %wide.load96 to <4 x i8>
  %i.bg = trunc <4 x i32> %wide.load97 to <4 x i8>
  %i.bh = getelementptr i8, ptr %next.gep94, i64 4
  store <4 x i8> %i.bf, ptr %next.gep94, align 1, !tbaa !205, !alias.scope !285, !noalias !282
  store <4 x i8> %i.bg, ptr %i.bh, align 1, !tbaa !205, !alias.scope !285, !noalias !282
  %index.next98 = add nuw i64 %index93, 8         ; 2 uses
  %i.bi = icmp eq i64 %index.next98, %n.vec91
  br i1 %i.bi, label %middle.block99, label %vector.body92, !llvm.loop !287

middle.block99:                                   ; preds = %vector.body92
  %cmp.n100 = icmp eq i64 %i.ar, %n.vec91
  br i1 %cmp.n100, label %unicode_write_widechar.exit, label %.lr.ph73.i.preheader103

.lr.ph73.i.preheader103:                          ; preds = %vector.memcheck, %.lr.ph73.i.preheader, %middle.block99
  %.172.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck ], [ %.0.lcssa.i, %.lr.ph73.i.preheader ], [ %i.ba, %middle.block99 ]
  %.15271.i.ph = phi ptr [ %.051.lcssa.i, %vector.memcheck ], [ %.051.lcssa.i, %.lr.ph73.i.preheader ], [ %i.bc, %middle.block99 ]
  br label %.lr.ph73.i

.lr.ph68.i:                                       ; preds = %bb.i, %.lr.ph68.i
  %.067.i = phi ptr [ %i.by, %.lr.ph68.i ], [ %i.ag, %bb.i ] ; 5 uses
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
  %i.bz = icmp ult ptr %i.bx, %i.aj
  br i1 %i.bz, label %.lr.ph68.i, label %.preheader.i, !llvm.loop !271

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader103, %.lr.ph73.i
  %.172.i = phi ptr [ %i.cd, %.lr.ph73.i ], [ %.172.i.ph, %.lr.ph73.i.preheader103 ] ; 2 uses
  %.15271.i = phi ptr [ %i.ca, %.lr.ph73.i ], [ %.15271.i.ph, %.lr.ph73.i.preheader103 ] ; 2 uses
  %i.ca = getelementptr i8, ptr %.15271.i, i64 4  ; 2 uses
end_hunk_0
begin_hunk_1_@PyUnicodeWriter_WriteUCS4:bb.a
  %i.ck = add i64 %umax, %i.cj                    ; 2 uses
  %i.cl = lshr i64 %i.ck, 2
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ck, 28
  br i1 %min.iters.check, label %.lr.ph98.preheader162, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph98.preheader
  %n.vec = and i64 %i.cm, 9223372036854775800     ; 4 uses
  %i.cn = shl i64 %n.vec, 2
  %i.co = getelementptr i8, ptr %.078.lcssa, i64 %i.cn
  %i.cp = shl nuw i64 %n.vec, 1
  %i.cq = getelementptr i8, ptr %.080.lcssa, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cr = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.078.lcssa, i64 %i.cr ; 2 uses
  %i.cs = shl i64 %index, 1
  %next.gep137 = getelementptr i8, ptr %.080.lcssa, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load138 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !7
  %i.cu = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cv = trunc <4 x i32> %wide.load138 to <4 x i16>
  %i.cw = getelementptr i8, ptr %next.gep137, i64 8
  store <4 x i16> %i.cu, ptr %next.gep137, align 2, !tbaa !208
  store <4 x i16> %i.cv, ptr %i.cw, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph98.preheader162

.lr.ph98.preheader162:                            ; preds = %.lr.ph98.preheader, %middle.block
  %.17997.ph = phi ptr [ %.078.lcssa, %.lr.ph98.preheader ], [ %i.co, %middle.block ]
  %.18196.ph = phi ptr [ %.080.lcssa, %.lr.ph98.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph98

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.07894 = phi ptr [ %i.da, %.lr.ph ], [ %1, %bb.o ] ; 2 uses
  %.08093 = phi ptr [ %i.db, %.lr.ph ], [ %i.al, %bb.o ] ; 2 uses
  %i.cy = load <4 x i32>, ptr %.07894, align 4, !tbaa !7
  %i.cz = trunc <4 x i32> %i.cy to <4 x i16>
  store <4 x i16> %i.cz, ptr %.08093, align 2, !tbaa !208
  %i.da = getelementptr i8, ptr %.07894, i64 16   ; 3 uses
  %i.db = getelementptr i8, ptr %.08093, i64 8    ; 2 uses
  %i.dc = icmp ult ptr %i.da, %i.h
  br i1 %i.dc, label %.lr.ph, label %.preheader89, !llvm.loop !309

.lr.ph98:                                         ; preds = %.lr.ph98.preheader162, %.lr.ph98
  %.17997 = phi ptr [ %i.dd, %.lr.ph98 ], [ %.17997.ph, %.lr.ph98.preheader162 ] ; 2 uses
  %.18196 = phi ptr [ %i.dg, %.lr.ph98 ], [ %.18196.ph, %.lr.ph98.preheader162 ] ; 2 uses
  %i.dd = getelementptr i8, ptr %.17997, i64 4    ; 2 uses
  %i.de = load i32, ptr %.17997, align 4, !tbaa !7
  %i.df = trunc i32 %i.de to i16
  %i.dg = getelementptr i8, ptr %.18196, i64 2
  store i16 %i.df, ptr %.18196, align 2, !tbaa !208
  %i.dh = icmp ult ptr %i.dd, %i.e
  br i1 %i.dh, label %.lr.ph98, label %.loopexit, !llvm.loop !310

bb.p:                                             ; preds = %.critedge
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 4 %1, i64 %.idx88, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph98, %.lr.ph106, %middle.block, %middle.block156, %.preheader89, %.preheader, %bb.p
  %i.di = load i64, ptr %i.ai, align 8, !tbaa !279
  %i.dj = add i64 %i.di, %2
  store i64 %i.dj, ptr %i.ai, align 8, !tbaa !279
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %bb.m, %bb.c, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ], [ 0, %.loopexit ], [ -1, %bb.m ]
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
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.r ], [ %i.z, %bb.q ], [ %i.y, %bb.p ], [ %i.i, %bb.g ], [ null, %ucs1lib_find_max_char.exit.i ], [ %i.t, %_PyUnicode_DATA.exit.i ], [ %i.f, %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_PyUnicode_FromUCS2(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  switch i64 %1, label %bb.n [
    i64 0, label %unicode_char.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 2, !tbaa !208    ; 5 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = icmp ult i16 %i.b, 256
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw i16 %i.b to i8                 ; 2 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = zext nneg i16 %i.b to i64
  %i.h = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.g
  br label %unicode_char.exit

bb.e:                                             ; preds = %bb.c
  %i.i = and i8 %i.e, 127
  %i.j = zext nneg i8 %i.i to i64
  %i.k = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.j
  br label %unicode_char.exit

bb.f:                                             ; preds = %bb.b
  %i.l = tail call ptr @PyUnicode_New(i64 noundef 1, i32 noundef %i.c), !inline_history !312 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %unicode_char.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %i.l, i64 32
  %i.o = load i32, ptr %i.n, align 8              ; 4 uses
  %i.p = and i32 %i.o, 28
  %i.q = icmp eq i32 %i.p, 8
  %i.r = and i32 %i.o, 32
  %.not.i.i = icmp eq i32 %i.r, 0                 ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = and i32 %i.o, 64
  %.not.i.i.i = icmp eq i32 %i.s, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.l, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr i8, ptr %i.l, i64 56
  %.val4.i.i = load ptr, ptr %i.t, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.i ], [ %.val4.i.i, %bb.j ]
  store i16 %i.b, ptr %.0.i.i, align 2, !tbaa !208
  br label %unicode_char.exit

bb.k:                                             ; preds = %bb.g
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = and i32 %i.o, 64
  %.not.i.i14.i = icmp eq i32 %i.u, 0
  %.0.v.i.i15.i = select i1 %.not.i.i14.i, i64 56, i64 40
  %.0.i.i16.i = getelementptr i8, ptr %i.l, i64 %.0.v.i.i15.i
  br label %_PyUnicode_DATA.exit19.i

bb.m:                                             ; preds = %bb.k
  %i.v = getelementptr i8, ptr %i.l, i64 56
  %.val4.i18.i = load ptr, ptr %i.v, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit19.i

_PyUnicode_DATA.exit19.i:                         ; preds = %bb.m, %bb.l
  %.0.i17.i = phi ptr [ %.0.i.i16.i, %bb.l ], [ %.val4.i18.i, %bb.m ]
  store i32 %i.c, ptr %.0.i17.i, align 4, !tbaa !7
  br label %unicode_char.exit

bb.n:                                             ; preds = %bb.a
  %i.w = getelementptr [2 x i8], ptr %0, i64 %1   ; 4 uses
  %.idx54 = shl i64 %1, 1                         ; 4 uses
  %i.x = ashr exact i64 %.idx54, 1
  %i.y = and i64 %i.x, -4
  %i.z = getelementptr [2 x i8], ptr %0, i64 %i.y ; 3 uses
  %i.aa = icmp ult ptr %0, %i.z                   ; 2 uses
  br i1 %i.aa, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.s, %bb.n
  %.034.lcssa.i = phi ptr [ %0, %bb.n ], [ %.135.i, %bb.s ] ; 2 uses
  %.029.lcssa.i = phi i32 [ -128, %bb.n ], [ %.231.i, %bb.s ]
  %.026.lcssa.i = phi i32 [ 127, %bb.n ], [ %.228.i, %bb.s ] ; 2 uses
  %i.ab = icmp ult ptr %.034.lcssa.i, %i.w
  br i1 %i.ab, label %.lr.ph55.split.us.i, label %ucs2lib_find_max_char.exit

.lr.ph.i:                                         ; preds = %bb.n, %bb.s
  %.02650.i = phi i32 [ %.228.i, %bb.s ], [ 127, %bb.n ]
  %.02949.i = phi i32 [ %.231.i, %bb.s ], [ -128, %bb.n ] ; 3 uses
  %.03448.i = phi ptr [ %.135.i, %bb.s ], [ %0, %bb.n ] ; 4 uses
  %i.ac = load <4 x i16>, ptr %.03448.i, align 2, !tbaa !208
  %i.ad = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.ac)
  %i.ae = zext i16 %i.ad to i32
  %i.af = and i32 %.02949.i, %i.ae
  %.not37.i = icmp eq i32 %i.af, 0
  br i1 %.not37.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  switch i32 %.02949.i, label %bb.p [
    i32 -256, label %ucs2lib_find_max_char.exit
    i32 -128, label %bb.q
  ], !llvm.loop !313

bb.p:                                             ; preds = %bb.o
  br label %bb.s, !llvm.loop !313

bb.q:                                             ; preds = %bb.o
  br label %bb.s, !llvm.loop !313

bb.r:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr i8, ptr %.03448.i, i64 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.135.i = phi ptr [ %i.ag, %bb.r ], [ %.03448.i, %bb.q ], [ %.03448.i, %bb.p ] ; 3 uses
  %.231.i = phi i32 [ %.02949.i, %bb.r ], [ -256, %bb.q ], [ -65536, %bb.p ] ; 2 uses
  %.228.i = phi i32 [ %.02650.i, %bb.r ], [ 255, %bb.q ], [ 65535, %bb.p ] ; 2 uses
  %i.ah = icmp ult ptr %.135.i, %i.z
  br i1 %i.ah, label %.lr.ph.i, label %.preheader.i

.outer.i:                                         ; preds = %bb.u, %.lr.ph55.split.us.i
  %.us-phi.i = phi i32 [ %.332.ph68.i, %.lr.ph55.split.us.i ], [ %.433.us.i, %bb.u ]
  %.us-phi60.i = phi i32 [ %.3.ph69.i, %.lr.ph55.split.us.i ], [ %.4.us.i, %bb.u ] ; 2 uses
  %i.ai = getelementptr i8, ptr %.236.ph67.i, i64 2 ; 2 uses
  %i.aj = icmp ult ptr %i.ai, %i.w
  br i1 %i.aj, label %.lr.ph55.split.us.i, label %ucs2lib_find_max_char.exit, !llvm.loop !314

.lr.ph55.split.us.i:                              ; preds = %.preheader.i, %.outer.i
  %.3.ph69.i = phi i32 [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ]
  %.332.ph68.i = phi i32 [ %.us-phi.i, %.outer.i ], [ %.029.lcssa.i, %.preheader.i ] ; 3 uses
  %.236.ph67.i = phi ptr [ %i.ai, %.outer.i ], [ %.034.lcssa.i, %.preheader.i ] ; 2 uses
  %i.ak = load i16, ptr %.236.ph67.i, align 2, !tbaa !208
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = and i32 %.332.ph68.i, %i.al
  %.not.us62.i = icmp eq i32 %i.am, 0
  br i1 %.not.us62.i, label %.outer.i, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.lr.ph55.split.us.i, %bb.u
  %.33253.us63.i = phi i32 [ %.433.us.i, %bb.u ], [ %.332.ph68.i, %.lr.ph55.split.us.i ]
  switch i32 %.33253.us63.i, label %bb.t [
    i32 -256, label %ucs2lib_find_max_char.exit
    i32 -128, label %bb.u
  ]

bb.t:                                             ; preds = %.lr.ph64.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph64.i
  %.433.us.i = phi i32 [ -65536, %bb.t ], [ -256, %.lr.ph64.i ] ; 3 uses
  %.4.us.i = phi i32 [ 65535, %bb.t ], [ 255, %.lr.ph64.i ]
  %i.an = and i32 %.433.us.i, %i.al
  %.not.us.i = icmp eq i32 %i.an, 0
  br i1 %.not.us.i, label %.outer.i, label %.lr.ph64.i

ucs2lib_find_max_char.exit:                       ; preds = %bb.o, %.outer.i, %.lr.ph64.i, %.preheader.i
  %.2.i = phi i32 [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ], [ 65535, %.lr.ph64.i ], [ 65535, %bb.o ] ; 2 uses
  %i.ao = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef %.2.i) ; 11 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %unicode_char.exit, label %bb.v

bb.v:                                             ; preds = %ucs2lib_find_max_char.exit
  %i.ap = icmp samesign ugt i32 %.2.i, 255
  %i.aq = getelementptr i8, ptr %i.ao, i64 32
  %.val.i = load i32, ptr %i.aq, align 8          ; 3 uses
  %i.ar = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.ar, 0                  ; 2 uses
  br i1 %i.ap, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = and i32 %.val.i, 64
  %.not.i.i43 = icmp eq i32 %i.as, 0
  %.0.v.i.i = select i1 %.not.i.i43, i64 56, i64 40
  %.0.i.i44 = getelementptr i8, ptr %i.ao, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.y:                                             ; preds = %bb.w
  %i.at = getelementptr i8, ptr %i.ao, i64 56
  %.val4.i = load ptr, ptr %i.at, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.x, %bb.y
  %.0.i45 = phi ptr [ %.0.i.i44, %bb.x ], [ %.val4.i, %bb.y ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0.i45, ptr align 2 %0, i64 %.idx54, i1 false)
  br label %unicode_char.exit

bb.z:                                             ; preds = %bb.v
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.au = and i32 %.val.i, 64
  %.not.i.i48 = icmp eq i32 %i.au, 0
  %.0.v.i.i49 = select i1 %.not.i.i48, i64 56, i64 40
  %.0.i.i50 = getelementptr i8, ptr %i.ao, i64 %.0.v.i.i49
  br label %_PyUnicode_DATA.exit53

bb.ab:                                            ; preds = %bb.z
  %i.av = getelementptr i8, ptr %i.ao, i64 56
  %.val4.i52 = load ptr, ptr %i.av, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit53

_PyUnicode_DATA.exit53:                           ; preds = %bb.aa, %bb.ab
  %.0.i51 = phi ptr [ %.0.i.i50, %bb.aa ], [ %.val4.i52, %bb.ab ] ; 2 uses
  br i1 %i.aa, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %_PyUnicode_DATA.exit53
  %.039.lcssa = phi ptr [ %0, %_PyUnicode_DATA.exit53 ], [ %i.co, %.lr.ph ] ; 10 uses
  %.038.lcssa = phi ptr [ %.0.i51, %_PyUnicode_DATA.exit53 ], [ %i.cp, %.lr.ph ] ; 8 uses
  %.039.lcssa84 = ptrtoint ptr %.039.lcssa to i64 ; 4 uses
  %i.aw = icmp ult ptr %.039.lcssa, %i.w
  br i1 %i.aw, label %iter.check, label %unicode_char.exit

iter.check:                                       ; preds = %.preheader
  %i.ax = add i64 %.idx54, %i.a
  %i.ay = add i64 %.039.lcssa84, 2
  %umax86 = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.ay)
  %i.az = xor i64 %.039.lcssa84, -1
  %i.ba = add i64 %umax86, %i.az                  ; 3 uses
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = add nuw i64 %i.bb, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ba, 6
  br i1 %min.iters.check, label %.lr.ph62.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bd = add i64 %.idx54, %i.a
  %i.be = add i64 %.039.lcssa84, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.be)
  %i.bf = xor i64 %.039.lcssa84, -1
  %i.bg = add i64 %umax, %i.bf                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 1
  %i.bi = getelementptr i8, ptr %.038.lcssa, i64 %i.bh
  %scevgep = getelementptr i8, ptr %i.bi, i64 1
  %i.bj = and i64 %i.bg, -2
  %i.bk = getelementptr i8, ptr %.039.lcssa, i64 %i.bj
  %scevgep85 = getelementptr i8, ptr %i.bk, i64 2
  %bound0 = icmp ult ptr %.038.lcssa, %scevgep85
  %bound1 = icmp ult ptr %.039.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph62.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check87 = icmp ult i64 %i.ba, 30
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bc, 12
  %n.vec = and i64 %i.bc, -16                     ; 5 uses
  %i.bl = getelementptr i8, ptr %.038.lcssa, i64 %n.vec
  %i.bm = shl i64 %n.vec, 1
  %i.bn = getelementptr i8, ptr %.039.lcssa, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.038.lcssa, i64 %index ; 2 uses
  %i.bo = shl i64 %index, 1
  %next.gep88 = getelementptr i8, ptr %.039.lcssa, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep88, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep88, align 2, !tbaa !208, !alias.scope !315
  %wide.load89 = load <8 x i16>, ptr %i.bp, align 2, !tbaa !208, !alias.scope !315
  %i.bq = trunc <8 x i16> %wide.load to <8 x i8>
  %i.br = trunc <8 x i16> %wide.load89 to <8 x i8>
  %i.bs = getelementptr i8, ptr %next.gep, i64 8
  store <8 x i8> %i.bq, ptr %next.gep, align 1, !tbaa !205, !alias.scope !318, !noalias !315
  store <8 x i8> %i.br, ptr %i.bs, align 1, !tbaa !205, !alias.scope !318, !noalias !315
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !320

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %unicode_char.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph62.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec92 = and i64 %i.bc, -4                    ; 4 uses
  %i.bu = getelementptr i8, ptr %.038.lcssa, i64 %n.vec92
  %i.bv = shl i64 %n.vec92, 1
  %i.bw = getelementptr i8, ptr %.039.lcssa, i64 %i.bv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next97, %vec.epilog.vector.body ] ; 3 uses
  %next.gep94 = getelementptr i8, ptr %.038.lcssa, i64 %index93
  %i.bx = shl i64 %index93, 1
  %next.gep95 = getelementptr i8, ptr %.039.lcssa, i64 %i.bx
  %wide.load96 = load <4 x i16>, ptr %next.gep95, align 2, !tbaa !208, !alias.scope !315
  %i.by = trunc <4 x i16> %wide.load96 to <4 x i8>
  store <4 x i8> %i.by, ptr %next.gep94, align 1, !tbaa !205, !alias.scope !318, !noalias !315
  %index.next97 = add nuw i64 %index93, 4         ; 2 uses
  %i.bz = icmp eq i64 %index.next97, %n.vec92
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !321

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %i.bc, %n.vec92
  br i1 %cmp.n98, label %unicode_char.exit, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.161.ph = phi ptr [ %.038.lcssa, %iter.check ], [ %.038.lcssa, %vector.memcheck ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  %.14060.ph = phi ptr [ %.039.lcssa, %iter.check ], [ %.039.lcssa, %vector.memcheck ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ]
  br label %.lr.ph62

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit53, %.lr.ph
  %.03858 = phi ptr [ %i.cp, %.lr.ph ], [ %.0.i51, %_PyUnicode_DATA.exit53 ] ; 5 uses
  %.03957 = phi ptr [ %i.co, %.lr.ph ], [ %0, %_PyUnicode_DATA.exit53 ] ; 5 uses
  %i.ca = load i16, ptr %.03957, align 2, !tbaa !208
  %i.cb = trunc i16 %i.ca to i8
  store i8 %i.cb, ptr %.03858, align 1, !tbaa !205
  %i.cc = getelementptr i8, ptr %.03957, i64 2
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !208
  %i.ce = trunc i16 %i.cd to i8
  %i.cf = getelementptr i8, ptr %.03858, i64 1
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !205
  %i.cg = getelementptr i8, ptr %.03957, i64 4
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !208
  %i.ci = trunc i16 %i.ch to i8
  %i.cj = getelementptr i8, ptr %.03858, i64 2
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !205
  %i.ck = getelementptr i8, ptr %.03957, i64 6
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !208
  %i.cm = trunc i16 %i.cl to i8
  %i.cn = getelementptr i8, ptr %.03858, i64 3
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !205
  %i.co = getelementptr i8, ptr %.03957, i64 8    ; 3 uses
  %i.cp = getelementptr i8, ptr %.03858, i64 4    ; 2 uses
  %i.cq = icmp ult ptr %i.co, %i.z
  br i1 %i.cq, label %.lr.ph, label %.preheader, !llvm.loop !322

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %.lr.ph62
  %.161 = phi ptr [ %i.cu, %.lr.ph62 ], [ %.161.ph, %.lr.ph62.preheader ] ; 2 uses
  %.14060 = phi ptr [ %i.cr, %.lr.ph62 ], [ %.14060.ph, %.lr.ph62.preheader ] ; 2 uses
  %i.cr = getelementptr i8, ptr %.14060, i64 2    ; 2 uses
  %i.cs = load i16, ptr %.14060, align 2, !tbaa !208
  %i.ct = trunc i16 %i.cs to i8
  %i.cu = getelementptr i8, ptr %.161, i64 1
  store i8 %i.ct, ptr %.161, align 1, !tbaa !205
  %i.cv = icmp ult ptr %i.cr, %i.w
  br i1 %i.cv, label %.lr.ph62, label %unicode_char.exit, !llvm.loop !323

unicode_char.exit:                                ; preds = %.lr.ph62, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.a, %_PyUnicode_DATA.exit19.i, %_PyUnicode_DATA.exit.i, %bb.f, %bb.e, %bb.d, %_PyUnicode_DATA.exit, %ucs2lib_find_max_char.exit
  %.0 = phi ptr [ %i.k, %bb.e ], [ %i.ao, %_PyUnicode_DATA.exit ], [ null, %ucs2lib_find_max_char.exit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ %i.l, %_PyUnicode_DATA.exit.i ], [ null, %bb.f ], [ %i.l, %_PyUnicode_DATA.exit19.i ], [ %i.h, %bb.d ], [ %i.ao, %.preheader ], [ %i.ao, %middle.block ], [ %i.ao, %vec.epilog.middle.block ], [ %i.ao, %.lr.ph62 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_PyUnicode_FromUCS4(ptr nofree noundef readonly captures(address) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  switch i64 %1, label %bb.n [
    i64 0, label %unicode_char.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !7      ; 6 uses
  %i.c = icmp ult i32 %i.b, 256
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = trunc nuw i32 %i.b to i8                 ; 2 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = zext nneg i32 %i.b to i64
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
  %i.n = load i32, ptr %i.m, align 8              ; 5 uses
  %i.o = and i32 %i.n, 28
  %i.p = icmp eq i32 %i.o, 8
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.q = trunc i32 %i.b to i16
  %i.r = and i32 %i.n, 32
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = and i32 %i.n, 64
  %.not.i.i.i = icmp eq i32 %i.s, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.k, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr i8, ptr %i.k, i64 56
  %.val4.i.i = load ptr, ptr %i.t, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.i ], [ %.val4.i.i, %bb.j ]
  store i16 %i.q, ptr %.0.i.i, align 2, !tbaa !208
  br label %unicode_char.exit

bb.k:                                             ; preds = %bb.g
  %i.u = and i32 %i.n, 32
  %.not.i13.i = icmp eq i32 %i.u, 0
  br i1 %.not.i13.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = and i32 %i.n, 64
  %.not.i.i14.i = icmp eq i32 %i.v, 0
  %.0.v.i.i15.i = select i1 %.not.i.i14.i, i64 56, i64 40
  %.0.i.i16.i = getelementptr i8, ptr %i.k, i64 %.0.v.i.i15.i
  br label %_PyUnicode_DATA.exit19.i

bb.m:                                             ; preds = %bb.k
  %i.w = getelementptr i8, ptr %i.k, i64 56
  %.val4.i18.i = load ptr, ptr %i.w, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit19.i

_PyUnicode_DATA.exit19.i:                         ; preds = %bb.m, %bb.l
  %.0.i17.i = phi ptr [ %.0.i.i16.i, %bb.l ], [ %.val4.i18.i, %bb.m ]
  store i32 %i.b, ptr %.0.i17.i, align 4, !tbaa !7
  br label %unicode_char.exit

bb.n:                                             ; preds = %bb.a
  %i.x = getelementptr [4 x i8], ptr %0, i64 %1   ; 6 uses
  %.idx93 = shl i64 %1, 2                         ; 5 uses
  %i.y = ashr exact i64 %.idx93, 2
  %i.z = and i64 %i.y, -4
  %i.aa = getelementptr [4 x i8], ptr %0, i64 %i.z ; 4 uses
  %i.ab = icmp ult ptr %0, %i.aa                  ; 3 uses
  br i1 %i.ab, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.s, %bb.n
  %.034.lcssa.i = phi ptr [ %0, %bb.n ], [ %.135.i, %bb.s ] ; 2 uses
  %.029.lcssa.i = phi i32 [ -128, %bb.n ], [ %.231.i, %bb.s ]
  %.026.lcssa.i = phi i32 [ 127, %bb.n ], [ %.228.i, %bb.s ] ; 2 uses
  %i.ac = icmp ult ptr %.034.lcssa.i, %i.x
  br i1 %i.ac, label %.lr.ph55.split.us.i, label %ucs4lib_find_max_char.exit

.lr.ph.i:                                         ; preds = %bb.n, %bb.s
  %.02650.i = phi i32 [ %.228.i, %bb.s ], [ 127, %bb.n ]
  %.02949.i = phi i32 [ %.231.i, %bb.s ], [ -128, %bb.n ] ; 3 uses
  %.03448.i = phi ptr [ %.135.i, %bb.s ], [ %0, %bb.n ] ; 4 uses
  %i.ad = load <4 x i32>, ptr %.03448.i, align 4, !tbaa !7
  %i.ae = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ad)
  %i.af = and i32 %i.ae, %.02949.i
  %.not37.i = icmp eq i32 %i.af, 0
  br i1 %.not37.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  switch i32 %.02949.i, label %bb.p [
    i32 -65536, label %ucs4lib_find_max_char.exit
    i32 -128, label %bb.q
  ], !llvm.loop !298

bb.p:                                             ; preds = %bb.o
  br label %bb.s, !llvm.loop !298

bb.q:                                             ; preds = %bb.o
  br label %bb.s, !llvm.loop !298

bb.r:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr i8, ptr %.03448.i, i64 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.135.i = phi ptr [ %i.ag, %bb.r ], [ %.03448.i, %bb.q ], [ %.03448.i, %bb.p ] ; 3 uses
  %.231.i = phi i32 [ %.02949.i, %bb.r ], [ -256, %bb.q ], [ -65536, %bb.p ] ; 2 uses
  %.228.i = phi i32 [ %.02650.i, %bb.r ], [ 255, %bb.q ], [ 65535, %bb.p ] ; 2 uses
  %i.ah = icmp ult ptr %.135.i, %i.aa
  br i1 %i.ah, label %.lr.ph.i, label %.preheader.i

.outer.i:                                         ; preds = %bb.u, %.lr.ph55.split.us.i
  %.us-phi.i = phi i32 [ %.332.ph68.i, %.lr.ph55.split.us.i ], [ %.433.us.i, %bb.u ]
  %.us-phi60.i = phi i32 [ %.3.ph69.i, %.lr.ph55.split.us.i ], [ %.4.us.i, %bb.u ] ; 2 uses
  %i.ai = getelementptr i8, ptr %.236.ph67.i, i64 4 ; 2 uses
  %i.aj = icmp ult ptr %i.ai, %i.x
  br i1 %i.aj, label %.lr.ph55.split.us.i, label %ucs4lib_find_max_char.exit, !llvm.loop !299

.lr.ph55.split.us.i:                              ; preds = %.preheader.i, %.outer.i
  %.3.ph69.i = phi i32 [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ]
  %.332.ph68.i = phi i32 [ %.us-phi.i, %.outer.i ], [ %.029.lcssa.i, %.preheader.i ] ; 3 uses
  %.236.ph67.i = phi ptr [ %i.ai, %.outer.i ], [ %.034.lcssa.i, %.preheader.i ] ; 2 uses
  %i.ak = load i32, ptr %.236.ph67.i, align 4, !tbaa !7 ; 2 uses
  %i.al = and i32 %i.ak, %.332.ph68.i
  %.not.us62.i = icmp eq i32 %i.al, 0
  br i1 %.not.us62.i, label %.outer.i, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.lr.ph55.split.us.i, %bb.u
  %.33253.us63.i = phi i32 [ %.433.us.i, %bb.u ], [ %.332.ph68.i, %.lr.ph55.split.us.i ]
  switch i32 %.33253.us63.i, label %bb.t [
    i32 -65536, label %ucs4lib_find_max_char.exit
    i32 -128, label %bb.u
  ]

bb.t:                                             ; preds = %.lr.ph64.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph64.i
  %.433.us.i = phi i32 [ -65536, %bb.t ], [ -256, %.lr.ph64.i ] ; 3 uses
  %.4.us.i = phi i32 [ 65535, %bb.t ], [ 255, %.lr.ph64.i ]
  %i.am = and i32 %.433.us.i, %i.ak
  %.not.us.i = icmp eq i32 %i.am, 0
  br i1 %.not.us.i, label %.outer.i, label %.lr.ph64.i

ucs4lib_find_max_char.exit:                       ; preds = %bb.o, %.outer.i, %.lr.ph64.i, %.preheader.i
  %.2.i = phi i32 [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i ], [ 1114111, %.lr.ph64.i ], [ 1114111, %bb.o ] ; 3 uses
  %i.an = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef %.2.i) ; 16 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %unicode_char.exit, label %bb.v

bb.v:                                             ; preds = %ucs4lib_find_max_char.exit
  %i.ao = icmp ult i32 %.2.i, 256
  br i1 %i.ao, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ap = getelementptr i8, ptr %i.an, i64 32
  %.val.i = load i32, ptr %i.ap, align 8          ; 2 uses
  %i.aq = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ar = and i32 %.val.i, 64
  %.not.i.i74 = icmp eq i32 %i.ar, 0
  %.0.v.i.i = select i1 %.not.i.i74, i64 56, i64 40
  %.0.i.i75 = getelementptr i8, ptr %i.an, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.y:                                             ; preds = %bb.w
  %i.as = getelementptr i8, ptr %i.an, i64 56
  %.val4.i = load ptr, ptr %i.as, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit
end_hunk_1
begin_hunk_2_@_PyUnicode_FromUCS4:bb.a
  %i.bg = and i64 %i.bd, -4
  %i.bh = getelementptr i8, ptr %.068.lcssa, i64 %i.bg
  %scevgep151 = getelementptr i8, ptr %i.bh, i64 4
  %bound0 = icmp ult ptr %.063.lcssa, %scevgep151
  %bound1 = icmp ult ptr %.068.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph111.preheader169, label %vector.ph155

vector.ph155:                                     ; preds = %vector.memcheck
  %n.vec157 = and i64 %i.az, 9223372036854775800  ; 4 uses
  %i.bi = getelementptr i8, ptr %.063.lcssa, i64 %n.vec157
  %i.bj = shl i64 %n.vec157, 2
  %i.bk = getelementptr i8, ptr %.068.lcssa, i64 %i.bj
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
  %index159 = phi i64 [ 0, %vector.ph155 ], [ %index.next164, %vector.body158 ] ; 3 uses
  %next.gep160 = getelementptr i8, ptr %.063.lcssa, i64 %index159 ; 2 uses
  %i.bl = shl i64 %index159, 2
  %next.gep161 = getelementptr i8, ptr %.068.lcssa, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep161, i64 16
  %wide.load162 = load <4 x i32>, ptr %next.gep161, align 4, !tbaa !7, !alias.scope !324
  %wide.load163 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !7, !alias.scope !324
  %i.bn = trunc <4 x i32> %wide.load162 to <4 x i8>
  %i.bo = trunc <4 x i32> %wide.load163 to <4 x i8>
  %i.bp = getelementptr i8, ptr %next.gep160, i64 4
  store <4 x i8> %i.bn, ptr %next.gep160, align 1, !tbaa !205, !alias.scope !327, !noalias !324
  store <4 x i8> %i.bo, ptr %i.bp, align 1, !tbaa !205, !alias.scope !327, !noalias !324
  %index.next164 = add nuw i64 %index159, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.bq, label %middle.block165, label %vector.body158, !llvm.loop !329

middle.block165:                                  ; preds = %vector.body158
  %cmp.n166 = icmp eq i64 %i.az, %n.vec157
  br i1 %cmp.n166, label %unicode_char.exit, label %.lr.ph111.preheader169

.lr.ph111.preheader169:                           ; preds = %vector.memcheck, %.lr.ph111.preheader, %middle.block165
  %.1110.ph = phi ptr [ %.063.lcssa, %vector.memcheck ], [ %.063.lcssa, %.lr.ph111.preheader ], [ %i.bi, %middle.block165 ]
  %.169109.ph = phi ptr [ %.068.lcssa, %vector.memcheck ], [ %.068.lcssa, %.lr.ph111.preheader ], [ %i.bk, %middle.block165 ]
  br label %.lr.ph111

.lr.ph106:                                        ; preds = %_PyUnicode_DATA.exit, %.lr.ph106
  %.063105 = phi ptr [ %i.cg, %.lr.ph106 ], [ %.0.i76, %_PyUnicode_DATA.exit ] ; 5 uses
  %.068104 = phi ptr [ %i.cf, %.lr.ph106 ], [ %0, %_PyUnicode_DATA.exit ] ; 5 uses
  %i.br = load i32, ptr %.068104, align 4, !tbaa !7
  %i.bs = trunc i32 %i.br to i8
  store i8 %i.bs, ptr %.063105, align 1, !tbaa !205
  %i.bt = getelementptr i8, ptr %.068104, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr i8, ptr %.063105, i64 1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !205
  %i.bx = getelementptr i8, ptr %.068104, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr i8, ptr %.063105, i64 2
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !205
  %i.cb = getelementptr i8, ptr %.068104, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr i8, ptr %.063105, i64 3
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !205
  %i.cf = getelementptr i8, ptr %.068104, i64 16  ; 3 uses
  %i.cg = getelementptr i8, ptr %.063105, i64 4   ; 2 uses
  %i.ch = icmp ult ptr %i.cf, %i.aa
  br i1 %i.ch, label %.lr.ph106, label %.preheader, !llvm.loop !330

.lr.ph111:                                        ; preds = %.lr.ph111.preheader169, %.lr.ph111
  %.1110 = phi ptr [ %i.cl, %.lr.ph111 ], [ %.1110.ph, %.lr.ph111.preheader169 ] ; 2 uses
  %.169109 = phi ptr [ %i.ci, %.lr.ph111 ], [ %.169109.ph, %.lr.ph111.preheader169 ] ; 2 uses
  %i.ci = getelementptr i8, ptr %.169109, i64 4   ; 2 uses
  %i.cj = load i32, ptr %.169109, align 4, !tbaa !7
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr i8, ptr %.1110, i64 1
  store i8 %i.ck, ptr %.1110, align 1, !tbaa !205
  %i.cm = icmp ult ptr %i.ci, %i.x
  br i1 %i.cm, label %.lr.ph111, label %unicode_char.exit, !llvm.loop !331

bb.z:                                             ; preds = %bb.v
  %i.cn = icmp ult i32 %.2.i, 65536
  %i.co = getelementptr i8, ptr %i.an, i64 32
  %.val.i77 = load i32, ptr %i.co, align 8        ; 3 uses
  %i.cp = and i32 %.val.i77, 32
  %.not.i78 = icmp eq i32 %i.cp, 0                ; 2 uses
  br i1 %i.cn, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  br i1 %.not.i78, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = and i32 %.val.i77, 64
  %.not.i.i79 = icmp eq i32 %i.cq, 0
  %.0.v.i.i80 = select i1 %.not.i.i79, i64 56, i64 40
  %.0.i.i81 = getelementptr i8, ptr %i.an, i64 %.0.v.i.i80
  br label %_PyUnicode_DATA.exit84

bb.ac:                                            ; preds = %bb.aa
  %i.cr = getelementptr i8, ptr %i.an, i64 56
  %.val4.i83 = load ptr, ptr %i.cr, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit84

_PyUnicode_DATA.exit84:                           ; preds = %bb.ab, %bb.ac
  %.0.i82 = phi ptr [ %.0.i.i81, %bb.ab ], [ %.val4.i83, %bb.ac ] ; 2 uses
  br i1 %i.ab, label %.lr.ph, label %.preheader94

.preheader94:                                     ; preds = %.lr.ph, %_PyUnicode_DATA.exit84
  %.066.lcssa = phi ptr [ %.0.i82, %_PyUnicode_DATA.exit84 ], [ %i.dn, %.lr.ph ] ; 3 uses
  %.064.lcssa = phi ptr [ %0, %_PyUnicode_DATA.exit84 ], [ %i.dm, %.lr.ph ] ; 5 uses
  %i.cs = icmp ult ptr %.064.lcssa, %i.x
  br i1 %i.cs, label %.lr.ph103.preheader, label %unicode_char.exit

.lr.ph103.preheader:                              ; preds = %.preheader94
  %.064.lcssa145 = ptrtoint ptr %.064.lcssa to i64 ; 2 uses
  %i.ct = add i64 %.idx93, %i.a
  %i.cu = add i64 %.064.lcssa145, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 %i.cu)
  %i.cv = xor i64 %.064.lcssa145, -1
  %i.cw = add i64 %umax, %i.cv                    ; 2 uses
  %i.cx = lshr i64 %i.cw, 2
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cw, 28
  br i1 %min.iters.check, label %.lr.ph103.preheader171, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph103.preheader
  %n.vec = and i64 %i.cy, 9223372036854775800     ; 4 uses
  %i.cz = shl i64 %n.vec, 2
  %i.da = getelementptr i8, ptr %.064.lcssa, i64 %i.cz
  %i.db = shl nuw i64 %n.vec, 1
  %i.dc = getelementptr i8, ptr %.066.lcssa, i64 %i.db
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dd = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.064.lcssa, i64 %i.dd ; 2 uses
  %i.de = shl i64 %index, 1
  %next.gep146 = getelementptr i8, ptr %.066.lcssa, i64 %i.de ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load147 = load <4 x i32>, ptr %i.df, align 4, !tbaa !7
  %i.dg = trunc <4 x i32> %wide.load to <4 x i16>
  %i.dh = trunc <4 x i32> %wide.load147 to <4 x i16>
  %i.di = getelementptr i8, ptr %next.gep146, i64 8
  store <4 x i16> %i.dg, ptr %next.gep146, align 2, !tbaa !208
  store <4 x i16> %i.dh, ptr %i.di, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !332

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %unicode_char.exit, label %.lr.ph103.preheader171

.lr.ph103.preheader171:                           ; preds = %.lr.ph103.preheader, %middle.block
  %.165102.ph = phi ptr [ %.064.lcssa, %.lr.ph103.preheader ], [ %i.da, %middle.block ]
  %.167101.ph = phi ptr [ %.066.lcssa, %.lr.ph103.preheader ], [ %i.dc, %middle.block ]
  br label %.lr.ph103

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit84, %.lr.ph
  %.06499 = phi ptr [ %i.dm, %.lr.ph ], [ %0, %_PyUnicode_DATA.exit84 ] ; 2 uses
  %.06698 = phi ptr [ %i.dn, %.lr.ph ], [ %.0.i82, %_PyUnicode_DATA.exit84 ] ; 2 uses
  %i.dk = load <4 x i32>, ptr %.06499, align 4, !tbaa !7
  %i.dl = trunc <4 x i32> %i.dk to <4 x i16>
  store <4 x i16> %i.dl, ptr %.06698, align 2, !tbaa !208
  %i.dm = getelementptr i8, ptr %.06499, i64 16   ; 3 uses
  %i.dn = getelementptr i8, ptr %.06698, i64 8    ; 2 uses
  %i.do = icmp ult ptr %i.dm, %i.aa
  br i1 %i.do, label %.lr.ph, label %.preheader94, !llvm.loop !333

.lr.ph103:                                        ; preds = %.lr.ph103.preheader171, %.lr.ph103
  %.165102 = phi ptr [ %i.dp, %.lr.ph103 ], [ %.165102.ph, %.lr.ph103.preheader171 ] ; 2 uses
  %.167101 = phi ptr [ %i.ds, %.lr.ph103 ], [ %.167101.ph, %.lr.ph103.preheader171 ] ; 2 uses
  %i.dp = getelementptr i8, ptr %.165102, i64 4   ; 2 uses
  %i.dq = load i32, ptr %.165102, align 4, !tbaa !7
  %i.dr = trunc i32 %i.dq to i16
  %i.ds = getelementptr i8, ptr %.167101, i64 2
  store i16 %i.dr, ptr %.167101, align 2, !tbaa !208
  %i.dt = icmp ult ptr %i.dp, %i.x
  br i1 %i.dt, label %.lr.ph103, label %unicode_char.exit, !llvm.loop !334

bb.ad:                                            ; preds = %bb.z
  br i1 %.not.i78, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.du = and i32 %.val.i77, 64
  %.not.i.i87 = icmp eq i32 %i.du, 0
  %.0.v.i.i88 = select i1 %.not.i.i87, i64 56, i64 40
  %.0.i.i89 = getelementptr i8, ptr %i.an, i64 %.0.v.i.i88
  br label %_PyUnicode_DATA.exit92

bb.af:                                            ; preds = %bb.ad
  %i.dv = getelementptr i8, ptr %i.an, i64 56
  %.val4.i91 = load ptr, ptr %i.dv, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit92

_PyUnicode_DATA.exit92:                           ; preds = %bb.ae, %bb.af
  %.0.i90 = phi ptr [ %.0.i.i89, %bb.ae ], [ %.val4.i91, %bb.af ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0.i90, ptr align 4 %0, i64 %.idx93, i1 false)
  br label %unicode_char.exit

unicode_char.exit:                                ; preds = %.lr.ph103, %.lr.ph111, %middle.block, %middle.block165, %.preheader94, %.preheader, %bb.a, %_PyUnicode_DATA.exit19.i, %_PyUnicode_DATA.exit.i, %bb.f, %bb.e, %bb.d, %_PyUnicode_DATA.exit92, %ucs4lib_find_max_char.exit
  %.0 = phi ptr [ %i.j, %bb.e ], [ %i.an, %_PyUnicode_DATA.exit92 ], [ null, %ucs4lib_find_max_char.exit ], [ %i.an, %.preheader ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ], [ %i.k, %_PyUnicode_DATA.exit.i ], [ null, %bb.f ], [ %i.k, %_PyUnicode_DATA.exit19.i ], [ %i.g, %bb.d ], [ %i.an, %.preheader94 ], [ %i.an, %middle.block165 ], [ %i.an, %middle.block ], [ %i.an, %.lr.ph111 ], [ %i.an, %.lr.ph103 ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 127, 1114112) i32 @_PyUnicode_FindMaxChar(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
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
  switch i32 %i.l, label %bb.ab [
    i32 1, label %.preheader
    i32 2, label %bb.l
    i32 4, label %bb.t
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
  %gepdiff56 = sub i64 %i.p, %i.r
  %i.ac = ashr exact i64 %gepdiff56, 1
  %i.ad = and i64 %i.ac, -4
  %i.ae = getelementptr [2 x i8], ptr %i.s, i64 %i.ad ; 2 uses
  %i.af = icmp ult ptr %i.s, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %.preheader.i29

.preheader.i29:                                   ; preds = %bb.q, %bb.l
  %.034.lcssa.i = phi ptr [ %i.s, %bb.l ], [ %.135.i, %bb.q ] ; 2 uses
  %.029.lcssa.i = phi i32 [ -128, %bb.l ], [ %.231.i, %bb.q ]
  %.026.lcssa.i = phi i32 [ 127, %bb.l ], [ %.228.i, %bb.q ] ; 2 uses
  %i.ag = icmp ult ptr %.034.lcssa.i, %i.q
  br i1 %i.ag, label %.lr.ph55.split.us.i, label %PyUnicode_MAX_CHAR_VALUE.exit

.lr.ph.i:                                         ; preds = %bb.l, %bb.q
  %.02650.i = phi i32 [ %.228.i, %bb.q ], [ 127, %bb.l ]
  %.02949.i = phi i32 [ %.231.i, %bb.q ], [ -128, %bb.l ] ; 3 uses
  %.03448.i = phi ptr [ %.135.i, %bb.q ], [ %i.s, %bb.l ] ; 4 uses
  %i.ah = load <4 x i16>, ptr %.03448.i, align 2, !tbaa !208
  %i.ai = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.ah)
  %i.aj = zext i16 %i.ai to i32
  %i.ak = and i32 %.02949.i, %i.aj
  %.not37.i = icmp eq i32 %i.ak, 0
  br i1 %.not37.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  switch i32 %.02949.i, label %bb.n [
    i32 -256, label %PyUnicode_MAX_CHAR_VALUE.exit
    i32 -128, label %bb.o
  ], !llvm.loop !313

bb.n:                                             ; preds = %bb.m
  br label %bb.q, !llvm.loop !313

bb.o:                                             ; preds = %bb.m
  br label %bb.q, !llvm.loop !313

bb.p:                                             ; preds = %.lr.ph.i
  %i.al = getelementptr i8, ptr %.03448.i, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.135.i = phi ptr [ %i.al, %bb.p ], [ %.03448.i, %bb.o ], [ %.03448.i, %bb.n ] ; 3 uses
  %.231.i = phi i32 [ %.02949.i, %bb.p ], [ -256, %bb.o ], [ -65536, %bb.n ] ; 2 uses
  %.228.i = phi i32 [ %.02650.i, %bb.p ], [ 255, %bb.o ], [ 65535, %bb.n ] ; 2 uses
  %i.am = icmp ult ptr %.135.i, %i.ae
  br i1 %i.am, label %.lr.ph.i, label %.preheader.i29

.outer.i:                                         ; preds = %bb.s, %.lr.ph55.split.us.i
  %.us-phi.i = phi i32 [ %.332.ph68.i, %.lr.ph55.split.us.i ], [ %.433.us.i, %bb.s ]
  %.us-phi60.i = phi i32 [ %.3.ph69.i, %.lr.ph55.split.us.i ], [ %.4.us.i, %bb.s ] ; 2 uses
  %i.an = getelementptr i8, ptr %.236.ph67.i, i64 2 ; 2 uses
  %i.ao = icmp ult ptr %i.an, %i.q
  br i1 %i.ao, label %.lr.ph55.split.us.i, label %PyUnicode_MAX_CHAR_VALUE.exit, !llvm.loop !314

.lr.ph55.split.us.i:                              ; preds = %.preheader.i29, %.outer.i
  %.3.ph69.i = phi i32 [ %.us-phi60.i, %.outer.i ], [ %.026.lcssa.i, %.preheader.i29 ]
  %.332.ph68.i = phi i32 [ %.us-phi.i, %.outer.i ], [ %.029.lcssa.i, %.preheader.i29 ] ; 3 uses
  %.236.ph67.i = phi ptr [ %i.an, %.outer.i ], [ %.034.lcssa.i, %.preheader.i29 ] ; 2 uses
  %i.ap = load i16, ptr %.236.ph67.i, align 2, !tbaa !208
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = and i32 %.332.ph68.i, %i.aq
  %.not.us62.i = icmp eq i32 %i.ar, 0
  br i1 %.not.us62.i, label %.outer.i, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.lr.ph55.split.us.i, %bb.s
  %.33253.us63.i = phi i32 [ %.433.us.i, %bb.s ], [ %.332.ph68.i, %.lr.ph55.split.us.i ]
  switch i32 %.33253.us63.i, label %bb.r [
    i32 -256, label %PyUnicode_MAX_CHAR_VALUE.exit
    i32 -128, label %bb.s
  ]

bb.r:                                             ; preds = %.lr.ph64.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph64.i
  %.433.us.i = phi i32 [ -65536, %bb.r ], [ -256, %.lr.ph64.i ] ; 3 uses
  %.4.us.i = phi i32 [ 65535, %bb.r ], [ 255, %.lr.ph64.i ]
  %i.as = and i32 %.433.us.i, %i.aq
  %.not.us.i = icmp eq i32 %i.as, 0
  br i1 %.not.us.i, label %.outer.i, label %.lr.ph64.i

bb.t:                                             ; preds = %_PyUnicode_DATA.exit
  %gepdiff = sub i64 %i.p, %i.r
  %i.at = ashr exact i64 %gepdiff, 2
  %i.au = and i64 %i.at, -4
  %i.av = getelementptr [4 x i8], ptr %i.s, i64 %i.au ; 2 uses
  %i.aw = icmp ult ptr %i.s, %i.av
  br i1 %i.aw, label %.lr.ph.i48, label %.preheader.i30

.preheader.i30:                                   ; preds = %bb.y, %bb.t
  %.034.lcssa.i31 = phi ptr [ %i.s, %bb.t ], [ %.135.i53, %bb.y ] ; 2 uses
  %.029.lcssa.i32 = phi i32 [ -128, %bb.t ], [ %.231.i54, %bb.y ]
  %.026.lcssa.i33 = phi i32 [ 127, %bb.t ], [ %.228.i55, %bb.y ] ; 2 uses
  %i.ax = icmp ult ptr %.034.lcssa.i31, %i.q
  br i1 %i.ax, label %.lr.ph55.split.us.i35, label %PyUnicode_MAX_CHAR_VALUE.exit

.lr.ph.i48:                                       ; preds = %bb.t, %bb.y
end_hunk_2
begin_hunk_3_@PyUnicode_Decode:bb.a
  %i.dm = getelementptr i8, ptr %.019.i.i.i, i64 8 ; 2 uses
  %.not26.i.i.i = icmp ugt ptr %i.dm, %i.di
  br i1 %.not26.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.preheader.i.i.i
  %i.dn = load i64, ptr %.019.i.i.i, align 8, !tbaa !193
  %i.do = and i64 %i.dn, -9187201950435737472
  %.not27.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not27.i.i.i, label %.preheader.i.i.i, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !220

bb.aj:                                            ; preds = %.preheader.i.i.i
  %i.dp = icmp eq ptr %.019.i.i.i, %i.di
  br i1 %i.dp, label %ucs1lib_find_max_char.exit.i.i, label %.thread31.i.i.i

.thread31.i.i.i:                                  ; preds = %bb.aj, %bb.ah
  %.223.i.i.i = phi ptr [ %.021.i.i.i, %bb.ah ], [ %.019.i.i.i, %bb.aj ] ; 2 uses
  %i.dq = getelementptr i8, ptr %.223.i.i.i, i64 1
  %i.dr = load i8, ptr %.223.i.i.i, align 1, !tbaa !205
  %.not28.i.i.i = icmp sgt i8 %i.dr, -1
  br i1 %.not28.i.i.i, label %bb.ag, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i.i:                   ; preds = %.thread31.i.i.i, %bb.aj, %bb.ag, %bb.ai
  %.5.i.i.i = phi i32 [ 255, %bb.ai ], [ 127, %bb.ag ], [ 127, %bb.aj ], [ 255, %.thread31.i.i.i ]
  %i.ds = call ptr @PyUnicode_New(i64 noundef %1, i32 noundef %.5.i.i.i), !inline_history !387 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i, label %_PyUnicode_Result.exit, label %bb.ak

bb.ak:                                            ; preds = %ucs1lib_find_max_char.exit.i.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 32
  %.val.i.i.i = load i32, ptr %i.dt, align 8      ; 2 uses
  %i.du = and i32 %.val.i.i.i, 32
  %.not.i15.i.i = icmp eq i32 %i.du, 0
  br i1 %.not.i15.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dv = and i32 %.val.i.i.i, 64
  %.not.i.i.i.i = icmp eq i32 %i.dv, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.ds, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.am:                                            ; preds = %bb.ak
  %i.dw = getelementptr i8, ptr %i.ds, i64 56
  %.val4.i.i.i = load ptr, ptr %i.dw, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.am, %bb.al
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.al ], [ %.val4.i.i.i, %bb.am ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i, ptr align 1 %0, i64 %1, i1 false)
  br label %_PyUnicode_Result.exit

PyUnicode_DecodeLatin1.exit:                      ; preds = %bb.g, %bb.i, %bb.l, %bb.m, %bb.o, %bb.p, %bb.aa, %bb.r, %bb.s
  %i.dx = call i32 @PyBuffer_FillInfo(ptr noundef nonnull %4, ptr noundef null, ptr noundef %0, i64 noundef %1, i32 noundef 1, i32 noundef 284) #33
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %_PyUnicode_Result.exit, label %bb.an

bb.an:                                            ; preds = %PyUnicode_DecodeLatin1.exit
  %i.dz = call ptr @PyMemoryView_FromBuffer(ptr noundef nonnull %4) #33 ; 8 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %_PyUnicode_Result.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eb = call ptr @_PyCodec_DecodeText(ptr noundef nonnull %i.dz, ptr noundef nonnull %2, ptr noundef %3) #33 ; 18 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.bf, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ed = getelementptr i8, ptr %i.eb, i64 8
  %.val80 = load ptr, ptr %i.ed, align 8, !tbaa !197 ; 2 uses
  %i.ee = getelementptr i8, ptr %.val80, i64 168
  %.val81 = load i64, ptr %i.ee, align 8, !tbaa !198
  %i.ef = and i64 %.val81, 268435456
  %.not71 = icmp eq i64 %i.ef, 0
  br i1 %.not71, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.eg = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.eh = getelementptr i8, ptr %.val80, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !378
  %i.ej = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.eg, ptr noundef nonnull @.str.50, ptr noundef nonnull %2, ptr noundef %i.ei) #33 ; 0 uses
  %i.ek = load i32, ptr %i.eb, align 8, !tbaa !205 ; 2 uses
  %.not.i77 = icmp sgt i32 %i.ek, -1
  br i1 %.not.i77, label %bb.ar, label %bb.bf

bb.ar:                                            ; preds = %bb.aq
  %i.el = add nsw i32 %i.ek, -1                   ; 2 uses
  store i32 %i.el, ptr %i.eb, align 8, !tbaa !205
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.as, label %bb.bf

bb.as:                                            ; preds = %bb.ar
  call void @_Py_Dealloc(ptr noundef nonnull %i.eb) #33
  br label %bb.bf

bb.at:                                            ; preds = %bb.ap
  %i.en = load i32, ptr %i.dz, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.en, -1
  br i1 %.not.i, label %bb.au, label %Py_DECREF.exit

bb.au:                                            ; preds = %bb.at
  %i.eo = add nsw i32 %i.en, -1                   ; 2 uses
  store i32 %i.eo, ptr %i.dz, align 8, !tbaa !205
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.av, label %Py_DECREF.exit

bb.av:                                            ; preds = %bb.au
  call void @_Py_Dealloc(ptr noundef nonnull %i.dz) #33
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.at, %bb.au, %bb.av
  %i.eq = getelementptr i8, ptr %i.eb, i64 16
  %.val.i = load i64, ptr %i.eq, align 8, !tbaa !207
  switch i64 %.val.i, label %_PyUnicode_Result.exit [
    i64 0, label %bb.aw
    i64 1, label %bb.az
  ]

bb.aw:                                            ; preds = %Py_DECREF.exit
  %.not26.i = icmp eq ptr %i.eb, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %.not26.i, label %_PyUnicode_Result.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.er = load i32, ptr %i.eb, align 8, !tbaa !205 ; 2 uses
  %.not.i27.i = icmp sgt i32 %i.er, -1
  br i1 %.not.i27.i, label %bb.ay, label %_PyUnicode_Result.exit

bb.ay:                                            ; preds = %bb.ax
  %i.es = add nsw i32 %i.er, -1                   ; 2 uses
  store i32 %i.es, ptr %i.eb, align 8, !tbaa !205
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %Py_DECREF.exit28.sink.split.i, label %_PyUnicode_Result.exit

bb.az:                                            ; preds = %Py_DECREF.exit
  %i.eu = getelementptr i8, ptr %i.eb, i64 32
  %i.ev = load i32, ptr %i.eu, align 8            ; 3 uses
  %i.ew = and i32 %i.ev, 28
  %.not25.i = icmp eq i32 %i.ew, 4
  br i1 %.not25.i, label %bb.ba, label %_PyUnicode_Result.exit

bb.ba:                                            ; preds = %bb.az
  %i.ex = and i32 %i.ev, 32
  %.not.i30.i = icmp eq i32 %i.ex, 0
  br i1 %.not.i30.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ey = and i32 %i.ev, 64
  %.not.i.i.i85 = icmp eq i32 %i.ey, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i85, i64 56, i64 40
  %.0.i.i.i86 = getelementptr i8, ptr %i.eb, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.bc:                                            ; preds = %bb.ba
  %i.ez = getelementptr i8, ptr %i.eb, i64 56
  %.val4.i.i = load ptr, ptr %i.ez, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.bc, %bb.bb
  %.0.i.i87 = phi ptr [ %.0.i.i.i86, %bb.bb ], [ %.val4.i.i, %bb.bc ]
  %i.fa = load i8, ptr %.0.i.i87, align 1, !tbaa !205 ; 3 uses
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

_PyUnicode_Result.exit:                           ; preds = %bb.b, %_PyUnicode_DATA.exit.i.i, %ucs1lib_find_max_char.exit.i.i, %bb.ae, %bb.ad, %bb.w, %bb.t, %bb.q, %bb.n, %bb.bh, %bb.bg, %bb.bf, %bb.an, %PyUnicode_DecodeLatin1.exit, %Py_DECREF.exit28.sink.split.i, %bb.be, %bb.bd, %_PyUnicode_DATA.exit.i, %bb.az, %bb.ay, %bb.ax, %bb.aw, %Py_DECREF.exit, %bb.a, %bb.d
  %.1 = phi ptr [ null, %bb.bh ], [ %i.aq, %bb.n ], [ %i.g, %bb.d ], [ %.1.ph.i, %Py_DECREF.exit28.sink.split.i ], [ null, %bb.a ], [ %i.eb, %Py_DECREF.exit ], [ %i.fh, %bb.bd ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.aw ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.ax ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.ay ], [ %i.eb, %bb.az ], [ %i.fh, %_PyUnicode_DATA.exit.i ], [ %i.fh, %bb.be ], [ null, %PyUnicode_DecodeLatin1.exit ], [ null, %bb.an ], [ null, %bb.bf ], [ null, %bb.bg ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.b ], [ %i.de, %bb.ad ], [ %i.ds, %_PyUnicode_DATA.exit.i.i ], [ null, %ucs1lib_find_max_char.exit.i.i ], [ %i.dh, %bb.ae ], [ %i.bu, %bb.w ], [ %i.ba, %bb.t ], [ %i.av, %bb.q ]
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
  %i.h = getelementptr i8, ptr %0, i64 %1         ; 6 uses
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
end_hunk_3
begin_hunk_4_@PyUnicode_DecodeASCII:bb.a
  %.232 = phi i32 [ %.03065, %PyUnicode_WRITE.exit ], [ %.03065, %bb.ad ], [ %i.ca, %PyUnicode_WRITE.exit45 ], [ %i.cw, %bb.af ]
  %.229 = phi ptr [ %.02766, %PyUnicode_WRITE.exit ], [ %.02766, %bb.ad ], [ %i.cb, %PyUnicode_WRITE.exit45 ], [ %i.cx, %bb.af ]
  %i.cz = load ptr, ptr %i.c, align 8, !tbaa !355
  %i.da = icmp ult ptr %i.cy, %i.cz
  br i1 %i.da, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ag, %bb.l
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !194 ; 4 uses
  %.not.i47 = icmp eq ptr %i.db, null
  br i1 %.not.i47, label %Py_XDECREF.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !205 ; 2 uses
  %.not.i.i48 = icmp sgt i32 %i.dc, -1
  br i1 %.not.i.i48, label %bb.ai, label %Py_XDECREF.exit

bb.ai:                                            ; preds = %bb.ah
  %i.dd = add nsw i32 %i.dc, -1                   ; 2 uses
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !205
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.aj, label %Py_XDECREF.exit

bb.aj:                                            ; preds = %bb.ai
  call void @_Py_Dealloc(ptr noundef nonnull %i.db) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %._crit_edge, %bb.ah, %bb.ai, %bb.aj
  %i.df = load ptr, ptr %i.e, align 8, !tbaa !194 ; 4 uses
  %.not.i49 = icmp eq ptr %i.df, null
  br i1 %.not.i49, label %Py_XDECREF.exit51, label %bb.ak

bb.ak:                                            ; preds = %Py_XDECREF.exit
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !205 ; 2 uses
  %.not.i.i50 = icmp sgt i32 %i.dg, -1
  br i1 %.not.i.i50, label %bb.al, label %Py_XDECREF.exit51

bb.al:                                            ; preds = %bb.ak
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !205
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.am, label %Py_XDECREF.exit51

bb.am:                                            ; preds = %bb.al
  call void @_Py_Dealloc(ptr noundef nonnull %i.df) #33
  br label %Py_XDECREF.exit51

Py_XDECREF.exit51:                                ; preds = %Py_XDECREF.exit, %bb.ak, %bb.al, %bb.am
  %i.dj = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %3) #33
  br label %Py_XDECREF.exit57

bb.an:                                            ; preds = %bb.u, %bb.ae
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %3) #33
  %i.dk = load ptr, ptr %i.d, align 8, !tbaa !194 ; 4 uses
  %.not.i52 = icmp eq ptr %i.dk, null
  br i1 %.not.i52, label %Py_XDECREF.exit54, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !205 ; 2 uses
  %.not.i.i53 = icmp sgt i32 %i.dl, -1
  br i1 %.not.i.i53, label %bb.ap, label %Py_XDECREF.exit54

bb.ap:                                            ; preds = %bb.ao
  %i.dm = add nsw i32 %i.dl, -1                   ; 2 uses
  store i32 %i.dm, ptr %i.dk, align 8, !tbaa !205
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.aq, label %Py_XDECREF.exit54

bb.aq:                                            ; preds = %bb.ap
  call void @_Py_Dealloc(ptr noundef nonnull %i.dk) #33
  br label %Py_XDECREF.exit54

Py_XDECREF.exit54:                                ; preds = %bb.an, %bb.ao, %bb.ap, %bb.aq
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !194 ; 4 uses
  %.not.i55 = icmp eq ptr %i.do, null
  br i1 %.not.i55, label %Py_XDECREF.exit57, label %bb.ar

bb.ar:                                            ; preds = %Py_XDECREF.exit54
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !205 ; 2 uses
  %.not.i.i56 = icmp sgt i32 %i.dp, -1
  br i1 %.not.i.i56, label %bb.as, label %Py_XDECREF.exit57

bb.as:                                            ; preds = %bb.ar
  %i.dq = add nsw i32 %i.dp, -1                   ; 2 uses
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !205
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.at, label %Py_XDECREF.exit57

bb.at:                                            ; preds = %bb.as
  call void @_Py_Dealloc(ptr noundef nonnull %i.do) #33
  br label %Py_XDECREF.exit57

Py_XDECREF.exit57:                                ; preds = %bb.at, %bb.as, %bb.ar, %Py_XDECREF.exit54, %Py_XDECREF.exit51
  %.0 = phi ptr [ %i.dj, %Py_XDECREF.exit51 ], [ null, %Py_XDECREF.exit54 ], [ null, %bb.ar ], [ null, %bb.as ], [ null, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.au

bb.au:                                            ; preds = %bb.a, %PyUnicode_New.exit, %ascii_decode.exit, %Py_XDECREF.exit57, %get_latin1_char.exit
  %.3 = phi ptr [ %phi.call59, %ascii_decode.exit ], [ %i.aa, %get_latin1_char.exit ], [ null, %PyUnicode_New.exit ], [ %.0, %Py_XDECREF.exit57 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeLatin1(ptr noundef %0, i64 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  switch i64 %1, label %bb.e [
    i64 0, label %_PyUnicode_FromUCS1.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !205     ; 3 uses
  %i.b = icmp sgt i8 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = zext nneg i8 %i.a to i64
  %i.d = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.c
  br label %_PyUnicode_FromUCS1.exit

bb.d:                                             ; preds = %bb.b
  %i.e = and i8 %i.a, 127
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.f
  br label %_PyUnicode_FromUCS1.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 %1         ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.thread31.i.i, %bb.e
  %.021.i.i = phi ptr [ %0, %bb.e ], [ %i.p, %.thread31.i.i ] ; 4 uses
  %i.i = icmp ult ptr %.021.i.i, %i.h
  br i1 %i.i, label %bb.g, label %ucs1lib_find_max_char.exit.i

bb.g:                                             ; preds = %bb.f
  %i.j = ptrtoint ptr %.021.i.i to i64
  %i.k = and i64 %i.j, 7
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %.thread31.i.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.h
  %.019.i.i = phi ptr [ %i.l, %bb.h ], [ %.021.i.i, %bb.g ] ; 4 uses
  %i.l = getelementptr i8, ptr %.019.i.i, i64 8   ; 2 uses
  %.not26.i.i = icmp ugt ptr %i.l, %i.h
  br i1 %.not26.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i.i
  %i.m = load i64, ptr %.019.i.i, align 8, !tbaa !193
  %i.n = and i64 %i.m, -9187201950435737472
  %.not27.i.i = icmp eq i64 %i.n, 0
  br i1 %.not27.i.i, label %.preheader.i.i, label %ucs1lib_find_max_char.exit.i, !llvm.loop !220

bb.i:                                             ; preds = %.preheader.i.i
  %i.o = icmp eq ptr %.019.i.i, %i.h
  br i1 %i.o, label %ucs1lib_find_max_char.exit.i, label %.thread31.i.i

.thread31.i.i:                                    ; preds = %bb.i, %bb.g
  %.223.i.i = phi ptr [ %.021.i.i, %bb.g ], [ %.019.i.i, %bb.i ] ; 2 uses
  %i.p = getelementptr i8, ptr %.223.i.i, i64 1
  %i.q = load i8, ptr %.223.i.i, align 1, !tbaa !205
  %.not28.i.i = icmp sgt i8 %i.q, -1
  br i1 %.not28.i.i, label %bb.f, label %ucs1lib_find_max_char.exit.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i:                     ; preds = %.thread31.i.i, %bb.i, %bb.f, %bb.h
  %.5.i.i = phi i32 [ 255, %bb.h ], [ 127, %bb.i ], [ 127, %bb.f ], [ 255, %.thread31.i.i ]
  %i.r = tail call ptr @PyUnicode_New(i64 noundef %1, i32 noundef %.5.i.i), !inline_history !311 ; 5 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_PyUnicode_FromUCS1.exit, label %bb.j

bb.j:                                             ; preds = %ucs1lib_find_max_char.exit.i
  %i.s = getelementptr i8, ptr %i.r, i64 32
  %.val.i.i = load i32, ptr %i.s, align 8         ; 2 uses
  %i.t = and i32 %.val.i.i, 32
  %.not.i15.i = icmp eq i32 %i.t, 0
  br i1 %.not.i15.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = and i32 %.val.i.i, 64
  %.not.i.i.i = icmp eq i32 %i.u, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.r, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.l:                                             ; preds = %bb.j
  %i.v = getelementptr i8, ptr %i.r, i64 56
  %.val4.i.i = load ptr, ptr %i.v, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.k ], [ %.val4.i.i, %bb.l ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr align 1 %0, i64 %1, i1 false)
  br label %_PyUnicode_FromUCS1.exit

_PyUnicode_FromUCS1.exit:                         ; preds = %bb.a, %bb.c, %bb.d, %ucs1lib_find_max_char.exit.i, %_PyUnicode_DATA.exit.i
  %.0.i = phi ptr [ %i.g, %bb.d ], [ null, %ucs1lib_find_max_char.exit.i ], [ %i.r, %_PyUnicode_DATA.exit.i ], [ %i.d, %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ]
  ret ptr %.0.i
}

declare i32 @PyBuffer_FillInfo(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @PyMemoryView_FromBuffer(ptr noundef) local_unnamed_addr #3

declare ptr @_PyCodec_DecodeText(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsDecodedObject(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val8 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val8, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %1, null
  %spec.select = select i1 %i.e, ptr @.str.58, ptr %1
  %i.f = tail call ptr @PyCodec_Decode(ptr noundef nonnull %0, ptr noundef nonnull %spec.select, ptr noundef %2) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @PyUnicode_GetDefaultEncoding() local_unnamed_addr #0 {
bb.a:
  ret ptr @.str.58
}

declare ptr @PyCodec_Decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsDecodedUnicode(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val17 = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val17, i64 168
  %.val19 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val19, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %1, null
  %spec.select = select i1 %i.e, ptr @.str.58, ptr %1 ; 2 uses
  %i.f = tail call ptr @PyCodec_Decode(ptr noundef nonnull %0, ptr noundef nonnull %spec.select, ptr noundef %2) #33 ; 18 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_DECREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val16 = load ptr, ptr %i.h, align 8, !tbaa !197
  %i.i = getelementptr i8, ptr %.val16, i64 168
  %.val18 = load i64, ptr %i.i, align 8, !tbaa !198
  %i.j = and i64 %.val18, 268435456
  %.not15 = icmp eq i64 %i.j, 0
  br i1 %.not15, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %.val = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.l = getelementptr i8, ptr %.val, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !378
  %i.n = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.50, ptr noundef nonnull %spec.select, ptr noundef %i.m) #33 ; 0 uses
  %i.o = load i32, ptr %i.f, align 8, !tbaa !205  ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.f, align 8, !tbaa !205
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #33
  br label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.f, i64 16
  %.val.i = load i64, ptr %i.r, align 8, !tbaa !207
  switch i64 %.val.i, label %Py_DECREF.exit [
    i64 0, label %bb.i
    i64 1, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %.not26.i = icmp eq ptr %i.f, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)
  br i1 %.not26.i, label %Py_DECREF.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load i32, ptr %i.f, align 8, !tbaa !205  ; 2 uses
  %.not.i27.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i27.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.f, align 8, !tbaa !205
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %Py_DECREF.exit28.sink.split.i, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.f, i64 32
  %i.w = load i32, ptr %i.v, align 8              ; 3 uses
  %i.x = and i32 %i.w, 28
  %.not25.i = icmp eq i32 %i.x, 4
  br i1 %.not25.i, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  %i.y = and i32 %i.w, 32
  %.not.i30.i = icmp eq i32 %i.y, 0
  br i1 %.not.i30.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = and i32 %i.w, 64
  %.not.i.i.i = icmp eq i32 %i.z, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.f, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.o:                                             ; preds = %bb.m
  %i.aa = getelementptr i8, ptr %i.f, i64 56
  %.val4.i.i = load ptr, ptr %i.aa, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.o, %bb.n
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.n ], [ %.val4.i.i, %bb.o ]
  %i.ab = load i8, ptr %.0.i.i, align 1, !tbaa !205 ; 3 uses
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.ac
  %i.ae = and i8 %i.ab, 127
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.af
  %i.ah = icmp slt i8 %i.ab, 0
  %i.ai = select i1 %i.ah, ptr %i.ag, ptr %i.ad   ; 5 uses
  %.not.i20 = icmp eq ptr %i.f, %i.ai
  br i1 %.not.i20, label %Py_DECREF.exit, label %bb.p

bb.p:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !205 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i.i, label %bb.q, label %Py_DECREF.exit

bb.q:                                             ; preds = %bb.p
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.f, align 8, !tbaa !205
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %Py_DECREF.exit28.sink.split.i, label %Py_DECREF.exit

Py_DECREF.exit28.sink.split.i:                    ; preds = %bb.q, %bb.k
  %.1.ph.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.k ], [ %i.ai, %bb.q ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #33
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit28.sink.split.i, %bb.q, %bb.p, %_PyUnicode_DATA.exit.i, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.g ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.f ], [ %i.f, %bb.h ], [ %i.ai, %bb.p ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.k ], [ %i.f, %bb.l ], [ %i.ai, %_PyUnicode_DATA.exit.i ], [ %i.ai, %bb.q ], [ %.1.ph.i, %Py_DECREF.exit28.sink.split.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsEncodedObject(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val11 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val11, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %1, null
  %spec.select = select i1 %i.e, ptr @.str.58, ptr %1
  %i.f = tail call ptr @PyCodec_Encode(ptr noundef nonnull %0, ptr noundef nonnull %spec.select, ptr noundef %2) #33 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

end_hunk_4
begin_hunk_5_@unicode_decode_utf8:bb.a

.lr.ph.i.7:                                       ; preds = %.lr.ph.i.6
  %i.de = getelementptr i8, ptr %0, i64 8
  %i.df = load i8, ptr %i.ct, align 1, !tbaa !205
  %i.dg = zext i8 %i.df to i32                    ; 2 uses
  %i.dh = xor i32 %i.dg, -1
  %i.di = lshr i32 %i.dh, 7
  %i.dj = lshr i32 %i.dg, 6
  %i.dk = or i32 %i.di, %i.dj
  %i.dl = and i32 %i.dk, 1
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = add nuw nsw i64 %i.db, %i.dm
  br label %.preheader.i

.lr.ph54.i:                                       ; preds = %.preheader.i, %._crit_edge.i
  %.153.i = phi ptr [ %.2.lcssa.i, %._crit_edge.i ], [ %.0.lcssa.i, %.preheader.i ] ; 5 uses
  %.13152.i = phi i64 [ %i.el, %._crit_edge.i ], [ %.030.lcssa.i, %.preheader.i ]
  %i.do = ptrtoint ptr %.153.i to i64
  %i.dp = sub i64 %i.aa, %i.do
  %i.dq = icmp sgt i64 %i.dp, 2040
  %i.dr = getelementptr i8, ptr %.153.i, i64 2040
  %spec.select.i = select i1 %i.dq, ptr %i.dr, ptr %i.m ; 2 uses
  %i.ds = getelementptr i8, ptr %.153.i, i64 8    ; 2 uses
  %.not3945.i = icmp ugt ptr %i.ds, %spec.select.i
  br i1 %.not3945.i, label %._crit_edge.i, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph54.i, %.lr.ph48.i
  %i.dt = phi ptr [ %i.eb, %.lr.ph48.i ], [ %i.ds, %.lr.ph54.i ] ; 3 uses
  %.247.i = phi ptr [ %i.dt, %.lr.ph48.i ], [ %.153.i, %.lr.ph54.i ]
  %.03446.i = phi i64 [ %i.ea, %.lr.ph48.i ], [ 0, %.lr.ph54.i ]
  %i.du = load i64, ptr %.247.i, align 8, !tbaa !193 ; 2 uses
  %i.dv = xor i64 %i.du, -1
  %i.dw = lshr i64 %i.dv, 7
  %i.dx = lshr i64 %i.du, 6
  %i.dy = or i64 %i.dw, %i.dx
  %i.dz = and i64 %i.dy, 72340172838076673
  %i.ea = add i64 %i.dz, %.03446.i                ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dt, i64 8      ; 2 uses
  %.not39.i = icmp ugt ptr %i.eb, %spec.select.i
  br i1 %.not39.i, label %._crit_edge.i, label %.lr.ph48.i, !llvm.loop !479

._crit_edge.i:                                    ; preds = %.lr.ph48.i, %.lr.ph54.i
  %.034.lcssa.i = phi i64 [ 0, %.lr.ph54.i ], [ %i.ea, %.lr.ph48.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.153.i, %.lr.ph54.i ], [ %i.dt, %.lr.ph48.i ] ; 3 uses
  %i.ec = and i64 %.034.lcssa.i, 71777214294589695
  %i.ed = lshr i64 %.034.lcssa.i, 8
  %i.ee = and i64 %i.ed, 71777214294589695
  %i.ef = add nuw nsw i64 %i.ee, %i.ec            ; 2 uses
  %i.eg = lshr i64 %i.ef, 16
  %i.eh = add nuw nsw i64 %i.eg, %i.ef            ; 2 uses
  %i.ei = lshr i64 %i.eh, 32
  %i.ej = add nuw nsw i64 %i.ei, %i.eh
  %i.ek = and i64 %i.ej, 2047
  %i.el = add i64 %i.ek, %.13152.i                ; 2 uses
  %i.em = getelementptr i8, ptr %.2.lcssa.i, i64 8
  %.not38.i = icmp ugt ptr %i.em, %i.m
  br i1 %.not38.i, label %.loopexit.i, label %.lr.ph54.i, !llvm.loop !480

.loopexit.i:                                      ; preds = %._crit_edge.i, %.preheader.i, %bb.p
  %.232.i = phi i64 [ 0, %bb.p ], [ %.030.lcssa.i, %.preheader.i ], [ %i.el, %._crit_edge.i ] ; 3 uses
  %.3.i = phi ptr [ %0, %bb.p ], [ %.0.lcssa.i, %.preheader.i ], [ %.2.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.en = icmp ult ptr %.3.i, %i.m
  br i1 %i.en, label %.lr.ph60.i.preheader, label %utf8_count_codepoints.exit

.lr.ph60.i.preheader:                             ; preds = %.loopexit.i
  %.3.i113 = ptrtoint ptr %.3.i to i64
  %i.eo = add i64 %1, %i.a
  %i.ep = sub i64 %i.eo, %.3.i113                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ep, 4
  br i1 %min.iters.check, label %.lr.ph60.i.preheader116, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph60.i.preheader
  %n.vec = and i64 %i.ep, -4                      ; 3 uses
  %i.eq = getelementptr i8, ptr %.3.i, i64 %n.vec
  %i.er = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.232.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.er, %vector.ph ], [ %i.fh, %vector.body ]
  %vec.phi114 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fi, %vector.body ]
  %next.gep = getelementptr i8, ptr %.3.i, i64 %index ; 2 uses
  %i.es = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !205
  %wide.load115 = load <2 x i8>, ptr %i.es, align 1, !tbaa !205
  %i.et = zext <2 x i8> %wide.load to <2 x i32>   ; 2 uses
  %i.eu = zext <2 x i8> %wide.load115 to <2 x i32> ; 2 uses
  %i.ev = xor <2 x i32> %i.et, splat (i32 -1)
  %i.ew = xor <2 x i32> %i.eu, splat (i32 -1)
  %i.ex = lshr <2 x i32> %i.ev, splat (i32 7)
  %i.ey = lshr <2 x i32> %i.ew, splat (i32 7)
  %i.ez = lshr <2 x i32> %i.et, splat (i32 6)
  %i.fa = lshr <2 x i32> %i.eu, splat (i32 6)
  %i.fb = or <2 x i32> %i.ex, %i.ez
  %i.fc = or <2 x i32> %i.ey, %i.fa
  %i.fd = and <2 x i32> %i.fb, splat (i32 1)
  %i.fe = and <2 x i32> %i.fc, splat (i32 1)
  %i.ff = zext nneg <2 x i32> %i.fd to <2 x i64>
  %i.fg = zext nneg <2 x i32> %i.fe to <2 x i64>
  %i.fh = add <2 x i64> %vec.phi, %i.ff           ; 2 uses
  %i.fi = add <2 x i64> %vec.phi114, %i.fg        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !481

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.fi, %i.fh
  %i.fk = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ep, %n.vec
  br i1 %cmp.n, label %utf8_count_codepoints.exit, label %.lr.ph60.i.preheader116

.lr.ph60.i.preheader116:                          ; preds = %.lr.ph60.i.preheader, %middle.block
  %.458.i.ph = phi ptr [ %.3.i, %.lr.ph60.i.preheader ], [ %i.eq, %middle.block ]
  %.33357.i.ph = phi i64 [ %.232.i, %.lr.ph60.i.preheader ], [ %i.fk, %middle.block ]
  br label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %.lr.ph60.i.preheader116, %.lr.ph60.i
  %.458.i = phi ptr [ %i.fl, %.lr.ph60.i ], [ %.458.i.ph, %.lr.ph60.i.preheader116 ] ; 2 uses
  %.33357.i = phi i64 [ %i.fu, %.lr.ph60.i ], [ %.33357.i.ph, %.lr.ph60.i.preheader116 ]
  %i.fl = getelementptr i8, ptr %.458.i, i64 1    ; 2 uses
  %i.fm = load i8, ptr %.458.i, align 1, !tbaa !205
  %i.fn = zext i8 %i.fm to i32                    ; 2 uses
  %i.fo = xor i32 %i.fn, -1
  %i.fp = lshr i32 %i.fo, 7
  %i.fq = lshr i32 %i.fn, 6
  %i.fr = or i32 %i.fp, %i.fq
  %i.fs = and i32 %i.fr, 1
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = add i64 %.33357.i, %i.ft                ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.fl, %i.m
  br i1 %exitcond.not.i, label %utf8_count_codepoints.exit, label %.lr.ph60.i, !llvm.loop !482

utf8_count_codepoints.exit:                       ; preds = %.lr.ph60.i, %middle.block, %.loopexit.i
  %.333.lcssa.i = phi i64 [ %.232.i, %.loopexit.i ], [ %i.fk, %middle.block ], [ %i.fu, %.lr.ph60.i ] ; 2 uses
  %i.fv = icmp ult i8 %i.w, -60
  br i1 %i.fv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %utf8_count_codepoints.exit
  %i.fw = icmp samesign ult i8 %i.w, -16
  %. = select i1 %i.fw, i32 65535, i32 1114111
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %utf8_count_codepoints.exit, %bb.o
  %i.fx = phi i1 [ true, %bb.o ], [ false, %bb.q ], [ true, %utf8_count_codepoints.exit ]
  %.058 = phi i32 [ 127, %bb.o ], [ %., %bb.q ], [ 255, %utf8_count_codepoints.exit ]
  %.057 = phi i64 [ %1, %bb.o ], [ %.333.lcssa.i, %bb.q ], [ %.333.lcssa.i, %utf8_count_codepoints.exit ]
  %i.fy = tail call ptr @PyUnicode_New(i64 noundef %.057, i32 noundef %.058) ; 5 uses
  %.not = icmp eq ptr %i.fy, null
  br i1 %.not, label %get_latin1_char.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @_PyUnicodeWriter_InitWithBuffer(ptr noundef nonnull %5, ptr noundef nonnull %i.fy) #33
  br i1 %i.fx, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.fz = getelementptr i8, ptr %i.fy, i64 32
  %.val.i73 = load i32, ptr %i.fz, align 8        ; 2 uses
  %i.ga = and i32 %.val.i73, 32
  %.not.i74 = icmp eq i32 %i.ga, 0
  br i1 %.not.i74, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gb = and i32 %.val.i73, 64
  %.not.i.i75 = icmp eq i32 %i.gb, 0
  %.0.v.i.i76 = select i1 %.not.i.i75, i64 56, i64 40
  %.0.i.i77 = getelementptr i8, ptr %i.fy, i64 %.0.v.i.i76
  br label %_PyUnicode_DATA.exit80

bb.v:                                             ; preds = %bb.t
  %i.gc = getelementptr i8, ptr %i.fy, i64 56
  %.val4.i79 = load ptr, ptr %i.gc, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit80

_PyUnicode_DATA.exit80:                           ; preds = %bb.u, %bb.v
  %.0.i78 = phi ptr [ %.0.i.i77, %bb.u ], [ %.val4.i79, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i78, ptr align 1 %0, i64 %i.n, i1 false)
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.n, ptr %i.gd, align 8, !tbaa !279
  br label %bb.w

bb.w:                                             ; preds = %_PyUnicode_DATA.exit80, %bb.s
  %.056 = phi ptr [ %i.v, %_PyUnicode_DATA.exit80 ], [ %0, %bb.s ]
  %i.ge = call fastcc i32 @unicode_decode_utf8_impl(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %.056, ptr noundef %i.m, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %5) #33
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gg = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %5) #33
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1 = phi ptr [ null, %bb.x ], [ %i.gg, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %get_latin1_char.exit

get_latin1_char.exit:                             ; preds = %bb.c, %bb.b, %bb.g, %.thread, %_PyUnicode_DATA.exit, %bb.n, %bb.j, %bb.r, %bb.z, %bb.i
  %.4 = phi ptr [ %i.j, %bb.g ], [ null, %bb.r ], [ null, %bb.i ], [ %i.p, %_PyUnicode_DATA.exit ], [ null, %bb.j ], [ %i.p, %bb.n ], [ %.1, %bb.z ], [ %i.g, %.thread ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.c ]
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

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %i.l, i64 11848
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !393
  %i.x = tail call ptr @PyUnicode_AsEncodedString(ptr noundef nonnull %i.f, ptr noundef nonnull %i.u, ptr noundef %i.w)
  br label %PyUnicode_EncodeFSDefault.exit

bb.k:                                             ; preds = %bb.i
  %i.y = tail call ptr @_PyInterpreterState_GetConfig(ptr noundef nonnull %i.l) #33
  %i.z = getelementptr i8, ptr %i.y, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !395
  %i.ab = tail call fastcc i32 @get_error_handler_wide(ptr noundef %i.aa)
  %i.ac = tail call fastcc ptr @unicode_encode_locale(ptr noundef nonnull %i.f, i32 noundef %i.ab, i32 noundef 0)
  br label %PyUnicode_EncodeFSDefault.exit

PyUnicode_EncodeFSDefault.exit:                   ; preds = %bb.h, %bb.j, %bb.k
  %.0.i = phi ptr [ %i.s, %bb.h ], [ %i.x, %bb.j ], [ %i.ac, %bb.k ] ; 2 uses
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !205 ; 2 uses
  %.not.i23 = icmp sgt i32 %i.ad, -1
  br i1 %.not.i23, label %bb.l, label %Py_DECREF.exit24

bb.l:                                             ; preds = %PyUnicode_EncodeFSDefault.exit
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.f, align 8, !tbaa !205
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %Py_DECREF.exit24

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #33
  br label %Py_DECREF.exit24

Py_DECREF.exit24:                                 ; preds = %PyUnicode_EncodeFSDefault.exit, %bb.l, %bb.m
  %.not21 = icmp eq ptr %.0.i, null
  br i1 %.not21, label %Py_DECREF.exit, label %bb.n

bb.n:                                             ; preds = %bb.f, %Py_DECREF.exit24
  %.017 = phi ptr [ %.0.i, %Py_DECREF.exit24 ], [ %i.f, %bb.f ] ; 6 uses
  %i.ag = getelementptr i8, ptr %.017, i64 16
  %.017.val = load i64, ptr %i.ag, align 8, !tbaa !380
  %i.ah = getelementptr i8, ptr %.017, i64 32
  %i.ai = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #34
  %.not22 = icmp eq i64 %.017.val, %i.ai
  br i1 %.not22, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.aj, ptr noundef nonnull @.str.54) #33
  %i.ak = load i32, ptr %.017, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i, label %bb.p, label %Py_DECREF.exit

bb.p:                                             ; preds = %bb.o
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %.017, align 8, !tbaa !205
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.q, label %Py_DECREF.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %.017) #33
  br label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.n
  store ptr %.017, ptr %1, align 8, !tbaa !194
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.q, %bb.p, %bb.o, %Py_DECREF.exit24, %bb.e, %bb.r, %Py_DECREF.exit26
  %.0 = phi i32 [ 1, %Py_DECREF.exit26 ], [ 0, %bb.e ], [ 0, %Py_DECREF.exit24 ], [ 131072, %bb.r ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ]
  ret i32 %.0
}

declare ptr @PyOS_FSPath(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 131073) i32 @PyUnicode_FSDecoder(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !194    ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !205  ; 2 uses
  %.not.i30 = icmp sgt i32 %i.c, -1
  br i1 %.not.i30, label %bb.c, label %Py_DECREF.exit31

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !205
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit31

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #33
  br label %Py_DECREF.exit31

Py_DECREF.exit31:                                 ; preds = %bb.b, %bb.c, %bb.d
  store ptr null, ptr %1, align 8, !tbaa !194
  br label %Py_DECREF.exit27

bb.e:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyOS_FSPath(ptr noundef nonnull %0) #33 ; 11 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_DECREF.exit27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val36 = load ptr, ptr %i.h, align 8, !tbaa !197
  %i.i = getelementptr i8, ptr %.val36, i64 168
  %.val38 = load i64, ptr %i.i, align 8, !tbaa !198 ; 2 uses
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
  %.val39 = load i64, ptr %i.m, align 8, !tbaa !380 ; 3 uses
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11   ; 6 uses
  %i.p = getelementptr i8, ptr %i.o, i64 11840
  %i.q = load i32, ptr %i.p, align 8, !tbaa !391
  %.not.i40 = icmp eq i32 %i.q, 0
  br i1 %.not.i40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %i.o, i64 11856
  %i.s = load i32, ptr %i.r, align 8, !tbaa !392
  %i.t = getelementptr i8, ptr %i.o, i64 11848
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !393
  %i.v = tail call fastcc ptr @unicode_decode_utf8(ptr noundef %i.l, i64 noundef %.val39, i32 noundef %i.s, ptr noundef %i.u, ptr noundef null)
  br label %PyUnicode_DecodeFSDefaultAndSize.exit

end_hunk_5
begin_hunk_6_@PyUnicode_DecodeUTF32Stateful:bb.a
  %i.ed = sub i64 %i.eb, %i.ec                    ; 2 uses
  store i64 %i.ed, ptr %i.b, align 8, !tbaa !193
  %i.ee = add i64 %i.ed, 4
  br label %bb.ag

bb.v:                                             ; preds = %.loopexit
  %.not86 = icmp ugt i32 %.061, %.0.i
  br i1 %.not86, label %bb.x, label %.thread106

.thread106:                                       ; preds = %PyUnicode_MAX_CHAR_VALUE.exit, %bb.v
  %i.ef = phi ptr [ %i.av, %PyUnicode_MAX_CHAR_VALUE.exit ], [ %i.dx, %bb.v ] ; 3 uses
  %i.eg = icmp eq ptr %i.ef, %i.au
  %or.cond3 = or i1 %i.an, %i.eg
  br i1 %or.cond3, label %bb.ah, label %bb.w

bb.w:                                             ; preds = %.thread106
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.ei = ptrtoint ptr %i.ef to i64
  %i.ej = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.ek = sub i64 %i.ei, %i.ej
  store i64 %i.ek, ptr %i.b, align 8, !tbaa !193
  %i.el = sub i64 %i.aw, %i.ej
  br label %bb.ag

bb.x:                                             ; preds = %bb.v
  %i.em = icmp ult i32 %.061, 1114112
  br i1 %i.em, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.en = load i32, ptr %i.y, align 4, !tbaa !276
  %.not.i91 = icmp ugt i32 %.061, %i.en
  br i1 %.not.i91, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eo = load i64, ptr %i.ao, align 8, !tbaa !278
  %i.ep = sub i64 %i.eo, %i.dy
  %i.eq = icmp sgt i64 %i.ep, 0
  br i1 %i.eq, label %.critedge.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.er = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %5, i64 noundef 1, i32 noundef %.061) #33
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %.thread110, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.aa
  %.pre.i = load i64, ptr %i.am, align 8, !tbaa !279
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.z
  %i.et = phi i64 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.dy, %bb.z ] ; 5 uses
  %i.eu = load i32, ptr %i.ak, align 8, !tbaa !280
  %i.ev = load ptr, ptr %i.al, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.eu, label %bb.ad [
    i32 1, label %bb.ab
    i32 2, label %bb.ac
  ]

bb.ab:                                            ; preds = %.critedge.i
  %i.ew = trunc i32 %.061 to i8
  %i.ex = getelementptr i8, ptr %i.ev, i64 %i.et
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !205
  %.pre11.i = load i64, ptr %i.am, align 8, !tbaa !279
  br label %bb.ae

bb.ac:                                            ; preds = %.critedge.i
  %i.ey = trunc i32 %.061 to i16
  %i.ez = getelementptr [2 x i8], ptr %i.ev, i64 %i.et
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !208
  br label %bb.ae

bb.ad:                                            ; preds = %.critedge.i
  %i.fa = getelementptr [4 x i8], ptr %i.ev, i64 %i.et
  store i32 %.061, ptr %i.fa, align 4, !tbaa !7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.fb = phi i64 [ %.pre11.i, %bb.ab ], [ %i.et, %bb.ac ], [ %i.et, %bb.ad ]
  %i.fc = add i64 %i.fb, 1
  store i64 %i.fc, ptr %i.am, align 8, !tbaa !279
  %i.fd = getelementptr i8, ptr %i.dx, i64 4
  store ptr %i.fd, ptr %i.d, align 8, !tbaa !355
  br label %select.unfold.backedge

bb.af:                                            ; preds = %bb.x
  %i.fe = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.ff = ptrtoint ptr %i.dx to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 2 uses
  store i64 %i.fh, ptr %i.b, align 8, !tbaa !193
  %i.fi = add i64 %i.fh, 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.w, %bb.af, %bb.u
  %.sink = phi i64 [ %i.el, %bb.w ], [ %i.fi, %bb.af ], [ %i.ee, %bb.u ]
  %.059 = phi ptr [ @.str.74, %bb.w ], [ @.str.75, %bb.af ], [ @.str.73, %bb.u ]
  store i64 %.sink, ptr %i.c, align 8, !tbaa !193
  %i.fj = call fastcc i32 @unicode_decode_call_errorhandler_writer(ptr noundef %2, ptr noundef %i.f, ptr noundef nonnull %i.r, ptr noundef nonnull %.059, ptr noundef %i.a, ptr noundef %i.e, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.g, ptr noundef %i.d, ptr noundef nonnull %5)
  %.not87 = icmp eq i32 %i.fj, 0
  br i1 %.not87, label %select.unfold.backedge, label %.thread110

select.unfold.backedge:                           ; preds = %bb.ag, %bb.ae
  br label %select.unfold

bb.ah:                                            ; preds = %.thread106
  %.not88 = icmp eq ptr %4, null
  br i1 %.not88, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fk = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.fl = ptrtoint ptr %i.ef to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  store i64 %i.fn, ptr %4, align 8, !tbaa !193
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fo = load ptr, ptr %i.f, align 8, !tbaa !194 ; 4 uses
  %.not.i93 = icmp eq ptr %i.fo, null
  br i1 %.not.i93, label %Py_XDECREF.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !205 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.fp, -1
  br i1 %.not.i.i, label %bb.al, label %Py_XDECREF.exit

bb.al:                                            ; preds = %bb.ak
  %i.fq = add nsw i32 %i.fp, -1                   ; 2 uses
  store i32 %i.fq, ptr %i.fo, align 8, !tbaa !205
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.am, label %Py_XDECREF.exit

bb.am:                                            ; preds = %bb.al
  call void @_Py_Dealloc(ptr noundef nonnull %i.fo) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am
  %i.fs = load ptr, ptr %i.g, align 8, !tbaa !194 ; 4 uses
  %.not.i94 = icmp eq ptr %i.fs, null
  br i1 %.not.i94, label %Py_XDECREF.exit96, label %bb.an

bb.an:                                            ; preds = %Py_XDECREF.exit
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !205 ; 2 uses
  %.not.i.i95 = icmp sgt i32 %i.ft, -1
  br i1 %.not.i.i95, label %bb.ao, label %Py_XDECREF.exit96

bb.ao:                                            ; preds = %bb.an
  %i.fu = add nsw i32 %i.ft, -1                   ; 2 uses
  store i32 %i.fu, ptr %i.fs, align 8, !tbaa !205
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.ap, label %Py_XDECREF.exit96

bb.ap:                                            ; preds = %bb.ao
  call void @_Py_Dealloc(ptr noundef nonnull %i.fs) #33
  br label %Py_XDECREF.exit96

Py_XDECREF.exit96:                                ; preds = %Py_XDECREF.exit, %bb.an, %bb.ao, %bb.ap
  %i.fw = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %5) #33
  br label %Py_XDECREF.exit102

.thread110:                                       ; preds = %bb.aa, %bb.ag
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !194 ; 4 uses
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %5) #33
  %.not.i97 = icmp eq ptr %.pre, null
  br i1 %.not.i97, label %Py_XDECREF.exit99, label %bb.aq

bb.aq:                                            ; preds = %.thread110
  %i.fx = load i32, ptr %.pre, align 8, !tbaa !205 ; 2 uses
  %.not.i.i98 = icmp sgt i32 %i.fx, -1
  br i1 %.not.i.i98, label %bb.ar, label %Py_XDECREF.exit99

bb.ar:                                            ; preds = %bb.aq
  %i.fy = add nsw i32 %i.fx, -1                   ; 2 uses
  store i32 %i.fy, ptr %.pre, align 8, !tbaa !205
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.as, label %Py_XDECREF.exit99

bb.as:                                            ; preds = %bb.ar
  call void @_Py_Dealloc(ptr noundef nonnull %.pre) #33
  br label %Py_XDECREF.exit99

Py_XDECREF.exit99:                                ; preds = %.thread110.thread, %.thread110, %bb.aq, %bb.ar, %bb.as
  %i.ga = load ptr, ptr %i.g, align 8, !tbaa !194 ; 4 uses
  %.not.i100 = icmp eq ptr %i.ga, null
  br i1 %.not.i100, label %Py_XDECREF.exit102, label %bb.at

bb.at:                                            ; preds = %Py_XDECREF.exit99
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !205 ; 2 uses
  %.not.i.i101 = icmp sgt i32 %i.gb, -1
  br i1 %.not.i.i101, label %bb.au, label %Py_XDECREF.exit102

bb.au:                                            ; preds = %bb.at
  %i.gc = add nsw i32 %i.gb, -1                   ; 2 uses
  store i32 %i.gc, ptr %i.ga, align 8, !tbaa !205
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.av, label %Py_XDECREF.exit102

bb.av:                                            ; preds = %bb.au
  call void @_Py_Dealloc(ptr noundef nonnull %i.ga) #33
  br label %Py_XDECREF.exit102

Py_XDECREF.exit102:                               ; preds = %bb.j, %bb.i, %bb.av, %bb.au, %bb.at, %Py_XDECREF.exit99, %Py_XDECREF.exit96
  %.055 = phi ptr [ null, %bb.av ], [ %i.fw, %Py_XDECREF.exit96 ], [ null, %Py_XDECREF.exit99 ], [ null, %bb.at ], [ null, %bb.au ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.055
}

declare ptr @PyBytesWriter_Finish(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @unicode_encode_call_errorhandler(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef nonnull captures(none) %5, i64 noundef %6, i64 noundef %7, ptr noundef nonnull %8) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = load ptr, ptr %1, align 8, !tbaa !194
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyCodec_LookupError(ptr noundef %0) #33 ; 2 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !194
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Py_DECREF.exit45, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %4, i64 16
  %.val55 = load i64, ptr %i.f, align 8, !tbaa !207 ; 2 uses
  tail call fastcc void @make_encode_exception(ptr noundef %5, ptr noundef %2, ptr noundef %4, i64 noundef %6, i64 noundef %7, ptr noundef %3)
  %i.g = load ptr, ptr %5, align 8, !tbaa !194    ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %Py_DECREF.exit45, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !194
  %i.j = tail call ptr @PyObject_CallOneArg(ptr noundef %i.i, ptr noundef nonnull %i.g) #33 ; 18 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %Py_DECREF.exit45, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val51 = load ptr, ptr %i.l, align 8, !tbaa !197
  %i.m = getelementptr i8, ptr %.val51, i64 168
  %.val54 = load i64, ptr %i.m, align 8, !tbaa !198
  %i.n = and i64 %.val54, 67108864
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.o, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.180, i64 3)) #33
  %i.p = load i32, ptr %i.j, align 8, !tbaa !205  ; 2 uses
  %.not.i44 = icmp sgt i32 %i.p, -1
  br i1 %.not.i44, label %bb.g, label %Py_DECREF.exit45

bb.g:                                             ; preds = %bb.f
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.j, align 8, !tbaa !205
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %Py_DECREF.exit45

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #33
  br label %Py_DECREF.exit45

bb.i:                                             ; preds = %bb.e
  %i.s = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.180, ptr noundef nonnull %i.a, ptr noundef nonnull %8) #33
  %.not35 = icmp eq i32 %i.s, 0
  br i1 %.not35, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.t = load i32, ptr %i.j, align 8, !tbaa !205  ; 2 uses
  %.not.i42 = icmp sgt i32 %i.t, -1
  br i1 %.not.i42, label %bb.k, label %Py_DECREF.exit45

bb.k:                                             ; preds = %bb.j
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.j, align 8, !tbaa !205
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.l, label %Py_DECREF.exit45

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.j) #33
  br label %Py_DECREF.exit45

bb.m:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !194  ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val50 = load ptr, ptr %i.x, align 8, !tbaa !197
  %i.y = getelementptr i8, ptr %.val50, i64 168
  %.val53 = load i64, ptr %i.y, align 8, !tbaa !198
  %i.z = and i64 %.val53, 402653184
  %or.cond56 = icmp eq i64 %i.z, 0
  br i1 %or.cond56, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.aa = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.aa, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.180, i64 3)) #33
  %i.ab = load i32, ptr %i.j, align 8, !tbaa !205 ; 2 uses
  %.not.i40 = icmp sgt i32 %i.ab, -1
  br i1 %.not.i40, label %bb.o, label %Py_DECREF.exit45

bb.o:                                             ; preds = %bb.n
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.j, align 8, !tbaa !205
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %Py_DECREF.exit45

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.j) #33
  br label %Py_DECREF.exit45

bb.q:                                             ; preds = %bb.m
  %i.ae = load i64, ptr %8, align 8, !tbaa !193   ; 3 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ag = add i64 %i.ae, %.val55                  ; 2 uses
  store i64 %i.ag, ptr %8, align 8, !tbaa !193
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ah = phi i64 [ %i.ag, %bb.r ], [ %i.ae, %bb.q ] ; 3 uses
  %i.ai = icmp slt i64 %i.ah, 0
  %i.aj = icmp sgt i64 %i.ah, %.val55
  %or.cond = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ak = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !194
  %i.al = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ak, ptr noundef nonnull @.str.179, i64 noundef %i.ah) #33 ; 0 uses
  %i.am = load i32, ptr %i.j, align 8, !tbaa !205 ; 2 uses
  %.not.i38 = icmp sgt i32 %i.am, -1
  br i1 %.not.i38, label %bb.u, label %Py_DECREF.exit45

bb.u:                                             ; preds = %bb.t
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.j, align 8, !tbaa !205
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.v, label %Py_DECREF.exit45

bb.v:                                             ; preds = %bb.u
  call void @_Py_Dealloc(ptr noundef nonnull %i.j) #33
  br label %Py_DECREF.exit45

bb.w:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.w, align 8, !tbaa !205 ; 2 uses
  %i.aq = icmp ugt i32 %i.ap, -1073741825
  br i1 %i.aq, label %Py_INCREF.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ar = add nuw i32 %i.ap, 1
  store i32 %i.ar, ptr %i.w, align 8, !tbaa !205
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.w, %bb.x
  %i.as = load i32, ptr %i.j, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.as, -1
  br i1 %.not.i, label %bb.y, label %Py_DECREF.exit

bb.y:                                             ; preds = %Py_INCREF.exit
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.j, align 8, !tbaa !205
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.z, label %Py_DECREF.exit

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %i.j) #33
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_INCREF.exit, %bb.y, %bb.z
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !194
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

end_hunk_6
begin_hunk_7_@PyUnicode_DecodeUTF16Stateful:bb.a
  br i1 %.not53, label %bb.bi, label %.thread167

bb.bi:                                            ; preds = %bb.bh
  %i.oq = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.or = ptrtoint ptr %i.op to i64
  %i.os = ptrtoint ptr %i.oq to i64               ; 2 uses
  %i.ot = sub i64 %i.or, %i.os
  store i64 %i.ot, ptr %i.b, align 8, !tbaa !193
  %i.ou = load ptr, ptr %i.e, align 8, !tbaa !355
  %i.ov = ptrtoint ptr %i.ou to i64
  %i.ow = sub i64 %i.ov, %i.os
  br label %bb.br

bb.bj:                                            ; preds = %bb.bf
  %i.ox = getelementptr i8, ptr %i.of, i64 -2
  %i.oy = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = sub i64 %i.oz, %i.pa                    ; 2 uses
  store i64 %i.pb, ptr %i.b, align 8, !tbaa !193
  %i.pc = add i64 %i.pb, 2
  br label %bb.br

bb.bk:                                            ; preds = %bb.bf
  %i.pd = getelementptr i8, ptr %i.of, i64 -4
  %i.pe = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = sub i64 %i.pf, %i.pg                    ; 2 uses
  store i64 %i.ph, ptr %i.b, align 8, !tbaa !193
  %i.pi = add i64 %i.ph, 2
  br label %bb.br

bb.bl:                                            ; preds = %bb.bf
  %i.pj = load i32, ptr %i.y, align 4, !tbaa !276
  %.not.i149 = icmp ugt i32 %.1, %i.pj
  br i1 %.not.i149, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.pk = load i64, ptr %i.ar, align 8, !tbaa !278
  %i.pl = sub i64 %i.pk, %.sink
  %i.pm = icmp sgt i64 %i.pl, 0
  br i1 %i.pm, label %.critedge.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.pn = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %5, i64 noundef 1, i32 noundef %.1) #33
  %i.po = icmp slt i32 %i.pn, 0
  br i1 %i.po, label %.thread165, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.bn
  %.pre.i = load i64, ptr %i.am, align 8, !tbaa !279
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.bm
  %i.pp = phi i64 [ %.pre.i, %..critedge_crit_edge.i ], [ %.sink, %bb.bm ] ; 5 uses
  %i.pq = load i32, ptr %i.ak, align 8, !tbaa !280
  %i.pr = load ptr, ptr %i.al, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.pq, label %bb.bq [
    i32 1, label %bb.bo
    i32 2, label %bb.bp
  ]

bb.bo:                                            ; preds = %.critedge.i
  %i.ps = trunc i32 %.1 to i8
  %i.pt = getelementptr i8, ptr %i.pr, i64 %i.pp
  store i8 %i.ps, ptr %i.pt, align 1, !tbaa !205
  %.pre11.i = load i64, ptr %i.am, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit

bb.bp:                                            ; preds = %.critedge.i
  %i.pu = trunc i32 %.1 to i16
  %i.pv = getelementptr [2 x i8], ptr %i.pr, i64 %i.pp
  store i16 %i.pu, ptr %i.pv, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit

bb.bq:                                            ; preds = %.critedge.i
  %i.pw = getelementptr [4 x i8], ptr %i.pr, i64 %i.pp
  store i32 %.1, ptr %i.pw, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit

_PyUnicodeWriter_WriteCharInline.exit:            ; preds = %bb.bo, %bb.bp, %bb.bq
  %i.px = phi i64 [ %.pre11.i, %bb.bo ], [ %i.pp, %bb.bp ], [ %i.pp, %bb.bq ]
  %i.py = add i64 %i.px, 1
  store i64 %i.py, ptr %i.am, align 8, !tbaa !279
  br label %select.unfold

bb.br:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bg
  %.sink461 = phi i64 [ %i.pi, %bb.bk ], [ %i.pc, %bb.bj ], [ %i.ow, %bb.bi ], [ %i.oo, %bb.bg ]
  %.043 = phi ptr [ @.str.81, %bb.bk ], [ @.str.80, %bb.bj ], [ @.str.67, %bb.bi ], [ @.str.74, %bb.bg ]
  store i64 %.sink461, ptr %i.c, align 8, !tbaa !193
  %i.pz = call fastcc i32 @unicode_decode_call_errorhandler_writer(ptr noundef %2, ptr noundef %i.f, ptr noundef nonnull %i.r, ptr noundef nonnull %.043, ptr noundef %i.a, ptr noundef %i.e, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.g, ptr noundef %i.d, ptr noundef nonnull %5)
  %.not54 = icmp eq i32 %i.pz, 0
  br i1 %.not54, label %.select.unfold_crit_edge, label %.thread165

.select.unfold_crit_edge:                         ; preds = %bb.br
  %.pre349.pre = load ptr, ptr %i.d, align 8, !tbaa !355
  br label %select.unfold

select.unfold:                                    ; preds = %.select.unfold_crit_edge, %_PyUnicodeWriter_WriteCharInline.exit
  %.pre349 = phi ptr [ %.pre349.pre, %.select.unfold_crit_edge ], [ %i.of, %_PyUnicodeWriter_WriteCharInline.exit ]
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !355
  br label %bb.o

bb.bs:                                            ; preds = %.thread
  br i1 %.not53, label %bb.bt, label %.thread167

.thread167:                                       ; preds = %bb.bh, %bb.bs
  %i.qa = phi ptr [ %i.oh, %bb.bs ], [ %i.op, %bb.bh ]
  %i.qb = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = ptrtoint ptr %i.qb to i64
  %i.qe = sub i64 %i.qc, %i.qd
  store i64 %i.qe, ptr %4, align 8, !tbaa !193
  br label %bb.bt

bb.bt:                                            ; preds = %.thread167, %bb.bs
  %i.qf = load ptr, ptr %i.f, align 8, !tbaa !194 ; 4 uses
  %.not.i150 = icmp eq ptr %i.qf, null
  br i1 %.not.i150, label %Py_XDECREF.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !205 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.qg, -1
  br i1 %.not.i.i, label %bb.bv, label %Py_XDECREF.exit

bb.bv:                                            ; preds = %bb.bu
  %i.qh = add nsw i32 %i.qg, -1                   ; 2 uses
  store i32 %i.qh, ptr %i.qf, align 8, !tbaa !205
  %i.qi = icmp eq i32 %i.qh, 0
  br i1 %i.qi, label %bb.bw, label %Py_XDECREF.exit

bb.bw:                                            ; preds = %bb.bv
  call void @_Py_Dealloc(ptr noundef nonnull %i.qf) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.bt, %bb.bu, %bb.bv, %bb.bw
  %i.qj = load ptr, ptr %i.g, align 8, !tbaa !194 ; 4 uses
  %.not.i151 = icmp eq ptr %i.qj, null
  br i1 %.not.i151, label %Py_XDECREF.exit153, label %bb.bx

bb.bx:                                            ; preds = %Py_XDECREF.exit
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !205 ; 2 uses
  %.not.i.i152 = icmp sgt i32 %i.qk, -1
  br i1 %.not.i.i152, label %bb.by, label %Py_XDECREF.exit153

bb.by:                                            ; preds = %bb.bx
  %i.ql = add nsw i32 %i.qk, -1                   ; 2 uses
  store i32 %i.ql, ptr %i.qj, align 8, !tbaa !205
  %i.qm = icmp eq i32 %i.ql, 0
  br i1 %i.qm, label %bb.bz, label %Py_XDECREF.exit153

bb.bz:                                            ; preds = %bb.by
  call void @_Py_Dealloc(ptr noundef nonnull %i.qj) #33
  br label %Py_XDECREF.exit153

Py_XDECREF.exit153:                               ; preds = %Py_XDECREF.exit, %bb.bx, %bb.by, %bb.bz
  %i.qn = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %5) #33
  br label %Py_XDECREF.exit159

.thread165:                                       ; preds = %bb.bn, %bb.br
  %.pre352 = load ptr, ptr %i.f, align 8, !tbaa !194 ; 4 uses
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %5) #33
  %.not.i154 = icmp eq ptr %.pre352, null
  br i1 %.not.i154, label %Py_XDECREF.exit156, label %bb.ca

bb.ca:                                            ; preds = %.thread165
  %i.qo = load i32, ptr %.pre352, align 8, !tbaa !205 ; 2 uses
  %.not.i.i155 = icmp sgt i32 %i.qo, -1
  br i1 %.not.i.i155, label %bb.cb, label %Py_XDECREF.exit156

bb.cb:                                            ; preds = %bb.ca
  %i.qp = add nsw i32 %i.qo, -1                   ; 2 uses
  store i32 %i.qp, ptr %.pre352, align 8, !tbaa !205
  %i.qq = icmp eq i32 %i.qp, 0
  br i1 %i.qq, label %bb.cc, label %Py_XDECREF.exit156

bb.cc:                                            ; preds = %bb.cb
  call void @_Py_Dealloc(ptr noundef nonnull %.pre352) #33
  br label %Py_XDECREF.exit156

Py_XDECREF.exit156:                               ; preds = %.thread165.thread, %.thread165, %bb.ca, %bb.cb, %bb.cc
  %i.qr = load ptr, ptr %i.g, align 8, !tbaa !194 ; 4 uses
  %.not.i157 = icmp eq ptr %i.qr, null
  br i1 %.not.i157, label %Py_XDECREF.exit159, label %bb.cd

bb.cd:                                            ; preds = %Py_XDECREF.exit156
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !205 ; 2 uses
  %.not.i.i158 = icmp sgt i32 %i.qs, -1
  br i1 %.not.i.i158, label %bb.ce, label %Py_XDECREF.exit159

bb.ce:                                            ; preds = %bb.cd
  %i.qt = add nsw i32 %i.qs, -1                   ; 2 uses
  store i32 %i.qt, ptr %i.qr, align 8, !tbaa !205
  %i.qu = icmp eq i32 %i.qt, 0
  br i1 %i.qu, label %bb.cf, label %Py_XDECREF.exit159

bb.cf:                                            ; preds = %bb.ce
  call void @_Py_Dealloc(ptr noundef nonnull %i.qr) #33
  br label %Py_XDECREF.exit159

Py_XDECREF.exit159:                               ; preds = %bb.j, %bb.i, %bb.cf, %bb.ce, %bb.cd, %Py_XDECREF.exit156, %Py_XDECREF.exit153
  %.0 = phi ptr [ null, %bb.cf ], [ %i.qn, %Py_XDECREF.exit153 ], [ null, %Py_XDECREF.exit156 ], [ null, %bb.cd ], [ null, %bb.ce ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsUTF16String(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_PyUnicode_EncodeUTF16(ptr noundef %0, ptr noundef null, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyUnicode_GetNameCAPI() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 11864    ; 2 uses
  %i.d = load atomic ptr, ptr %i.c seq_cst, align 8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyCapsule_Import(ptr noundef nonnull @.str.83, i32 noundef 1) #33 ; 2 uses
  store atomic ptr %i.f, ptr %i.c seq_cst, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  ret ptr %.0
}

declare ptr @PyCapsule_Import(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyUnicode_DecodeUnicodeEscapeInternal2(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %6 = alloca %struct._PyUnicodeWriter, align 8   ; 19 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 27 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %0, ptr %i.b, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr null, ptr %i.d, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr null, ptr %i.e, align 8, !tbaa !194
  store i32 -1, ptr %4, align 4, !tbaa !7
  store ptr null, ptr %5, align 8, !tbaa !355
  %i.i = icmp eq i64 %1, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not110 = icmp eq ptr %3, null
  br i1 %.not110, label %Py_XDECREF.exit167, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %3, align 8, !tbaa !193
  br label %Py_XDECREF.exit167

bb.d:                                             ; preds = %bb.a
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %6) #33
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i64 %1, ptr %i.j, align 8, !tbaa !346
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 6 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !276
  %i.m = icmp ugt i32 %i.l, 126
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !278
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !279
  %i.r = sub i64 %i.o, %i.q
  %.not = icmp sgt i64 %1, %i.r
  br i1 %.not, label %bb.f, label %.critedge112

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.s = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %6, i64 noundef %1, i32 noundef 127) #33
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %.loopexit, label %.critedge112

.critedge112:                                     ; preds = %bb.e, %bb.f
  %i.u = getelementptr i8, ptr %0, i64 %1         ; 3 uses
  store ptr %i.u, ptr %i.c, align 8, !tbaa !355
  %i.v = icmp ult ptr %0, %i.u
  br i1 %i.v, label %.lr.ph190, label %Py_XDECREF.exit

.lr.ph190:                                        ; preds = %.critedge112
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 20 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 20 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 45 uses
  %i.z = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %.not107 = icmp eq ptr %3, null
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph190, %.backedge
  %i.aa = phi ptr [ %i.u, %.lr.ph190 ], [ %i.nn, %.backedge ] ; 22 uses
  %i.ab = phi ptr [ %0, %.lr.ph190 ], [ %i.nm, %.backedge ] ; 14 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 1      ; 6 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !355
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !205 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.ae = zext i8 %i.ad to i32                    ; 4 uses
  %.not94 = icmp eq i8 %i.ad, 92
  br i1 %.not94, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.k, align 4, !tbaa !276
  %.not109 = icmp ult i32 %i.af, %i.ae
  br i1 %.not109, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.w, align 8, !tbaa !280
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !281 ; 3 uses
  %i.ai = load i64, ptr %i.y, align 8, !tbaa !279 ; 4 uses
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.y, align 8, !tbaa !279
  switch i32 %i.ag, label %bb.l [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.ah, i64 %i.ai
  store i8 %i.ad, ptr %i.ak, align 1, !tbaa !205
  br label %.backedge, !llvm.loop !506

bb.k:                                             ; preds = %bb.i
  %i.al = zext i8 %i.ad to i16
  %i.am = getelementptr [2 x i8], ptr %i.ah, i64 %i.ai
  store i16 %i.al, ptr %i.am, align 2, !tbaa !208
  br label %.backedge, !llvm.loop !506

bb.l:                                             ; preds = %bb.i
  %i.an = getelementptr [4 x i8], ptr %i.ah, i64 %i.ai
  store i32 %i.ae, ptr %i.an, align 4, !tbaa !7
  br label %.backedge, !llvm.loop !506

bb.m:                                             ; preds = %bb.h
  %i.ao = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %6, i64 noundef 1, i32 noundef %i.ae) #33
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %.loopexit.sink.split, label %.critedge.i

.critedge.i:                                      ; preds = %bb.m
  %.pre.i = load i64, ptr %i.y, align 8, !tbaa !279 ; 5 uses
  %i.aq = load i32, ptr %i.w, align 8, !tbaa !280
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.aq, label %bb.p [
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %.critedge.i
  %i.as = getelementptr i8, ptr %i.ar, i64 %.pre.i
  store i8 %i.ad, ptr %i.as, align 1, !tbaa !205
  %.pre11.i = load i64, ptr %i.y, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit

bb.o:                                             ; preds = %.critedge.i
  %i.at = zext i8 %i.ad to i16
  %i.au = getelementptr [2 x i8], ptr %i.ar, i64 %.pre.i
  store i16 %i.at, ptr %i.au, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit

bb.p:                                             ; preds = %.critedge.i
  %i.av = getelementptr [4 x i8], ptr %i.ar, i64 %.pre.i
  store i32 %i.ae, ptr %i.av, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit

_PyUnicodeWriter_WriteCharInline.exit:            ; preds = %bb.n, %bb.o, %bb.p
  %i.aw = phi i64 [ %.pre11.i, %bb.n ], [ %.pre.i, %bb.o ], [ %.pre.i, %bb.p ]
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.y, align 8, !tbaa !279
  br label %.backedge, !llvm.loop !506

bb.q:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !355 ; 3 uses
  %i.az = ptrtoint ptr %i.ac to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = xor i64 %i.ba, -1
  %i.bc = add i64 %i.bb, %i.az                    ; 2 uses
  store i64 %i.bc, ptr %i.g, align 8, !tbaa !193
  %.not95 = icmp ult ptr %i.ac, %i.aa
  br i1 %.not95, label %bb.r, label %.critedge
end_hunk_7
begin_hunk_8_@_PyUnicode_DecodeUnicodeEscapeInternal2:bb.a

bb.fk:                                            ; preds = %bb.fj
  %i.ml = getelementptr i8, ptr %i.mi, i64 %i.mj
  store i8 %i.be, ptr %i.ml, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit.thread247, !llvm.loop !506

bb.fl:                                            ; preds = %bb.fj
  %i.mm = zext i8 %i.be to i16
  %i.mn = getelementptr [2 x i8], ptr %i.mi, i64 %i.mj
  store i16 %i.mm, ptr %i.mn, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit.thread247, !llvm.loop !506

bb.fm:                                            ; preds = %bb.fj
  %i.mo = getelementptr [4 x i8], ptr %i.mi, i64 %i.mj
  store i32 %i.bf, ptr %i.mo, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit.thread247, !llvm.loop !506

bb.fn:                                            ; preds = %PyUnicode_WRITE.exit147
  %i.mp = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %6, i64 noundef 1, i32 noundef %i.bf) #33
  %i.mq = icmp slt i32 %i.mp, 0
  br i1 %i.mq, label %.loopexit.loopexit, label %.critedge.i153

.critedge.i153:                                   ; preds = %bb.fn
  %.pre.i152 = load i64, ptr %i.y, align 8, !tbaa !279 ; 5 uses
  %i.mr = load i32, ptr %i.w, align 8, !tbaa !280
  %i.ms = load ptr, ptr %i.x, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.mr, label %bb.fq [
    i32 1, label %bb.fo
    i32 2, label %bb.fp
  ]

bb.fo:                                            ; preds = %.critedge.i153
  %i.mt = getelementptr i8, ptr %i.ms, i64 %.pre.i152
  store i8 %i.be, ptr %i.mt, align 1, !tbaa !205
  %.pre11.i156 = load i64, ptr %i.y, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit157

bb.fp:                                            ; preds = %.critedge.i153
  %i.mu = zext i8 %i.be to i16
  %i.mv = getelementptr [2 x i8], ptr %i.ms, i64 %.pre.i152
  store i16 %i.mu, ptr %i.mv, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit157

bb.fq:                                            ; preds = %.critedge.i153
  %i.mw = getelementptr [4 x i8], ptr %i.ms, i64 %.pre.i152
  store i32 %i.bf, ptr %i.mw, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit157

_PyUnicodeWriter_WriteCharInline.exit157:         ; preds = %bb.fo, %bb.fp, %bb.fq
  %i.mx = phi i64 [ %.pre11.i156, %bb.fo ], [ %.pre.i152, %bb.fp ], [ %.pre.i152, %bb.fq ]
  %i.my = add i64 %i.mx, 1
  store i64 %i.my, ptr %i.y, align 8, !tbaa !279
  br label %PyUnicode_WRITE.exit.thread247, !llvm.loop !506

.critedge.sink.split:                             ; preds = %bb.es, %bb.bx, %bb.ce, %bb.cm, %bb.ct, %bb.db, %bb.di, %bb.dp, %bb.dw, %bb.er
  %storemerge.lcssa.sink = phi ptr [ %i.iy, %bb.dw ], [ %i.kv, %bb.er ], [ %i.bd, %bb.bx ], [ %i.fy, %bb.ce ], [ %i.gl, %bb.cm ], [ %i.gy, %bb.ct ], [ %i.hl, %bb.db ], [ %i.hy, %bb.di ], [ %i.il, %bb.dp ], [ %scevgep, %bb.es ] ; 2 uses
  %.ph = phi ptr [ %i.aa, %bb.bx ], [ %i.kr, %bb.er ], [ %i.aa, %bb.dw ], [ %i.aa, %bb.dp ], [ %i.aa, %bb.di ], [ %i.aa, %bb.db ], [ %i.aa, %bb.ct ], [ %i.aa, %bb.cm ], [ %i.aa, %bb.ce ], [ %i.kr, %bb.es ]
  %.3.ph = phi ptr [ %.064, %bb.bx ], [ @.str.90, %bb.er ], [ %.064, %bb.dw ], [ %.064, %bb.dp ], [ %.064, %bb.di ], [ %.064, %bb.db ], [ %.064, %bb.ct ], [ %.064, %bb.cm ], [ %.064, %bb.ce ], [ @.str.90, %bb.es ]
  store ptr %storemerge.lcssa.sink, ptr %i.a, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.q, %_PyUnicode_GetNameCAPI.exit.thread
  %i.mz = phi ptr [ %i.aa, %bb.q ], [ %i.kr, %_PyUnicode_GetNameCAPI.exit.thread ], [ %.ph, %.critedge.sink.split ]
  %i.na = phi ptr [ %i.ac, %bb.q ], [ %i.kp, %_PyUnicode_GetNameCAPI.exit.thread ], [ %storemerge.lcssa.sink, %.critedge.sink.split ]
  %.3 = phi ptr [ @.str.84, %bb.q ], [ @.str.90, %_PyUnicode_GetNameCAPI.exit.thread ], [ %.3.ph, %.critedge.sink.split ]
  br i1 %.not107, label %.critedge.thread173, label %PyUnicode_WRITE.exit

.critedge.thread173.loopexit:                     ; preds = %bb.dz, %bb.ds, %bb.dl, %bb.de, %bb.cw, %bb.cp, %bb.ch, %bb.cc
  %.lcssa272 = phi ptr [ %i.bd, %bb.cc ], [ %i.fy, %bb.ch ], [ %i.gl, %bb.cp ], [ %i.gy, %bb.cw ], [ %i.hl, %bb.de ], [ %i.hy, %bb.dl ], [ %i.il, %bb.ds ], [ %i.iy, %bb.dz ] ; 2 uses
  store ptr %.lcssa272, ptr %i.a, align 8
  br label %.critedge.thread173

.critedge.thread173:                              ; preds = %.critedge.thread173.loopexit, %bb.ev, %bb.eu, %bb.et, %bb.ee, %.critedge, %bb.eq
  %i.nb = phi ptr [ %i.mz, %.critedge ], [ %i.kr, %bb.eu ], [ %i.kr, %bb.eq ], [ %i.aa, %bb.ee ], [ %i.kr, %bb.ev ], [ %i.kr, %bb.et ], [ %i.aa, %.critedge.thread173.loopexit ]
  %i.nc = phi ptr [ %i.na, %.critedge ], [ %i.ld, %bb.eu ], [ %i.kp, %bb.eq ], [ %.lcssa274, %bb.ee ], [ %i.ld, %bb.ev ], [ %i.kv, %bb.et ], [ %.lcssa272, %.critedge.thread173.loopexit ]
  %.4 = phi ptr [ %.3, %.critedge ], [ @.str.91, %bb.eu ], [ @.str.90, %bb.eq ], [ @.str.88, %bb.ee ], [ @.str.91, %bb.ev ], [ @.str.90, %bb.et ], [ %.064, %.critedge.thread173.loopexit ]
  %i.nd = load ptr, ptr %i.b, align 8, !tbaa !355
  %i.ne = ptrtoint ptr %i.nc to i64               ; 2 uses
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = sub i64 %i.ne, %i.nf
  store i64 %i.ng, ptr %i.h, align 8, !tbaa !193
  %i.nh = ptrtoint ptr %i.nb to i64
  %i.ni = sub i64 %i.nh, %i.ne
  %i.nj = load i64, ptr %i.y, align 8, !tbaa !279
  %i.nk = add i64 %i.ni, %i.nj
  store i64 %i.nk, ptr %i.j, align 8, !tbaa !346
  %i.nl = call fastcc i32 @unicode_decode_call_errorhandler_writer(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.92, ptr noundef %.4, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.e, ptr noundef %i.a, ptr noundef nonnull %6)
  %.not108 = icmp eq i32 %i.nl, 0
  br i1 %.not108, label %PyUnicode_WRITE.exit.thread247, label %.loopexit.loopexit

PyUnicode_WRITE.exit.thread247:                   ; preds = %bb.eh, %bb.v, %bb.z, %bb.ad, %bb.ah, %bb.al, %bb.ap, %bb.at, %bb.ax, %bb.bb, %bb.bf, %bb.r, %bb.bo, %bb.fk, %bb.t, %bb.u, %bb.x, %bb.y, %bb.ab, %bb.ac, %bb.af, %bb.ag, %bb.aj, %bb.ak, %bb.an, %bb.ao, %bb.ar, %bb.as, %bb.av, %bb.aw, %bb.az, %bb.ba, %bb.bd, %bb.be, %_PyUnicodeWriter_WriteCharInline.exit134, %bb.bq, %bb.bp, %_PyUnicodeWriter_WriteCharInline.exit144, %bb.ej, %bb.ei, %_PyUnicodeWriter_WriteCharInline.exit157, %bb.fm, %bb.fl, %bb.fa, %bb.ez, %bb.ey, %bb.fb, %.critedge.thread173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  br label %.backedge

PyUnicode_WRITE.exit:                             ; preds = %.critedge
  store i64 %i.bc, ptr %3, align 8, !tbaa !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  br label %PyUnicode_WRITE.exit._crit_edge

.backedge:                                        ; preds = %bb.k, %bb.l, %_PyUnicodeWriter_WriteCharInline.exit, %bb.j, %PyUnicode_WRITE.exit.thread247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  %i.nm = load ptr, ptr %i.a, align 8, !tbaa !355 ; 2 uses
  %i.nn = load ptr, ptr %i.c, align 8, !tbaa !355 ; 2 uses
  %i.no = icmp ult ptr %i.nm, %i.nn
  br i1 %i.no, label %bb.g, label %PyUnicode_WRITE.exit._crit_edge, !llvm.loop !506

PyUnicode_WRITE.exit._crit_edge:                  ; preds = %.backedge, %PyUnicode_WRITE.exit
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !194 ; 4 uses
  %.not.i158 = icmp eq ptr %.pre, null
  br i1 %.not.i158, label %Py_XDECREF.exit, label %bb.fr

bb.fr:                                            ; preds = %PyUnicode_WRITE.exit._crit_edge
  %i.np = load i32, ptr %.pre, align 8, !tbaa !205 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.np, -1
  br i1 %.not.i.i, label %bb.fs, label %Py_XDECREF.exit

bb.fs:                                            ; preds = %bb.fr
  %i.nq = add nsw i32 %i.np, -1                   ; 2 uses
  store i32 %i.nq, ptr %.pre, align 8, !tbaa !205
  %i.nr = icmp eq i32 %i.nq, 0
  br i1 %i.nr, label %bb.ft, label %Py_XDECREF.exit

bb.ft:                                            ; preds = %bb.fs
  call void @_Py_Dealloc(ptr noundef nonnull %.pre) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %.critedge112, %PyUnicode_WRITE.exit._crit_edge, %bb.fr, %bb.fs, %bb.ft
  %i.ns = load ptr, ptr %i.e, align 8, !tbaa !194 ; 4 uses
  %.not.i159 = icmp eq ptr %i.ns, null
  br i1 %.not.i159, label %Py_XDECREF.exit161, label %bb.fu

bb.fu:                                            ; preds = %Py_XDECREF.exit
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !205 ; 2 uses
  %.not.i.i160 = icmp sgt i32 %i.nt, -1
  br i1 %.not.i.i160, label %bb.fv, label %Py_XDECREF.exit161

bb.fv:                                            ; preds = %bb.fu
  %i.nu = add nsw i32 %i.nt, -1                   ; 2 uses
  store i32 %i.nu, ptr %i.ns, align 8, !tbaa !205
  %i.nv = icmp eq i32 %i.nu, 0
  br i1 %i.nv, label %bb.fw, label %Py_XDECREF.exit161

bb.fw:                                            ; preds = %bb.fv
  call void @_Py_Dealloc(ptr noundef nonnull %i.ns) #33
  br label %Py_XDECREF.exit161

Py_XDECREF.exit161:                               ; preds = %Py_XDECREF.exit, %bb.fu, %bb.fv, %bb.fw
  %i.nw = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %6) #33
  br label %Py_XDECREF.exit167

.loopexit.loopexit:                               ; preds = %.critedge.thread173, %bb.fb, %bb.fn, %bb.br, %bb.ek, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.m, %.loopexit.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.f
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %6) #33
  %i.nx = load ptr, ptr %i.d, align 8, !tbaa !194 ; 4 uses
  %.not.i162 = icmp eq ptr %i.nx, null
  br i1 %.not.i162, label %Py_XDECREF.exit164, label %bb.fx

bb.fx:                                            ; preds = %.loopexit
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !205 ; 2 uses
  %.not.i.i163 = icmp sgt i32 %i.ny, -1
  br i1 %.not.i.i163, label %bb.fy, label %Py_XDECREF.exit164

bb.fy:                                            ; preds = %bb.fx
  %i.nz = add nsw i32 %i.ny, -1                   ; 2 uses
  store i32 %i.nz, ptr %i.nx, align 8, !tbaa !205
  %i.oa = icmp eq i32 %i.nz, 0
  br i1 %i.oa, label %bb.fz, label %Py_XDECREF.exit164

bb.fz:                                            ; preds = %bb.fy
  call void @_Py_Dealloc(ptr noundef nonnull %i.nx) #33
  br label %Py_XDECREF.exit164

Py_XDECREF.exit164:                               ; preds = %.loopexit, %bb.fx, %bb.fy, %bb.fz
  %i.ob = load ptr, ptr %i.e, align 8, !tbaa !194 ; 4 uses
  %.not.i165 = icmp eq ptr %i.ob, null
  br i1 %.not.i165, label %Py_XDECREF.exit167, label %bb.ga

bb.ga:                                            ; preds = %Py_XDECREF.exit164
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !205 ; 2 uses
  %.not.i.i166 = icmp sgt i32 %i.oc, -1
  br i1 %.not.i.i166, label %bb.gb, label %Py_XDECREF.exit167

bb.gb:                                            ; preds = %bb.ga
  %i.od = add nsw i32 %i.oc, -1                   ; 2 uses
  store i32 %i.od, ptr %i.ob, align 8, !tbaa !205
  %i.oe = icmp eq i32 %i.od, 0
  br i1 %i.oe, label %bb.gc, label %Py_XDECREF.exit167

bb.gc:                                            ; preds = %bb.gb
  call void @_Py_Dealloc(ptr noundef nonnull %i.ob) #33
  br label %Py_XDECREF.exit167

Py_XDECREF.exit167:                               ; preds = %bb.c, %bb.b, %bb.gc, %bb.gb, %bb.ga, %Py_XDECREF.exit164, %Py_XDECREF.exit161
  %.0 = phi ptr [ null, %bb.gb ], [ %i.nw, %Py_XDECREF.exit161 ], [ null, %bb.gc ], [ null, %Py_XDECREF.exit164 ], [ null, %bb.ga ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyUnicode_DecodeUnicodeEscapeStateful(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.c = call ptr @_PyUnicode_DecodeUnicodeEscapeInternal2(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit11, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !7    ; 4 uses
  %.not = icmp eq i32 %i.e, -1
  br i1 %.not, label %Py_DECREF.exit11, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %i.e, 255
  %i.g = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !194 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 (ptr, i64, ptr, ...) @PyErr_WarnFormat(ptr noundef %i.g, i64 noundef 1, ptr noundef nonnull @.str.93, i32 noundef %i.e) #33
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %Py_DECREF.exit11

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.c, align 8, !tbaa !205  ; 2 uses
  %.not.i10 = icmp sgt i32 %i.j, -1
  br i1 %.not.i10, label %bb.f, label %Py_DECREF.exit11

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !205
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %Py_DECREF.exit11.sink.split, label %Py_DECREF.exit11

bb.g:                                             ; preds = %bb.c
  %i.m = tail call i32 (ptr, i64, ptr, ...) @PyErr_WarnFormat(ptr noundef %i.g, i64 noundef 1, ptr noundef nonnull @.str.94, i32 noundef %i.e) #33
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %Py_DECREF.exit11

bb.h:                                             ; preds = %bb.g
  %i.o = load i32, ptr %i.c, align 8, !tbaa !205  ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit11

bb.i:                                             ; preds = %bb.h
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.c, align 8, !tbaa !205
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %Py_DECREF.exit11.sink.split, label %Py_DECREF.exit11

Py_DECREF.exit11.sink.split:                      ; preds = %bb.i, %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #33
  br label %Py_DECREF.exit11

Py_DECREF.exit11:                                 ; preds = %Py_DECREF.exit11.sink.split, %bb.i, %bb.h, %bb.f, %bb.e, %bb.b, %bb.g, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.i ], [ %i.c, %bb.b ], [ null, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %bb.g ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.h ], [ null, %Py_DECREF.exit11.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeUnicodeEscape(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_PyUnicode_DecodeUnicodeEscapeStateful(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsUnicodeEscapeString(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val78 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val78, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val79 = load i64, ptr %i.e, align 8, !tbaa !207 ; 5 uses
  %i.f = icmp eq i64 %.val79, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @Py_GetConstant(i32 noundef 8) #33
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = lshr i32 %i.i, 2
  %i.k = and i32 %i.j, 7                          ; 2 uses
  %i.l = and i32 %i.i, 32
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = and i32 %i.i, 64
  %.not.i.i = icmp eq i32 %i.m, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.n, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %.0.i.i, %bb.f ], [ %.val4.i, %bb.g ] ; 3 uses
  %i.o = shl nuw nsw i32 %i.k, 1
  %i.p = add nuw nsw i32 %i.o, 2
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = udiv i64 9223372036854775807, %i.q
  %i.s = icmp sgt i64 %.val79, %i.r
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_PyUnicode_DATA.exit
  %i.t = tail call ptr @PyErr_NoMemory() #33
  br label %bb.z

bb.i:                                             ; preds = %_PyUnicode_DATA.exit
  %i.u = mul i64 %.val79, %i.q
  %i.v = tail call ptr @PyBytesWriter_Create(i64 noundef %i.u) #33 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.z, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.v) #33 ; 2 uses
  %i.y = icmp sgt i64 %.val79, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.y, %bb.j
  %.072.lcssa = phi ptr [ %i.x, %bb.j ], [ %.173, %bb.y ]
  %i.z = tail call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.v, ptr noundef %.072.lcssa) #33
  br label %bb.z

.lr.ph:                                           ; preds = %bb.j, %bb.y
  %.07184 = phi i64 [ %i.dw, %bb.y ], [ 0, %bb.j ] ; 4 uses
  %.07283 = phi ptr [ %.173, %bb.y ], [ %i.x, %bb.j ] ; 25 uses
  switch i32 %i.k, label %bb.l [
    i32 1, label %PyUnicode_READ.exit.thread
    i32 2, label %bb.k
  ]

PyUnicode_READ.exit.thread:                       ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %.0.i, i64 %.07184
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !205
  %i.ac = zext i8 %i.ab to i32
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph
  %i.ad = getelementptr [2 x i8], ptr %.0.i, i64 %.07184
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !208
  %i.af = zext i16 %i.ae to i32
  br label %PyUnicode_READ.exit

bb.l:                                             ; preds = %.lr.ph
  %i.ag = getelementptr [4 x i8], ptr %.0.i, i64 %.07184
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.k, %bb.l
  %.0.i80 = phi i32 [ %i.ah, %bb.l ], [ %i.af, %bb.k ] ; 13 uses
  %i.ai = icmp ult i32 %.0.i80, 256
  br i1 %i.ai, label %bb.m, label %bb.v

bb.m:                                             ; preds = %PyUnicode_READ.exit.thread, %PyUnicode_READ.exit
  %.0.i8082 = phi i32 [ %i.ac, %PyUnicode_READ.exit.thread ], [ %.0.i80, %PyUnicode_READ.exit ] ; 6 uses
  %i.aj = add nsw i32 %.0.i8082, -32
  %or.cond = icmp ult i32 %i.aj, 95
  br i1 %or.cond, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not77 = icmp eq i32 %.0.i8082, 92
  br i1 %.not77, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = trunc nuw nsw i32 %.0.i8082 to i8
  %i.al = getelementptr i8, ptr %.07283, i64 1
  store i8 %i.ak, ptr %.07283, align 1, !tbaa !205
  br label %bb.y

end_hunk_8
begin_hunk_9_@_PyUnicode_DecodeRawUnicodeEscapeStateful:bb.a
bb.cn:                                            ; preds = %bb.cm
  %i.ge = load i32, ptr %i.w, align 8, !tbaa !280
  %i.gf = load ptr, ptr %i.x, align 8, !tbaa !281 ; 3 uses
  %i.gg = load i64, ptr %i.y, align 8, !tbaa !279 ; 4 uses
  %i.gh = add i64 %i.gg, 1
  store i64 %i.gh, ptr %i.y, align 8, !tbaa !279
  switch i32 %i.ge, label %bb.cq [
    i32 1, label %bb.co
    i32 2, label %bb.cp
  ]

bb.co:                                            ; preds = %bb.cn
  %i.gi = trunc i32 %.158.lcssa to i8
  %i.gj = getelementptr i8, ptr %i.gf, i64 %i.gg
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !205
  br label %PyUnicode_WRITE.exit.thread157, !llvm.loop !511

bb.cp:                                            ; preds = %bb.cn
  %i.gk = trunc i32 %.158.lcssa to i16
  %i.gl = getelementptr [2 x i8], ptr %i.gf, i64 %i.gg
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !208
  br label %PyUnicode_WRITE.exit.thread157, !llvm.loop !511

bb.cq:                                            ; preds = %bb.cn
  %i.gm = getelementptr [4 x i8], ptr %i.gf, i64 %i.gg
  store i32 %.158.lcssa, ptr %i.gm, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit.thread157, !llvm.loop !511

bb.cr:                                            ; preds = %bb.cm
  %i.gn = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 1, i32 noundef %.158.lcssa) #33
  %i.go = icmp slt i32 %i.gn, 0
  br i1 %i.go, label %PyUnicode_WRITE.exit.thread160, label %.critedge.i98

.critedge.i98:                                    ; preds = %bb.cr
  %.pre.i97 = load i64, ptr %i.y, align 8, !tbaa !279 ; 5 uses
  %i.gp = load i32, ptr %i.w, align 8, !tbaa !280
  %i.gq = load ptr, ptr %i.x, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.gp, label %bb.cu [
    i32 1, label %bb.cs
    i32 2, label %bb.ct
  ]

bb.cs:                                            ; preds = %.critedge.i98
  %i.gr = trunc i32 %.158.lcssa to i8
  %i.gs = getelementptr i8, ptr %i.gq, i64 %.pre.i97
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !205
  %.pre11.i101 = load i64, ptr %i.y, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit102

bb.ct:                                            ; preds = %.critedge.i98
  %i.gt = trunc i32 %.158.lcssa to i16
  %i.gu = getelementptr [2 x i8], ptr %i.gq, i64 %.pre.i97
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit102

bb.cu:                                            ; preds = %.critedge.i98
  %i.gv = getelementptr [4 x i8], ptr %i.gq, i64 %.pre.i97
  store i32 %.158.lcssa, ptr %i.gv, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit102

_PyUnicodeWriter_WriteCharInline.exit102:         ; preds = %bb.cs, %bb.ct, %bb.cu
  %i.gw = phi i64 [ %.pre11.i101, %bb.cs ], [ %.pre.i97, %bb.ct ], [ %.pre.i97, %bb.cu ]
  %i.gx = add i64 %i.gw, 1
  store i64 %i.gx, ptr %i.y, align 8, !tbaa !279
  br label %PyUnicode_WRITE.exit.thread157, !llvm.loop !511

.loopexit:                                        ; preds = %bb.ce, %bb.bx, %bb.bq, %bb.bj, %bb.bb, %bb.au, %bb.an, %bb.ag
  %.lcssa = phi ptr [ %i.bd, %bb.ag ], [ %i.cp, %bb.an ], [ %i.dc, %bb.au ], [ %i.dp, %bb.bb ], [ %i.ec, %bb.bj ], [ %i.ep, %bb.bq ], [ %i.fc, %bb.bx ], [ %i.fp, %bb.ce ] ; 2 uses
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %.loopexit, %bb.r
  %i.gy = phi ptr [ %i.ab, %bb.r ], [ %.lcssa, %.loopexit ]
  %.1 = phi ptr [ @.str.84, %bb.r ], [ %.0, %.loopexit ]
  br i1 %i.v, label %PyUnicode_WRITE.exit, label %bb.cw

.loopexit117:                                     ; preds = %bb.ch, %bb.ca, %bb.bt, %bb.bm, %bb.be, %bb.ax, %bb.aq, %bb.al
  %.lcssa172 = phi ptr [ %i.bd, %bb.al ], [ %i.cp, %bb.aq ], [ %i.dc, %bb.ax ], [ %i.dp, %bb.be ], [ %i.ec, %bb.bm ], [ %i.ep, %bb.bt ], [ %i.fc, %bb.ca ], [ %i.fp, %bb.ch ] ; 2 uses
  store ptr %.lcssa172, ptr %i.a, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %.loopexit117, %bb.cl, %bb.cv
  %i.gz = phi ptr [ %i.gy, %bb.cv ], [ %scevgep127, %bb.cl ], [ %.lcssa172, %.loopexit117 ]
  %.2 = phi ptr [ %.1, %bb.cv ], [ @.str.95, %bb.cl ], [ %.0, %.loopexit117 ]
  %i.ha = ptrtoint ptr %i.gz to i64               ; 2 uses
  %i.hb = sub i64 %i.ha, %i.ba
  store i64 %i.hb, ptr %i.g, align 8, !tbaa !193
  %i.hc = ptrtoint ptr %i.z to i64
  %i.hd = sub i64 %i.hc, %i.ha
  %i.he = load i64, ptr %i.y, align 8, !tbaa !279
  %i.hf = add i64 %i.hd, %i.he
  store i64 %i.hf, ptr %i.i, align 8, !tbaa !346
  %i.hg = call fastcc i32 @unicode_decode_call_errorhandler_writer(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @.str.96, ptr noundef %.2, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.e, ptr noundef %i.a, ptr noundef nonnull %4)
  %.not79 = icmp eq i32 %i.hg, 0
  br i1 %.not79, label %PyUnicode_WRITE.exit.thread157, label %PyUnicode_WRITE.exit.thread160

PyUnicode_WRITE.exit.thread157:                   ; preds = %bb.z, %bb.co, %_PyUnicodeWriter_WriteCharInline.exit92, %bb.ab, %bb.aa, %_PyUnicodeWriter_WriteCharInline.exit102, %bb.cq, %bb.cp, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  br label %.backedge

PyUnicode_WRITE.exit.thread160:                   ; preds = %bb.cw, %bb.ac, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  br label %PyUnicode_WRITE.exit.thread

PyUnicode_WRITE.exit:                             ; preds = %bb.cv
  store i64 %i.bc, ptr %3, align 8, !tbaa !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  br label %PyUnicode_WRITE.exit._crit_edge

.backedge:                                        ; preds = %bb.l, %bb.m, %_PyUnicodeWriter_WriteCharInline.exit, %bb.k, %PyUnicode_WRITE.exit.thread157
  %i.hh = load ptr, ptr %i.a, align 8, !tbaa !355 ; 2 uses
  %i.hi = load ptr, ptr %i.c, align 8, !tbaa !355 ; 2 uses
  %i.hj = icmp ult ptr %i.hh, %i.hi
  br i1 %i.hj, label %bb.g, label %PyUnicode_WRITE.exit._crit_edge, !llvm.loop !511

PyUnicode_WRITE.exit._crit_edge:                  ; preds = %.backedge, %PyUnicode_WRITE.exit
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !194 ; 4 uses
  %.not.i103 = icmp eq ptr %.pre, null
  br i1 %.not.i103, label %Py_XDECREF.exit, label %bb.cx

bb.cx:                                            ; preds = %PyUnicode_WRITE.exit._crit_edge
  %i.hk = load i32, ptr %.pre, align 8, !tbaa !205 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.hk, -1
  br i1 %.not.i.i, label %bb.cy, label %Py_XDECREF.exit

bb.cy:                                            ; preds = %bb.cx
  %i.hl = add nsw i32 %i.hk, -1                   ; 2 uses
  store i32 %i.hl, ptr %.pre, align 8, !tbaa !205
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.cz, label %Py_XDECREF.exit

bb.cz:                                            ; preds = %bb.cy
  call void @_Py_Dealloc(ptr noundef nonnull %.pre) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %.critedge, %PyUnicode_WRITE.exit._crit_edge, %bb.cx, %bb.cy, %bb.cz
  %i.hn = load ptr, ptr %i.e, align 8, !tbaa !194 ; 4 uses
  %.not.i104 = icmp eq ptr %i.hn, null
  br i1 %.not.i104, label %Py_XDECREF.exit106, label %bb.da

bb.da:                                            ; preds = %Py_XDECREF.exit
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !205 ; 2 uses
  %.not.i.i105 = icmp sgt i32 %i.ho, -1
  br i1 %.not.i.i105, label %bb.db, label %Py_XDECREF.exit106

bb.db:                                            ; preds = %bb.da
  %i.hp = add nsw i32 %i.ho, -1                   ; 2 uses
  store i32 %i.hp, ptr %i.hn, align 8, !tbaa !205
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.dc, label %Py_XDECREF.exit106

bb.dc:                                            ; preds = %bb.db
  call void @_Py_Dealloc(ptr noundef nonnull %i.hn) #33
  br label %Py_XDECREF.exit106

Py_XDECREF.exit106:                               ; preds = %Py_XDECREF.exit, %bb.da, %bb.db, %bb.dc
  %i.hr = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %4) #33
  br label %Py_XDECREF.exit112

PyUnicode_WRITE.exit.thread:                      ; preds = %bb.n, %PyUnicode_WRITE.exit.thread160
  %.pre128 = load ptr, ptr %i.d, align 8, !tbaa !194 ; 4 uses
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %4) #33
  %.not.i107 = icmp eq ptr %.pre128, null
  br i1 %.not.i107, label %Py_XDECREF.exit109, label %bb.dd

bb.dd:                                            ; preds = %PyUnicode_WRITE.exit.thread
  %i.hs = load i32, ptr %.pre128, align 8, !tbaa !205 ; 2 uses
  %.not.i.i108 = icmp sgt i32 %i.hs, -1
  br i1 %.not.i.i108, label %bb.de, label %Py_XDECREF.exit109

bb.de:                                            ; preds = %bb.dd
  %i.ht = add nsw i32 %i.hs, -1                   ; 2 uses
  store i32 %i.ht, ptr %.pre128, align 8, !tbaa !205
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.df, label %Py_XDECREF.exit109

bb.df:                                            ; preds = %bb.de
  call void @_Py_Dealloc(ptr noundef nonnull %.pre128) #33
  br label %Py_XDECREF.exit109

Py_XDECREF.exit109:                               ; preds = %PyUnicode_WRITE.exit.thread.thread, %PyUnicode_WRITE.exit.thread, %bb.dd, %bb.de, %bb.df
  %i.hv = load ptr, ptr %i.e, align 8, !tbaa !194 ; 4 uses
  %.not.i110 = icmp eq ptr %i.hv, null
  br i1 %.not.i110, label %Py_XDECREF.exit112, label %bb.dg

bb.dg:                                            ; preds = %Py_XDECREF.exit109
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !205 ; 2 uses
  %.not.i.i111 = icmp sgt i32 %i.hw, -1
  br i1 %.not.i.i111, label %bb.dh, label %Py_XDECREF.exit112

bb.dh:                                            ; preds = %bb.dg
  %i.hx = add nsw i32 %i.hw, -1                   ; 2 uses
  store i32 %i.hx, ptr %i.hv, align 8, !tbaa !205
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.di, label %Py_XDECREF.exit112

bb.di:                                            ; preds = %bb.dh
  call void @_Py_Dealloc(ptr noundef nonnull %i.hv) #33
  br label %Py_XDECREF.exit112

Py_XDECREF.exit112:                               ; preds = %bb.c, %bb.b, %bb.di, %bb.dh, %bb.dg, %Py_XDECREF.exit109, %Py_XDECREF.exit106
  %.061 = phi ptr [ null, %bb.di ], [ %i.hr, %Py_XDECREF.exit106 ], [ null, %Py_XDECREF.exit109 ], [ null, %bb.dg ], [ null, %bb.dh ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  ret ptr %.061
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeRawUnicodeEscape(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_PyUnicode_DecodeRawUnicodeEscapeStateful(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsRawUnicodeEscapeString(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val61 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val61, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = lshr i32 %i.f, 2
  %i.h = and i32 %i.g, 7                          ; 3 uses
  %i.i = and i32 %i.f, 32
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = and i32 %i.f, 64
  %.not.i.i = icmp eq i32 %i.j, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.k, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %.0.i.i, %bb.d ], [ %.val4.i, %bb.e ] ; 4 uses
  %i.l = getelementptr i8, ptr %0, i64 16
  %.val62 = load i64, ptr %i.l, align 8, !tbaa !207 ; 6 uses
  %i.m = icmp eq i64 %.val62, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_PyUnicode_DATA.exit
  %i.n = tail call ptr @Py_GetConstant(i32 noundef 8) #33
  br label %bb.t

bb.g:                                             ; preds = %_PyUnicode_DATA.exit
  %i.o = icmp eq i32 %i.h, 1
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %.0.i, i64 noundef %.val62) #33
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.q = shl nuw nsw i32 %i.h, 1
  %i.r = add nuw nsw i32 %i.q, 2
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = udiv i64 9223372036854775807, %i.s
  %i.u = icmp sgt i64 %.val62, %i.t
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @PyErr_NoMemory() #33
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.w = mul i64 %.val62, %i.s
  %i.x = tail call ptr @PyBytesWriter_Create(i64 noundef %i.w) #33 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.x) #33 ; 2 uses
  %i.aa = icmp sgt i64 %.val62, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %bb.l
  %.054.lcssa = phi ptr [ %i.z, %bb.l ], [ %.155, %bb.s ]
  %i.ab = tail call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.x, ptr noundef %.054.lcssa) #33
  br label %bb.t

.lr.ph:                                           ; preds = %bb.l, %bb.s
  %.05367 = phi i64 [ %i.dh, %bb.s ], [ 0, %bb.l ] ; 4 uses
  %.05466 = phi ptr [ %.155, %bb.s ], [ %i.z, %bb.l ] ; 17 uses
  switch i32 %i.h, label %bb.n [
    i32 1, label %PyUnicode_READ.exit.thread
    i32 2, label %bb.m
  ]

PyUnicode_READ.exit.thread:                       ; preds = %.lr.ph
  %i.ac = getelementptr i8, ptr %.0.i, i64 %.05367
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !205
  %i.ae = zext i8 %i.ad to i32
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph
  %i.af = getelementptr [2 x i8], ptr %.0.i, i64 %.05367
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !208
  %i.ah = zext i16 %i.ag to i32
  br label %PyUnicode_READ.exit

bb.n:                                             ; preds = %.lr.ph
  %i.ai = getelementptr [4 x i8], ptr %.0.i, i64 %.05367
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.m, %bb.n
  %.0.i63 = phi i32 [ %i.aj, %bb.n ], [ %i.ah, %bb.m ] ; 13 uses
  %i.ak = icmp ult i32 %.0.i63, 256
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %PyUnicode_READ.exit.thread, %PyUnicode_READ.exit
  %.0.i6365 = phi i32 [ %i.ae, %PyUnicode_READ.exit.thread ], [ %.0.i63, %PyUnicode_READ.exit ]
  %i.al = trunc nuw i32 %.0.i6365 to i8
  %i.am = getelementptr i8, ptr %.05466, i64 1
  store i8 %i.al, ptr %.05466, align 1, !tbaa !205
  br label %bb.s

bb.p:                                             ; preds = %PyUnicode_READ.exit
  %i.an = icmp ult i32 %.0.i63, 65536
  %i.ao = getelementptr i8, ptr %.05466, i64 1    ; 2 uses
  store i8 92, ptr %.05466, align 1, !tbaa !205
  %i.ap = getelementptr i8, ptr %.05466, i64 2    ; 2 uses
  br i1 %i.an, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 117, ptr %i.ao, align 1, !tbaa !205
  %i.aq = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.ar = lshr i32 %.0.i63, 12
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %i.aq, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !205
  %i.av = getelementptr i8, ptr %.05466, i64 3
  store i8 %i.au, ptr %i.ap, align 1, !tbaa !205
  %i.aw = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.ax = lshr i32 %.0.i63, 8
  %i.ay = and i32 %i.ax, 15
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %i.aw, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !205
  %i.bc = getelementptr i8, ptr %.05466, i64 4
  store i8 %i.bb, ptr %i.av, align 1, !tbaa !205
  %i.bd = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.be = lshr i32 %.0.i63, 4
  %i.bf = and i32 %i.be, 15
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr %i.bd, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !205
  %i.bj = getelementptr i8, ptr %.05466, i64 5
  store i8 %i.bi, ptr %i.bc, align 1, !tbaa !205
  %i.bk = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.bl = and i32 %.0.i63, 15
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr i8, ptr %i.bk, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !205
  %i.bp = getelementptr i8, ptr %.05466, i64 6
  store i8 %i.bo, ptr %i.bj, align 1, !tbaa !205
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store i8 85, ptr %i.ao, align 1, !tbaa !205
  %i.bq = getelementptr i8, ptr %.05466, i64 3
  store i8 48, ptr %i.ap, align 1, !tbaa !205
  %i.br = getelementptr i8, ptr %.05466, i64 4
  store i8 48, ptr %i.bq, align 1, !tbaa !205
  %i.bs = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.bt = lshr i32 %.0.i63, 20
  %i.bu = and i32 %i.bt, 15
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr i8, ptr %i.bs, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !205
  %i.by = getelementptr i8, ptr %.05466, i64 5
  store i8 %i.bx, ptr %i.br, align 1, !tbaa !205
  %i.bz = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.ca = lshr i32 %.0.i63, 16
  %i.cb = and i32 %i.ca, 15
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr i8, ptr %i.bz, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !205
  %i.cf = getelementptr i8, ptr %.05466, i64 6
  store i8 %i.ce, ptr %i.by, align 1, !tbaa !205
  %i.cg = load ptr, ptr @Py_hexdigits, align 8, !tbaa !355
  %i.ch = lshr i32 %.0.i63, 12
end_hunk_9
begin_hunk_10_@PyUnicode_DecodeCharmap:bb.a
  call void @_Py_Dealloc(ptr noundef nonnull %i.jm) #33
  br label %Py_DECREF.exit47.i

Py_DECREF.exit47.i:                               ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.co
  %i.jq = getelementptr i8, ptr %i.gn, i64 1      ; 2 uses
  store ptr %i.jq, ptr %i.a, align 8, !tbaa !355
  br label %select.unfold.i, !llvm.loop !522

bb.cs:                                            ; preds = %PyUnicode_READ_CHAR.exit.i, %bb.bl, %bb.bi, %Py_DECREF.exit49.i
  %.pr.i = load ptr, ptr %i.h, align 8, !tbaa !194 ; 2 uses
  %.not42.i = icmp eq ptr %.pr.i, null
  br i1 %.not42.i, label %Py_DECREF.exit.i, label %.thread91.i

.thread91.i:                                      ; preds = %bb.cs, %bb.bj
  %i.jr = phi ptr [ %.pr.i, %bb.cs ], [ @_Py_NoneStruct, %bb.bj ] ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !194
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !205 ; 2 uses
  %.not.i.i34 = icmp sgt i32 %i.js, -1
  br i1 %.not.i.i34, label %bb.ct, label %Py_DECREF.exit.i

bb.ct:                                            ; preds = %.thread91.i
  %i.jt = add nsw i32 %i.js, -1                   ; 2 uses
  store i32 %i.jt, ptr %i.jr, align 8, !tbaa !205
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %bb.cu, label %Py_DECREF.exit.i

bb.cu:                                            ; preds = %bb.ct
  call void @_Py_Dealloc(ptr noundef nonnull %i.jr) #33
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.cu, %bb.ct, %.thread91.i, %bb.cs
  %i.jv = load ptr, ptr %i.b, align 8, !tbaa !355
  %i.jw = ptrtoint ptr %i.gn to i64
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = sub i64 %i.jw, %i.jx                    ; 2 uses
  store i64 %i.jy, ptr %i.d, align 8, !tbaa !193
  %i.jz = add i64 %i.jy, 1
  store i64 %i.jz, ptr %i.e, align 8, !tbaa !193
  %i.ka = call fastcc i32 @unicode_decode_call_errorhandler_writer(ptr noundef %3, ptr noundef %i.f, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.a, ptr noundef nonnull %4)
  %.not43.i = icmp eq i32 %i.ka, 0
  br i1 %.not43.i, label %Py_DECREF.exit.select.unfold_crit_edge.i, label %.thread94.i

Py_DECREF.exit.select.unfold_crit_edge.i:         ; preds = %Py_DECREF.exit.i
  %.pre.i35 = load ptr, ptr %i.a, align 8, !tbaa !355
  %.pre96.i = load ptr, ptr %i.c, align 8, !tbaa !355
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %Py_DECREF.exit.select.unfold_crit_edge.i, %Py_DECREF.exit47.i
  %i.kb = phi ptr [ %.pre96.i, %Py_DECREF.exit.select.unfold_crit_edge.i ], [ %i.gm, %Py_DECREF.exit47.i ] ; 2 uses
  %i.kc = phi ptr [ %.pre.i35, %Py_DECREF.exit.select.unfold_crit_edge.i ], [ %i.jq, %Py_DECREF.exit47.i ] ; 2 uses
  %i.kd = icmp ult ptr %i.kc, %i.kb
  br i1 %i.kd, label %bb.bc, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %select.unfold.i
  %.pre97.i = load ptr, ptr %i.f, align 8, !tbaa !194 ; 4 uses
  %.not.i67.i = icmp eq ptr %.pre97.i, null
  br i1 %.not.i67.i, label %Py_XDECREF.exit.i24, label %bb.cv

bb.cv:                                            ; preds = %._crit_edge.i
  %i.ke = load i32, ptr %.pre97.i, align 8, !tbaa !205 ; 2 uses
  %.not.i.i.i32 = icmp sgt i32 %i.ke, -1
  br i1 %.not.i.i.i32, label %bb.cw, label %Py_XDECREF.exit.i24

bb.cw:                                            ; preds = %bb.cv
  %i.kf = add nsw i32 %i.ke, -1                   ; 2 uses
  store i32 %i.kf, ptr %.pre97.i, align 8, !tbaa !205
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.cx, label %Py_XDECREF.exit.i24

bb.cx:                                            ; preds = %bb.cw
  call void @_Py_Dealloc(ptr noundef nonnull %.pre97.i) #33
  br label %Py_XDECREF.exit.i24

Py_XDECREF.exit.i24:                              ; preds = %bb.cx, %bb.cw, %bb.cv, %._crit_edge.i, %bb.bb
  %i.kh = load ptr, ptr %i.g, align 8, !tbaa !194 ; 4 uses
  %.not.i68.i = icmp eq ptr %i.kh, null
  br i1 %.not.i68.i, label %charmap_decode_mapping.exit.thread50, label %bb.cy

bb.cy:                                            ; preds = %Py_XDECREF.exit.i24
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !205 ; 2 uses
  %.not.i.i69.i = icmp sgt i32 %i.ki, -1
  br i1 %.not.i.i69.i, label %bb.cz, label %charmap_decode_mapping.exit.thread50

bb.cz:                                            ; preds = %bb.cy
  %i.kj = add nsw i32 %i.ki, -1                   ; 2 uses
  store i32 %i.kj, ptr %i.kh, align 8, !tbaa !205
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %charmap_decode_mapping.exit, label %charmap_decode_mapping.exit.thread50

.thread94.i:                                      ; preds = %Py_DECREF.exit.i, %bb.cm, %bb.ci, %bb.bq, %bb.bh, %bb.bc, %bb.cn, %bb.bn
  %i.kl = load ptr, ptr %i.h, align 8, !tbaa !194 ; 4 uses
  %.not.i71.i = icmp eq ptr %i.kl, null
  br i1 %.not.i71.i, label %Py_XDECREF.exit73.i, label %bb.da

bb.da:                                            ; preds = %.thread94.i
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !205 ; 2 uses
  %.not.i.i72.i = icmp sgt i32 %i.km, -1
  br i1 %.not.i.i72.i, label %bb.db, label %Py_XDECREF.exit73.i

bb.db:                                            ; preds = %bb.da
  %i.kn = add nsw i32 %i.km, -1                   ; 2 uses
  store i32 %i.kn, ptr %i.kl, align 8, !tbaa !205
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %bb.dc, label %Py_XDECREF.exit73.i

bb.dc:                                            ; preds = %bb.db
  call void @_Py_Dealloc(ptr noundef nonnull %i.kl) #33
  br label %Py_XDECREF.exit73.i

Py_XDECREF.exit73.i:                              ; preds = %bb.dc, %bb.db, %bb.da, %.thread94.i
  %i.kp = load ptr, ptr %i.f, align 8, !tbaa !194 ; 4 uses
  %.not.i74.i = icmp eq ptr %i.kp, null
  br i1 %.not.i74.i, label %Py_XDECREF.exit76.i, label %bb.dd

bb.dd:                                            ; preds = %Py_XDECREF.exit73.i
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !205 ; 2 uses
  %.not.i.i75.i = icmp sgt i32 %i.kq, -1
  br i1 %.not.i.i75.i, label %bb.de, label %Py_XDECREF.exit76.i

bb.de:                                            ; preds = %bb.dd
  %i.kr = add nsw i32 %i.kq, -1                   ; 2 uses
  store i32 %i.kr, ptr %i.kp, align 8, !tbaa !205
  %i.ks = icmp eq i32 %i.kr, 0
  br i1 %i.ks, label %bb.df, label %Py_XDECREF.exit76.i

bb.df:                                            ; preds = %bb.de
  call void @_Py_Dealloc(ptr noundef nonnull %i.kp) #33
  br label %Py_XDECREF.exit76.i

Py_XDECREF.exit76.i:                              ; preds = %bb.df, %bb.de, %bb.dd, %Py_XDECREF.exit73.i
  %i.kt = load ptr, ptr %i.g, align 8, !tbaa !194 ; 4 uses
  %.not.i77.i = icmp eq ptr %i.kt, null
  br i1 %.not.i77.i, label %charmap_decode_mapping.exit.thread, label %bb.dg

bb.dg:                                            ; preds = %Py_XDECREF.exit76.i
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !205 ; 2 uses
  %.not.i.i78.i = icmp sgt i32 %i.ku, -1
  br i1 %.not.i.i78.i, label %bb.dh, label %charmap_decode_mapping.exit.thread

bb.dh:                                            ; preds = %bb.dg
  %i.kv = add nsw i32 %i.ku, -1                   ; 2 uses
  store i32 %i.kv, ptr %i.kt, align 8, !tbaa !205
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %charmap_decode_mapping.exit.thread52, label %charmap_decode_mapping.exit.thread

charmap_decode_mapping.exit.thread52:             ; preds = %bb.dh
  call void @_Py_Dealloc(ptr noundef nonnull %i.kt) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.dj

charmap_decode_mapping.exit.thread:               ; preds = %bb.dh, %Py_XDECREF.exit76.i, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.dj

charmap_decode_mapping.exit.thread50:             ; preds = %Py_XDECREF.exit.i24, %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.di

charmap_decode_mapping.exit:                      ; preds = %bb.cz
  call void @_Py_Dealloc(ptr noundef nonnull %i.kh) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.di

bb.di:                                            ; preds = %charmap_decode_mapping.exit, %charmap_decode_mapping.exit.thread50, %charmap_decode_string.exit, %charmap_decode_string.exit.thread
  %i.kx = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %4) #33
  br label %PyUnicode_DecodeLatin1.exit

bb.dj:                                            ; preds = %charmap_decode_mapping.exit.thread52, %charmap_decode_mapping.exit.thread, %charmap_decode_string.exit.thread45, %charmap_decode_string.exit.thread43, %bb.q
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %4) #33
  br label %PyUnicode_DecodeLatin1.exit

PyUnicode_DecodeLatin1.exit:                      ; preds = %bb.n, %_PyUnicode_DATA.exit.i.i, %ucs1lib_find_max_char.exit.i.i, %bb.e, %bb.d, %bb.b, %bb.dj, %bb.di
  %.0 = phi ptr [ %i.kx, %bb.di ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.b ], [ null, %bb.dj ], [ %i.w, %bb.e ], [ null, %ucs1lib_find_max_char.exit.i.i ], [ %i.ah, %_PyUnicode_DATA.exit.i.i ], [ %i.t, %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_BuildEncodingMap(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [512 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !197
  %i.d = getelementptr i8, ptr %.val, i64 168
  %.val149 = load i64, ptr %i.d, align 8, !tbaa !198
  %i.e = and i64 %.val149, 268435456
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val152 = load i64, ptr %i.f, align 8, !tbaa !207 ; 2 uses
  %.not126 = icmp eq i64 %.val152, 0
  br i1 %.not126, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = lshr i32 %i.i, 2
  %i.k = and i32 %i.j, 7                          ; 4 uses
  %i.l = and i32 %i.i, 32
  %.not.i153 = icmp eq i32 %i.l, 0
  br i1 %.not.i153, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %i.i, 64
  %.not.i.i = icmp eq i32 %i.m, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.n, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %.0.i.i, %bb.e ], [ %.val4.i, %bb.f ] ; 12 uses
  %spec.select170171 = tail call i64 @llvm.smin.i64(i64 %.val152, i64 256) ; 4 uses
  %spec.select170 = trunc i64 %spec.select170171 to i32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 -1, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.b, i8 -1, i64 512, i1 false)
  switch i32 %i.k, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %_PyUnicode_DATA.exit
  %i.o = load i8, ptr %.0.i, align 1, !tbaa !205
  %i.p = zext i8 %i.o to i32
  br label %PyUnicode_READ.exit

bb.h:                                             ; preds = %_PyUnicode_DATA.exit
  %i.q = load i16, ptr %.0.i, align 2, !tbaa !208
  %i.r = zext i16 %i.q to i32
  br label %PyUnicode_READ.exit

bb.i:                                             ; preds = %_PyUnicode_DATA.exit
  %i.s = load i32, ptr %.0.i, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.g, %bb.h, %bb.i
  %.0.i154 = phi i32 [ %i.p, %bb.g ], [ %i.r, %bb.h ], [ %i.s, %bb.i ]
  %.not127.not = icmp eq i32 %.0.i154, 0
  %i.t = icmp sgt i32 %spec.select170, 1          ; 2 uses
  br i1 %i.t, label %.lr.ph.preheader, label %PyUnicode_READ.exit156._crit_edge

.lr.ph.preheader:                                 ; preds = %PyUnicode_READ.exit
  %wide.trip.count = and i64 %spec.select170171, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.r ] ; 4 uses
  %.0106179 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2108.ph, %bb.r ] ; 4 uses
  %.0110178 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2112.ph, %bb.r ] ; 4 uses
  switch i32 %i.k, label %bb.l [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %.0.i, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1, !tbaa !205
  %i.w = zext i8 %i.v to i32
  br label %PyUnicode_READ.exit156

bb.k:                                             ; preds = %.lr.ph
  %i.x = getelementptr [2 x i8], ptr %.0.i, i64 %indvars.iv
  %i.y = load i16, ptr %i.x, align 2, !tbaa !208
  %i.z = zext i16 %i.y to i32
  br label %PyUnicode_READ.exit156

bb.l:                                             ; preds = %.lr.ph
  %i.aa = getelementptr [4 x i8], ptr %.0.i, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  br label %PyUnicode_READ.exit156

PyUnicode_READ.exit156:                           ; preds = %bb.j, %bb.k, %bb.l
  %.0.i155 = phi i32 [ %i.w, %bb.j ], [ %i.z, %bb.k ], [ %i.ab, %bb.l ] ; 4 uses
  %i.ac = add i32 %.0.i155, -65536
  %or.cond = icmp ult i32 %i.ac, -65535
  br i1 %or.cond, label %PyUnicode_READ.exit156._crit_edge.thread, label %bb.m

bb.m:                                             ; preds = %PyUnicode_READ.exit156
  %i.ad = icmp eq i32 %.0.i155, 65534
  br i1 %i.ad, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = lshr i32 %.0.i155, 11
  %i.af = lshr i32 %.0.i155, 7
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = getelementptr i8, ptr %i.a, i64 %i.ag   ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !205
  %i.aj = icmp eq i8 %i.ai, -1
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = add i32 %.0106179, 1
  %i.al = trunc i32 %.0106179 to i8
  store i8 %i.al, ptr %i.ah, align 1, !tbaa !205
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1107 = phi i32 [ %i.ak, %bb.o ], [ %.0106179, %bb.n ] ; 2 uses
  %i.am = zext nneg i32 %i.af to i64
  %i.an = getelementptr i8, ptr %i.b, i64 %i.am   ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !205
  %i.ap = icmp eq i8 %i.ao, -1
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aq = add i32 %.0110178, 1
  %i.ar = trunc i32 %.0110178 to i8
  store i8 %i.ar, ptr %i.an, align 1, !tbaa !205
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.q, %bb.p
  %.2112.ph = phi i32 [ %.0110178, %bb.p ], [ %i.aq, %bb.q ], [ %.0110178, %bb.m ] ; 2 uses
  %.2108.ph = phi i32 [ %.1107, %bb.p ], [ %.1107, %bb.q ], [ %.0106179, %bb.m ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %PyUnicode_READ.exit156._crit_edge, label %.lr.ph, !llvm.loop !523

PyUnicode_READ.exit156._crit_edge:                ; preds = %bb.r, %PyUnicode_READ.exit
  %.0110.lcssa = phi i32 [ 0, %PyUnicode_READ.exit ], [ %.2112.ph, %bb.r ] ; 3 uses
  %.0106.lcssa = phi i32 [ 0, %PyUnicode_READ.exit ], [ %.2108.ph, %bb.r ] ; 3 uses
  %i.as = icmp slt i32 %.0106.lcssa, 255
  %i.at = icmp slt i32 %.0110.lcssa, 255
  %or.cond3.not = select i1 %i.as, i1 %i.at, i1 false
  %.not128 = select i1 %or.cond3.not, i1 %.not127.not, i1 false
  br i1 %.not128, label %bb.an, label %PyUnicode_READ.exit156._crit_edge.thread

PyUnicode_READ.exit156._crit_edge.thread:         ; preds = %PyUnicode_READ.exit156, %PyUnicode_READ.exit156._crit_edge
  %i.au = tail call ptr @PyDict_New() #33         ; 13 uses
  %.not130 = icmp eq ptr %i.au, null
  br i1 %.not130, label %.critedge, label %.preheader

.preheader:                                       ; preds = %PyUnicode_READ.exit156._crit_edge.thread
  %i.av = icmp sgt i32 %spec.select170, 0
  br i1 %i.av, label %.lr.ph187.preheader, label %.critedge

.lr.ph187.preheader:                              ; preds = %.preheader
  %wide.trip.count199 = and i64 %spec.select170171, 2147483647
  br label %.lr.ph187

bb.s:                                             ; preds = %Py_DECREF.exit135
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not, label %.critedge, label %.lr.ph187, !llvm.loop !524

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %bb.s
  %indvars.iv196 = phi i64 [ 0, %.lr.ph187.preheader ], [ %indvars.iv.next197, %bb.s ] ; 5 uses
  switch i32 %i.k, label %bb.v [
    i32 1, label %bb.t
    i32 2, label %bb.u
  ]

bb.t:                                             ; preds = %.lr.ph187
  %i.aw = getelementptr i8, ptr %.0.i, i64 %indvars.iv196
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !205
  %i.ay = zext i8 %i.ax to i32
  br label %PyUnicode_READ.exit158

bb.u:                                             ; preds = %.lr.ph187
  %i.az = getelementptr [2 x i8], ptr %.0.i, i64 %indvars.iv196
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !208
end_hunk_10
begin_hunk_11_@_PyUnicode_JoinArray:bb.a

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

_Py_NewRef.exit:                                  ; preds = %bb.a, %bb.au, %bb.at, %bb.as, %bb.ar, %.thread202, %bb.aq, %bb.ap, %.loopexit.thread, %.loopexit, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.au ], [ %i.dw, %bb.aq ], [ %i.a, %bb.d ], [ %i.a, %bb.c ], [ %i.dv, %.loopexit ], [ %i.dw, %.loopexit.thread ], [ %i.dw, %bb.ap ], [ null, %.thread202 ], [ null, %bb.ar ], [ null, %bb.as ], [ null, %bb.at ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.a ]
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
  %.0.i13 = ptrtoint ptr %.0.i to i64             ; 6 uses
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
end_hunk_11
begin_hunk_12_@PyUnicode_Splitlines:bb.a
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.v, label %asciilib_splitlines.exit

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n) #33, !inline_history !558
  br label %asciilib_splitlines.exit

bb.w:                                             ; preds = %bb.b
  %i.bo = getelementptr i8, ptr %0, i64 56        ; 2 uses
  br i1 %.not.i34, label %bb.x, label %_PyUnicode_DATA.exit40

bb.x:                                             ; preds = %bb.w
  %.val4.i39 = load ptr, ptr %i.bo, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit40

_PyUnicode_DATA.exit40:                           ; preds = %bb.w, %bb.x
  %.0.i38 = phi ptr [ %.val4.i39, %bb.x ], [ %i.bo, %bb.w ] ; 5 uses
  %i.bp = getelementptr i8, ptr %0, i64 16
  %.val23 = load i64, ptr %i.bp, align 8, !tbaa !207 ; 6 uses
  %i.bq = tail call ptr @PyList_New(i64 noundef 0) #33, !inline_history !561 ; 8 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %asciilib_splitlines.exit, label %.preheader82.i

.preheader82.i:                                   ; preds = %_PyUnicode_DATA.exit40
  %.not57.i41 = icmp eq i32 %1, 0
  br label %bb.y

bb.y:                                             ; preds = %Py_DECREF.exit64.i58, %.preheader82.i
  %.049.i42 = phi i64 [ %.3.i52, %Py_DECREF.exit64.i58 ], [ 0, %.preheader82.i ] ; 5 uses
  %i.bs = icmp slt i64 %.049.i42, %.val23
  br i1 %i.bs, label %.preheader.i44, label %asciilib_splitlines.exit

.preheader.i44:                                   ; preds = %bb.y, %.thread.i71
  %.186.i = phi i64 [ %i.ci, %.thread.i71 ], [ %.049.i42, %bb.y ] ; 6 uses
  %i.bt = getelementptr i8, ptr %.0.i38, i64 %.186.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !205 ; 4 uses
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = icmp sgt i8 %i.bu, -1
  br i1 %i.bw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.preheader.i44
  %i.bx = zext nneg i8 %i.bu to i64
  %i.by = getelementptr i8, ptr @ascii_linebreak, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !205
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %.thread.i71, label %.critedge.i47

bb.aa:                                            ; preds = %.preheader.i44
  %.b233 = load i1, ptr @bloom_linebreak, align 8
  %i.cb = select i1 %.b233, i64 3300413940768, i64 -1
  %i.cc = and i32 %i.bv, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.cb, %i.ce
  %.not.i45 = icmp eq i64 %i.cf, 0
  br i1 %.not.i45, label %.thread.i71, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cg = tail call i32 @_PyUnicode_IsLinebreak(i32 noundef %i.bv) #33, !inline_history !561
  %.not79.i46 = icmp eq i32 %i.cg, 0
  br i1 %.not79.i46, label %.thread.i71, label %..critedge.i47_crit_edge

..critedge.i47_crit_edge:                         ; preds = %bb.ab
  %i.ch = getelementptr i8, ptr %.0.i38, i64 %.186.i
  %.pre160 = load i8, ptr %i.ch, align 1, !tbaa !205
  br label %.critedge.i47

.thread.i71:                                      ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ci = add i64 %.186.i, 1                      ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %i.ci, %.val23
  br i1 %exitcond.not.i72, label %.critedge61.i51, label %.preheader.i44, !llvm.loop !562

.critedge.i47:                                    ; preds = %bb.z, %..critedge.i47_crit_edge
  %i.cj = phi i8 [ %.pre160, %..critedge.i47_crit_edge ], [ %i.bu, %bb.z ]
  %i.ck = icmp eq i8 %i.cj, 13
  %i.cl = add nsw i64 %.186.i, 1                  ; 4 uses
  %i.cm = icmp slt i64 %i.cl, %.val23
  %or.cond105.i = select i1 %i.ck, i1 %i.cm, i1 false
  br i1 %or.cond105.i, label %bb.ac, label %.critedge._crit_edge.i48

bb.ac:                                            ; preds = %.critedge.i47
  %i.cn = getelementptr i8, ptr %.0.i38, i64 %i.cl
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !205
  %i.cp = icmp eq i8 %i.co, 10
  %i.cq = add nsw i64 %.186.i, 2
  %spec.select106.i = select i1 %i.cp, i64 %i.cq, i64 %i.cl
  br label %.critedge._crit_edge.i48

.critedge._crit_edge.i48:                         ; preds = %bb.ac, %.critedge.i47
  %.2.i49 = phi i64 [ %spec.select106.i, %bb.ac ], [ %i.cl, %.critedge.i47 ] ; 2 uses
  %spec.select.i50 = select i1 %.not57.i41, i64 %.186.i, i64 %.2.i49
  br label %.critedge61.i51

.critedge61.i51:                                  ; preds = %.thread.i71, %.critedge._crit_edge.i48
  %.3.i52 = phi i64 [ %.2.i49, %.critedge._crit_edge.i48 ], [ %.val23, %.thread.i71 ]
  %.0.i53 = phi i64 [ %spec.select.i50, %.critedge._crit_edge.i48 ], [ %.val23, %.thread.i71 ] ; 3 uses
  %i.cr = icmp eq i64 %.049.i42, 0
  %i.cs = icmp eq i64 %.0.i53, %.val23
  %or.cond.i54 = and i1 %i.cr, %i.cs
  br i1 %or.cond.i54, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.critedge61.i51
  %.val.i68 = load ptr, ptr %i.a, align 8, !tbaa !197
  %.not80.i69 = icmp eq ptr %.val.i68, @PyUnicode_Type
  br i1 %.not80.i69, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ct = tail call i32 @PyList_Append(ptr noundef nonnull %i.bq, ptr noundef nonnull %0) #33, !inline_history !561
  %.not60.i70 = icmp eq i32 %i.ct, 0
  br i1 %.not60.i70, label %asciilib_splitlines.exit, label %_PyUnicode_FromUCS1.exit.thread70.i

bb.af:                                            ; preds = %bb.ad, %.critedge61.i51
  %i.cu = getelementptr i8, ptr %.0.i38, i64 %.049.i42 ; 3 uses
  %i.cv = sub i64 %.0.i53, %.049.i42              ; 3 uses
  switch i64 %i.cv, label %bb.ag [
    i64 0, label %_PyUnicode_FromUCS1.exit.thread.i
    i64 1, label %_PyUnicode_FromUCS1.exit.i
  ]

_PyUnicode_FromUCS1.exit.i:                       ; preds = %bb.af
  %i.cw = load i8, ptr %i.cu, align 1, !tbaa !205 ; 3 uses
  %i.cx = and i8 %i.cw, 127
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.cy
  %i.da = zext nneg i8 %i.cw to i64
  %i.db = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.da
  %i.dc = icmp slt i8 %i.cw, 0
  %.0.i.i55 = select i1 %i.dc, ptr %i.cz, ptr %i.db ; 2 uses
  %i.dd = icmp eq ptr %.0.i.i55, null
  br i1 %i.dd, label %_PyUnicode_FromUCS1.exit.thread70.i, label %_PyUnicode_FromUCS1.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.de = getelementptr i8, ptr %.0.i38, i64 %.0.i53 ; 3 uses
  br label %bb.ah

bb.ah:                                            ; preds = %.thread31.i.i.i, %bb.ag
  %.021.i.i.i = phi ptr [ %i.cu, %bb.ag ], [ %i.dm, %.thread31.i.i.i ] ; 4 uses
  %i.df = icmp ult ptr %.021.i.i.i, %i.de
  br i1 %i.df, label %bb.ai, label %ucs1lib_find_max_char.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.dg = ptrtoint ptr %.021.i.i.i to i64
  %i.dh = and i64 %i.dg, 7
  %.not.i.i.i67 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i67, label %.preheader.i.i.i, label %.thread31.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ai, %bb.aj
  %.019.i.i.i = phi ptr [ %i.di, %bb.aj ], [ %.021.i.i.i, %bb.ai ] ; 4 uses
  %i.di = getelementptr i8, ptr %.019.i.i.i, i64 8 ; 2 uses
  %.not26.i.i.i = icmp ugt ptr %i.di, %i.de
  br i1 %.not26.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.preheader.i.i.i
  %i.dj = load i64, ptr %.019.i.i.i, align 8, !tbaa !193
  %i.dk = and i64 %i.dj, -9187201950435737472
  %.not27.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not27.i.i.i, label %.preheader.i.i.i, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !220

bb.ak:                                            ; preds = %.preheader.i.i.i
  %i.dl = icmp eq ptr %.019.i.i.i, %i.de
  br i1 %i.dl, label %ucs1lib_find_max_char.exit.i.i, label %.thread31.i.i.i

.thread31.i.i.i:                                  ; preds = %bb.ak, %bb.ai
  %.223.i.i.i = phi ptr [ %.021.i.i.i, %bb.ai ], [ %.019.i.i.i, %bb.ak ] ; 2 uses
  %i.dm = getelementptr i8, ptr %.223.i.i.i, i64 1
  %i.dn = load i8, ptr %.223.i.i.i, align 1, !tbaa !205
  %.not28.i.i.i = icmp sgt i8 %i.dn, -1
  br i1 %.not28.i.i.i, label %bb.ah, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i.i:                   ; preds = %.thread31.i.i.i, %bb.ak, %bb.ah, %bb.aj
  %.5.i.i.i = phi i32 [ 255, %bb.aj ], [ 127, %bb.ah ], [ 127, %bb.ak ], [ 255, %.thread31.i.i.i ]
  %i.do = tail call ptr @PyUnicode_New(i64 noundef %i.cv, i32 noundef %.5.i.i.i), !inline_history !563 ; 5 uses
  %.not.i66.i60 = icmp eq ptr %i.do, null
  br i1 %.not.i66.i60, label %_PyUnicode_FromUCS1.exit.thread70.i, label %bb.al

bb.al:                                            ; preds = %ucs1lib_find_max_char.exit.i.i
  %i.dp = getelementptr i8, ptr %i.do, i64 32
  %.val.i.i.i61 = load i32, ptr %i.dp, align 8    ; 2 uses
  %i.dq = and i32 %.val.i.i.i61, 32
  %.not.i15.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i15.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dr = and i32 %.val.i.i.i61, 64
  %.not.i.i.i.i62 = icmp eq i32 %i.dr, 0
  %.0.v.i.i.i.i63 = select i1 %.not.i.i.i.i62, i64 56, i64 40
  %.0.i.i.i.i64 = getelementptr i8, ptr %i.do, i64 %.0.v.i.i.i.i63
  br label %_PyUnicode_DATA.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.ds = getelementptr i8, ptr %i.do, i64 56
  %.val4.i.i.i66 = load ptr, ptr %i.ds, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.an, %bb.am
  %.0.i.i.i65 = phi ptr [ %.0.i.i.i.i64, %bb.am ], [ %.val4.i.i.i66, %bb.an ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i65, ptr align 1 %i.cu, i64 %i.cv, i1 false)
  br label %_PyUnicode_FromUCS1.exit.thread.i

_PyUnicode_FromUCS1.exit.thread.i:                ; preds = %_PyUnicode_DATA.exit.i.i, %_PyUnicode_FromUCS1.exit.i, %bb.af
  %.0.i69.i = phi ptr [ %.0.i.i55, %_PyUnicode_FromUCS1.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.af ], [ %i.do, %_PyUnicode_DATA.exit.i.i ] ; 4 uses
  %i.dt = tail call i32 @PyList_Append(ptr noundef nonnull %i.bq, ptr noundef nonnull %.0.i69.i) #33, !inline_history !561
  %.not59.i56 = icmp eq i32 %i.dt, 0
  %i.du = load i32, ptr %.0.i69.i, align 8, !tbaa !205 ; 2 uses
  %.not.i63.i57 = icmp sgt i32 %i.du, -1
  br i1 %.not.i63.i57, label %bb.ao, label %Py_DECREF.exit64.i58

bb.ao:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i
  %i.dv = add nsw i32 %i.du, -1                   ; 2 uses
  store i32 %i.dv, ptr %.0.i69.i, align 8, !tbaa !205
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.ap, label %Py_DECREF.exit64.i58

bb.ap:                                            ; preds = %bb.ao
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i69.i) #33, !inline_history !561
  br label %Py_DECREF.exit64.i58

Py_DECREF.exit64.i58:                             ; preds = %bb.ap, %bb.ao, %_PyUnicode_FromUCS1.exit.thread.i
  br i1 %.not59.i56, label %bb.y, label %_PyUnicode_FromUCS1.exit.thread70.i

_PyUnicode_FromUCS1.exit.thread70.i:              ; preds = %Py_DECREF.exit64.i58, %ucs1lib_find_max_char.exit.i.i, %_PyUnicode_FromUCS1.exit.i, %bb.ae
  %i.dx = load i32, ptr %i.bq, align 8, !tbaa !205 ; 2 uses
  %.not.i.i59 = icmp sgt i32 %i.dx, -1
  br i1 %.not.i.i59, label %bb.aq, label %asciilib_splitlines.exit

bb.aq:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread70.i
  %i.dy = add nsw i32 %i.dx, -1                   ; 2 uses
  store i32 %i.dy, ptr %i.bq, align 8, !tbaa !205
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.ar, label %asciilib_splitlines.exit

bb.ar:                                            ; preds = %bb.aq
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bq) #33, !inline_history !561
  br label %asciilib_splitlines.exit

bb.as:                                            ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.ea = and i32 %i.g, 32
  %.not.i74 = icmp eq i32 %i.ea, 0
  br i1 %.not.i74, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eb = and i32 %i.g, 64
  %.not.i.i75 = icmp eq i32 %i.eb, 0
  %.0.v.i.i76 = select i1 %.not.i.i75, i64 56, i64 40
  %.0.i.i77 = getelementptr i8, ptr %0, i64 %.0.v.i.i76
  br label %_PyUnicode_DATA.exit80

bb.au:                                            ; preds = %bb.as
  %i.ec = getelementptr i8, ptr %0, i64 56
  %.val4.i79 = load ptr, ptr %i.ec, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit80

_PyUnicode_DATA.exit80:                           ; preds = %bb.at, %bb.au
  %.0.i78 = phi ptr [ %.0.i.i77, %bb.at ], [ %.val4.i79, %bb.au ] ; 4 uses
  %i.ed = getelementptr i8, ptr %0, i64 16
  %.val22 = load i64, ptr %i.ed, align 8, !tbaa !207 ; 6 uses
  %i.ee = tail call ptr @PyList_New(i64 noundef 0) #33, !inline_history !564 ; 8 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %asciilib_splitlines.exit, label %.preheader76.i

.preheader76.i:                                   ; preds = %_PyUnicode_DATA.exit80
  %.not57.i81 = icmp eq i32 %1, 0
  br label %bb.av

bb.av:                                            ; preds = %Py_DECREF.exit64.i96, %.preheader76.i
  %.049.i82 = phi i64 [ %.3.i91, %Py_DECREF.exit64.i96 ], [ 0, %.preheader76.i ] ; 5 uses
  %i.eg = icmp slt i64 %.049.i82, %.val22
  br i1 %i.eg, label %.preheader.i84, label %asciilib_splitlines.exit

.preheader.i84:                                   ; preds = %bb.av, %.thread.i100
  %.179.i = phi i64 [ %i.ew, %.thread.i100 ], [ %.049.i82, %bb.av ] ; 6 uses
  %i.eh = getelementptr [2 x i8], ptr %.0.i78, i64 %.179.i
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !208 ; 4 uses
  %i.ej = zext i16 %i.ei to i32                   ; 2 uses
  %i.ek = icmp ult i16 %i.ei, 128
  br i1 %i.ek, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.preheader.i84
  %i.el = zext nneg i16 %i.ei to i64
  %i.em = getelementptr i8, ptr @ascii_linebreak, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !205
  %i.eo = icmp eq i8 %i.en, 0
  br i1 %i.eo, label %.thread.i100, label %.critedge.i86

bb.ax:                                            ; preds = %.preheader.i84
  %.b232 = load i1, ptr @bloom_linebreak, align 8
  %i.ep = select i1 %.b232, i64 3300413940768, i64 -1
  %i.eq = and i32 %i.ej, 63
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = shl nuw i64 1, %i.er
  %i.et = and i64 %i.ep, %i.es
  %.not.i85 = icmp eq i64 %i.et, 0
  br i1 %.not.i85, label %.thread.i100, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eu = tail call i32 @_PyUnicode_IsLinebreak(i32 noundef %i.ej) #33, !inline_history !564
  %.not74.i = icmp eq i32 %i.eu, 0
  br i1 %.not74.i, label %.thread.i100, label %..critedge.i86_crit_edge

..critedge.i86_crit_edge:                         ; preds = %bb.ay
  %i.ev = getelementptr [2 x i8], ptr %.0.i78, i64 %.179.i
  %.pre158 = load i16, ptr %i.ev, align 2, !tbaa !208
  br label %.critedge.i86

.thread.i100:                                     ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.ew = add i64 %.179.i, 1                      ; 2 uses
  %exitcond.not.i101 = icmp eq i64 %i.ew, %.val22
  br i1 %exitcond.not.i101, label %.critedge61.i90, label %.preheader.i84, !llvm.loop !565

.critedge.i86:                                    ; preds = %bb.aw, %..critedge.i86_crit_edge
  %i.ex = phi i16 [ %.pre158, %..critedge.i86_crit_edge ], [ %i.ei, %bb.aw ]
  %i.ey = icmp eq i16 %i.ex, 13
  %i.ez = add nsw i64 %.179.i, 1                  ; 4 uses
  %i.fa = icmp slt i64 %i.ez, %.val22
  %or.cond92.i = select i1 %i.ey, i1 %i.fa, i1 false
  br i1 %or.cond92.i, label %bb.az, label %.critedge._crit_edge.i87

bb.az:                                            ; preds = %.critedge.i86
  %i.fb = getelementptr [2 x i8], ptr %.0.i78, i64 %i.ez
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !208
  %i.fd = icmp eq i16 %i.fc, 10
  %i.fe = add nsw i64 %.179.i, 2
  %spec.select93.i = select i1 %i.fd, i64 %i.fe, i64 %i.ez
  br label %.critedge._crit_edge.i87

.critedge._crit_edge.i87:                         ; preds = %bb.az, %.critedge.i86
  %.2.i88 = phi i64 [ %spec.select93.i, %bb.az ], [ %i.ez, %.critedge.i86 ] ; 2 uses
  %spec.select.i89 = select i1 %.not57.i81, i64 %.179.i, i64 %.2.i88
  br label %.critedge61.i90

.critedge61.i90:                                  ; preds = %.thread.i100, %.critedge._crit_edge.i87
  %.3.i91 = phi i64 [ %.2.i88, %.critedge._crit_edge.i87 ], [ %.val22, %.thread.i100 ]
  %.0.i92 = phi i64 [ %spec.select.i89, %.critedge._crit_edge.i87 ], [ %.val22, %.thread.i100 ] ; 2 uses
  %i.ff = icmp eq i64 %.049.i82, 0
  %i.fg = icmp eq i64 %.0.i92, %.val22
  %or.cond.i93 = and i1 %i.ff, %i.fg
  br i1 %or.cond.i93, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %.critedge61.i90
  %.val.i98 = load ptr, ptr %i.a, align 8, !tbaa !197
  %.not75.i = icmp eq ptr %.val.i98, @PyUnicode_Type
  br i1 %.not75.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fh = tail call i32 @PyList_Append(ptr noundef nonnull %i.ee, ptr noundef nonnull %0) #33, !inline_history !564
  %.not60.i99 = icmp eq i32 %i.fh, 0
  br i1 %.not60.i99, label %asciilib_splitlines.exit, label %.loopexit.i

bb.bc:                                            ; preds = %bb.ba, %.critedge61.i90
  %i.fi = getelementptr [2 x i8], ptr %.0.i78, i64 %.049.i82
  %i.fj = sub i64 %.0.i92, %.049.i82
  %i.fk = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef readonly %i.fi, i64 noundef %i.fj), !inline_history !564 ; 5 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %.loopexit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fm = tail call i32 @PyList_Append(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.fk) #33, !inline_history !564
  %.not59.i94 = icmp eq i32 %i.fm, 0
  %i.fn = load i32, ptr %i.fk, align 8, !tbaa !205 ; 2 uses
  %.not.i63.i95 = icmp sgt i32 %i.fn, -1
  br i1 %.not.i63.i95, label %bb.be, label %Py_DECREF.exit64.i96

bb.be:                                            ; preds = %bb.bd
  %i.fo = add nsw i32 %i.fn, -1                   ; 2 uses
  store i32 %i.fo, ptr %i.fk, align 8, !tbaa !205
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.bf, label %Py_DECREF.exit64.i96

bb.bf:                                            ; preds = %bb.be
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.fk) #33, !inline_history !564
  br label %Py_DECREF.exit64.i96

Py_DECREF.exit64.i96:                             ; preds = %bb.bf, %bb.be, %bb.bd
  br i1 %.not59.i94, label %bb.av, label %.loopexit.i

.loopexit.i:                                      ; preds = %Py_DECREF.exit64.i96, %bb.bc, %bb.bb
  %i.fq = load i32, ptr %i.ee, align 8, !tbaa !205 ; 2 uses
  %.not.i.i97 = icmp sgt i32 %i.fq, -1
  br i1 %.not.i.i97, label %bb.bg, label %asciilib_splitlines.exit

bb.bg:                                            ; preds = %.loopexit.i
  %i.fr = add nsw i32 %i.fq, -1                   ; 2 uses
  store i32 %i.fr, ptr %i.ee, align 8, !tbaa !205
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.bh, label %asciilib_splitlines.exit

bb.bh:                                            ; preds = %bb.bg
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ee) #33, !inline_history !564
  br label %asciilib_splitlines.exit

bb.bi:                                            ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.ft = and i32 %i.g, 32
  %.not.i103 = icmp eq i32 %i.ft, 0
  br i1 %.not.i103, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fu = and i32 %i.g, 64
  %.not.i.i104 = icmp eq i32 %i.fu, 0
  %.0.v.i.i105 = select i1 %.not.i.i104, i64 56, i64 40
  %.0.i.i106 = getelementptr i8, ptr %0, i64 %.0.v.i.i105
  br label %_PyUnicode_DATA.exit109
end_hunk_12
begin_hunk_13_@_PyUnicode_XStrip:bb.a
  br i1 %i.fx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph.i.i92
  %i.fy = ptrtoint ptr %.01721.i.i93 to i64
  %i.fz = ptrtoint ptr %.0.i.i76 to i64
  %i.ga = sub i64 %i.fy, %i.fz
  br label %PyUnicode_FindChar.exit80

bb.an:                                            ; preds = %.lr.ph.i.i92
  %i.gb = getelementptr i8, ptr %.01721.i.i93, i64 1 ; 2 uses
  %exitcond.not.i.i94 = icmp eq ptr %i.gb, %i.fq
  br i1 %exitcond.not.i.i94, label %.thread106, label %.lr.ph.i.i92, !llvm.loop !483

bb.ao:                                            ; preds = %_PyUnicode_DATA.exit.i75
  %.not.i89 = icmp ult i32 %.0.i66, 65536
  br i1 %.not.i89, label %bb.ap, label %.thread106

bb.ap:                                            ; preds = %bb.ao
  %i.gc = trunc nuw i32 %.0.i66 to i16
  %i.gd = tail call fastcc i64 @ucs2lib_find_char(ptr noundef %.0.i.i76, i64 noundef %.028.i69.fr, i16 noundef zeroext %i.gc)
  br label %PyUnicode_FindChar.exit80

bb.aq:                                            ; preds = %_PyUnicode_DATA.exit.i75
  %i.ge = getelementptr [4 x i8], ptr %.0.i.i76, i64 %.028.i69.fr ; 2 uses
  br i1 %i.fc, label %bb.ar, label %.preheader.i31.i84

.preheader.i31.i84:                               ; preds = %bb.aq
  %i.gf = icmp ult ptr %.0.i.i76, %i.ge
  br i1 %i.gf, label %.lr.ph.i33.i86, label %.thread106

bb.ar:                                            ; preds = %bb.aq
  %i.gg = tail call ptr @wmemchr(ptr noundef %.0.i.i76, i32 noundef %.0.i66, i64 noundef %.028.i69.fr) #34 ; 2 uses
  %.not.i35.i88 = icmp eq ptr %i.gg, null
  br i1 %.not.i35.i88, label %.thread106, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %.0.i.i76 to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = ashr exact i64 %i.gj, 2
  br label %PyUnicode_FindChar.exit80

.lr.ph.i33.i86:                                   ; preds = %.preheader.i31.i84, %bb.au
  %.01721.i34.i87 = phi ptr [ %i.gr, %bb.au ], [ %.0.i.i76, %.preheader.i31.i84 ] ; 3 uses
  %i.gl = load i32, ptr %.01721.i34.i87, align 4, !tbaa !7
  %i.gm = icmp eq i32 %i.gl, %.0.i66
  br i1 %i.gm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i33.i86
  %i.gn = ptrtoint ptr %.01721.i34.i87 to i64
  %i.go = ptrtoint ptr %.0.i.i76 to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = ashr exact i64 %i.gp, 2
  br label %PyUnicode_FindChar.exit80

bb.au:                                            ; preds = %.lr.ph.i33.i86
  %i.gr = getelementptr i8, ptr %.01721.i34.i87, i64 4 ; 2 uses
  %i.gs = icmp ult ptr %i.gr, %i.ge
  br i1 %i.gs, label %.lr.ph.i33.i86, label %.thread106, !llvm.loop !485

bb.av:                                            ; preds = %_PyUnicode_DATA.exit.i75
  unreachable

PyUnicode_FindChar.exit80:                        ; preds = %bb.at, %bb.as, %bb.ap, %bb.am, %bb.al
  %.0.i77 = phi i64 [ %i.gd, %bb.ap ], [ %i.gq, %bb.at ], [ %i.ga, %bb.am ], [ %i.gk, %bb.as ], [ %i.fv, %bb.al ]
  %i.gt = icmp slt i64 %.0.i77, 0
  br i1 %i.gt, label %.thread106, label %.thread99.split

.thread106:                                       ; preds = %bb.ar, %.preheader.i.i91, %bb.ak, %bb.ai, %bb.ao, %.preheader.i31.i84, %PyUnicode_FindChar.exit80, %PyUnicode_READ.exit67, %.thread99.split, %bb.au, %bb.an, %.thread99, %.thread
  %.2103 = phi i64 [ %.0131, %.thread ], [ %.2102, %bb.au ], [ %.2102, %.thread99 ], [ %.2102, %bb.an ], [ %.2102, %.thread99.split ], [ %.2102, %PyUnicode_READ.exit67 ], [ %.2102, %PyUnicode_FindChar.exit80 ], [ %.2102, %.preheader.i31.i84 ], [ %.2102, %bb.ao ], [ %.2102, %bb.ai ], [ %.2102, %bb.ak ], [ %.2102, %.preheader.i.i91 ], [ %.2102, %bb.ar ]
  %.3 = phi i64 [ %.val51, %.thread ], [ %.040.in, %bb.au ], [ %.val51, %.thread99 ], [ %.040.in, %bb.an ], [ %.040.in, %.thread99.split ], [ %.040.in, %PyUnicode_READ.exit67 ], [ %.040.in, %PyUnicode_FindChar.exit80 ], [ %.040.in, %.preheader.i31.i84 ], [ %.040.in, %bb.ao ], [ %.040.in, %bb.ai ], [ %.040.in, %bb.ak ], [ %.040.in, %.preheader.i.i91 ], [ %.040.in, %bb.ar ]
  %i.gu = tail call ptr @PyUnicode_Substring(ptr noundef %0, i64 noundef %.2103, i64 noundef %.3)
  ret ptr %i.gu
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_Substring(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val36 = load i64, ptr %i.a, align 8, !tbaa !207 ; 3 uses
  %i.b = tail call i64 @llvm.smin.i64(i64 %2, i64 %.val36) ; 2 uses
  %i.c = icmp ne i64 %1, 0
  %.not = icmp sgt i64 %.val36, %2
  %or.cond34 = select i1 %i.c, i1 true, i1 %.not
  br i1 %or.cond34, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @unicode_result_unchanged(ptr noundef nonnull %0)
  br label %_PyUnicode_FromASCII.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %1, 0
  %i.f = icmp slt i64 %i.b, 0
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.28) #33
  br label %_PyUnicode_FromASCII.exit

bb.e:                                             ; preds = %bb.c
  %.not32 = icmp sge i64 %1, %.val36
  %i.h = icmp slt i64 %2, %1
  %or.cond35 = or i1 %i.h, %.not32
  br i1 %or.cond35, label %_PyUnicode_FromASCII.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = sub nsw i64 %i.b, %1                     ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 32
  %.val = load i32, ptr %i.j, align 8             ; 4 uses
  %i.k = and i32 %.val, 64
  %.not33 = icmp eq i32 %i.k, 0
  br i1 %.not33, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = and i32 %.val, 32
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.0.i.i = getelementptr i8, ptr %0, i64 40
  br label %_PyUnicode_DATA.exit

bb.i:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.m, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %.0.i.i, %bb.h ], [ %.val4.i, %bb.i ]
  %i.n = getelementptr i8, ptr %.0.i, i64 %1      ; 2 uses
  %i.o = icmp eq i64 %i.i, 1
  br i1 %i.o, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_PyUnicode_DATA.exit
  %i.p = load i8, ptr %i.n, align 1, !tbaa !205   ; 3 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.r = zext nneg i8 %i.p to i64
  %i.s = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.r
  br label %_PyUnicode_FromASCII.exit

bb.l:                                             ; preds = %bb.j
  %i.t = and i8 %i.p, 127
  %i.u = zext nneg i8 %i.t to i64
  %i.v = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.u
  br label %_PyUnicode_FromASCII.exit

bb.m:                                             ; preds = %_PyUnicode_DATA.exit
  %i.w = tail call ptr @PyUnicode_New(i64 noundef %i.i, i32 noundef 127), !inline_history !604 ; 5 uses
  %.not.i37 = icmp eq ptr %i.w, null
  br i1 %.not.i37, label %_PyUnicode_FromASCII.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr i8, ptr %i.w, i64 32
  %.val.i.i = load i32, ptr %i.x, align 8         ; 2 uses
  %i.y = and i32 %.val.i.i, 32
  %.not.i.i38 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i38, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = and i32 %.val.i.i, 64
  %.not.i.i.i = icmp eq i32 %i.z, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.w, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.p:                                             ; preds = %bb.n
  %i.aa = getelementptr i8, ptr %i.w, i64 56
  %.val4.i.i = load ptr, ptr %i.aa, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.p, %bb.o
  %.0.i.i39 = phi ptr [ %.0.i.i.i, %bb.o ], [ %.val4.i.i, %bb.p ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i39, ptr readonly align 1 %i.n, i64 %i.i, i1 false)
  br label %_PyUnicode_FromASCII.exit

bb.q:                                             ; preds = %bb.f
  %i.ab = lshr i32 %.val, 2
  %i.ac = and i32 %i.ab, 7                        ; 2 uses
  %i.ad = and i32 %.val, 32
  %.not.i42 = icmp eq i32 %i.ad, 0
  %i.ae = getelementptr i8, ptr %0, i64 56        ; 2 uses
  br i1 %.not.i42, label %bb.r, label %_PyUnicode_DATA.exit48

bb.r:                                             ; preds = %bb.q
  %.val4.i47 = load ptr, ptr %i.ae, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit48

_PyUnicode_DATA.exit48:                           ; preds = %bb.q, %bb.r
  %.0.i46 = phi ptr [ %.val4.i47, %bb.r ], [ %i.ae, %bb.q ]
  %i.af = zext nneg i32 %i.ac to i64
  %i.ag = mul i64 %1, %i.af
  %i.ah = getelementptr i8, ptr %.0.i46, i64 %i.ag
  %i.ai = tail call ptr @PyUnicode_FromKindAndData(i32 noundef %i.ac, ptr noundef %i.ah, i64 noundef %i.i)
  br label %_PyUnicode_FromASCII.exit

_PyUnicode_FromASCII.exit:                        ; preds = %bb.e, %_PyUnicode_DATA.exit.i, %bb.m, %bb.l, %bb.k, %_PyUnicode_DATA.exit48, %bb.d, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.d ], [ %i.v, %bb.l ], [ %i.ai, %_PyUnicode_DATA.exit48 ], [ null, %bb.m ], [ %i.w, %_PyUnicode_DATA.exit.i ], [ %i.s, %bb.k ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyUnicode_BinarySlice(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.d = call i32 @_PyEval_UnpackIndices(ptr noundef %1, ptr noundef %2, i64 noundef %.val, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #33
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !193
  %i.f = load i64, ptr %i.b, align 8, !tbaa !193
  %i.g = call ptr @PyUnicode_Substring(ptr noundef nonnull %0, i64 noundef %i.e, i64 noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.0
}

declare i32 @_PyEval_UnpackIndices(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @unicode_result_unchanged(ptr nofree noundef captures(ret: address, provenance) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %.not = icmp eq ptr %.val, @PyUnicode_Type
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !205    ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !205
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val, i64 168
  %.val12.i = load i64, ptr %i.e, align 8, !tbaa !198
  %i.f = and i64 %.val12.i, 268435456
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 2379) #33, !inline_history !379
  br label %_Py_NewRef.exit

bb.f:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 16
  %.val13.i = load i64, ptr %i.g, align 8, !tbaa !207 ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val14.i = load i32, ptr %i.h, align 8         ; 2 uses
  %i.i = and i32 %.val14.i, 64
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.g, label %PyUnicode_MAX_CHAR_VALUE.exit.i

bb.g:                                             ; preds = %bb.f
  %i.j = lshr i32 %.val14.i, 2
  %i.k = and i32 %i.j, 7                          ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %i.k, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 65535, i32 1114111
  %switch.selectcmp5.i.i = icmp eq i32 %i.k, 1
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, i32 255, i32 %switch.select.i.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit.i

PyUnicode_MAX_CHAR_VALUE.exit.i:                  ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %switch.select6.i.i, %bb.g ], [ 127, %bb.f ]
  %i.l = tail call ptr @PyUnicode_New(i64 noundef %.val13.i, i32 noundef %.0.i.i), !inline_history !379 ; 5 uses
  %.not11.i = icmp eq ptr %i.l, null
  br i1 %.not11.i, label %_Py_NewRef.exit, label %bb.h

bb.h:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit.i
  %i.m = getelementptr i8, ptr %i.l, i64 32
  %.val.i.i = load i32, ptr %i.m, align 8         ; 2 uses
  %i.n = and i32 %.val.i.i, 32
  %.not.i15.i = icmp eq i32 %i.n, 0
  br i1 %.not.i15.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = and i32 %.val.i.i, 64
  %.not.i.i.i = icmp eq i32 %i.o, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.l, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.j:                                             ; preds = %bb.h
  %i.p = getelementptr i8, ptr %i.l, i64 56
  %.val4.i.i = load ptr, ptr %i.p, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.j, %bb.i
  %.0.i16.i = phi ptr [ %.0.i.i.i, %bb.i ], [ %.val4.i.i, %bb.j ]
  %.val.i17.i = load i32, ptr %i.h, align 8       ; 3 uses
  %i.q = and i32 %.val.i17.i, 32
  %.not.i18.i = icmp eq i32 %i.q, 0
  br i1 %.not.i18.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.r = and i32 %.val.i17.i, 64
  %.not.i.i19.i = icmp eq i32 %i.r, 0
  %.0.v.i.i20.i = select i1 %.not.i.i19.i, i64 56, i64 40
  %.0.i.i21.i = getelementptr i8, ptr %0, i64 %.0.v.i.i20.i
  br label %_PyUnicode_DATA.exit24.i

bb.l:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.s = getelementptr i8, ptr %0, i64 56
  %.val4.i23.i = load ptr, ptr %i.s, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit24.i

_PyUnicode_DATA.exit24.i:                         ; preds = %bb.l, %bb.k
  %.0.i22.i = phi ptr [ %.0.i.i21.i, %bb.k ], [ %.val4.i23.i, %bb.l ]
  %i.t = lshr i32 %.val.i17.i, 2
  %i.u = and i32 %i.t, 7
  %i.v = zext nneg i32 %i.u to i64
  %i.w = mul i64 %.val13.i, %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i16.i, ptr align 1 %.0.i22.i, i64 %i.w, i1 false)
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %_PyUnicode_DATA.exit24.i, %PyUnicode_MAX_CHAR_VALUE.exit.i, %bb.e, %bb.c, %bb.b
  %.0 = phi ptr [ %0, %bb.c ], [ %0, %bb.b ], [ %i.l, %_PyUnicode_DATA.exit24.i ], [ null, %bb.e ], [ null, %PyUnicode_MAX_CHAR_VALUE.exit.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_Replace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
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
  br label %bb.b

_PyUnicode_EnsureUnicode.exit:                    ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val.i7 = load ptr, ptr %i.f, align 8, !tbaa !197
  %i.g = getelementptr i8, ptr %.val.i7, i64 168
  %.val2.i8 = load i64, ptr %i.g, align 8, !tbaa !198
  %i.h = and i64 %.val2.i8, 268435456
  %.not.i9 = icmp eq i64 %i.h, 0
  br i1 %.not.i9, label %_PyUnicode_EnsureUnicode.exit11.thread, label %_PyUnicode_EnsureUnicode.exit11

_PyUnicode_EnsureUnicode.exit11.thread:           ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.193, ptr noundef nonnull %1) #33 ; 0 uses
  br label %bb.b

_PyUnicode_EnsureUnicode.exit11:                  ; preds = %_PyUnicode_EnsureUnicode.exit
  %i.k = getelementptr i8, ptr %2, i64 8
  %.val.i12 = load ptr, ptr %i.k, align 8, !tbaa !197
  %i.l = getelementptr i8, ptr %.val.i12, i64 168
  %.val2.i13 = load i64, ptr %i.l, align 8, !tbaa !198
  %i.m = and i64 %.val2.i13, 268435456
  %.not.i14 = icmp eq i64 %i.m, 0
  br i1 %.not.i14, label %_PyUnicode_EnsureUnicode.exit16.thread, label %_PyUnicode_EnsureUnicode.exit16

_PyUnicode_EnsureUnicode.exit16.thread:           ; preds = %_PyUnicode_EnsureUnicode.exit11
  %i.n = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.o = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.193, ptr noundef nonnull %2) #33 ; 0 uses
  br label %bb.b

_PyUnicode_EnsureUnicode.exit16:                  ; preds = %_PyUnicode_EnsureUnicode.exit11
  %i.p = tail call fastcc ptr @replace(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %bb.b

bb.b:                                             ; preds = %_PyUnicode_EnsureUnicode.exit16.thread, %_PyUnicode_EnsureUnicode.exit11.thread, %_PyUnicode_EnsureUnicode.exit.thread, %_PyUnicode_EnsureUnicode.exit16
  %.0 = phi ptr [ %i.p, %_PyUnicode_EnsureUnicode.exit16 ], [ null, %_PyUnicode_EnsureUnicode.exit16.thread ], [ null, %_PyUnicode_EnsureUnicode.exit11.thread ], [ null, %_PyUnicode_EnsureUnicode.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @replace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val.i = load i32, ptr %i.b, align 8           ; 4 uses
  %i.c = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

end_hunk_13
begin_hunk_14_@split:bb.a

.preheader142.lr.ph.i:                            ; preds = %.preheader143.i
  %i.dr = getelementptr i8, ptr %0, i64 8
  %i.ds = getelementptr i8, ptr %i.do, i64 24     ; 2 uses
  br label %.preheader142.i

.preheader142.i:                                  ; preds = %Py_DECREF.exit92.i143, %.preheader142.lr.ph.i
  %.071154.i = phi i64 [ 0, %.preheader142.lr.ph.i ], [ %i.gd, %Py_DECREF.exit92.i143 ] ; 6 uses
  %.072153.i = phi i64 [ 0, %.preheader142.lr.ph.i ], [ %.274.i137.lcssa, %Py_DECREF.exit92.i143 ] ; 3 uses
  %i.dt = icmp slt i64 %.072153.i, %.val100
  br i1 %i.dt, label %.lr.ph.i158, label %.critedge.i134

.lr.ph.i158:                                      ; preds = %.preheader142.i, %bb.az
  %.173151.i = phi i64 [ %i.ed, %bb.az ], [ %.072153.i, %.preheader142.i ] ; 3 uses
  %i.du = getelementptr i8, ptr %.0.i112, i64 %.173151.i
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !205 ; 3 uses
  %i.dw = icmp sgt i8 %i.dv, -1
  br i1 %i.dw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.i158
  %i.dx = zext nneg i8 %i.dv to i64
  %i.dy = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !205
  %i.ea = zext i8 %i.dz to i32
  br label %Py_UNICODE_ISSPACE.exit.i159

bb.ay:                                            ; preds = %.lr.ph.i158
  %i.eb = zext i8 %i.dv to i32
  %i.ec = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.eb) #33, !inline_history !613
  br label %Py_UNICODE_ISSPACE.exit.i159

Py_UNICODE_ISSPACE.exit.i159:                     ; preds = %bb.ay, %bb.ax
  %.0.i.i160 = phi i32 [ %i.ea, %bb.ax ], [ %i.ec, %bb.ay ]
  %.not.i161 = icmp eq i32 %.0.i.i160, 0
  br i1 %.not.i161, label %.critedge.i134, label %bb.az

bb.az:                                            ; preds = %Py_UNICODE_ISSPACE.exit.i159
  %i.ed = add i64 %.173151.i, 1                   ; 2 uses
  %exitcond.not.i162 = icmp eq i64 %i.ed, %.val100
  br i1 %exitcond.not.i162, label %.loopexit.thread.i118, label %.lr.ph.i158, !llvm.loop !614

.critedge.i134:                                   ; preds = %Py_UNICODE_ISSPACE.exit.i159, %.preheader142.i
  %.173.lcssa.i135 = phi i64 [ %.072153.i, %.preheader142.i ], [ %.173151.i, %Py_UNICODE_ISSPACE.exit.i159 ] ; 5 uses
  %i.ee = icmp eq i64 %.173.lcssa.i135, %.val100
  br i1 %i.ee, label %.loopexit.thread.i118, label %.preheader141.i.preheader

.preheader141.i.preheader:                        ; preds = %.critedge.i134
  %.274.i1371316 = add i64 %.173.lcssa.i135, 1    ; 3 uses
  %i.ef = icmp slt i64 %.274.i1371316, %.val100
  br i1 %i.ef, label %.lr.ph1318, label %.critedge2.i138

.preheader141.i:                                  ; preds = %Py_UNICODE_ISSPACE.exit103.i155
  %.274.i137 = add i64 %.274.i1371317, 1          ; 3 uses
  %i.eg = icmp slt i64 %.274.i137, %.val100
  br i1 %i.eg, label %.lr.ph1318, label %.critedge2.i138, !llvm.loop !615

.lr.ph1318:                                       ; preds = %.preheader141.i.preheader, %.preheader141.i
  %.274.i1371317 = phi i64 [ %.274.i137, %.preheader141.i ], [ %.274.i1371316, %.preheader141.i.preheader ] ; 3 uses
  %i.eh = getelementptr i8, ptr %.0.i112, i64 %.274.i1371317
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !205 ; 3 uses
  %i.ej = icmp sgt i8 %i.ei, -1
  br i1 %i.ej, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph1318
  %i.ek = zext nneg i8 %i.ei to i64
  %i.el = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !205
  %i.en = zext i8 %i.em to i32
  br label %Py_UNICODE_ISSPACE.exit103.i155

bb.bb:                                            ; preds = %.lr.ph1318
  %i.eo = zext i8 %i.ei to i32
  %i.ep = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.eo) #33, !inline_history !613
  br label %Py_UNICODE_ISSPACE.exit103.i155

Py_UNICODE_ISSPACE.exit103.i155:                  ; preds = %bb.bb, %bb.ba
  %.0.i102.i156 = phi i32 [ %i.en, %bb.ba ], [ %i.ep, %bb.bb ]
  %.not81.i157 = icmp eq i32 %.0.i102.i156, 0
  br i1 %.not81.i157, label %.preheader141.i, label %Py_UNICODE_ISSPACE.exit103.i155..critedge2.i138_crit_edge, !llvm.loop !615

Py_UNICODE_ISSPACE.exit103.i155..critedge2.i138_crit_edge: ; preds = %Py_UNICODE_ISSPACE.exit103.i155
  br label %.critedge2.i138, !llvm.loop !615

.critedge2.i138:                                  ; preds = %.preheader141.i, %Py_UNICODE_ISSPACE.exit103.i155..critedge2.i138_crit_edge, %.preheader141.i.preheader
  %.274.i137.lcssa = phi i64 [ %.274.i1371317, %Py_UNICODE_ISSPACE.exit103.i155..critedge2.i138_crit_edge ], [ %.274.i1371316, %.preheader141.i.preheader ], [ %.274.i137, %.preheader141.i ] ; 5 uses
  %i.eq = icmp eq i64 %.173.lcssa.i135, 0
  %i.er = icmp eq i64 %.274.i137.lcssa, %.val100
  %or.cond.i139 = and i1 %i.eq, %i.er
  br i1 %or.cond.i139, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %.critedge2.i138
  %.val.i152 = load ptr, ptr %i.dr, align 8, !tbaa !197
  %.not138.i = icmp eq ptr %.val.i152, @PyUnicode_Type
  br i1 %.not138.i, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.es = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.et = icmp ugt i32 %i.es, -1073741825
  br i1 %i.et, label %Py_INCREF.exit.i153, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eu = add nuw i32 %i.es, 1
  store i32 %i.eu, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit.i153

Py_INCREF.exit.i153:                              ; preds = %bb.be, %bb.bd
  %.val101.i154 = load ptr, ptr %i.ds, align 8, !tbaa !540
  store ptr %0, ptr %.val101.i154, align 8, !tbaa !194
  %i.ev = add nuw i64 %.071154.i, 1
  br label %.loopexit.thread.i118

bb.bf:                                            ; preds = %bb.bc, %.critedge2.i138
  %i.ew = getelementptr i8, ptr %.0.i112, i64 %.173.lcssa.i135 ; 3 uses
  %i.ex = sub i64 %.274.i137.lcssa, %.173.lcssa.i135 ; 3 uses
  switch i64 %i.ex, label %bb.bg [
    i64 0, label %_PyUnicode_FromUCS1.exit.thread.i
    i64 1, label %_PyUnicode_FromUCS1.exit.i
  ]

_PyUnicode_FromUCS1.exit.i:                       ; preds = %bb.bf
  %i.ey = load i8, ptr %i.ew, align 1, !tbaa !205 ; 3 uses
  %i.ez = and i8 %i.ey, 127
  %i.fa = zext nneg i8 %i.ez to i64
  %i.fb = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.fa
  %i.fc = zext nneg i8 %i.ey to i64
  %i.fd = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.fc
  %i.fe = icmp slt i8 %i.ey, 0
  %.0.i104.i = select i1 %i.fe, ptr %i.fb, ptr %i.fd ; 2 uses
  %i.ff = icmp eq ptr %.0.i104.i, null
  br i1 %i.ff, label %Py_DECREF.exit94.i129, label %_PyUnicode_FromUCS1.exit.thread.i

bb.bg:                                            ; preds = %bb.bf
  %i.fg = getelementptr i8, ptr %.0.i112, i64 %.274.i137.lcssa ; 3 uses
  br label %bb.bh

bb.bh:                                            ; preds = %.thread31.i.i.i, %bb.bg
  %.021.i.i.i = phi ptr [ %i.ew, %bb.bg ], [ %i.fo, %.thread31.i.i.i ] ; 4 uses
  %i.fh = icmp ult ptr %.021.i.i.i, %i.fg
  br i1 %i.fh, label %bb.bi, label %ucs1lib_find_max_char.exit.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.fi = ptrtoint ptr %.021.i.i.i to i64
  %i.fj = and i64 %i.fi, 7
  %.not.i.i.i151 = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i.i151, label %.preheader.i.i.i, label %.thread31.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bi, %bb.bj
  %.019.i.i.i = phi ptr [ %i.fk, %bb.bj ], [ %.021.i.i.i, %bb.bi ] ; 4 uses
  %i.fk = getelementptr i8, ptr %.019.i.i.i, i64 8 ; 2 uses
  %.not26.i.i.i = icmp ugt ptr %i.fk, %i.fg
  br i1 %.not26.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.preheader.i.i.i
  %i.fl = load i64, ptr %.019.i.i.i, align 8, !tbaa !193
  %i.fm = and i64 %i.fl, -9187201950435737472
  %.not27.i.i.i = icmp eq i64 %i.fm, 0
  br i1 %.not27.i.i.i, label %.preheader.i.i.i, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !220

bb.bk:                                            ; preds = %.preheader.i.i.i
  %i.fn = icmp eq ptr %.019.i.i.i, %i.fg
  br i1 %i.fn, label %ucs1lib_find_max_char.exit.i.i, label %.thread31.i.i.i

.thread31.i.i.i:                                  ; preds = %bb.bk, %bb.bi
  %.223.i.i.i = phi ptr [ %.021.i.i.i, %bb.bi ], [ %.019.i.i.i, %bb.bk ] ; 2 uses
  %i.fo = getelementptr i8, ptr %.223.i.i.i, i64 1
  %i.fp = load i8, ptr %.223.i.i.i, align 1, !tbaa !205
  %.not28.i.i.i = icmp sgt i8 %i.fp, -1
  br i1 %.not28.i.i.i, label %bb.bh, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i.i:                   ; preds = %.thread31.i.i.i, %bb.bk, %bb.bh, %bb.bj
  %.5.i.i.i = phi i32 [ 255, %bb.bj ], [ 127, %bb.bh ], [ 127, %bb.bk ], [ 255, %.thread31.i.i.i ]
  %i.fq = tail call ptr @PyUnicode_New(i64 noundef %i.ex, i32 noundef %.5.i.i.i), !inline_history !616 ; 5 uses
  %.not.i105.i = icmp eq ptr %i.fq, null
  br i1 %.not.i105.i, label %Py_DECREF.exit94.i129, label %bb.bl

bb.bl:                                            ; preds = %ucs1lib_find_max_char.exit.i.i
  %i.fr = getelementptr i8, ptr %i.fq, i64 32
  %.val.i.i.i145 = load i32, ptr %i.fr, align 8   ; 2 uses
  %i.fs = and i32 %.val.i.i.i145, 32
  %.not.i15.i.i = icmp eq i32 %i.fs, 0
  br i1 %.not.i15.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ft = and i32 %.val.i.i.i145, 64
  %.not.i.i.i.i146 = icmp eq i32 %i.ft, 0
  %.0.v.i.i.i.i147 = select i1 %.not.i.i.i.i146, i64 56, i64 40
  %.0.i.i.i.i148 = getelementptr i8, ptr %i.fq, i64 %.0.v.i.i.i.i147
  br label %_PyUnicode_DATA.exit.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.fu = getelementptr i8, ptr %i.fq, i64 56
  %.val4.i.i.i150 = load ptr, ptr %i.fu, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.bn, %bb.bm
  %.0.i.i.i149 = phi ptr [ %.0.i.i.i.i148, %bb.bm ], [ %.val4.i.i.i150, %bb.bn ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i149, ptr align 1 %i.ew, i64 %i.ex, i1 false)
  br label %_PyUnicode_FromUCS1.exit.thread.i

_PyUnicode_FromUCS1.exit.thread.i:                ; preds = %_PyUnicode_DATA.exit.i.i, %_PyUnicode_FromUCS1.exit.i, %bb.bf
  %.0.i104131.i = phi ptr [ %.0.i104.i, %_PyUnicode_FromUCS1.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.bf ], [ %i.fq, %_PyUnicode_DATA.exit.i.i ] ; 7 uses
  %i.fv = icmp samesign ult i64 %.071154.i, 12
  br i1 %i.fv, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i
  %.val100.i144 = load ptr, ptr %i.ds, align 8, !tbaa !540
  %i.fw = getelementptr [8 x i8], ptr %.val100.i144, i64 %.071154.i
  store ptr %.0.i104131.i, ptr %i.fw, align 8, !tbaa !194
  br label %Py_DECREF.exit92.i143

bb.bp:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i
  %i.fx = tail call i32 @PyList_Append(ptr noundef nonnull %i.do, ptr noundef nonnull %.0.i104131.i) #33, !inline_history !613
  %.not83.i140 = icmp eq i32 %i.fx, 0
  %i.fy = load i32, ptr %.0.i104131.i, align 8, !tbaa !205 ; 3 uses
  %.not.i91.i142 = icmp sgt i32 %i.fy, -1         ; 2 uses
  br i1 %.not83.i140, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  br i1 %.not.i91.i142, label %bb.br, label %Py_DECREF.exit94.i129

bb.br:                                            ; preds = %bb.bq
  %i.fz = add nsw i32 %i.fy, -1                   ; 2 uses
  store i32 %i.fz, ptr %.0.i104131.i, align 8, !tbaa !205
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %Py_DECREF.exit94.sink.split.i131, label %Py_DECREF.exit94.i129

bb.bs:                                            ; preds = %bb.bp
  br i1 %.not.i91.i142, label %bb.bt, label %Py_DECREF.exit92.i143

bb.bt:                                            ; preds = %bb.bs
  %i.gb = add nsw i32 %i.fy, -1                   ; 2 uses
  store i32 %i.gb, ptr %.0.i104131.i, align 8, !tbaa !205
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.bu, label %Py_DECREF.exit92.i143

bb.bu:                                            ; preds = %bb.bt
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i104131.i) #33, !inline_history !613
  br label %Py_DECREF.exit92.i143

Py_DECREF.exit92.i143:                            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bo
  %i.gd = add nuw nsw i64 %.071154.i, 1           ; 2 uses
  %exitcond169.not.i = icmp eq i64 %i.gd, %.081
  br i1 %exitcond169.not.i, label %.loopexit.i115, label %.preheader142.i, !llvm.loop !617

.loopexit.i115:                                   ; preds = %Py_DECREF.exit92.i143, %.preheader143.i
  %.3.i116 = phi i64 [ 0, %.preheader143.i ], [ %.274.i137.lcssa, %Py_DECREF.exit92.i143 ] ; 2 uses
  %.1.i117 = phi i64 [ 0, %.preheader143.i ], [ %.081, %Py_DECREF.exit92.i143 ] ; 6 uses
  %i.ge = icmp slt i64 %.3.i116, %.val100
  br i1 %i.ge, label %.preheader.i121, label %.loopexit.thread.i118

.preheader.i121:                                  ; preds = %.loopexit.i115, %bb.bx
  %.4159.i = phi i64 [ %i.go, %bb.bx ], [ %.3.i116, %.loopexit.i115 ] ; 5 uses
  %i.gf = getelementptr i8, ptr %.0.i112, i64 %.4159.i
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !205 ; 3 uses
  %i.gh = icmp sgt i8 %i.gg, -1
  br i1 %i.gh, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.preheader.i121
  %i.gi = zext nneg i8 %i.gg to i64
  %i.gj = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !205
  %i.gl = zext i8 %i.gk to i32
  br label %Py_UNICODE_ISSPACE.exit107.i122

bb.bw:                                            ; preds = %.preheader.i121
  %i.gm = zext i8 %i.gg to i32
  %i.gn = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.gm) #33, !inline_history !613
  br label %Py_UNICODE_ISSPACE.exit107.i122

Py_UNICODE_ISSPACE.exit107.i122:                  ; preds = %bb.bw, %bb.bv
  %.0.i106.i123 = phi i32 [ %i.gl, %bb.bv ], [ %i.gn, %bb.bw ]
  %.not84.i124 = icmp eq i32 %.0.i106.i123, 0
  br i1 %.not84.i124, label %.critedge4.i125, label %bb.bx

bb.bx:                                            ; preds = %Py_UNICODE_ISSPACE.exit107.i122
  %i.go = add i64 %.4159.i, 1                     ; 2 uses
  %exitcond170.not.i = icmp eq i64 %i.go, %.val100
  br i1 %exitcond170.not.i, label %.loopexit.thread.i118, label %.preheader.i121, !llvm.loop !618

.critedge4.i125:                                  ; preds = %Py_UNICODE_ISSPACE.exit107.i122
  %i.gp = getelementptr i8, ptr %.0.i112, i64 %.4159.i ; 3 uses
  %.not85.i126 = icmp eq i64 %.4159.i, %.val100
  br i1 %.not85.i126, label %.loopexit.thread.i118, label %bb.by

bb.by:                                            ; preds = %.critedge4.i125
  %i.gq = sub i64 %.val100, %.4159.i              ; 3 uses
  switch i64 %i.gq, label %bb.bz [
    i64 0, label %_PyUnicode_FromUCS1.exit129.thread.i
    i64 1, label %_PyUnicode_FromUCS1.exit129.i
  ]

_PyUnicode_FromUCS1.exit129.i:                    ; preds = %bb.by
  %i.gr = load i8, ptr %i.gp, align 1, !tbaa !205 ; 3 uses
  %i.gs = and i8 %i.gr, 127
  %i.gt = zext nneg i8 %i.gs to i64
  %i.gu = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.gt
  %i.gv = zext nneg i8 %i.gr to i64
  %i.gw = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.gv
  %i.gx = icmp slt i8 %i.gr, 0
  %.0.i108.i = select i1 %i.gx, ptr %i.gu, ptr %i.gw ; 2 uses
  %i.gy = icmp eq ptr %.0.i108.i, null
  br i1 %i.gy, label %Py_DECREF.exit94.i129, label %_PyUnicode_FromUCS1.exit129.thread.i

bb.bz:                                            ; preds = %bb.by
  %i.gz = getelementptr i8, ptr %.0.i112, i64 %.val100 ; 3 uses
  br label %bb.ca

bb.ca:                                            ; preds = %.thread31.i.i122.i, %bb.bz
  %.021.i.i109.i = phi ptr [ %i.gp, %bb.bz ], [ %i.hh, %.thread31.i.i122.i ] ; 4 uses
  %i.ha = icmp ult ptr %.021.i.i109.i, %i.gz
  br i1 %i.ha, label %bb.cb, label %ucs1lib_find_max_char.exit.i110.i

bb.cb:                                            ; preds = %bb.ca
  %i.hb = ptrtoint ptr %.021.i.i109.i to i64
  %i.hc = and i64 %i.hb, 7
  %.not.i.i121.i = icmp eq i64 %i.hc, 0
  br i1 %.not.i.i121.i, label %.preheader.i.i125.i, label %.thread31.i.i122.i

.preheader.i.i125.i:                              ; preds = %bb.cb, %bb.cc
  %.019.i.i126.i = phi ptr [ %i.hd, %bb.cc ], [ %.021.i.i109.i, %bb.cb ] ; 4 uses
  %i.hd = getelementptr i8, ptr %.019.i.i126.i, i64 8 ; 2 uses
  %.not26.i.i127.i = icmp ugt ptr %i.hd, %i.gz
  br i1 %.not26.i.i127.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.preheader.i.i125.i
  %i.he = load i64, ptr %.019.i.i126.i, align 8, !tbaa !193
  %i.hf = and i64 %i.he, -9187201950435737472
  %.not27.i.i128.i = icmp eq i64 %i.hf, 0
  br i1 %.not27.i.i128.i, label %.preheader.i.i125.i, label %ucs1lib_find_max_char.exit.i110.i, !llvm.loop !220

bb.cd:                                            ; preds = %.preheader.i.i125.i
  %i.hg = icmp eq ptr %.019.i.i126.i, %i.gz
  br i1 %i.hg, label %ucs1lib_find_max_char.exit.i110.i, label %.thread31.i.i122.i

.thread31.i.i122.i:                               ; preds = %bb.cd, %bb.cb
  %.223.i.i123.i = phi ptr [ %.021.i.i109.i, %bb.cb ], [ %.019.i.i126.i, %bb.cd ] ; 2 uses
  %i.hh = getelementptr i8, ptr %.223.i.i123.i, i64 1
  %i.hi = load i8, ptr %.223.i.i123.i, align 1, !tbaa !205
  %.not28.i.i124.i = icmp sgt i8 %i.hi, -1
  br i1 %.not28.i.i124.i, label %bb.ca, label %ucs1lib_find_max_char.exit.i110.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i110.i:                ; preds = %.thread31.i.i122.i, %bb.cd, %bb.ca, %bb.cc
  %.5.i.i111.i = phi i32 [ 255, %bb.cc ], [ 127, %bb.ca ], [ 127, %bb.cd ], [ 255, %.thread31.i.i122.i ]
  %i.hj = tail call ptr @PyUnicode_New(i64 noundef %i.gq, i32 noundef %.5.i.i111.i), !inline_history !616 ; 5 uses
  %.not.i112.i = icmp eq ptr %i.hj, null
  br i1 %.not.i112.i, label %Py_DECREF.exit94.i129, label %bb.ce

bb.ce:                                            ; preds = %ucs1lib_find_max_char.exit.i110.i
  %i.hk = getelementptr i8, ptr %i.hj, i64 32
  %.val.i.i113.i = load i32, ptr %i.hk, align 8   ; 2 uses
  %i.hl = and i32 %.val.i.i113.i, 32
  %.not.i15.i114.i = icmp eq i32 %i.hl, 0
  br i1 %.not.i15.i114.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hm = and i32 %.val.i.i113.i, 64
  %.not.i.i.i115.i = icmp eq i32 %i.hm, 0
  %.0.v.i.i.i116.i = select i1 %.not.i.i.i115.i, i64 56, i64 40
  %.0.i.i.i117.i = getelementptr i8, ptr %i.hj, i64 %.0.v.i.i.i116.i
  br label %_PyUnicode_DATA.exit.i118.i

bb.cg:                                            ; preds = %bb.ce
  %i.hn = getelementptr i8, ptr %i.hj, i64 56
  %.val4.i.i120.i = load ptr, ptr %i.hn, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i118.i

_PyUnicode_DATA.exit.i118.i:                      ; preds = %bb.cg, %bb.cf
  %.0.i.i119.i = phi ptr [ %.0.i.i.i117.i, %bb.cf ], [ %.val4.i.i120.i, %bb.cg ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i119.i, ptr nonnull align 1 %i.gp, i64 %i.gq, i1 false)
  br label %_PyUnicode_FromUCS1.exit129.thread.i

_PyUnicode_FromUCS1.exit129.thread.i:             ; preds = %_PyUnicode_DATA.exit.i118.i, %_PyUnicode_FromUCS1.exit129.i, %bb.by
  %.0.i108135.i = phi ptr [ %.0.i108.i, %_PyUnicode_FromUCS1.exit129.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.by ], [ %i.hj, %_PyUnicode_DATA.exit.i118.i ] ; 7 uses
  %i.ho = icmp slt i64 %.1.i117, 12
  br i1 %i.ho, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %_PyUnicode_FromUCS1.exit129.thread.i
  %i.hp = getelementptr i8, ptr %i.do, i64 24
  %.val99.i133 = load ptr, ptr %i.hp, align 8, !tbaa !540
  %i.hq = getelementptr [8 x i8], ptr %.val99.i133, i64 %.1.i117
  store ptr %.0.i108135.i, ptr %i.hq, align 8, !tbaa !194
  br label %Py_DECREF.exit88.i132

bb.ci:                                            ; preds = %_PyUnicode_FromUCS1.exit129.thread.i
  %i.hr = tail call i32 @PyList_Append(ptr noundef nonnull %i.do, ptr noundef nonnull %.0.i108135.i) #33, !inline_history !613
  %.not86.i127 = icmp eq i32 %i.hr, 0
  %i.hs = load i32, ptr %.0.i108135.i, align 8, !tbaa !205 ; 3 uses
  %.not.i87.i128 = icmp sgt i32 %i.hs, -1         ; 2 uses
  br i1 %.not86.i127, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  br i1 %.not.i87.i128, label %bb.ck, label %Py_DECREF.exit94.i129

bb.ck:                                            ; preds = %bb.cj
  %i.ht = add nsw i32 %i.hs, -1                   ; 2 uses
  store i32 %i.ht, ptr %.0.i108135.i, align 8, !tbaa !205
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %Py_DECREF.exit94.sink.split.i131, label %Py_DECREF.exit94.i129

bb.cl:                                            ; preds = %bb.ci
  br i1 %.not.i87.i128, label %bb.cm, label %Py_DECREF.exit88.i132

bb.cm:                                            ; preds = %bb.cl
  %i.hv = add nsw i32 %i.hs, -1                   ; 2 uses
  store i32 %i.hv, ptr %.0.i108135.i, align 8, !tbaa !205
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.cn, label %Py_DECREF.exit88.i132

bb.cn:                                            ; preds = %bb.cm
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i108135.i) #33, !inline_history !613
  br label %Py_DECREF.exit88.i132

Py_DECREF.exit88.i132:                            ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.ch
  %i.hx = add nuw i64 %.1.i117, 1
  br label %.loopexit.thread.i118

.loopexit.thread.i118:                            ; preds = %.critedge.i134, %bb.az, %bb.bx, %Py_DECREF.exit88.i132, %.critedge4.i125, %.loopexit.i115, %Py_INCREF.exit.i153
  %.2.i119 = phi i64 [ %i.hx, %Py_DECREF.exit88.i132 ], [ %.1.i117, %.critedge4.i125 ], [ %.1.i117, %.loopexit.i115 ], [ %.071154.i, %bb.az ], [ %i.ev, %Py_INCREF.exit.i153 ], [ %.1.i117, %bb.bx ], [ %.071154.i, %.critedge.i134 ]
  %i.hy = getelementptr i8, ptr %i.do, i64 16
  store i64 %.2.i119, ptr %i.hy, align 8, !tbaa !380
  br label %asciilib_split_whitespace.exit

Py_DECREF.exit94.sink.split.i131:                 ; preds = %bb.ck, %bb.br
  %.0.i108135.sink.i = phi ptr [ %.0.i104131.i, %bb.br ], [ %.0.i108135.i, %bb.ck ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i108135.sink.i) #33, !inline_history !613
  br label %Py_DECREF.exit94.i129

Py_DECREF.exit94.i129:                            ; preds = %ucs1lib_find_max_char.exit.i.i, %_PyUnicode_FromUCS1.exit.i, %Py_DECREF.exit94.sink.split.i131, %bb.ck, %bb.cj, %ucs1lib_find_max_char.exit.i110.i, %_PyUnicode_FromUCS1.exit129.i, %bb.br, %bb.bq
  %i.hz = load i32, ptr %i.do, align 8, !tbaa !205 ; 2 uses
  %.not.i.i130 = icmp sgt i32 %i.hz, -1
  br i1 %.not.i.i130, label %bb.co, label %asciilib_split_whitespace.exit

bb.co:                                            ; preds = %Py_DECREF.exit94.i129
  %i.ia = add nsw i32 %i.hz, -1                   ; 2 uses
  store i32 %i.ia, ptr %i.do, align 8, !tbaa !205
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.cp, label %asciilib_split_whitespace.exit

bb.cp:                                            ; preds = %bb.co
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.do) #33, !inline_history !613
  br label %asciilib_split_whitespace.exit

bb.cq:                                            ; preds = %bb.d
  %i.ic = and i32 %i.c, 32
  %.not.i164 = icmp eq i32 %i.ic, 0
  br i1 %.not.i164, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.id = and i32 %i.c, 64
  %.not.i.i165 = icmp eq i32 %i.id, 0
  %.0.v.i.i166 = select i1 %.not.i.i165, i64 56, i64 40
  %.0.i.i167 = getelementptr i8, ptr %0, i64 %.0.v.i.i166
  br label %_PyUnicode_DATA.exit170

bb.cs:                                            ; preds = %bb.cq
  %i.ie = getelementptr i8, ptr %0, i64 56
  %.val4.i169 = load ptr, ptr %i.ie, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit170

_PyUnicode_DATA.exit170:                          ; preds = %bb.cr, %bb.cs
  %.0.i168 = phi ptr [ %.0.i.i167, %bb.cr ], [ %.val4.i169, %bb.cs ] ; 5 uses
  %i.if = tail call i64 @llvm.smin.i64(i64 range(i64 -4611686018427387903, -9223372036854775808) %.081, i64 11)
  %i.ig = add nsw i64 %i.if, 1
  %i.ih = tail call ptr @PyList_New(i64 noundef %i.ig) #33, !inline_history !619 ; 10 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %asciilib_split_whitespace.exit, label %.preheader109.i

.preheader109.i:                                  ; preds = %_PyUnicode_DATA.exit170
  %i.ij = icmp sgt i64 %.081, 0
  br i1 %i.ij, label %.preheader108.lr.ph.i, label %.loopexit.i171

.preheader108.lr.ph.i:                            ; preds = %.preheader109.i
  %i.ik = getelementptr i8, ptr %0, i64 8
  %i.il = getelementptr i8, ptr %i.ih, i64 24     ; 2 uses
  br label %.preheader108.i

.preheader108.i:                                  ; preds = %Py_DECREF.exit92.i198, %.preheader108.lr.ph.i
  %.071119.i = phi i64 [ 0, %.preheader108.lr.ph.i ], [ %i.kb, %Py_DECREF.exit92.i198 ] ; 6 uses
  %.072118.i = phi i64 [ 0, %.preheader108.lr.ph.i ], [ %.274.i192.lcssa, %Py_DECREF.exit92.i198 ] ; 3 uses
  %i.im = icmp slt i64 %.072118.i, %.val100
  br i1 %i.im, label %.lr.ph.i206, label %.critedge.i189

.lr.ph.i206:                                      ; preds = %.preheader108.i, %bb.cv
  %.173116.i = phi i64 [ %i.iw, %bb.cv ], [ %.072118.i, %.preheader108.i ] ; 3 uses
  %i.in = getelementptr [2 x i8], ptr %.0.i168, i64 %.173116.i
  %i.io = load i16, ptr %i.in, align 2, !tbaa !208 ; 3 uses
  %i.ip = icmp ult i16 %i.io, 128
  br i1 %i.ip, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %.lr.ph.i206
  %i.iq = zext nneg i16 %i.io to i64
  %i.ir = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !205
  %i.it = zext i8 %i.is to i32
  br label %Py_UNICODE_ISSPACE.exit.i207

bb.cu:                                            ; preds = %.lr.ph.i206
  %i.iu = zext i16 %i.io to i32
  %i.iv = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.iu) #33, !inline_history !619
  br label %Py_UNICODE_ISSPACE.exit.i207

Py_UNICODE_ISSPACE.exit.i207:                     ; preds = %bb.cu, %bb.ct
  %.0.i.i208 = phi i32 [ %i.it, %bb.ct ], [ %i.iv, %bb.cu ]
  %.not.i209 = icmp eq i32 %.0.i.i208, 0
  br i1 %.not.i209, label %.critedge.i189, label %bb.cv

bb.cv:                                            ; preds = %Py_UNICODE_ISSPACE.exit.i207
  %i.iw = add i64 %.173116.i, 1                   ; 2 uses
  %exitcond.not.i210 = icmp eq i64 %i.iw, %.val100
  br i1 %exitcond.not.i210, label %.loopexit.thread.i174, label %.lr.ph.i206, !llvm.loop !620

.critedge.i189:                                   ; preds = %Py_UNICODE_ISSPACE.exit.i207, %.preheader108.i
  %.173.lcssa.i190 = phi i64 [ %.072118.i, %.preheader108.i ], [ %.173116.i, %Py_UNICODE_ISSPACE.exit.i207 ] ; 5 uses
  %i.ix = icmp eq i64 %.173.lcssa.i190, %.val100
  br i1 %i.ix, label %.loopexit.thread.i174, label %.preheader107.i.preheader

.preheader107.i.preheader:                        ; preds = %.critedge.i189
  %.274.i1921306 = add i64 %.173.lcssa.i190, 1    ; 3 uses
  %i.iy = icmp slt i64 %.274.i1921306, %.val100
  br i1 %i.iy, label %.lr.ph1308, label %.critedge2.i193

.preheader107.i:                                  ; preds = %Py_UNICODE_ISSPACE.exit103.i203
  %.274.i192 = add i64 %.274.i1921307, 1          ; 3 uses
  %i.iz = icmp slt i64 %.274.i192, %.val100
  br i1 %i.iz, label %.lr.ph1308, label %.critedge2.i193, !llvm.loop !621

.lr.ph1308:                                       ; preds = %.preheader107.i.preheader, %.preheader107.i
  %.274.i1921307 = phi i64 [ %.274.i192, %.preheader107.i ], [ %.274.i1921306, %.preheader107.i.preheader ] ; 3 uses
  %i.ja = getelementptr [2 x i8], ptr %.0.i168, i64 %.274.i1921307
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !208 ; 3 uses
  %i.jc = icmp ult i16 %i.jb, 128
  br i1 %i.jc, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.lr.ph1308
  %i.jd = zext nneg i16 %i.jb to i64
  %i.je = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !205
  %i.jg = zext i8 %i.jf to i32
  br label %Py_UNICODE_ISSPACE.exit103.i203

bb.cx:                                            ; preds = %.lr.ph1308
  %i.jh = zext i16 %i.jb to i32
  %i.ji = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.jh) #33, !inline_history !619
  br label %Py_UNICODE_ISSPACE.exit103.i203

Py_UNICODE_ISSPACE.exit103.i203:                  ; preds = %bb.cx, %bb.cw
  %.0.i102.i204 = phi i32 [ %i.jg, %bb.cw ], [ %i.ji, %bb.cx ]
  %.not81.i205 = icmp eq i32 %.0.i102.i204, 0
  br i1 %.not81.i205, label %.preheader107.i, label %Py_UNICODE_ISSPACE.exit103.i203..critedge2.i193_crit_edge, !llvm.loop !621

Py_UNICODE_ISSPACE.exit103.i203..critedge2.i193_crit_edge: ; preds = %Py_UNICODE_ISSPACE.exit103.i203
  br label %.critedge2.i193, !llvm.loop !621

.critedge2.i193:                                  ; preds = %.preheader107.i, %Py_UNICODE_ISSPACE.exit103.i203..critedge2.i193_crit_edge, %.preheader107.i.preheader
  %.274.i192.lcssa = phi i64 [ %.274.i1921307, %Py_UNICODE_ISSPACE.exit103.i203..critedge2.i193_crit_edge ], [ %.274.i1921306, %.preheader107.i.preheader ], [ %.274.i192, %.preheader107.i ] ; 4 uses
  %i.jj = icmp eq i64 %.173.lcssa.i190, 0
  %i.jk = icmp eq i64 %.274.i192.lcssa, %.val100
  %or.cond.i194 = and i1 %i.jj, %i.jk
  br i1 %or.cond.i194, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %.critedge2.i193
  %.val.i200 = load ptr, ptr %i.ik, align 8, !tbaa !197
  %.not106.i = icmp eq ptr %.val.i200, @PyUnicode_Type
  br i1 %.not106.i, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.jl = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.jm = icmp ugt i32 %i.jl, -1073741825
  br i1 %i.jm, label %Py_INCREF.exit.i201, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jn = add nuw i32 %i.jl, 1
  store i32 %i.jn, ptr %0, align 8, !tbaa !205
end_hunk_14
begin_hunk_15_@split:bb.a
  %.0.i100110.i = phi ptr [ %i.ue, %_PyUnicode_FromASCII.exit102.thread108.i ], [ %.0.i100.i, %_PyUnicode_FromASCII.exit102.i ] ; 7 uses
  %i.uj = icmp slt i64 %.060.lcssa168.i, 12
  br i1 %i.uj, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.uk = getelementptr i8, ptr %i.sg, i64 24
  %.val82.i = load ptr, ptr %i.uk, align 8, !tbaa !540
  %i.ul = getelementptr [8 x i8], ptr %.val82.i, i64 %.060.lcssa168.i
  store ptr %.0.i100110.i, ptr %i.ul, align 8, !tbaa !194
  br label %Py_DECREF.exit71.i

bb.ie:                                            ; preds = %bb.ic
  %i.um = tail call i32 @PyList_Append(ptr noundef nonnull %i.sg, ptr noundef nonnull %.0.i100110.i) #33, !inline_history !629
  %.not69.i = icmp eq i32 %i.um, 0
  %i.un = load i32, ptr %.0.i100110.i, align 8, !tbaa !205 ; 3 uses
  %.not.i70.i = icmp sgt i32 %i.un, -1            ; 2 uses
  br i1 %.not69.i, label %bb.ih, label %bb.if

bb.if:                                            ; preds = %bb.ie
  br i1 %.not.i70.i, label %bb.ig, label %Py_DECREF.exit77.i

bb.ig:                                            ; preds = %bb.if
  %i.uo = add nsw i32 %i.un, -1                   ; 2 uses
  store i32 %i.uo, ptr %.0.i100110.i, align 8, !tbaa !205
  %i.up = icmp eq i32 %i.uo, 0
  br i1 %i.up, label %Py_DECREF.exit77.sink.split.i, label %Py_DECREF.exit77.i

bb.ih:                                            ; preds = %bb.ie
  br i1 %.not.i70.i, label %bb.ii, label %Py_DECREF.exit71.i

bb.ii:                                            ; preds = %bb.ih
  %i.uq = add nsw i32 %i.un, -1                   ; 2 uses
  store i32 %i.uq, ptr %.0.i100110.i, align 8, !tbaa !205
  %i.ur = icmp eq i32 %i.uq, 0
  br i1 %i.ur, label %bb.ij, label %Py_DECREF.exit71.i

bb.ij:                                            ; preds = %bb.ii
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i100110.i) #33, !inline_history !629
  br label %Py_DECREF.exit71.i

Py_DECREF.exit71.i:                               ; preds = %bb.ij, %bb.ii, %bb.ih, %bb.id
  %i.us = add nuw i64 %.060.lcssa168.i, 1
  br label %bb.ik

bb.ik:                                            ; preds = %Py_DECREF.exit71.i, %Py_INCREF.exit.i298
  %.1.i297 = phi i64 [ 1, %Py_INCREF.exit.i298 ], [ %i.us, %Py_DECREF.exit71.i ]
  %i.ut = getelementptr i8, ptr %i.sg, i64 16
  store i64 %.1.i297, ptr %i.ut, align 8, !tbaa !380
  br label %asciilib_split.exit

Py_DECREF.exit77.sink.split.i:                    ; preds = %bb.ig, %bb.hs
  %.0.i100110.sink.i = phi ptr [ %.0.i91106.i, %bb.hs ], [ %.0.i100110.i, %bb.ig ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i100110.sink.i) #33, !inline_history !629
  br label %Py_DECREF.exit77.i

Py_DECREF.exit77.i:                               ; preds = %bb.hk, %_PyUnicode_FromASCII.exit.i305, %Py_DECREF.exit77.sink.split.i, %bb.ig, %bb.if, %bb.hy, %_PyUnicode_FromASCII.exit102.i, %bb.hs, %bb.hr
  %i.uu = load i32, ptr %i.sg, align 8, !tbaa !205 ; 2 uses
  %.not.i.i296 = icmp sgt i32 %i.uu, -1
  br i1 %.not.i.i296, label %bb.il, label %asciilib_split.exit

bb.il:                                            ; preds = %Py_DECREF.exit77.i
  %i.uv = add nsw i32 %i.uu, -1                   ; 2 uses
  store i32 %i.uv, ptr %i.sg, align 8, !tbaa !205
  %i.uw = icmp eq i32 %i.uv, 0
  br i1 %i.uw, label %bb.im, label %asciilib_split.exit

bb.im:                                            ; preds = %bb.il
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.sg) #33, !inline_history !629
  br label %asciilib_split.exit

bb.in:                                            ; preds = %bb.fv, %bb.fu
  switch i64 %.val99, label %bb.kc [
    i64 0, label %bb.io
    i64 1, label %bb.ip
  ]

bb.io:                                            ; preds = %bb.in
  %i.ux = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.ux, ptr noundef nonnull @.str.197) #33, !inline_history !636
  br label %asciilib_split.exit

bb.ip:                                            ; preds = %bb.in
  %i.uy = load i8, ptr %.082, align 1, !tbaa !205
  %i.uz = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.va = add nsw i64 %i.uz, 1
  %i.vb = tail call ptr @PyList_New(i64 noundef %i.va) #33, !inline_history !637 ; 9 uses
  %i.vc = icmp eq ptr %i.vb, null
  br i1 %i.vc, label %asciilib_split.exit, label %.lr.ph129.i.i

.lr.ph129.i.i:                                    ; preds = %bb.ip
  %i.vd = getelementptr i8, ptr %i.vb, i64 24     ; 3 uses
  %i.ve = icmp sgt i64 %.1, 0
  br i1 %i.ve, label %.preheader.i.i324, label %.critedge.i.i321

bb.iq:                                            ; preds = %.loopexit.i.i325
  %i.vf = icmp sgt i64 %.in1323, 1
  br i1 %i.vf, label %.preheader.i.i324, label %.critedge.i.i321, !llvm.loop !638

.preheader.i.i324:                                ; preds = %.lr.ph129.i.i, %bb.iq
  %.in1323 = phi i64 [ %i.vg, %bb.iq ], [ %.1, %.lr.ph129.i.i ] ; 2 uses
  %.057126.i.i1297 = phi i64 [ %.158.i.i326, %bb.iq ], [ 0, %.lr.ph129.i.i ] ; 4 uses
  %.054127.i.i1296 = phi i64 [ %.256.i.i327, %bb.iq ], [ 0, %.lr.ph129.i.i ] ; 3 uses
  %.053128.i.i1295 = phi i64 [ %.1.i.i328, %bb.iq ], [ 0, %.lr.ph129.i.i ] ; 5 uses
  %i.vg = add nsw i64 %.in1323, -1
  %i.vh = icmp slt i64 %.054127.i.i1296, %.val100
  br i1 %i.vh, label %.lr.ph.i.i329, label %.loopexit.i.i325

.lr.ph.i.i329:                                    ; preds = %.preheader.i.i324, %bb.jf
  %.155124.i.i = phi i64 [ %i.wu, %bb.jf ], [ %.054127.i.i1296, %.preheader.i.i324 ] ; 5 uses
  %i.vi = getelementptr i8, ptr %.0.i278, i64 %.155124.i.i
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !205
  %i.vk = icmp eq i8 %i.vj, %i.uy
  br i1 %i.vk, label %bb.ir, label %bb.jf

bb.ir:                                            ; preds = %.lr.ph.i.i329
  %i.vl = getelementptr i8, ptr %.0.i278, i64 %.155124.i.i ; 3 uses
  %i.vm = getelementptr i8, ptr %.0.i278, i64 %.057126.i.i1297 ; 3 uses
  %i.vn = sub i64 %.155124.i.i, %.057126.i.i1297  ; 3 uses
  switch i64 %i.vn, label %.preheader126.i [
    i64 0, label %_PyUnicode_FromUCS1.exit.thread.i.i
    i64 1, label %_PyUnicode_FromUCS1.exit.i.i
  ]

_PyUnicode_FromUCS1.exit.i.i:                     ; preds = %bb.ir
  %i.vo = load i8, ptr %i.vm, align 1, !tbaa !205 ; 3 uses
  %i.vp = and i8 %i.vo, 127
  %i.vq = zext nneg i8 %i.vp to i64
  %i.vr = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.vq
  %i.vs = zext nneg i8 %i.vo to i64
  %i.vt = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.vs
  %i.vu = icmp slt i8 %i.vo, 0
  %.0.i.i.i331 = select i1 %i.vu, ptr %i.vr, ptr %i.vt ; 2 uses
  %i.vv = icmp eq ptr %.0.i.i.i331, null
  br i1 %i.vv, label %Py_DECREF.exit75.i.i312, label %_PyUnicode_FromUCS1.exit.thread.i.i

.preheader126.i:                                  ; preds = %bb.ir, %.thread31.i.i.i.i
  %.021.i.i.i.i = phi ptr [ %i.wd, %.thread31.i.i.i.i ], [ %i.vm, %bb.ir ] ; 4 uses
  %i.vw = icmp ult ptr %.021.i.i.i.i, %i.vl
  br i1 %i.vw, label %bb.is, label %ucs1lib_find_max_char.exit.i.i.i

bb.is:                                            ; preds = %.preheader126.i
  %i.vx = ptrtoint ptr %.021.i.i.i.i to i64
  %i.vy = and i64 %i.vx, 7
  %.not.i.i.i.i344 = icmp eq i64 %i.vy, 0
  br i1 %.not.i.i.i.i344, label %.preheader.i.i.i.i, label %.thread31.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.is, %bb.it
  %.019.i.i.i.i = phi ptr [ %i.vz, %bb.it ], [ %.021.i.i.i.i, %bb.is ] ; 4 uses
  %i.vz = getelementptr i8, ptr %.019.i.i.i.i, i64 8 ; 2 uses
  %.not26.i.i.i.i = icmp ugt ptr %i.vz, %i.vl
  br i1 %.not26.i.i.i.i, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %.preheader.i.i.i.i
  %i.wa = load i64, ptr %.019.i.i.i.i, align 8, !tbaa !193
  %i.wb = and i64 %i.wa, -9187201950435737472
  %.not27.i.i.i.i = icmp eq i64 %i.wb, 0
  br i1 %.not27.i.i.i.i, label %.preheader.i.i.i.i, label %ucs1lib_find_max_char.exit.i.i.i, !llvm.loop !220

bb.iu:                                            ; preds = %.preheader.i.i.i.i
  %i.wc = icmp eq ptr %.019.i.i.i.i, %i.vl
  br i1 %i.wc, label %ucs1lib_find_max_char.exit.i.i.i, label %.thread31.i.i.i.i

.thread31.i.i.i.i:                                ; preds = %bb.iu, %bb.is
  %.223.i.i.i.i = phi ptr [ %.021.i.i.i.i, %bb.is ], [ %.019.i.i.i.i, %bb.iu ] ; 2 uses
  %i.wd = getelementptr i8, ptr %.223.i.i.i.i, i64 1
  %i.we = load i8, ptr %.223.i.i.i.i, align 1, !tbaa !205
  %.not28.i.i.i.i = icmp sgt i8 %i.we, -1
  br i1 %.not28.i.i.i.i, label %.preheader126.i, label %ucs1lib_find_max_char.exit.i.i.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i.i.i:                 ; preds = %.thread31.i.i.i.i, %bb.iu, %.preheader126.i, %bb.it
  %.5.i.i.i.i = phi i32 [ 255, %bb.it ], [ 127, %bb.iu ], [ 127, %.preheader126.i ], [ 255, %.thread31.i.i.i.i ]
  %i.wf = tail call ptr @PyUnicode_New(i64 noundef %i.vn, i32 noundef %.5.i.i.i.i), !inline_history !639 ; 5 uses
  %.not.i83.i.i337 = icmp eq ptr %i.wf, null
  br i1 %.not.i83.i.i337, label %Py_DECREF.exit75.i.i312, label %bb.iv

bb.iv:                                            ; preds = %ucs1lib_find_max_char.exit.i.i.i
  %i.wg = getelementptr i8, ptr %i.wf, i64 32
  %.val.i.i.i.i338 = load i32, ptr %i.wg, align 8 ; 2 uses
  %i.wh = and i32 %.val.i.i.i.i338, 32
  %.not.i15.i.i.i = icmp eq i32 %i.wh, 0
  br i1 %.not.i15.i.i.i, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.wi = and i32 %.val.i.i.i.i338, 64
  %.not.i.i.i.i.i339 = icmp eq i32 %i.wi, 0
  %.0.v.i.i.i.i.i340 = select i1 %.not.i.i.i.i.i339, i64 56, i64 40
  %.0.i.i.i.i.i341 = getelementptr i8, ptr %i.wf, i64 %.0.v.i.i.i.i.i340
  br label %_PyUnicode_DATA.exit.i.i.i

bb.ix:                                            ; preds = %bb.iv
  %i.wj = getelementptr i8, ptr %i.wf, i64 56
  %.val4.i.i.i.i343 = load ptr, ptr %i.wj, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i.i.i

_PyUnicode_DATA.exit.i.i.i:                       ; preds = %bb.ix, %bb.iw
  %.0.i.i.i.i342 = phi ptr [ %.0.i.i.i.i.i341, %bb.iw ], [ %.val4.i.i.i.i343, %bb.ix ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i342, ptr align 1 %i.vm, i64 %i.vn, i1 false)
  br label %_PyUnicode_FromUCS1.exit.thread.i.i

_PyUnicode_FromUCS1.exit.thread.i.i:              ; preds = %_PyUnicode_DATA.exit.i.i.i, %_PyUnicode_FromUCS1.exit.i.i, %bb.ir
  %.0.i107.i.i = phi ptr [ %.0.i.i.i331, %_PyUnicode_FromUCS1.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.ir ], [ %i.wf, %_PyUnicode_DATA.exit.i.i.i ] ; 7 uses
  %i.wk = icmp slt i64 %.053128.i.i1295, 12
  br i1 %i.wk, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i.i
  %.val82.i.i336 = load ptr, ptr %i.vd, align 8, !tbaa !540
  %i.wl = getelementptr [8 x i8], ptr %.val82.i.i336, i64 %.053128.i.i1295
  store ptr %.0.i107.i.i, ptr %i.wl, align 8, !tbaa !194
  br label %Py_DECREF.exit73.i.i335

bb.iz:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i.i
  %i.wm = tail call i32 @PyList_Append(ptr noundef nonnull %i.vb, ptr noundef nonnull %.0.i107.i.i) #33, !inline_history !637
  %.not67.i.i332 = icmp eq i32 %i.wm, 0
  %i.wn = load i32, ptr %.0.i107.i.i, align 8, !tbaa !205 ; 3 uses
  %.not.i72.i.i334 = icmp sgt i32 %i.wn, -1       ; 2 uses
  br i1 %.not67.i.i332, label %bb.jc, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  br i1 %.not.i72.i.i334, label %bb.jb, label %Py_DECREF.exit75.i.i312

bb.jb:                                            ; preds = %bb.ja
  %i.wo = add nsw i32 %i.wn, -1                   ; 2 uses
  store i32 %i.wo, ptr %.0.i107.i.i, align 8, !tbaa !205
  %i.wp = icmp eq i32 %i.wo, 0
  br i1 %i.wp, label %Py_DECREF.exit75.sink.split.i.i315, label %Py_DECREF.exit75.i.i312

bb.jc:                                            ; preds = %bb.iz
  br i1 %.not.i72.i.i334, label %bb.jd, label %Py_DECREF.exit73.i.i335

bb.jd:                                            ; preds = %bb.jc
  %i.wq = add nsw i32 %i.wn, -1                   ; 2 uses
  store i32 %i.wq, ptr %.0.i107.i.i, align 8, !tbaa !205
  %i.wr = icmp eq i32 %i.wq, 0
  br i1 %i.wr, label %bb.je, label %Py_DECREF.exit73.i.i335

bb.je:                                            ; preds = %bb.jd
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i107.i.i) #33, !inline_history !637
  br label %Py_DECREF.exit73.i.i335

Py_DECREF.exit73.i.i335:                          ; preds = %bb.je, %bb.jd, %bb.jc, %bb.iy
  %i.ws = add i64 %.053128.i.i1295, 1
  %i.wt = add i64 %.155124.i.i, 1                 ; 2 uses
  br label %.loopexit.i.i325

bb.jf:                                            ; preds = %.lr.ph.i.i329
  %i.wu = add nsw i64 %.155124.i.i, 1             ; 2 uses
  %exitcond.not.i.i330 = icmp eq i64 %i.wu, %.val100
  br i1 %exitcond.not.i.i330, label %.critedge.i.i321, label %.lr.ph.i.i329, !llvm.loop !640

.loopexit.i.i325:                                 ; preds = %Py_DECREF.exit73.i.i335, %.preheader.i.i324
  %.158.i.i326 = phi i64 [ %i.wt, %Py_DECREF.exit73.i.i335 ], [ %.057126.i.i1297, %.preheader.i.i324 ] ; 3 uses
  %.256.i.i327 = phi i64 [ %i.wt, %Py_DECREF.exit73.i.i335 ], [ %.054127.i.i1296, %.preheader.i.i324 ] ; 2 uses
  %.1.i.i328 = phi i64 [ %i.ws, %Py_DECREF.exit73.i.i335 ], [ %.053128.i.i1295, %.preheader.i.i324 ] ; 3 uses
  %i.wv = icmp slt i64 %.256.i.i327, %.val100
  br i1 %i.wv, label %bb.iq, label %.loopexit.i.i325..critedge.i.i321.loopexit1152_crit_edge, !llvm.loop !638

.loopexit.i.i325..critedge.i.i321.loopexit1152_crit_edge: ; preds = %.loopexit.i.i325
  br label %.critedge.i.i321, !llvm.loop !638

.critedge.i.i321:                                 ; preds = %bb.iq, %bb.jf, %.lr.ph129.i.i, %.loopexit.i.i325..critedge.i.i321.loopexit1152_crit_edge
  %.057.lcssa.i.i322 = phi i64 [ %.057126.i.i1297, %bb.jf ], [ 0, %.lr.ph129.i.i ], [ %.158.i.i326, %.loopexit.i.i325..critedge.i.i321.loopexit1152_crit_edge ], [ %.158.i.i326, %bb.iq ] ; 3 uses
  %.053.lcssa.i.i323 = phi i64 [ %.053128.i.i1295, %bb.jf ], [ 0, %.lr.ph129.i.i ], [ %.1.i.i328, %.loopexit.i.i325..critedge.i.i321.loopexit1152_crit_edge ], [ %.1.i.i328, %bb.iq ] ; 5 uses
  %i.ww = icmp eq i64 %.053.lcssa.i.i323, 0
  br i1 %i.ww, label %.critedge.thread.i.i306, label %bb.ji

.critedge.thread.i.i306:                          ; preds = %.critedge.i.i321
  %i.wx = getelementptr i8, ptr %0, i64 8
  %.val.i.i307 = load ptr, ptr %i.wx, align 8, !tbaa !197
  %.not.i85.i308 = icmp eq ptr %.val.i.i307, @PyUnicode_Type
  br i1 %.not.i85.i308, label %bb.jg, label %bb.ji

bb.jg:                                            ; preds = %.critedge.thread.i.i306
  %i.wy = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.wz = icmp ugt i32 %i.wy, -1073741825
  br i1 %i.wz, label %Py_INCREF.exit.i.i319, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.xa = add nuw i32 %i.wy, 1
  store i32 %i.xa, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit.i.i319

Py_INCREF.exit.i.i319:                            ; preds = %bb.jh, %bb.jg
  %.val81.i.i320 = load ptr, ptr %i.vd, align 8, !tbaa !540
  store ptr %0, ptr %.val81.i.i320, align 8, !tbaa !194
  br label %bb.jz

bb.ji:                                            ; preds = %.critedge.thread.i.i306, %.critedge.i.i321
  %.not65.i.i309 = icmp sgt i64 %.057.lcssa.i.i322, %.val100
  br i1 %.not65.i.i309, label %bb.jz, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.xb = getelementptr i8, ptr %.0.i278, i64 %.057.lcssa.i.i322 ; 3 uses
  %i.xc = sub i64 %.val100, %.057.lcssa.i.i322    ; 3 uses
  switch i64 %i.xc, label %bb.jk [
    i64 0, label %_PyUnicode_FromUCS1.exit105.thread.i.i
    i64 1, label %_PyUnicode_FromUCS1.exit105.i.i
  ]

_PyUnicode_FromUCS1.exit105.i.i:                  ; preds = %bb.jj
  %i.xd = load i8, ptr %i.xb, align 1, !tbaa !205 ; 3 uses
  %i.xe = and i8 %i.xd, 127
  %i.xf = zext nneg i8 %i.xe to i64
  %i.xg = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.xf
  %i.xh = zext nneg i8 %i.xd to i64
  %i.xi = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.xh
  %i.xj = icmp slt i8 %i.xd, 0
  %.0.i84.i.i = select i1 %i.xj, ptr %i.xg, ptr %i.xi ; 2 uses
  %i.xk = icmp eq ptr %.0.i84.i.i, null
  br i1 %i.xk, label %Py_DECREF.exit75.i.i312, label %_PyUnicode_FromUCS1.exit105.thread.i.i

bb.jk:                                            ; preds = %bb.jj
  %i.xl = getelementptr i8, ptr %.0.i278, i64 %.val100 ; 3 uses
  br label %bb.jl

bb.jl:                                            ; preds = %.thread31.i.i98.i.i, %bb.jk
  %.021.i.i85.i.i = phi ptr [ %i.xb, %bb.jk ], [ %i.xt, %.thread31.i.i98.i.i ] ; 4 uses
  %i.xm = icmp ult ptr %.021.i.i85.i.i, %i.xl
  br i1 %i.xm, label %bb.jm, label %ucs1lib_find_max_char.exit.i86.i.i

bb.jm:                                            ; preds = %bb.jl
  %i.xn = ptrtoint ptr %.021.i.i85.i.i to i64
  %i.xo = and i64 %i.xn, 7
  %.not.i.i97.i.i = icmp eq i64 %i.xo, 0
  br i1 %.not.i.i97.i.i, label %.preheader.i.i101.i.i, label %.thread31.i.i98.i.i

.preheader.i.i101.i.i:                            ; preds = %bb.jm, %bb.jn
  %.019.i.i102.i.i = phi ptr [ %i.xp, %bb.jn ], [ %.021.i.i85.i.i, %bb.jm ] ; 4 uses
  %i.xp = getelementptr i8, ptr %.019.i.i102.i.i, i64 8 ; 2 uses
  %.not26.i.i103.i.i = icmp ugt ptr %i.xp, %i.xl
  br i1 %.not26.i.i103.i.i, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %.preheader.i.i101.i.i
  %i.xq = load i64, ptr %.019.i.i102.i.i, align 8, !tbaa !193
  %i.xr = and i64 %i.xq, -9187201950435737472
  %.not27.i.i104.i.i = icmp eq i64 %i.xr, 0
  br i1 %.not27.i.i104.i.i, label %.preheader.i.i101.i.i, label %ucs1lib_find_max_char.exit.i86.i.i, !llvm.loop !220

bb.jo:                                            ; preds = %.preheader.i.i101.i.i
  %i.xs = icmp eq ptr %.019.i.i102.i.i, %i.xl
  br i1 %i.xs, label %ucs1lib_find_max_char.exit.i86.i.i, label %.thread31.i.i98.i.i

.thread31.i.i98.i.i:                              ; preds = %bb.jo, %bb.jm
  %.223.i.i99.i.i = phi ptr [ %.021.i.i85.i.i, %bb.jm ], [ %.019.i.i102.i.i, %bb.jo ] ; 2 uses
  %i.xt = getelementptr i8, ptr %.223.i.i99.i.i, i64 1
  %i.xu = load i8, ptr %.223.i.i99.i.i, align 1, !tbaa !205
  %.not28.i.i100.i.i = icmp sgt i8 %i.xu, -1
  br i1 %.not28.i.i100.i.i, label %bb.jl, label %ucs1lib_find_max_char.exit.i86.i.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i86.i.i:               ; preds = %.thread31.i.i98.i.i, %bb.jo, %bb.jl, %bb.jn
  %.5.i.i87.i.i = phi i32 [ 255, %bb.jn ], [ 127, %bb.jo ], [ 127, %bb.jl ], [ 255, %.thread31.i.i98.i.i ]
  %i.xv = tail call ptr @PyUnicode_New(i64 noundef %i.xc, i32 noundef %.5.i.i87.i.i), !inline_history !639 ; 5 uses
  %.not.i88.i.i = icmp eq ptr %i.xv, null
  br i1 %.not.i88.i.i, label %Py_DECREF.exit75.i.i312, label %bb.jp

bb.jp:                                            ; preds = %ucs1lib_find_max_char.exit.i86.i.i
  %i.xw = getelementptr i8, ptr %i.xv, i64 32
  %.val.i.i89.i.i = load i32, ptr %i.xw, align 8  ; 2 uses
  %i.xx = and i32 %.val.i.i89.i.i, 32
  %.not.i15.i90.i.i = icmp eq i32 %i.xx, 0
  br i1 %.not.i15.i90.i.i, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.xy = and i32 %.val.i.i89.i.i, 64
  %.not.i.i.i91.i.i = icmp eq i32 %i.xy, 0
  %.0.v.i.i.i92.i.i = select i1 %.not.i.i.i91.i.i, i64 56, i64 40
  %.0.i.i.i93.i.i = getelementptr i8, ptr %i.xv, i64 %.0.v.i.i.i92.i.i
  br label %_PyUnicode_DATA.exit.i94.i.i

bb.jr:                                            ; preds = %bb.jp
  %i.xz = getelementptr i8, ptr %i.xv, i64 56
  %.val4.i.i96.i.i = load ptr, ptr %i.xz, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i94.i.i

_PyUnicode_DATA.exit.i94.i.i:                     ; preds = %bb.jr, %bb.jq
  %.0.i.i95.i.i = phi ptr [ %.0.i.i.i93.i.i, %bb.jq ], [ %.val4.i.i96.i.i, %bb.jr ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i95.i.i, ptr align 1 %i.xb, i64 %i.xc, i1 false)
  br label %_PyUnicode_FromUCS1.exit105.thread.i.i

_PyUnicode_FromUCS1.exit105.thread.i.i:           ; preds = %_PyUnicode_DATA.exit.i94.i.i, %_PyUnicode_FromUCS1.exit105.i.i, %bb.jj
  %.0.i84111.i.i = phi ptr [ %.0.i84.i.i, %_PyUnicode_FromUCS1.exit105.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.jj ], [ %i.xv, %_PyUnicode_DATA.exit.i94.i.i ] ; 7 uses
  %i.ya = icmp slt i64 %.053.lcssa.i.i323, 12
  br i1 %i.ya, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %_PyUnicode_FromUCS1.exit105.thread.i.i
  %.val80.i.i318 = load ptr, ptr %i.vd, align 8, !tbaa !540
  %i.yb = getelementptr [8 x i8], ptr %.val80.i.i318, i64 %.053.lcssa.i.i323
  store ptr %.0.i84111.i.i, ptr %i.yb, align 8, !tbaa !194
  br label %Py_DECREF.exit69.i.i316

bb.jt:                                            ; preds = %_PyUnicode_FromUCS1.exit105.thread.i.i
  %i.yc = tail call i32 @PyList_Append(ptr noundef nonnull %i.vb, ptr noundef nonnull %.0.i84111.i.i) #33, !inline_history !637
  %.not66.i.i310 = icmp eq i32 %i.yc, 0
  %i.yd = load i32, ptr %.0.i84111.i.i, align 8, !tbaa !205 ; 3 uses
  %.not.i68.i.i311 = icmp sgt i32 %i.yd, -1       ; 2 uses
  br i1 %.not66.i.i310, label %bb.jw, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  br i1 %.not.i68.i.i311, label %bb.jv, label %Py_DECREF.exit75.i.i312

bb.jv:                                            ; preds = %bb.ju
  %i.ye = add nsw i32 %i.yd, -1                   ; 2 uses
  store i32 %i.ye, ptr %.0.i84111.i.i, align 8, !tbaa !205
  %i.yf = icmp eq i32 %i.ye, 0
  br i1 %i.yf, label %Py_DECREF.exit75.sink.split.i.i315, label %Py_DECREF.exit75.i.i312

bb.jw:                                            ; preds = %bb.jt
  br i1 %.not.i68.i.i311, label %bb.jx, label %Py_DECREF.exit69.i.i316

bb.jx:                                            ; preds = %bb.jw
  %i.yg = add nsw i32 %i.yd, -1                   ; 2 uses
  store i32 %i.yg, ptr %.0.i84111.i.i, align 8, !tbaa !205
  %i.yh = icmp eq i32 %i.yg, 0
  br i1 %i.yh, label %bb.jy, label %Py_DECREF.exit69.i.i316

bb.jy:                                            ; preds = %bb.jx
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i84111.i.i) #33, !inline_history !637
  br label %Py_DECREF.exit69.i.i316

Py_DECREF.exit69.i.i316:                          ; preds = %bb.jy, %bb.jx, %bb.jw, %bb.js
  %i.yi = add i64 %.053.lcssa.i.i323, 1
  br label %bb.jz

bb.jz:                                            ; preds = %Py_DECREF.exit69.i.i316, %bb.ji, %Py_INCREF.exit.i.i319
  %.2.i.i317 = phi i64 [ 1, %Py_INCREF.exit.i.i319 ], [ %i.yi, %Py_DECREF.exit69.i.i316 ], [ %.053.lcssa.i.i323, %bb.ji ]
  %i.yj = getelementptr i8, ptr %i.vb, i64 16
  store i64 %.2.i.i317, ptr %i.yj, align 8, !tbaa !380
  br label %asciilib_split.exit

Py_DECREF.exit75.sink.split.i.i315:               ; preds = %bb.jv, %bb.jb
  %.0.i84111.sink.i.i = phi ptr [ %.0.i107.i.i, %bb.jb ], [ %.0.i84111.i.i, %bb.jv ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i84111.sink.i.i) #33, !inline_history !637
  br label %Py_DECREF.exit75.i.i312

Py_DECREF.exit75.i.i312:                          ; preds = %ucs1lib_find_max_char.exit.i.i.i, %_PyUnicode_FromUCS1.exit.i.i, %Py_DECREF.exit75.sink.split.i.i315, %bb.jv, %bb.ju, %ucs1lib_find_max_char.exit.i86.i.i, %_PyUnicode_FromUCS1.exit105.i.i, %bb.jb, %bb.ja
  %i.yk = load i32, ptr %i.vb, align 8, !tbaa !205 ; 2 uses
  %.not.i.i.i313 = icmp sgt i32 %i.yk, -1
  br i1 %.not.i.i.i313, label %bb.ka, label %asciilib_split.exit

bb.ka:                                            ; preds = %Py_DECREF.exit75.i.i312
  %i.yl = add nsw i32 %i.yk, -1                   ; 2 uses
  store i32 %i.yl, ptr %i.vb, align 8, !tbaa !205
  %i.ym = icmp eq i32 %i.yl, 0
  br i1 %i.ym, label %bb.kb, label %asciilib_split.exit

bb.kb:                                            ; preds = %bb.ka
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.vb) #33, !inline_history !637
  br label %asciilib_split.exit

bb.kc:                                            ; preds = %bb.in
  %i.yn = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.yo = add nsw i64 %i.yn, 1
  %i.yp = tail call ptr @PyList_New(i64 noundef %i.yo) #33, !inline_history !636 ; 11 uses
  %i.yq = icmp eq ptr %i.yp, null
  br i1 %i.yq, label %asciilib_split.exit, label %.preheader.i345

.preheader.i345:                                  ; preds = %bb.kc
  %i.yr = icmp sgt i64 %.1, 0
  br i1 %i.yr, label %.lr.ph.i358, label %._crit_edge.thread.i346

.lr.ph.i358:                                      ; preds = %.preheader.i345
  %i.ys = getelementptr i8, ptr %i.yp, i64 24
  br label %bb.kd

bb.kd:                                            ; preds = %Py_DECREF.exit75.i364, %.lr.ph.i358
  %.060147.i = phi i64 [ 0, %.lr.ph.i358 ], [ %i.aac, %Py_DECREF.exit75.i364 ] ; 5 uses
  %.062146.i = phi i64 [ 0, %.lr.ph.i358 ], [ %i.aae, %Py_DECREF.exit75.i364 ] ; 5 uses
  %i.yt = getelementptr i8, ptr %.0.i278, i64 %.062146.i ; 5 uses
  %i.yu = sub i64 %.val100, %.062146.i
  %i.yv = tail call fastcc i64 @ucs1lib_fastsearch(ptr noundef %i.yt, i64 noundef %i.yu, ptr noundef %.082, i64 noundef %.val99, i64 noundef -1, i32 noundef 1), !inline_history !636 ; 6 uses
  %i.yw = icmp slt i64 %i.yv, 0
  br i1 %i.yw, label %._crit_edge.i386, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  switch i64 %i.yv, label %bb.kf [
    i64 0, label %_PyUnicode_FromUCS1.exit.thread.i360
    i64 1, label %_PyUnicode_FromUCS1.exit.i359
  ]

_PyUnicode_FromUCS1.exit.i359:                    ; preds = %bb.ke
  %i.yx = load i8, ptr %i.yt, align 1, !tbaa !205 ; 3 uses
  %i.yy = and i8 %i.yx, 127
  %i.yz = zext nneg i8 %i.yy to i64
  %i.za = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.yz
  %i.zb = zext nneg i8 %i.yx to i64
  %i.zc = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.zb
  %i.zd = icmp slt i8 %i.yx, 0
  %.0.i86.i = select i1 %i.zd, ptr %i.za, ptr %i.zc ; 2 uses
  %i.ze = icmp eq ptr %.0.i86.i, null
  br i1 %i.ze, label %Py_DECREF.exit77.i350, label %_PyUnicode_FromUCS1.exit.thread.i360

bb.kf:                                            ; preds = %bb.ke
  %i.zf = getelementptr i8, ptr %i.yt, i64 %i.yv  ; 3 uses
  br label %bb.kg

bb.kg:                                            ; preds = %.thread31.i.i.i379, %bb.kf
  %.021.i.i.i367 = phi ptr [ %i.yt, %bb.kf ], [ %i.zn, %.thread31.i.i.i379 ] ; 4 uses
  %i.zg = icmp ult ptr %.021.i.i.i367, %i.zf
  br i1 %i.zg, label %bb.kh, label %ucs1lib_find_max_char.exit.i.i368

bb.kh:                                            ; preds = %bb.kg
  %i.zh = ptrtoint ptr %.021.i.i.i367 to i64
  %i.zi = and i64 %i.zh, 7
  %.not.i.i91.i = icmp eq i64 %i.zi, 0
  br i1 %.not.i.i91.i, label %.preheader.i.i.i382, label %.thread31.i.i.i379

.preheader.i.i.i382:                              ; preds = %bb.kh, %bb.ki
  %.019.i.i.i383 = phi ptr [ %i.zj, %bb.ki ], [ %.021.i.i.i367, %bb.kh ] ; 4 uses
  %i.zj = getelementptr i8, ptr %.019.i.i.i383, i64 8 ; 2 uses
  %.not26.i.i.i384 = icmp ugt ptr %i.zj, %i.zf
  br i1 %.not26.i.i.i384, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %.preheader.i.i.i382
  %i.zk = load i64, ptr %.019.i.i.i383, align 8, !tbaa !193
  %i.zl = and i64 %i.zk, -9187201950435737472
  %.not27.i.i.i385 = icmp eq i64 %i.zl, 0
  br i1 %.not27.i.i.i385, label %.preheader.i.i.i382, label %ucs1lib_find_max_char.exit.i.i368, !llvm.loop !220

bb.kj:                                            ; preds = %.preheader.i.i.i382
  %i.zm = icmp eq ptr %.019.i.i.i383, %i.zf
  br i1 %i.zm, label %ucs1lib_find_max_char.exit.i.i368, label %.thread31.i.i.i379

.thread31.i.i.i379:                               ; preds = %bb.kj, %bb.kh
  %.223.i.i.i380 = phi ptr [ %.021.i.i.i367, %bb.kh ], [ %.019.i.i.i383, %bb.kj ] ; 2 uses
  %i.zn = getelementptr i8, ptr %.223.i.i.i380, i64 1
  %i.zo = load i8, ptr %.223.i.i.i380, align 1, !tbaa !205
  %.not28.i.i.i381 = icmp sgt i8 %i.zo, -1
  br i1 %.not28.i.i.i381, label %bb.kg, label %ucs1lib_find_max_char.exit.i.i368, !llvm.loop !221

ucs1lib_find_max_char.exit.i.i368:                ; preds = %.thread31.i.i.i379, %bb.kj, %bb.kg, %bb.ki
  %.5.i.i.i369 = phi i32 [ 255, %bb.ki ], [ 127, %bb.kg ], [ 127, %bb.kj ], [ 255, %.thread31.i.i.i379 ]
  %i.zp = tail call ptr @PyUnicode_New(i64 noundef %i.yv, i32 noundef %.5.i.i.i369), !inline_history !641 ; 5 uses
  %.not.i87.i370 = icmp eq ptr %i.zp, null
  br i1 %.not.i87.i370, label %Py_DECREF.exit77.i350, label %bb.kk

bb.kk:                                            ; preds = %ucs1lib_find_max_char.exit.i.i368
  %i.zq = getelementptr i8, ptr %i.zp, i64 32
  %.val.i.i.i371 = load i32, ptr %i.zq, align 8   ; 2 uses
  %i.zr = and i32 %.val.i.i.i371, 32
  %.not.i15.i.i372 = icmp eq i32 %i.zr, 0
  br i1 %.not.i15.i.i372, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.zs = and i32 %.val.i.i.i371, 64
  %.not.i.i.i88.i373 = icmp eq i32 %i.zs, 0
  %.0.v.i.i.i.i374 = select i1 %.not.i.i.i88.i373, i64 56, i64 40
  %.0.i.i.i89.i375 = getelementptr i8, ptr %i.zp, i64 %.0.v.i.i.i.i374
  br label %_PyUnicode_DATA.exit.i.i376

bb.km:                                            ; preds = %bb.kk
  %i.zt = getelementptr i8, ptr %i.zp, i64 56
  %.val4.i.i.i378 = load ptr, ptr %i.zt, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i.i376

_PyUnicode_DATA.exit.i.i376:                      ; preds = %bb.km, %bb.kl
  %.0.i.i90.i377 = phi ptr [ %.0.i.i.i89.i375, %bb.kl ], [ %.val4.i.i.i378, %bb.km ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i90.i377, ptr align 1 %i.yt, i64 %i.yv, i1 false)
  br label %_PyUnicode_FromUCS1.exit.thread.i360

_PyUnicode_FromUCS1.exit.thread.i360:             ; preds = %_PyUnicode_DATA.exit.i.i376, %_PyUnicode_FromUCS1.exit.i359, %bb.ke
  %.0.i86115.i = phi ptr [ %.0.i86.i, %_PyUnicode_FromUCS1.exit.i359 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.ke ], [ %i.zp, %_PyUnicode_DATA.exit.i.i376 ] ; 7 uses
  %i.zu = icmp samesign ult i64 %.060147.i, 12
  br i1 %i.zu, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i360
  %.val84.i366 = load ptr, ptr %i.ys, align 8, !tbaa !540
  %i.zv = getelementptr [8 x i8], ptr %.val84.i366, i64 %.060147.i
  store ptr %.0.i86115.i, ptr %i.zv, align 8, !tbaa !194
  br label %Py_DECREF.exit75.i364

bb.ko:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i360
  %i.zw = tail call i32 @PyList_Append(ptr noundef nonnull %i.yp, ptr noundef nonnull %.0.i86115.i) #33, !inline_history !636
  %.not.i361 = icmp eq i32 %i.zw, 0
  %i.zx = load i32, ptr %.0.i86115.i, align 8, !tbaa !205 ; 3 uses
  %.not.i74.i363 = icmp sgt i32 %i.zx, -1         ; 2 uses
  br i1 %.not.i361, label %bb.kr, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  br i1 %.not.i74.i363, label %bb.kq, label %Py_DECREF.exit77.i350

bb.kq:                                            ; preds = %bb.kp
  %i.zy = add nsw i32 %i.zx, -1                   ; 2 uses
  store i32 %i.zy, ptr %.0.i86115.i, align 8, !tbaa !205
  %i.zz = icmp eq i32 %i.zy, 0
  br i1 %i.zz, label %Py_DECREF.exit77.sink.split.i352, label %Py_DECREF.exit77.i350

bb.kr:                                            ; preds = %bb.ko
  br i1 %.not.i74.i363, label %bb.ks, label %Py_DECREF.exit75.i364

bb.ks:                                            ; preds = %bb.kr
  %i.aaa = add nsw i32 %i.zx, -1                  ; 2 uses
  store i32 %i.aaa, ptr %.0.i86115.i, align 8, !tbaa !205
  %i.aab = icmp eq i32 %i.aaa, 0
  br i1 %i.aab, label %bb.kt, label %Py_DECREF.exit75.i364

bb.kt:                                            ; preds = %bb.ks
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i86115.i) #33, !inline_history !636
  br label %Py_DECREF.exit75.i364

Py_DECREF.exit75.i364:                            ; preds = %bb.kt, %bb.ks, %bb.kr, %bb.kn
  %i.aac = add nuw nsw i64 %.060147.i, 1          ; 2 uses
  %i.aad = add i64 %.062146.i, %.val99
  %i.aae = add i64 %i.aad, %i.yv                  ; 2 uses
  %exitcond.not.i365 = icmp eq i64 %i.aac, %.1
  br i1 %exitcond.not.i365, label %._crit_edge.thread205.i, label %bb.kd, !llvm.loop !642

._crit_edge.i386:                                 ; preds = %bb.kd
  %i.aaf = icmp eq i64 %.060147.i, 0
  br i1 %i.aaf, label %._crit_edge.thread.i346, label %._crit_edge.thread205.i

._crit_edge.thread.i346:                          ; preds = %._crit_edge.i386, %.preheader.i345
  %.062.lcssa202.i = phi i64 [ %.062146.i, %._crit_edge.i386 ], [ 0, %.preheader.i345 ]
  %i.aag = getelementptr i8, ptr %0, i64 8
  %.val.i347 = load ptr, ptr %i.aag, align 8, !tbaa !197
  %.not122.i = icmp eq ptr %.val.i347, @PyUnicode_Type
  br i1 %.not122.i, label %bb.ku, label %._crit_edge.thread205.i

bb.ku:                                            ; preds = %._crit_edge.thread.i346
  %i.aah = load i32, ptr %0, align 8, !tbaa !205  ; 2 uses
  %i.aai = icmp ugt i32 %i.aah, -1073741825
  br i1 %i.aai, label %Py_INCREF.exit.i356, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.aaj = add nuw i32 %i.aah, 1
  store i32 %i.aaj, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit.i356

Py_INCREF.exit.i356:                              ; preds = %bb.kv, %bb.ku
  %i.aak = getelementptr i8, ptr %i.yp, i64 24
  %.val83.i357 = load ptr, ptr %i.aak, align 8, !tbaa !540
  store ptr %0, ptr %.val83.i357, align 8, !tbaa !194
  br label %bb.ll

._crit_edge.thread205.i:                          ; preds = %Py_DECREF.exit75.i364, %._crit_edge.thread.i346, %._crit_edge.i386
  %.060.lcssa203.i = phi i64 [ 0, %._crit_edge.thread.i346 ], [ %.060147.i, %._crit_edge.i386 ], [ %.1, %Py_DECREF.exit75.i364 ] ; 3 uses
  %.062.lcssa201.i = phi i64 [ %.062.lcssa202.i, %._crit_edge.thread.i346 ], [ %.062146.i, %._crit_edge.i386 ], [ %i.aae, %Py_DECREF.exit75.i364 ] ; 2 uses
  %i.aal = getelementptr i8, ptr %.0.i278, i64 %.062.lcssa201.i ; 3 uses
  %i.aam = sub i64 %.val100, %.062.lcssa201.i     ; 3 uses
  switch i64 %i.aam, label %bb.kw [
    i64 0, label %_PyUnicode_FromUCS1.exit113.thread.i
    i64 1, label %_PyUnicode_FromUCS1.exit113.i
  ]

_PyUnicode_FromUCS1.exit113.i:                    ; preds = %._crit_edge.thread205.i
  %i.aan = load i8, ptr %i.aal, align 1, !tbaa !205 ; 3 uses
  %i.aao = and i8 %i.aan, 127
  %i.aap = zext nneg i8 %i.aao to i64
  %i.aaq = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.aap
  %i.aar = zext nneg i8 %i.aan to i64
  %i.aas = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.aar
  %i.aat = icmp slt i8 %i.aan, 0
  %.0.i92.i = select i1 %i.aat, ptr %i.aaq, ptr %i.aas ; 2 uses
  %i.aau = icmp eq ptr %.0.i92.i, null
  br i1 %i.aau, label %Py_DECREF.exit77.i350, label %_PyUnicode_FromUCS1.exit113.thread.i

bb.kw:                                            ; preds = %._crit_edge.thread205.i
  %i.aav = getelementptr i8, ptr %.0.i278, i64 %.val100 ; 3 uses
  br label %bb.kx

bb.kx:                                            ; preds = %.thread31.i.i106.i, %bb.kw
  %.021.i.i93.i = phi ptr [ %i.aal, %bb.kw ], [ %i.abd, %.thread31.i.i106.i ] ; 4 uses
  %i.aaw = icmp ult ptr %.021.i.i93.i, %i.aav
  br i1 %i.aaw, label %bb.ky, label %ucs1lib_find_max_char.exit.i94.i

bb.ky:                                            ; preds = %bb.kx
  %i.aax = ptrtoint ptr %.021.i.i93.i to i64
  %i.aay = and i64 %i.aax, 7
  %.not.i.i105.i = icmp eq i64 %i.aay, 0
  br i1 %.not.i.i105.i, label %.preheader.i.i109.i, label %.thread31.i.i106.i

.preheader.i.i109.i:                              ; preds = %bb.ky, %bb.kz
  %.019.i.i110.i = phi ptr [ %i.aaz, %bb.kz ], [ %.021.i.i93.i, %bb.ky ] ; 4 uses
  %i.aaz = getelementptr i8, ptr %.019.i.i110.i, i64 8 ; 2 uses
  %.not26.i.i111.i = icmp ugt ptr %i.aaz, %i.aav
  br i1 %.not26.i.i111.i, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %.preheader.i.i109.i
  %i.aba = load i64, ptr %.019.i.i110.i, align 8, !tbaa !193
  %i.abb = and i64 %i.aba, -9187201950435737472
  %.not27.i.i112.i = icmp eq i64 %i.abb, 0
  br i1 %.not27.i.i112.i, label %.preheader.i.i109.i, label %ucs1lib_find_max_char.exit.i94.i, !llvm.loop !220

bb.la:                                            ; preds = %.preheader.i.i109.i
  %i.abc = icmp eq ptr %.019.i.i110.i, %i.aav
  br i1 %i.abc, label %ucs1lib_find_max_char.exit.i94.i, label %.thread31.i.i106.i

.thread31.i.i106.i:                               ; preds = %bb.la, %bb.ky
  %.223.i.i107.i = phi ptr [ %.021.i.i93.i, %bb.ky ], [ %.019.i.i110.i, %bb.la ] ; 2 uses
  %i.abd = getelementptr i8, ptr %.223.i.i107.i, i64 1
  %i.abe = load i8, ptr %.223.i.i107.i, align 1, !tbaa !205
  %.not28.i.i108.i = icmp sgt i8 %i.abe, -1
  br i1 %.not28.i.i108.i, label %bb.kx, label %ucs1lib_find_max_char.exit.i94.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i94.i:                 ; preds = %.thread31.i.i106.i, %bb.la, %bb.kx, %bb.kz
  %.5.i.i95.i = phi i32 [ 255, %bb.kz ], [ 127, %bb.kx ], [ 127, %bb.la ], [ 255, %.thread31.i.i106.i ]
  %i.abf = tail call ptr @PyUnicode_New(i64 noundef %i.aam, i32 noundef %.5.i.i95.i), !inline_history !641 ; 5 uses
  %.not.i96.i = icmp eq ptr %i.abf, null
  br i1 %.not.i96.i, label %Py_DECREF.exit77.i350, label %bb.lb

bb.lb:                                            ; preds = %ucs1lib_find_max_char.exit.i94.i
  %i.abg = getelementptr i8, ptr %i.abf, i64 32
  %.val.i.i97.i = load i32, ptr %i.abg, align 8   ; 2 uses
  %i.abh = and i32 %.val.i.i97.i, 32
  %.not.i15.i98.i = icmp eq i32 %i.abh, 0
  br i1 %.not.i15.i98.i, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.abi = and i32 %.val.i.i97.i, 64
  %.not.i.i.i99.i = icmp eq i32 %i.abi, 0
  %.0.v.i.i.i100.i = select i1 %.not.i.i.i99.i, i64 56, i64 40
  %.0.i.i.i101.i = getelementptr i8, ptr %i.abf, i64 %.0.v.i.i.i100.i
  br label %_PyUnicode_DATA.exit.i102.i

bb.ld:                                            ; preds = %bb.lb
  %i.abj = getelementptr i8, ptr %i.abf, i64 56
  %.val4.i.i104.i = load ptr, ptr %i.abj, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i102.i

_PyUnicode_DATA.exit.i102.i:                      ; preds = %bb.ld, %bb.lc
  %.0.i.i103.i = phi ptr [ %.0.i.i.i101.i, %bb.lc ], [ %.val4.i.i104.i, %bb.ld ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i103.i, ptr align 1 %i.aal, i64 %i.aam, i1 false)
  br label %_PyUnicode_FromUCS1.exit113.thread.i

_PyUnicode_FromUCS1.exit113.thread.i:             ; preds = %_PyUnicode_DATA.exit.i102.i, %_PyUnicode_FromUCS1.exit113.i, %._crit_edge.thread205.i
  %.0.i92119.i = phi ptr [ %.0.i92.i, %_PyUnicode_FromUCS1.exit113.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %._crit_edge.thread205.i ], [ %i.abf, %_PyUnicode_DATA.exit.i102.i ] ; 7 uses
  %i.abk = icmp slt i64 %.060.lcssa203.i, 12
  br i1 %i.abk, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %_PyUnicode_FromUCS1.exit113.thread.i
  %i.abl = getelementptr i8, ptr %i.yp, i64 24
  %.val82.i355 = load ptr, ptr %i.abl, align 8, !tbaa !540
  %i.abm = getelementptr [8 x i8], ptr %.val82.i355, i64 %.060.lcssa203.i
  store ptr %.0.i92119.i, ptr %i.abm, align 8, !tbaa !194
  br label %Py_DECREF.exit71.i353

bb.lf:                                            ; preds = %_PyUnicode_FromUCS1.exit113.thread.i
  %i.abn = tail call i32 @PyList_Append(ptr noundef nonnull %i.yp, ptr noundef nonnull %.0.i92119.i) #33, !inline_history !636
  %.not69.i348 = icmp eq i32 %i.abn, 0
  %i.abo = load i32, ptr %.0.i92119.i, align 8, !tbaa !205 ; 3 uses
  %.not.i70.i349 = icmp sgt i32 %i.abo, -1        ; 2 uses
  br i1 %.not69.i348, label %bb.li, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  br i1 %.not.i70.i349, label %bb.lh, label %Py_DECREF.exit77.i350

bb.lh:                                            ; preds = %bb.lg
  %i.abp = add nsw i32 %i.abo, -1                 ; 2 uses
  store i32 %i.abp, ptr %.0.i92119.i, align 8, !tbaa !205
  %i.abq = icmp eq i32 %i.abp, 0
  br i1 %i.abq, label %Py_DECREF.exit77.sink.split.i352, label %Py_DECREF.exit77.i350

bb.li:                                            ; preds = %bb.lf
  br i1 %.not.i70.i349, label %bb.lj, label %Py_DECREF.exit71.i353

bb.lj:                                            ; preds = %bb.li
  %i.abr = add nsw i32 %i.abo, -1                 ; 2 uses
  store i32 %i.abr, ptr %.0.i92119.i, align 8, !tbaa !205
  %i.abs = icmp eq i32 %i.abr, 0
  br i1 %i.abs, label %bb.lk, label %Py_DECREF.exit71.i353

bb.lk:                                            ; preds = %bb.lj
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i92119.i) #33, !inline_history !636
  br label %Py_DECREF.exit71.i353

Py_DECREF.exit71.i353:                            ; preds = %bb.lk, %bb.lj, %bb.li, %bb.le
  %i.abt = add nuw i64 %.060.lcssa203.i, 1
  br label %bb.ll

bb.ll:                                            ; preds = %Py_DECREF.exit71.i353, %Py_INCREF.exit.i356
  %.1.i354 = phi i64 [ 1, %Py_INCREF.exit.i356 ], [ %i.abt, %Py_DECREF.exit71.i353 ]
  %i.abu = getelementptr i8, ptr %i.yp, i64 16
  store i64 %.1.i354, ptr %i.abu, align 8, !tbaa !380
  br label %asciilib_split.exit

Py_DECREF.exit77.sink.split.i352:                 ; preds = %bb.lh, %bb.kq
  %.0.i92119.sink.i = phi ptr [ %.0.i86115.i, %bb.kq ], [ %.0.i92119.i, %bb.lh ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i92119.sink.i) #33, !inline_history !636
  br label %Py_DECREF.exit77.i350

Py_DECREF.exit77.i350:                            ; preds = %ucs1lib_find_max_char.exit.i.i368, %_PyUnicode_FromUCS1.exit.i359, %Py_DECREF.exit77.sink.split.i352, %bb.lh, %bb.lg, %ucs1lib_find_max_char.exit.i94.i, %_PyUnicode_FromUCS1.exit113.i, %bb.kq, %bb.kp
  %i.abv = load i32, ptr %i.yp, align 8, !tbaa !205 ; 2 uses
  %.not.i.i351 = icmp sgt i32 %i.abv, -1
  br i1 %.not.i.i351, label %bb.lm, label %asciilib_split.exit

bb.lm:                                            ; preds = %Py_DECREF.exit77.i350
  %i.abw = add nsw i32 %i.abv, -1                 ; 2 uses
  store i32 %i.abw, ptr %i.yp, align 8, !tbaa !205
  %i.abx = icmp eq i32 %i.abw, 0
  br i1 %i.abx, label %bb.ln, label %asciilib_split.exit

bb.ln:                                            ; preds = %bb.lm
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.yp) #33, !inline_history !636
  br label %asciilib_split.exit

bb.lo:                                            ; preds = %bb.ft
  switch i64 %.val99, label %bb.mr [
    i64 0, label %bb.lp
    i64 1, label %bb.lq
  ]

bb.lp:                                            ; preds = %bb.lo
  %i.aby = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.aby, ptr noundef nonnull @.str.197) #33, !inline_history !643
  br label %asciilib_split.exit

bb.lq:                                            ; preds = %bb.lo
  %i.abz = load i16, ptr %.082, align 2, !tbaa !208
  %i.aca = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.acb = add nsw i64 %i.aca, 1
  %i.acc = tail call ptr @PyList_New(i64 noundef %i.acb) #33, !inline_history !644 ; 9 uses
  %i.acd = icmp eq ptr %i.acc, null
  br i1 %i.acd, label %asciilib_split.exit, label %.lr.ph95.i.i

.lr.ph95.i.i:                                     ; preds = %bb.lq
  %i.ace = getelementptr i8, ptr %i.acc, i64 24   ; 3 uses
  %i.acf = icmp sgt i64 %.1, 0
  br i1 %i.acf, label %.preheader.i.i405, label %.critedge.i.i402

bb.lr:                                            ; preds = %.loopexit.i.i406
  %i.acg = icmp sgt i64 %.in1321, 1
  br i1 %i.acg, label %.preheader.i.i405, label %.critedge.i.i402, !llvm.loop !645

.preheader.i.i405:                                ; preds = %.lr.ph95.i.i, %bb.lr
  %.in1321 = phi i64 [ %i.ach, %bb.lr ], [ %.1, %.lr.ph95.i.i ] ; 2 uses
  %.05792.i.i1283 = phi i64 [ %.158.i.i407, %bb.lr ], [ 0, %.lr.ph95.i.i ] ; 4 uses
  %.05493.i.i1282 = phi i64 [ %.256.i.i408, %bb.lr ], [ 0, %.lr.ph95.i.i ] ; 3 uses
  %.05394.i.i1281 = phi i64 [ %.1.i.i409, %bb.lr ], [ 0, %.lr.ph95.i.i ] ; 5 uses
  %i.ach = add nsw i64 %.in1321, -1
  %i.aci = icmp slt i64 %.05493.i.i1282, %.val100
  br i1 %i.aci, label %.lr.ph.i.i410, label %.loopexit.i.i406

.lr.ph.i.i410:                                    ; preds = %.preheader.i.i405, %bb.mb
  %.15590.i.i = phi i64 [ %i.ada, %bb.mb ], [ %.05493.i.i1282, %.preheader.i.i405 ] ; 4 uses
  %i.acj = getelementptr [2 x i8], ptr %.0.i278, i64 %.15590.i.i
  %i.ack = load i16, ptr %i.acj, align 2, !tbaa !208
  %i.acl = icmp eq i16 %i.ack, %i.abz
  br i1 %i.acl, label %bb.ls, label %bb.mb

bb.ls:                                            ; preds = %.lr.ph.i.i410
  %i.acm = getelementptr [2 x i8], ptr %.0.i278, i64 %.05792.i.i1283
  %i.acn = sub i64 %.15590.i.i, %.05792.i.i1283
  %i.aco = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef readonly %i.acm, i64 noundef %i.acn), !inline_history !644 ; 8 uses
  %i.acp = icmp eq ptr %i.aco, null
  br i1 %i.acp, label %Py_DECREF.exit75.i.i393, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.acq = icmp slt i64 %.05394.i.i1281, 12
  br i1 %i.acq, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %bb.lt
  %.val82.i.i416 = load ptr, ptr %i.ace, align 8, !tbaa !540
  %i.acr = getelementptr [8 x i8], ptr %.val82.i.i416, i64 %.05394.i.i1281
  store ptr %i.aco, ptr %i.acr, align 8, !tbaa !194
  br label %Py_DECREF.exit73.i.i415

bb.lv:                                            ; preds = %bb.lt
  %i.acs = tail call i32 @PyList_Append(ptr noundef nonnull %i.acc, ptr noundef nonnull %i.aco) #33, !inline_history !644
  %.not67.i.i412 = icmp eq i32 %i.acs, 0
  %i.act = load i32, ptr %i.aco, align 8, !tbaa !205 ; 3 uses
  %.not.i72.i.i414 = icmp sgt i32 %i.act, -1      ; 2 uses
  br i1 %.not67.i.i412, label %bb.ly, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  br i1 %.not.i72.i.i414, label %bb.lx, label %Py_DECREF.exit75.i.i393

bb.lx:                                            ; preds = %bb.lw
  %i.acu = add nsw i32 %i.act, -1                 ; 2 uses
  store i32 %i.acu, ptr %i.aco, align 8, !tbaa !205
  %i.acv = icmp eq i32 %i.acu, 0
  br i1 %i.acv, label %Py_DECREF.exit75.sink.split.i.i396, label %Py_DECREF.exit75.i.i393

bb.ly:                                            ; preds = %bb.lv
  br i1 %.not.i72.i.i414, label %bb.lz, label %Py_DECREF.exit73.i.i415

bb.lz:                                            ; preds = %bb.ly
  %i.acw = add nsw i32 %i.act, -1                 ; 2 uses
  store i32 %i.acw, ptr %i.aco, align 8, !tbaa !205
  %i.acx = icmp eq i32 %i.acw, 0
  br i1 %i.acx, label %bb.ma, label %Py_DECREF.exit73.i.i415

bb.ma:                                            ; preds = %bb.lz
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aco) #33, !inline_history !644
  br label %Py_DECREF.exit73.i.i415

Py_DECREF.exit73.i.i415:                          ; preds = %bb.ma, %bb.lz, %bb.ly, %bb.lu
  %i.acy = add i64 %.05394.i.i1281, 1
  %i.acz = add nsw i64 %.15590.i.i, 1             ; 2 uses
  br label %.loopexit.i.i406

bb.mb:                                            ; preds = %.lr.ph.i.i410
  %i.ada = add nsw i64 %.15590.i.i, 1             ; 2 uses
  %exitcond.not.i.i411 = icmp eq i64 %i.ada, %.val100
  br i1 %exitcond.not.i.i411, label %.critedge.i.i402, label %.lr.ph.i.i410, !llvm.loop !646

.loopexit.i.i406:                                 ; preds = %Py_DECREF.exit73.i.i415, %.preheader.i.i405
  %.158.i.i407 = phi i64 [ %i.acz, %Py_DECREF.exit73.i.i415 ], [ %.05792.i.i1283, %.preheader.i.i405 ] ; 3 uses
  %.256.i.i408 = phi i64 [ %i.acz, %Py_DECREF.exit73.i.i415 ], [ %.05493.i.i1282, %.preheader.i.i405 ] ; 2 uses
  %.1.i.i409 = phi i64 [ %i.acy, %Py_DECREF.exit73.i.i415 ], [ %.05394.i.i1281, %.preheader.i.i405 ] ; 3 uses
  %i.adb = icmp slt i64 %.256.i.i408, %.val100
  br i1 %i.adb, label %bb.lr, label %.loopexit.i.i406..critedge.i.i402.loopexit1154_crit_edge, !llvm.loop !645

.loopexit.i.i406..critedge.i.i402.loopexit1154_crit_edge: ; preds = %.loopexit.i.i406
  br label %.critedge.i.i402, !llvm.loop !645

.critedge.i.i402:                                 ; preds = %bb.lr, %bb.mb, %.lr.ph95.i.i, %.loopexit.i.i406..critedge.i.i402.loopexit1154_crit_edge
  %.057.lcssa.i.i403 = phi i64 [ %.05792.i.i1283, %bb.mb ], [ 0, %.lr.ph95.i.i ], [ %.158.i.i407, %.loopexit.i.i406..critedge.i.i402.loopexit1154_crit_edge ], [ %.158.i.i407, %bb.lr ] ; 3 uses
  %.053.lcssa.i.i404 = phi i64 [ %.05394.i.i1281, %bb.mb ], [ 0, %.lr.ph95.i.i ], [ %.1.i.i409, %.loopexit.i.i406..critedge.i.i402.loopexit1154_crit_edge ], [ %.1.i.i409, %bb.lr ] ; 5 uses
  %i.adc = icmp eq i64 %.053.lcssa.i.i404, 0
  br i1 %i.adc, label %.critedge.thread.i.i387, label %bb.me

.critedge.thread.i.i387:                          ; preds = %.critedge.i.i402
  %i.add = getelementptr i8, ptr %0, i64 8
  %.val.i.i388 = load ptr, ptr %i.add, align 8, !tbaa !197
  %.not.i85.i389 = icmp eq ptr %.val.i.i388, @PyUnicode_Type
  br i1 %.not.i85.i389, label %bb.mc, label %bb.me

bb.mc:                                            ; preds = %.critedge.thread.i.i387
  %i.ade = load i32, ptr %0, align 8, !tbaa !205  ; 2 uses
  %i.adf = icmp ugt i32 %i.ade, -1073741825
  br i1 %i.adf, label %Py_INCREF.exit.i.i400, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.adg = add nuw i32 %i.ade, 1
  store i32 %i.adg, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit.i.i400
end_hunk_15
begin_hunk_16_@PyUnicode_Partition:bb.a
  %i.ca = tail call ptr @PyUnicode_New(i64 noundef %i.br, i32 noundef 127), !inline_history !654 ; 5 uses
  %.not.i40.i = icmp eq ptr %i.ca, null
  br i1 %.not.i40.i, label %_PyUnicode_FromASCII.exit50.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cb = getelementptr i8, ptr %i.ca, i64 32
  %.val.i.i41.i = load i32, ptr %i.cb, align 8    ; 2 uses
  %i.cc = and i32 %.val.i.i41.i, 32
  %.not.i.i42.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i42.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cd = and i32 %.val.i.i41.i, 64
  %.not.i.i.i43.i = icmp eq i32 %i.cd, 0
  %.0.v.i.i.i44.i = select i1 %.not.i.i.i43.i, i64 56, i64 40
  %.0.i.i.i45.i = getelementptr i8, ptr %i.ca, i64 %.0.v.i.i.i44.i
  br label %_PyUnicode_DATA.exit.i46.i

bb.ai:                                            ; preds = %bb.ag
  %i.ce = getelementptr i8, ptr %i.ca, i64 56
  %.val4.i.i49.i = load ptr, ptr %i.ce, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i46.i

_PyUnicode_DATA.exit.i46.i:                       ; preds = %bb.ai, %bb.ah
  %.0.i.i47.i = phi ptr [ %.0.i.i.i45.i, %bb.ah ], [ %.val4.i.i49.i, %bb.ai ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i47.i, ptr readonly align 1 %i.bq, i64 %i.br, i1 false)
  br label %_PyUnicode_FromASCII.exit50.i

_PyUnicode_FromASCII.exit50.i:                    ; preds = %_PyUnicode_DATA.exit.i46.i, %bb.af, %bb.ae, %bb.ad
  %.0.i48.i = phi ptr [ null, %bb.af ], [ %i.ca, %_PyUnicode_DATA.exit.i46.i ], [ %i.bw, %bb.ad ], [ %i.bz, %bb.ae ]
  %i.cf = getelementptr i8, ptr %i.ai, i64 48
  store ptr %.0.i48.i, ptr %i.cf, align 8, !tbaa !194
  %i.cg = tail call ptr @PyErr_Occurred() #33, !inline_history !653
  %.not35.i = icmp eq ptr %i.cg, null
  br i1 %.not35.i, label %asciilib_partition.exit, label %bb.aj

bb.aj:                                            ; preds = %_PyUnicode_FromASCII.exit50.i
  %i.ch = load i32, ptr %i.ai, align 8, !tbaa !205 ; 2 uses
  %.not.i.i84 = icmp sgt i32 %i.ch, -1
  br i1 %.not.i.i84, label %bb.ak, label %asciilib_partition.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ci = add nsw i32 %i.ch, -1                   ; 2 uses
  store i32 %i.ci, ptr %i.ai, align 8, !tbaa !205
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.al, label %asciilib_partition.exit

bb.al:                                            ; preds = %bb.ak
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #33, !inline_history !653
  br label %asciilib_partition.exit

bb.am:                                            ; preds = %bb.k, %bb.j
  %i.ck = icmp eq i64 %.val64, 0
  br i1 %i.ck, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cl = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.cl, ptr noundef nonnull @.str.197) #33, !inline_history !655
  br label %asciilib_partition.exit

bb.ao:                                            ; preds = %bb.am
  %i.cm = tail call ptr @PyTuple_New(i64 noundef 3) #33, !inline_history !655 ; 12 uses
  %.not.i86 = icmp eq ptr %i.cm, null
  br i1 %.not.i86, label %asciilib_partition.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cn = tail call fastcc i64 @ucs1lib_fastsearch(ptr noundef %.0.i73, i64 noundef %.val65, ptr noundef %.054, i64 noundef %.val64, i64 noundef -1, i32 noundef 1), !inline_history !655 ; 6 uses
  %i.co = icmp slt i64 %i.cn, 0
  br i1 %i.co, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.cp = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.cq = icmp ugt i32 %i.cp, -1073741825
  br i1 %i.cq, label %Py_INCREF.exit38.i101, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cr = add nuw i32 %i.cp, 1
  store i32 %i.cr, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit38.i101

Py_INCREF.exit38.i101:                            ; preds = %bb.ar, %bb.aq
  %i.cs = getelementptr i8, ptr %i.cm, i64 32
  store ptr %0, ptr %i.cs, align 8, !tbaa !194
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205 ; 2 uses
  %i.cu = icmp ugt i32 %i.ct, -1073741825
  br i1 %i.cu, label %Py_INCREF.exit37.i102, label %bb.as

bb.as:                                            ; preds = %Py_INCREF.exit38.i101
  %i.cv = add nuw i32 %i.ct, 1
  store i32 %i.cv, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205
  br label %Py_INCREF.exit37.i102

Py_INCREF.exit37.i102:                            ; preds = %bb.as, %Py_INCREF.exit38.i101
  %i.cw = getelementptr i8, ptr %i.cm, i64 40
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.cw, align 8, !tbaa !194
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205 ; 2 uses
  %i.cy = icmp ugt i32 %i.cx, -1073741825
  br i1 %i.cy, label %Py_INCREF.exit36.i103, label %bb.at

bb.at:                                            ; preds = %Py_INCREF.exit37.i102
  %i.cz = add nuw i32 %i.cx, 1
  store i32 %i.cz, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205
  br label %Py_INCREF.exit36.i103

Py_INCREF.exit36.i103:                            ; preds = %bb.at, %Py_INCREF.exit37.i102
  %i.da = getelementptr i8, ptr %i.cm, i64 48
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.da, align 8, !tbaa !194
  br label %asciilib_partition.exit

bb.au:                                            ; preds = %bb.ap
  switch i64 %i.cn, label %bb.ay [
    i64 0, label %_PyUnicode_FromUCS1.exit.i
    i64 1, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au
  %i.db = load i8, ptr %.0.i73, align 1, !tbaa !205 ; 3 uses
  %i.dc = icmp sgt i8 %i.db, -1
  br i1 %i.dc, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dd = zext nneg i8 %i.db to i64
  %i.de = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.dd
  br label %_PyUnicode_FromUCS1.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.df = and i8 %i.db, 127
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.dg
  br label %_PyUnicode_FromUCS1.exit.i

bb.ay:                                            ; preds = %bb.au
  %i.di = getelementptr i8, ptr %.0.i73, i64 %i.cn ; 3 uses
  br label %bb.az

bb.az:                                            ; preds = %.thread31.i.i.i, %bb.ay
  %.021.i.i.i = phi ptr [ %.0.i73, %bb.ay ], [ %i.dq, %.thread31.i.i.i ] ; 4 uses
  %i.dj = icmp ult ptr %.021.i.i.i, %i.di
  br i1 %i.dj, label %bb.ba, label %ucs1lib_find_max_char.exit.i.i

bb.ba:                                            ; preds = %bb.az
  %i.dk = ptrtoint ptr %.021.i.i.i to i64
  %i.dl = and i64 %i.dk, 7
  %.not.i.i.i100 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.i.i100, label %.preheader.i.i.i, label %.thread31.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ba, %bb.bb
  %.019.i.i.i = phi ptr [ %i.dm, %bb.bb ], [ %.021.i.i.i, %bb.ba ] ; 4 uses
  %i.dm = getelementptr i8, ptr %.019.i.i.i, i64 8 ; 2 uses
  %.not26.i.i.i = icmp ugt ptr %i.dm, %i.di
  br i1 %.not26.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.preheader.i.i.i
  %i.dn = load i64, ptr %.019.i.i.i, align 8, !tbaa !193
  %i.do = and i64 %i.dn, -9187201950435737472
  %.not27.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not27.i.i.i, label %.preheader.i.i.i, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !220

bb.bc:                                            ; preds = %.preheader.i.i.i
  %i.dp = icmp eq ptr %.019.i.i.i, %i.di
  br i1 %i.dp, label %ucs1lib_find_max_char.exit.i.i, label %.thread31.i.i.i

.thread31.i.i.i:                                  ; preds = %bb.bc, %bb.ba
  %.223.i.i.i = phi ptr [ %.021.i.i.i, %bb.ba ], [ %.019.i.i.i, %bb.bc ] ; 2 uses
  %i.dq = getelementptr i8, ptr %.223.i.i.i, i64 1
  %i.dr = load i8, ptr %.223.i.i.i, align 1, !tbaa !205
  %.not28.i.i.i = icmp sgt i8 %i.dr, -1
  br i1 %.not28.i.i.i, label %bb.az, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i.i:                   ; preds = %.thread31.i.i.i, %bb.bc, %bb.az, %bb.bb
  %.5.i.i.i = phi i32 [ 255, %bb.bb ], [ 127, %bb.az ], [ 127, %bb.bc ], [ 255, %.thread31.i.i.i ]
  %i.ds = tail call ptr @PyUnicode_New(i64 noundef %i.cn, i32 noundef %.5.i.i.i), !inline_history !656 ; 5 uses
  %.not.i39.i92 = icmp eq ptr %i.ds, null
  br i1 %.not.i39.i92, label %_PyUnicode_FromUCS1.exit.i, label %bb.bd

bb.bd:                                            ; preds = %ucs1lib_find_max_char.exit.i.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 32
  %.val.i.i.i93 = load i32, ptr %i.dt, align 8    ; 2 uses
  %i.du = and i32 %.val.i.i.i93, 32
  %.not.i15.i.i = icmp eq i32 %i.du, 0
  br i1 %.not.i15.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dv = and i32 %.val.i.i.i93, 64
  %.not.i.i.i.i94 = icmp eq i32 %i.dv, 0
  %.0.v.i.i.i.i95 = select i1 %.not.i.i.i.i94, i64 56, i64 40
  %.0.i.i.i.i96 = getelementptr i8, ptr %i.ds, i64 %.0.v.i.i.i.i95
  br label %_PyUnicode_DATA.exit.i.i97

bb.bf:                                            ; preds = %bb.bd
  %i.dw = getelementptr i8, ptr %i.ds, i64 56
  %.val4.i.i.i99 = load ptr, ptr %i.dw, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i.i97

_PyUnicode_DATA.exit.i.i97:                       ; preds = %bb.bf, %bb.be
  %.0.i.i.i98 = phi ptr [ %.0.i.i.i.i96, %bb.be ], [ %.val4.i.i.i99, %bb.bf ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i98, ptr align 1 %.0.i73, i64 %i.cn, i1 false)
  br label %_PyUnicode_FromUCS1.exit.i

_PyUnicode_FromUCS1.exit.i:                       ; preds = %_PyUnicode_DATA.exit.i.i97, %ucs1lib_find_max_char.exit.i.i, %bb.ax, %bb.aw, %bb.au
  %.0.i.i87 = phi ptr [ %i.dh, %bb.ax ], [ null, %ucs1lib_find_max_char.exit.i.i ], [ %i.ds, %_PyUnicode_DATA.exit.i.i97 ], [ %i.de, %bb.aw ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.au ]
  %i.dx = getelementptr i8, ptr %i.cm, i64 32
  store ptr %.0.i.i87, ptr %i.dx, align 8, !tbaa !194
  %i.dy = load i32, ptr %1, align 8, !tbaa !205   ; 2 uses
  %i.dz = icmp ugt i32 %i.dy, -1073741825
  br i1 %i.dz, label %Py_INCREF.exit.i88, label %bb.bg

bb.bg:                                            ; preds = %_PyUnicode_FromUCS1.exit.i
  %i.ea = add nuw i32 %i.dy, 1
  store i32 %i.ea, ptr %1, align 8, !tbaa !205
  br label %Py_INCREF.exit.i88

Py_INCREF.exit.i88:                               ; preds = %bb.bg, %_PyUnicode_FromUCS1.exit.i
  %i.eb = getelementptr i8, ptr %i.cm, i64 40
  store ptr %1, ptr %i.eb, align 8, !tbaa !194
  %i.ec = add i64 %i.cn, %.val64                  ; 2 uses
  %i.ed = getelementptr i8, ptr %.0.i73, i64 %i.ec ; 3 uses
  %i.ee = sub i64 %.val65, %i.ec                  ; 3 uses
  switch i64 %i.ee, label %bb.bk [
    i64 0, label %_PyUnicode_FromUCS1.exit61.i
    i64 1, label %bb.bh
  ]

bb.bh:                                            ; preds = %Py_INCREF.exit.i88
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !205 ; 3 uses
  %i.eg = icmp sgt i8 %i.ef, -1
  br i1 %i.eg, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.eh = zext nneg i8 %i.ef to i64
  %i.ei = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.eh
  br label %_PyUnicode_FromUCS1.exit61.i

bb.bj:                                            ; preds = %bb.bh
  %i.ej = and i8 %i.ef, 127
  %i.ek = zext nneg i8 %i.ej to i64
  %i.el = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.ek
  br label %_PyUnicode_FromUCS1.exit61.i

bb.bk:                                            ; preds = %Py_INCREF.exit.i88
  %i.em = getelementptr i8, ptr %.0.i73, i64 %.val65 ; 3 uses
  br label %bb.bl

bb.bl:                                            ; preds = %.thread31.i.i54.i, %bb.bk
  %.021.i.i41.i = phi ptr [ %i.ed, %bb.bk ], [ %i.eu, %.thread31.i.i54.i ] ; 4 uses
  %i.en = icmp ult ptr %.021.i.i41.i, %i.em
  br i1 %i.en, label %bb.bm, label %ucs1lib_find_max_char.exit.i42.i

bb.bm:                                            ; preds = %bb.bl
  %i.eo = ptrtoint ptr %.021.i.i41.i to i64
  %i.ep = and i64 %i.eo, 7
  %.not.i.i53.i = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i53.i, label %.preheader.i.i57.i, label %.thread31.i.i54.i

.preheader.i.i57.i:                               ; preds = %bb.bm, %bb.bn
  %.019.i.i58.i = phi ptr [ %i.eq, %bb.bn ], [ %.021.i.i41.i, %bb.bm ] ; 4 uses
  %i.eq = getelementptr i8, ptr %.019.i.i58.i, i64 8 ; 2 uses
  %.not26.i.i59.i = icmp ugt ptr %i.eq, %i.em
  br i1 %.not26.i.i59.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.preheader.i.i57.i
  %i.er = load i64, ptr %.019.i.i58.i, align 8, !tbaa !193
  %i.es = and i64 %i.er, -9187201950435737472
  %.not27.i.i60.i = icmp eq i64 %i.es, 0
  br i1 %.not27.i.i60.i, label %.preheader.i.i57.i, label %ucs1lib_find_max_char.exit.i42.i, !llvm.loop !220

bb.bo:                                            ; preds = %.preheader.i.i57.i
  %i.et = icmp eq ptr %.019.i.i58.i, %i.em
  br i1 %i.et, label %ucs1lib_find_max_char.exit.i42.i, label %.thread31.i.i54.i

.thread31.i.i54.i:                                ; preds = %bb.bo, %bb.bm
  %.223.i.i55.i = phi ptr [ %.021.i.i41.i, %bb.bm ], [ %.019.i.i58.i, %bb.bo ] ; 2 uses
  %i.eu = getelementptr i8, ptr %.223.i.i55.i, i64 1
  %i.ev = load i8, ptr %.223.i.i55.i, align 1, !tbaa !205
  %.not28.i.i56.i = icmp sgt i8 %i.ev, -1
  br i1 %.not28.i.i56.i, label %bb.bl, label %ucs1lib_find_max_char.exit.i42.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i42.i:                 ; preds = %.thread31.i.i54.i, %bb.bo, %bb.bl, %bb.bn
  %.5.i.i43.i = phi i32 [ 255, %bb.bn ], [ 127, %bb.bl ], [ 127, %bb.bo ], [ 255, %.thread31.i.i54.i ]
  %i.ew = tail call ptr @PyUnicode_New(i64 noundef %i.ee, i32 noundef %.5.i.i43.i), !inline_history !656 ; 5 uses
  %.not.i44.i = icmp eq ptr %i.ew, null
  br i1 %.not.i44.i, label %_PyUnicode_FromUCS1.exit61.i, label %bb.bp

bb.bp:                                            ; preds = %ucs1lib_find_max_char.exit.i42.i
  %i.ex = getelementptr i8, ptr %i.ew, i64 32
  %.val.i.i45.i = load i32, ptr %i.ex, align 8    ; 2 uses
  %i.ey = and i32 %.val.i.i45.i, 32
  %.not.i15.i46.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i15.i46.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ez = and i32 %.val.i.i45.i, 64
  %.not.i.i.i47.i = icmp eq i32 %i.ez, 0
  %.0.v.i.i.i48.i = select i1 %.not.i.i.i47.i, i64 56, i64 40
  %.0.i.i.i49.i = getelementptr i8, ptr %i.ew, i64 %.0.v.i.i.i48.i
  br label %_PyUnicode_DATA.exit.i50.i

bb.br:                                            ; preds = %bb.bp
  %i.fa = getelementptr i8, ptr %i.ew, i64 56
  %.val4.i.i52.i = load ptr, ptr %i.fa, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i50.i

_PyUnicode_DATA.exit.i50.i:                       ; preds = %bb.br, %bb.bq
  %.0.i.i51.i = phi ptr [ %.0.i.i.i49.i, %bb.bq ], [ %.val4.i.i52.i, %bb.br ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i51.i, ptr align 1 %i.ed, i64 %i.ee, i1 false)
  br label %_PyUnicode_FromUCS1.exit61.i

_PyUnicode_FromUCS1.exit61.i:                     ; preds = %_PyUnicode_DATA.exit.i50.i, %ucs1lib_find_max_char.exit.i42.i, %bb.bj, %bb.bi, %Py_INCREF.exit.i88
  %.0.i40.i = phi ptr [ %i.el, %bb.bj ], [ null, %ucs1lib_find_max_char.exit.i42.i ], [ %i.ew, %_PyUnicode_DATA.exit.i50.i ], [ %i.ei, %bb.bi ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %Py_INCREF.exit.i88 ]
  %i.fb = getelementptr i8, ptr %i.cm, i64 48
  store ptr %.0.i40.i, ptr %i.fb, align 8, !tbaa !194
  %i.fc = tail call ptr @PyErr_Occurred() #33, !inline_history !655
  %.not35.i89 = icmp eq ptr %i.fc, null
  br i1 %.not35.i89, label %asciilib_partition.exit, label %bb.bs

bb.bs:                                            ; preds = %_PyUnicode_FromUCS1.exit61.i
  %i.fd = load i32, ptr %i.cm, align 8, !tbaa !205 ; 2 uses
  %.not.i.i90 = icmp sgt i32 %i.fd, -1
  br i1 %.not.i.i90, label %bb.bt, label %asciilib_partition.exit

bb.bt:                                            ; preds = %bb.bs
  %i.fe = add nsw i32 %i.fd, -1                   ; 2 uses
  store i32 %i.fe, ptr %i.cm, align 8, !tbaa !205
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.bu, label %asciilib_partition.exit

bb.bu:                                            ; preds = %bb.bt
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cm) #33, !inline_history !655
  br label %asciilib_partition.exit

bb.bv:                                            ; preds = %bb.i
  %i.fg = icmp eq i64 %.val64, 0
  br i1 %i.fg, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.fh = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.fh, ptr noundef nonnull @.str.197) #33, !inline_history !657
  br label %asciilib_partition.exit

bb.bx:                                            ; preds = %bb.bv
  %i.fi = tail call ptr @PyTuple_New(i64 noundef 3) #33, !inline_history !657 ; 12 uses
  %.not.i104 = icmp eq ptr %i.fi, null
  br i1 %.not.i104, label %asciilib_partition.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fj = tail call fastcc i64 @ucs2lib_fastsearch(ptr noundef %.0.i73, i64 noundef %.val65, ptr noundef %.054, i64 noundef %.val64, i64 noundef -1, i32 noundef 1), !inline_history !657 ; 3 uses
  %i.fk = icmp slt i64 %i.fj, 0
  br i1 %i.fk, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.fl = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.fm = icmp ugt i32 %i.fl, -1073741825
  br i1 %i.fm, label %Py_INCREF.exit38.i109, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fn = add nuw i32 %i.fl, 1
  store i32 %i.fn, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit38.i109

Py_INCREF.exit38.i109:                            ; preds = %bb.ca, %bb.bz
  %i.fo = getelementptr i8, ptr %i.fi, i64 32
  store ptr %0, ptr %i.fo, align 8, !tbaa !194
  %i.fp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205 ; 2 uses
  %i.fq = icmp ugt i32 %i.fp, -1073741825
  br i1 %i.fq, label %Py_INCREF.exit37.i110, label %bb.cb

bb.cb:                                            ; preds = %Py_INCREF.exit38.i109
  %i.fr = add nuw i32 %i.fp, 1
  store i32 %i.fr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205
  br label %Py_INCREF.exit37.i110

Py_INCREF.exit37.i110:                            ; preds = %bb.cb, %Py_INCREF.exit38.i109
  %i.fs = getelementptr i8, ptr %i.fi, i64 40
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.fs, align 8, !tbaa !194
  %i.ft = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205 ; 2 uses
  %i.fu = icmp ugt i32 %i.ft, -1073741825
  br i1 %i.fu, label %Py_INCREF.exit36.i111, label %bb.cc

bb.cc:                                            ; preds = %Py_INCREF.exit37.i110
  %i.fv = add nuw i32 %i.ft, 1
  store i32 %i.fv, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205
  br label %Py_INCREF.exit36.i111

Py_INCREF.exit36.i111:                            ; preds = %bb.cc, %Py_INCREF.exit37.i110
  %i.fw = getelementptr i8, ptr %i.fi, i64 48
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.fw, align 8, !tbaa !194
  br label %asciilib_partition.exit

bb.cd:                                            ; preds = %bb.by
  %i.fx = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef %.0.i73, i64 noundef %i.fj), !inline_history !657
  %i.fy = getelementptr i8, ptr %i.fi, i64 32
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !194
  %i.fz = load i32, ptr %1, align 8, !tbaa !205   ; 2 uses
  %i.ga = icmp ugt i32 %i.fz, -1073741825
  br i1 %i.ga, label %Py_INCREF.exit.i105, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gb = add nuw i32 %i.fz, 1
  store i32 %i.gb, ptr %1, align 8, !tbaa !205
  br label %Py_INCREF.exit.i105

Py_INCREF.exit.i105:                              ; preds = %bb.ce, %bb.cd
  %i.gc = getelementptr i8, ptr %i.fi, i64 40
  store ptr %1, ptr %i.gc, align 8, !tbaa !194
  %i.gd = add i64 %i.fj, %.val64                  ; 2 uses
  %i.ge = getelementptr [2 x i8], ptr %.0.i73, i64 %i.gd
  %i.gf = sub i64 %.val65, %i.gd
  %i.gg = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef %i.ge, i64 noundef %i.gf), !inline_history !657
  %i.gh = getelementptr i8, ptr %i.fi, i64 48
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !194
  %i.gi = tail call ptr @PyErr_Occurred() #33, !inline_history !657
  %.not35.i106 = icmp eq ptr %i.gi, null
  br i1 %.not35.i106, label %asciilib_partition.exit, label %bb.cf

bb.cf:                                            ; preds = %Py_INCREF.exit.i105
  %i.gj = load i32, ptr %i.fi, align 8, !tbaa !205 ; 2 uses
  %.not.i.i107 = icmp sgt i32 %i.gj, -1
  br i1 %.not.i.i107, label %bb.cg, label %asciilib_partition.exit

bb.cg:                                            ; preds = %bb.cf
  %i.gk = add nsw i32 %i.gj, -1                   ; 2 uses
  store i32 %i.gk, ptr %i.fi, align 8, !tbaa !205
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.ch, label %asciilib_partition.exit

bb.ch:                                            ; preds = %bb.cg
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.fi) #33, !inline_history !657
  br label %asciilib_partition.exit

bb.ci:                                            ; preds = %bb.i
  %i.gm = icmp eq i64 %.val64, 0
  br i1 %i.gm, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.gn = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.gn, ptr noundef nonnull @.str.197) #33, !inline_history !658
  br label %asciilib_partition.exit

bb.ck:                                            ; preds = %bb.ci
  %i.go = tail call ptr @PyTuple_New(i64 noundef 3) #33, !inline_history !658 ; 12 uses
  %.not.i112 = icmp eq ptr %i.go, null
  br i1 %.not.i112, label %asciilib_partition.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.gp = tail call fastcc i64 @ucs4lib_fastsearch(ptr noundef %.0.i73, i64 noundef %.val65, ptr noundef %.054, i64 noundef %.val64, i64 noundef -1, i32 noundef 1), !inline_history !658 ; 3 uses
  %i.gq = icmp slt i64 %i.gp, 0
  br i1 %i.gq, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %i.gr = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.gs = icmp ugt i32 %i.gr, -1073741825
  br i1 %i.gs, label %Py_INCREF.exit38.i117, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gt = add nuw i32 %i.gr, 1
  store i32 %i.gt, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit38.i117

Py_INCREF.exit38.i117:                            ; preds = %bb.cn, %bb.cm
  %i.gu = getelementptr i8, ptr %i.go, i64 32
  store ptr %0, ptr %i.gu, align 8, !tbaa !194
  %i.gv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205 ; 2 uses
  %i.gw = icmp ugt i32 %i.gv, -1073741825
  br i1 %i.gw, label %Py_INCREF.exit37.i118, label %bb.co

bb.co:                                            ; preds = %Py_INCREF.exit38.i117
  %i.gx = add nuw i32 %i.gv, 1
  store i32 %i.gx, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205
  br label %Py_INCREF.exit37.i118

Py_INCREF.exit37.i118:                            ; preds = %bb.co, %Py_INCREF.exit38.i117
  %i.gy = getelementptr i8, ptr %i.go, i64 40
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.gy, align 8, !tbaa !194
  %i.gz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205 ; 2 uses
  %i.ha = icmp ugt i32 %i.gz, -1073741825
  br i1 %i.ha, label %Py_INCREF.exit36.i119, label %bb.cp

bb.cp:                                            ; preds = %Py_INCREF.exit37.i118
  %i.hb = add nuw i32 %i.gz, 1
  store i32 %i.hb, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205
  br label %Py_INCREF.exit36.i119

Py_INCREF.exit36.i119:                            ; preds = %bb.cp, %Py_INCREF.exit37.i118
  %i.hc = getelementptr i8, ptr %i.go, i64 48
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.hc, align 8, !tbaa !194
  br label %asciilib_partition.exit

bb.cq:                                            ; preds = %bb.cl
  %i.hd = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %.0.i73, i64 noundef %i.gp), !inline_history !658
  %i.he = getelementptr i8, ptr %i.go, i64 32
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !194
  %i.hf = load i32, ptr %1, align 8, !tbaa !205   ; 2 uses
  %i.hg = icmp ugt i32 %i.hf, -1073741825
  br i1 %i.hg, label %Py_INCREF.exit.i113, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hh = add nuw i32 %i.hf, 1
  store i32 %i.hh, ptr %1, align 8, !tbaa !205
  br label %Py_INCREF.exit.i113

Py_INCREF.exit.i113:                              ; preds = %bb.cr, %bb.cq
  %i.hi = getelementptr i8, ptr %i.go, i64 40
  store ptr %1, ptr %i.hi, align 8, !tbaa !194
  %i.hj = add i64 %i.gp, %.val64                  ; 2 uses
  %i.hk = getelementptr [4 x i8], ptr %.0.i73, i64 %i.hj
  %i.hl = sub i64 %.val65, %i.hj
  %i.hm = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %i.hk, i64 noundef %i.hl), !inline_history !658
  %i.hn = getelementptr i8, ptr %i.go, i64 48
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !194
end_hunk_16
begin_hunk_17_@PyUnicode_RPartition:bb.a
  br label %bb.bp

.preheader.us.i80.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i95, %bb.bq
  %.04862.us.i.i.i99 = phi i64 [ %i.hn, %bb.bq ], [ %i.ga, %.lr.ph66.split.us.i.i.i95 ] ; 4 uses
  %i.ha = getelementptr i8, ptr %i.gq, i64 %.04862.us.i.i.i99
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !205
  %i.hc = getelementptr i8, ptr %.054, i64 %.04862.us.i.i.i99
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !205
  %.not52.us.i.i.i100 = icmp eq i8 %i.hb, %i.hd
  br i1 %.not52.us.i.i.i100, label %bb.bq, label %.thread.us.i.i.i

.thread.us.i.i.i:                                 ; preds = %.preheader.us.i80.i.i
  %.not53.us.i.i.i101 = icmp eq i64 %.15065.us.i.i.i96, 0
  br i1 %.not53.us.i.i.i101, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.thread.us.i.i.i
  %i.he = getelementptr i8, ptr %i.gq, i64 -1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !205
  %i.hg = and i8 %i.hf, 63
  %i.hh = zext nneg i8 %i.hg to i64
  %i.hi = shl nuw i64 1, %i.hh
  %i.hj = and i64 %i.hi, %.lcssa239
  %.not54.us.i.i.i102 = icmp eq i64 %i.hj, 0
  br i1 %.not54.us.i.i.i102, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.thread.us.i.i.i
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  %spec.select.lcssa.sink.i.i.i98 = phi i64 [ %spec.select.i77.i.i.lcssa, %bb.bo ], [ %i.gz, %bb.bm ], [ %.val64, %bb.bn ]
  %i.hk = sub nsw i64 %.15065.us.i.i.i96, %spec.select.lcssa.sink.i.i.i98 ; 2 uses
  %i.hl = add nsw i64 %i.hk, -1
  %i.hm = icmp sgt i64 %i.hk, 0
  br i1 %i.hm, label %.lr.ph66.split.us.i.i.i95, label %ucs1lib_fastsearch.exit.thread.i, !llvm.loop !666

bb.bq:                                            ; preds = %.preheader.us.i80.i.i
  %i.hn = add nsw i64 %.04862.us.i.i.i99, -1
  %i.ho = icmp sgt i64 %.04862.us.i.i.i99, 1
  br i1 %i.ho, label %.preheader.us.i80.i.i, label %ucs1lib_fastsearch.exit.i, !llvm.loop !667

.lr.ph.i76.i.i:                                   ; preds = %.lr.ph.i76.i.i.prol.loopexit, %.lr.ph.i76.i.i
  %.04660.i.i.i87 = phi i64 [ %spec.select.i77.i.i.1, %.lr.ph.i76.i.i ], [ %.04660.i.i.i87.unr, %.lr.ph.i76.i.i.prol.loopexit ]
  %.04759.i.i.i88 = phi i64 [ %i.ic, %.lr.ph.i76.i.i ], [ %.04759.i.i.i88.unr, %.lr.ph.i76.i.i.prol.loopexit ]
  %.04958.i.i.i89 = phi i64 [ %i.ie, %.lr.ph.i76.i.i ], [ %.04958.i.i.i89.unr, %.lr.ph.i76.i.i.prol.loopexit ] ; 4 uses
  %i.hp = getelementptr i8, ptr %.054, i64 %.04958.i.i.i89
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !205 ; 2 uses
  %i.hr = and i8 %i.hq, 63
  %i.hs = zext nneg i8 %i.hr to i64
  %i.ht = shl nuw i64 1, %i.hs
  %i.hu = or i64 %i.ht, %.04759.i.i.i88
  %i.hv = icmp eq i8 %i.hq, %i.gb
  %i.hw = add nsw i64 %.04958.i.i.i89, -1         ; 2 uses
  %spec.select.i77.i.i = select i1 %i.hv, i64 %i.hw, i64 %.04660.i.i.i87
  %i.hx = getelementptr i8, ptr %.054, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !205 ; 2 uses
  %i.hz = and i8 %i.hy, 63
  %i.ia = zext nneg i8 %i.hz to i64
  %i.ib = shl nuw i64 1, %i.ia
  %i.ic = or i64 %i.ib, %i.hu                     ; 2 uses
  %i.id = icmp eq i8 %i.hy, %i.gb
  %i.ie = add nsw i64 %.04958.i.i.i89, -2         ; 2 uses
  %spec.select.i77.i.i.1 = select i1 %i.id, i64 %i.ie, i64 %spec.select.i77.i.i ; 2 uses
  %i.if = icmp sgt i64 %.04958.i.i.i89, 2
  br i1 %i.if, label %.lr.ph.i76.i.i, label %.preheader56.i.i.i90, !llvm.loop !668

ucs1lib_fastsearch.exit.i:                        ; preds = %bb.bq, %bb.bj, %bb.bg
  %.0.i.i103 = phi i64 [ %i.fz, %bb.bj ], [ %i.fq, %bb.bg ], [ %.15065.us.i.i.i96, %bb.bq ] ; 6 uses
  %i.ig = icmp slt i64 %.0.i.i103, 0
  br i1 %i.ig, label %ucs1lib_fastsearch.exit.thread.i, label %bb.bu

ucs1lib_fastsearch.exit.thread.i:                 ; preds = %bb.bp, %bb.bl, %bb.bi, %bb.bh, %ucs1lib_fastsearch.exit.i, %.preheader56.i.i.i90, %bb.bf, %bb.bd
  %i.ih = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205 ; 2 uses
  %i.ii = icmp ugt i32 %i.ih, -1073741825
  br i1 %i.ii, label %Py_INCREF.exit38.i91, label %bb.br

bb.br:                                            ; preds = %ucs1lib_fastsearch.exit.thread.i
  %i.ij = add nuw i32 %i.ih, 1
  store i32 %i.ij, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205
  br label %Py_INCREF.exit38.i91

Py_INCREF.exit38.i91:                             ; preds = %bb.br, %ucs1lib_fastsearch.exit.thread.i
  %i.ik = getelementptr i8, ptr %i.fi, i64 32
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.ik, align 8, !tbaa !194
  %i.il = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205 ; 2 uses
  %i.im = icmp ugt i32 %i.il, -1073741825
  br i1 %i.im, label %Py_INCREF.exit37.i92, label %bb.bs

bb.bs:                                            ; preds = %Py_INCREF.exit38.i91
  %i.in = add nuw i32 %i.il, 1
  store i32 %i.in, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205
  br label %Py_INCREF.exit37.i92

Py_INCREF.exit37.i92:                             ; preds = %bb.bs, %Py_INCREF.exit38.i91
  %i.io = getelementptr i8, ptr %i.fi, i64 40
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.io, align 8, !tbaa !194
  %i.ip = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.iq = icmp ugt i32 %i.ip, -1073741825
  br i1 %i.iq, label %Py_INCREF.exit36.i93, label %bb.bt

bb.bt:                                            ; preds = %Py_INCREF.exit37.i92
  %i.ir = add nuw i32 %i.ip, 1
  store i32 %i.ir, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit36.i93

Py_INCREF.exit36.i93:                             ; preds = %bb.bt, %Py_INCREF.exit37.i92
  %i.is = getelementptr i8, ptr %i.fi, i64 48
  store ptr %0, ptr %i.is, align 8, !tbaa !194
  br label %asciilib_rpartition.exit

bb.bu:                                            ; preds = %ucs1lib_fastsearch.exit.i
  switch i64 %.0.i.i103, label %bb.by [
    i64 0, label %_PyUnicode_FromUCS1.exit.i
    i64 1, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.it = load i8, ptr %.0.i73, align 1, !tbaa !205 ; 3 uses
  %i.iu = icmp sgt i8 %i.it, -1
  br i1 %i.iu, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.iv = zext nneg i8 %i.it to i64
  %i.iw = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.iv
  br label %_PyUnicode_FromUCS1.exit.i

bb.bx:                                            ; preds = %bb.bv
  %i.ix = and i8 %i.it, 127
  %i.iy = zext nneg i8 %i.ix to i64
  %i.iz = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.iy
  br label %_PyUnicode_FromUCS1.exit.i

bb.by:                                            ; preds = %bb.bu
  %i.ja = getelementptr i8, ptr %.0.i73, i64 %.0.i.i103 ; 3 uses
  br label %bb.bz

bb.bz:                                            ; preds = %.thread31.i.i.i, %bb.by
  %.021.i.i.i = phi ptr [ %.0.i73, %bb.by ], [ %i.ji, %.thread31.i.i.i ] ; 4 uses
  %i.jb = icmp ult ptr %.021.i.i.i, %i.ja
  br i1 %i.jb, label %bb.ca, label %ucs1lib_find_max_char.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.jc = ptrtoint ptr %.021.i.i.i to i64
  %i.jd = and i64 %i.jc, 7
  %.not.i.i.i114 = icmp eq i64 %i.jd, 0
  br i1 %.not.i.i.i114, label %.preheader.i.i.i, label %.thread31.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ca, %bb.cb
  %.019.i.i.i = phi ptr [ %i.je, %bb.cb ], [ %.021.i.i.i, %bb.ca ] ; 4 uses
  %i.je = getelementptr i8, ptr %.019.i.i.i, i64 8 ; 2 uses
  %.not26.i.i.i = icmp ugt ptr %i.je, %i.ja
  br i1 %.not26.i.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.preheader.i.i.i
  %i.jf = load i64, ptr %.019.i.i.i, align 8, !tbaa !193
  %i.jg = and i64 %i.jf, -9187201950435737472
  %.not27.i.i.i = icmp eq i64 %i.jg, 0
  br i1 %.not27.i.i.i, label %.preheader.i.i.i, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !220

bb.cc:                                            ; preds = %.preheader.i.i.i
  %i.jh = icmp eq ptr %.019.i.i.i, %i.ja
  br i1 %i.jh, label %ucs1lib_find_max_char.exit.i.i, label %.thread31.i.i.i

.thread31.i.i.i:                                  ; preds = %bb.cc, %bb.ca
  %.223.i.i.i = phi ptr [ %.021.i.i.i, %bb.ca ], [ %.019.i.i.i, %bb.cc ] ; 2 uses
  %i.ji = getelementptr i8, ptr %.223.i.i.i, i64 1
  %i.jj = load i8, ptr %.223.i.i.i, align 1, !tbaa !205
  %.not28.i.i.i = icmp sgt i8 %i.jj, -1
  br i1 %.not28.i.i.i, label %bb.bz, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i.i:                   ; preds = %.thread31.i.i.i, %bb.cc, %bb.bz, %bb.cb
  %.5.i.i.i = phi i32 [ 255, %bb.cb ], [ 127, %bb.bz ], [ 127, %bb.cc ], [ 255, %.thread31.i.i.i ]
  %i.jk = tail call ptr @PyUnicode_New(i64 noundef %.0.i.i103, i32 noundef %.5.i.i.i), !inline_history !669 ; 5 uses
  %.not.i40.i = icmp eq ptr %i.jk, null
  br i1 %.not.i40.i, label %_PyUnicode_FromUCS1.exit.i, label %bb.cd

bb.cd:                                            ; preds = %ucs1lib_find_max_char.exit.i.i
  %i.jl = getelementptr i8, ptr %i.jk, i64 32
  %.val.i.i.i107 = load i32, ptr %i.jl, align 8   ; 2 uses
  %i.jm = and i32 %.val.i.i.i107, 32
  %.not.i15.i.i = icmp eq i32 %i.jm, 0
  br i1 %.not.i15.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jn = and i32 %.val.i.i.i107, 64
  %.not.i.i.i.i108 = icmp eq i32 %i.jn, 0
  %.0.v.i.i.i.i109 = select i1 %.not.i.i.i.i108, i64 56, i64 40
  %.0.i.i.i.i110 = getelementptr i8, ptr %i.jk, i64 %.0.v.i.i.i.i109
  br label %_PyUnicode_DATA.exit.i.i111

bb.cf:                                            ; preds = %bb.cd
  %i.jo = getelementptr i8, ptr %i.jk, i64 56
  %.val4.i.i.i113 = load ptr, ptr %i.jo, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i.i111

_PyUnicode_DATA.exit.i.i111:                      ; preds = %bb.cf, %bb.ce
  %.0.i.i.i112 = phi ptr [ %.0.i.i.i.i110, %bb.ce ], [ %.val4.i.i.i113, %bb.cf ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i112, ptr align 1 %.0.i73, i64 %.0.i.i103, i1 false)
  br label %_PyUnicode_FromUCS1.exit.i

_PyUnicode_FromUCS1.exit.i:                       ; preds = %_PyUnicode_DATA.exit.i.i111, %ucs1lib_find_max_char.exit.i.i, %bb.bx, %bb.bw, %bb.bu
  %.0.i39.i = phi ptr [ %i.iz, %bb.bx ], [ null, %ucs1lib_find_max_char.exit.i.i ], [ %i.jk, %_PyUnicode_DATA.exit.i.i111 ], [ %i.iw, %bb.bw ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.bu ]
  %i.jp = getelementptr i8, ptr %i.fi, i64 32
  store ptr %.0.i39.i, ptr %i.jp, align 8, !tbaa !194
  %i.jq = load i32, ptr %1, align 8, !tbaa !205   ; 2 uses
  %i.jr = icmp ugt i32 %i.jq, -1073741825
  br i1 %i.jr, label %Py_INCREF.exit.i104, label %bb.cg

bb.cg:                                            ; preds = %_PyUnicode_FromUCS1.exit.i
  %i.js = add nuw i32 %i.jq, 1
  store i32 %i.js, ptr %1, align 8, !tbaa !205
  br label %Py_INCREF.exit.i104

Py_INCREF.exit.i104:                              ; preds = %bb.cg, %_PyUnicode_FromUCS1.exit.i
  %i.jt = getelementptr i8, ptr %i.fi, i64 40
  store ptr %1, ptr %i.jt, align 8, !tbaa !194
  %i.ju = add i64 %.0.i.i103, %.val64             ; 2 uses
  %i.jv = getelementptr i8, ptr %.0.i73, i64 %i.ju ; 3 uses
  %i.jw = sub i64 %.val65, %i.ju                  ; 3 uses
  switch i64 %i.jw, label %bb.ck [
    i64 0, label %_PyUnicode_FromUCS1.exit62.i
    i64 1, label %bb.ch
  ]

bb.ch:                                            ; preds = %Py_INCREF.exit.i104
  %i.jx = load i8, ptr %i.jv, align 1, !tbaa !205 ; 3 uses
  %i.jy = icmp sgt i8 %i.jx, -1
  br i1 %i.jy, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.jz = zext nneg i8 %i.jx to i64
  %i.ka = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.jz
  br label %_PyUnicode_FromUCS1.exit62.i

bb.cj:                                            ; preds = %bb.ch
  %i.kb = and i8 %i.jx, 127
  %i.kc = zext nneg i8 %i.kb to i64
  %i.kd = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.kc
  br label %_PyUnicode_FromUCS1.exit62.i

bb.ck:                                            ; preds = %Py_INCREF.exit.i104
  %i.ke = getelementptr i8, ptr %.0.i73, i64 %.val65 ; 3 uses
  br label %bb.cl

bb.cl:                                            ; preds = %.thread31.i.i55.i, %bb.ck
  %.021.i.i42.i = phi ptr [ %i.jv, %bb.ck ], [ %i.km, %.thread31.i.i55.i ] ; 4 uses
  %i.kf = icmp ult ptr %.021.i.i42.i, %i.ke
  br i1 %i.kf, label %bb.cm, label %ucs1lib_find_max_char.exit.i43.i

bb.cm:                                            ; preds = %bb.cl
  %i.kg = ptrtoint ptr %.021.i.i42.i to i64
  %i.kh = and i64 %i.kg, 7
  %.not.i.i54.i = icmp eq i64 %i.kh, 0
  br i1 %.not.i.i54.i, label %.preheader.i.i58.i, label %.thread31.i.i55.i

.preheader.i.i58.i:                               ; preds = %bb.cm, %bb.cn
  %.019.i.i59.i = phi ptr [ %i.ki, %bb.cn ], [ %.021.i.i42.i, %bb.cm ] ; 4 uses
  %i.ki = getelementptr i8, ptr %.019.i.i59.i, i64 8 ; 2 uses
  %.not26.i.i60.i = icmp ugt ptr %i.ki, %i.ke
  br i1 %.not26.i.i60.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.preheader.i.i58.i
  %i.kj = load i64, ptr %.019.i.i59.i, align 8, !tbaa !193
  %i.kk = and i64 %i.kj, -9187201950435737472
  %.not27.i.i61.i = icmp eq i64 %i.kk, 0
  br i1 %.not27.i.i61.i, label %.preheader.i.i58.i, label %ucs1lib_find_max_char.exit.i43.i, !llvm.loop !220

bb.co:                                            ; preds = %.preheader.i.i58.i
  %i.kl = icmp eq ptr %.019.i.i59.i, %i.ke
  br i1 %i.kl, label %ucs1lib_find_max_char.exit.i43.i, label %.thread31.i.i55.i

.thread31.i.i55.i:                                ; preds = %bb.co, %bb.cm
  %.223.i.i56.i = phi ptr [ %.021.i.i42.i, %bb.cm ], [ %.019.i.i59.i, %bb.co ] ; 2 uses
  %i.km = getelementptr i8, ptr %.223.i.i56.i, i64 1
  %i.kn = load i8, ptr %.223.i.i56.i, align 1, !tbaa !205
  %.not28.i.i57.i = icmp sgt i8 %i.kn, -1
  br i1 %.not28.i.i57.i, label %bb.cl, label %ucs1lib_find_max_char.exit.i43.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i43.i:                 ; preds = %.thread31.i.i55.i, %bb.co, %bb.cl, %bb.cn
  %.5.i.i44.i = phi i32 [ 255, %bb.cn ], [ 127, %bb.cl ], [ 127, %bb.co ], [ 255, %.thread31.i.i55.i ]
  %i.ko = tail call ptr @PyUnicode_New(i64 noundef %i.jw, i32 noundef %.5.i.i44.i), !inline_history !669 ; 5 uses
  %.not.i45.i = icmp eq ptr %i.ko, null
  br i1 %.not.i45.i, label %_PyUnicode_FromUCS1.exit62.i, label %bb.cp

bb.cp:                                            ; preds = %ucs1lib_find_max_char.exit.i43.i
  %i.kp = getelementptr i8, ptr %i.ko, i64 32
  %.val.i.i46.i = load i32, ptr %i.kp, align 8    ; 2 uses
  %i.kq = and i32 %.val.i.i46.i, 32
  %.not.i15.i47.i = icmp eq i32 %i.kq, 0
  br i1 %.not.i15.i47.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.kr = and i32 %.val.i.i46.i, 64
  %.not.i.i.i48.i = icmp eq i32 %i.kr, 0
  %.0.v.i.i.i49.i = select i1 %.not.i.i.i48.i, i64 56, i64 40
  %.0.i.i.i50.i = getelementptr i8, ptr %i.ko, i64 %.0.v.i.i.i49.i
  br label %_PyUnicode_DATA.exit.i51.i

bb.cr:                                            ; preds = %bb.cp
  %i.ks = getelementptr i8, ptr %i.ko, i64 56
  %.val4.i.i53.i = load ptr, ptr %i.ks, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i51.i

_PyUnicode_DATA.exit.i51.i:                       ; preds = %bb.cr, %bb.cq
  %.0.i.i52.i = phi ptr [ %.0.i.i.i50.i, %bb.cq ], [ %.val4.i.i53.i, %bb.cr ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i52.i, ptr align 1 %i.jv, i64 %i.jw, i1 false)
  br label %_PyUnicode_FromUCS1.exit62.i

_PyUnicode_FromUCS1.exit62.i:                     ; preds = %_PyUnicode_DATA.exit.i51.i, %ucs1lib_find_max_char.exit.i43.i, %bb.cj, %bb.ci, %Py_INCREF.exit.i104
  %.0.i41.i = phi ptr [ %i.kd, %bb.cj ], [ null, %ucs1lib_find_max_char.exit.i43.i ], [ %i.ko, %_PyUnicode_DATA.exit.i51.i ], [ %i.ka, %bb.ci ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %Py_INCREF.exit.i104 ]
  %i.kt = getelementptr i8, ptr %i.fi, i64 48
  store ptr %.0.i41.i, ptr %i.kt, align 8, !tbaa !194
  %i.ku = tail call ptr @PyErr_Occurred() #33, !inline_history !665
  %.not35.i105 = icmp eq ptr %i.ku, null
  br i1 %.not35.i105, label %asciilib_rpartition.exit, label %bb.cs

bb.cs:                                            ; preds = %_PyUnicode_FromUCS1.exit62.i
  %i.kv = load i32, ptr %i.fi, align 8, !tbaa !205 ; 2 uses
  %.not.i.i106 = icmp sgt i32 %i.kv, -1
  br i1 %.not.i.i106, label %bb.ct, label %asciilib_rpartition.exit

bb.ct:                                            ; preds = %bb.cs
  %i.kw = add nsw i32 %i.kv, -1                   ; 2 uses
  store i32 %i.kw, ptr %i.fi, align 8, !tbaa !205
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %bb.cu, label %asciilib_rpartition.exit

bb.cu:                                            ; preds = %bb.ct
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.fi) #33, !inline_history !665
  br label %asciilib_rpartition.exit

bb.cv:                                            ; preds = %bb.i
  %i.ky = icmp eq i64 %.val64, 0
  br i1 %i.ky, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.kz = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.kz, ptr noundef nonnull @.str.197) #33, !inline_history !670
  br label %asciilib_rpartition.exit

bb.cx:                                            ; preds = %bb.cv
  %i.la = tail call ptr @PyTuple_New(i64 noundef 3) #33, !inline_history !670 ; 12 uses
  %.not.i118 = icmp eq ptr %i.la, null
  br i1 %.not.i118, label %asciilib_rpartition.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lb = tail call fastcc i64 @ucs2lib_fastsearch(ptr noundef %.0.i73, i64 noundef %.val65, ptr noundef %.054, i64 noundef %.val64, i64 noundef -1, i32 noundef 2), !inline_history !670 ; 3 uses
  %i.lc = icmp slt i64 %i.lb, 0
  br i1 %i.lc, label %bb.cz, label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  %i.ld = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205 ; 2 uses
  %i.le = icmp ugt i32 %i.ld, -1073741825
  br i1 %i.le, label %Py_INCREF.exit38.i123, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.lf = add nuw i32 %i.ld, 1
  store i32 %i.lf, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205
  br label %Py_INCREF.exit38.i123

Py_INCREF.exit38.i123:                            ; preds = %bb.da, %bb.cz
  %i.lg = getelementptr i8, ptr %i.la, i64 32
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.lg, align 8, !tbaa !194
  %i.lh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205 ; 2 uses
  %i.li = icmp ugt i32 %i.lh, -1073741825
  br i1 %i.li, label %Py_INCREF.exit37.i124, label %bb.db

bb.db:                                            ; preds = %Py_INCREF.exit38.i123
  %i.lj = add nuw i32 %i.lh, 1
  store i32 %i.lj, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205
  br label %Py_INCREF.exit37.i124

Py_INCREF.exit37.i124:                            ; preds = %bb.db, %Py_INCREF.exit38.i123
  %i.lk = getelementptr i8, ptr %i.la, i64 40
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.lk, align 8, !tbaa !194
  %i.ll = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.lm = icmp ugt i32 %i.ll, -1073741825
  br i1 %i.lm, label %Py_INCREF.exit36.i125, label %bb.dc

bb.dc:                                            ; preds = %Py_INCREF.exit37.i124
  %i.ln = add nuw i32 %i.ll, 1
  store i32 %i.ln, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit36.i125

Py_INCREF.exit36.i125:                            ; preds = %bb.dc, %Py_INCREF.exit37.i124
  %i.lo = getelementptr i8, ptr %i.la, i64 48
  store ptr %0, ptr %i.lo, align 8, !tbaa !194
  br label %asciilib_rpartition.exit

bb.dd:                                            ; preds = %bb.cy
  %i.lp = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef %.0.i73, i64 noundef %i.lb), !inline_history !670
  %i.lq = getelementptr i8, ptr %i.la, i64 32
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !194
  %i.lr = load i32, ptr %1, align 8, !tbaa !205   ; 2 uses
  %i.ls = icmp ugt i32 %i.lr, -1073741825
  br i1 %i.ls, label %Py_INCREF.exit.i119, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.lt = add nuw i32 %i.lr, 1
  store i32 %i.lt, ptr %1, align 8, !tbaa !205
  br label %Py_INCREF.exit.i119

Py_INCREF.exit.i119:                              ; preds = %bb.de, %bb.dd
  %i.lu = getelementptr i8, ptr %i.la, i64 40
  store ptr %1, ptr %i.lu, align 8, !tbaa !194
  %i.lv = add i64 %i.lb, %.val64                  ; 2 uses
  %i.lw = getelementptr [2 x i8], ptr %.0.i73, i64 %i.lv
  %i.lx = sub i64 %.val65, %i.lv
  %i.ly = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef %i.lw, i64 noundef %i.lx), !inline_history !670
  %i.lz = getelementptr i8, ptr %i.la, i64 48
  store ptr %i.ly, ptr %i.lz, align 8, !tbaa !194
  %i.ma = tail call ptr @PyErr_Occurred() #33, !inline_history !670
  %.not35.i120 = icmp eq ptr %i.ma, null
  br i1 %.not35.i120, label %asciilib_rpartition.exit, label %bb.df

bb.df:                                            ; preds = %Py_INCREF.exit.i119
  %i.mb = load i32, ptr %i.la, align 8, !tbaa !205 ; 2 uses
  %.not.i.i121 = icmp sgt i32 %i.mb, -1
  br i1 %.not.i.i121, label %bb.dg, label %asciilib_rpartition.exit

bb.dg:                                            ; preds = %bb.df
  %i.mc = add nsw i32 %i.mb, -1                   ; 2 uses
  store i32 %i.mc, ptr %i.la, align 8, !tbaa !205
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %bb.dh, label %asciilib_rpartition.exit

bb.dh:                                            ; preds = %bb.dg
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.la) #33, !inline_history !670
  br label %asciilib_rpartition.exit

bb.di:                                            ; preds = %bb.i
  %i.me = icmp eq i64 %.val64, 0
  br i1 %i.me, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.mf = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.mf, ptr noundef nonnull @.str.197) #33, !inline_history !671
  br label %asciilib_rpartition.exit

bb.dk:                                            ; preds = %bb.di
  %i.mg = tail call ptr @PyTuple_New(i64 noundef 3) #33, !inline_history !671 ; 12 uses
  %.not.i126 = icmp eq ptr %i.mg, null
  br i1 %.not.i126, label %asciilib_rpartition.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.mh = tail call fastcc i64 @ucs4lib_fastsearch(ptr noundef %.0.i73, i64 noundef %.val65, ptr noundef %.054, i64 noundef %.val64, i64 noundef -1, i32 noundef 2), !inline_history !671 ; 3 uses
  %i.mi = icmp slt i64 %i.mh, 0
  br i1 %i.mi, label %bb.dm, label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  %i.mj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205 ; 2 uses
  %i.mk = icmp ugt i32 %i.mj, -1073741825
  br i1 %i.mk, label %Py_INCREF.exit38.i131, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ml = add nuw i32 %i.mj, 1
  store i32 %i.ml, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205
  br label %Py_INCREF.exit38.i131

Py_INCREF.exit38.i131:                            ; preds = %bb.dn, %bb.dm
  %i.mm = getelementptr i8, ptr %i.mg, i64 32
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.mm, align 8, !tbaa !194
  %i.mn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205 ; 2 uses
  %i.mo = icmp ugt i32 %i.mn, -1073741825
  br i1 %i.mo, label %Py_INCREF.exit37.i132, label %bb.do

bb.do:                                            ; preds = %Py_INCREF.exit38.i131
  %i.mp = add nuw i32 %i.mn, 1
  store i32 %i.mp, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205
  br label %Py_INCREF.exit37.i132

Py_INCREF.exit37.i132:                            ; preds = %bb.do, %Py_INCREF.exit38.i131
  %i.mq = getelementptr i8, ptr %i.mg, i64 40
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.mq, align 8, !tbaa !194
  %i.mr = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.ms = icmp ugt i32 %i.mr, -1073741825
  br i1 %i.ms, label %Py_INCREF.exit36.i133, label %bb.dp

bb.dp:                                            ; preds = %Py_INCREF.exit37.i132
  %i.mt = add nuw i32 %i.mr, 1
  store i32 %i.mt, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit36.i133

Py_INCREF.exit36.i133:                            ; preds = %bb.dp, %Py_INCREF.exit37.i132
  %i.mu = getelementptr i8, ptr %i.mg, i64 48
  store ptr %0, ptr %i.mu, align 8, !tbaa !194
  br label %asciilib_rpartition.exit

bb.dq:                                            ; preds = %bb.dl
  %i.mv = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %.0.i73, i64 noundef %i.mh), !inline_history !671
  %i.mw = getelementptr i8, ptr %i.mg, i64 32
  store ptr %i.mv, ptr %i.mw, align 8, !tbaa !194
  %i.mx = load i32, ptr %1, align 8, !tbaa !205   ; 2 uses
  %i.my = icmp ugt i32 %i.mx, -1073741825
  br i1 %i.my, label %Py_INCREF.exit.i127, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.mz = add nuw i32 %i.mx, 1
  store i32 %i.mz, ptr %1, align 8, !tbaa !205
  br label %Py_INCREF.exit.i127

Py_INCREF.exit.i127:                              ; preds = %bb.dr, %bb.dq
  %i.na = getelementptr i8, ptr %i.mg, i64 40
  store ptr %1, ptr %i.na, align 8, !tbaa !194
  %i.nb = add i64 %i.mh, %.val64                  ; 2 uses
  %i.nc = getelementptr [4 x i8], ptr %.0.i73, i64 %i.nb
  %i.nd = sub i64 %.val65, %i.nb
  %i.ne = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %i.nc, i64 noundef %i.nd), !inline_history !671
  %i.nf = getelementptr i8, ptr %i.mg, i64 48
  store ptr %i.ne, ptr %i.nf, align 8, !tbaa !194
end_hunk_17
begin_hunk_18_@rsplit:bb.a
  %i.dp = tail call ptr @PyList_New(i64 noundef %i.do) #33, !inline_history !678 ; 11 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %asciilib_rsplit_whitespace.exit, label %bb.aw

bb.aw:                                            ; preds = %_PyUnicode_DATA.exit114
  %i.dr = add i64 %.val100, -1                    ; 3 uses
  %i.ds = icmp sgt i64 %.081, 0
  br i1 %i.ds, label %.preheader138.lr.ph.i, label %._crit_edge.i115

.preheader138.lr.ph.i:                            ; preds = %bb.aw
  %i.dt = getelementptr i8, ptr %0, i64 8
  %i.du = getelementptr i8, ptr %i.dp, i64 24     ; 2 uses
  br label %.preheader138.i

.preheader138.i:                                  ; preds = %Py_DECREF.exit85.i148, %.preheader138.lr.ph.i
  %.066159.i = phi i64 [ 0, %.preheader138.lr.ph.i ], [ %i.gd, %Py_DECREF.exit85.i148 ] ; 6 uses
  %.067158.i = phi i64 [ %i.dr, %.preheader138.lr.ph.i ], [ %.269171.i, %Py_DECREF.exit85.i148 ] ; 2 uses
  %i.dv = icmp sgt i64 %.067158.i, -1
  br i1 %i.dv, label %.lr.ph.i133, label %.critedge79.i118

.lr.ph.i133:                                      ; preds = %.preheader138.i, %bb.az
  %.168156.i = phi i64 [ %i.ef, %bb.az ], [ %.067158.i, %.preheader138.i ] ; 8 uses
  %i.dw = getelementptr i8, ptr %.0.i112, i64 %.168156.i
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !205 ; 3 uses
  %i.dy = icmp sgt i8 %i.dx, -1
  br i1 %i.dy, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.i133
  %i.dz = zext nneg i8 %i.dx to i64
  %i.ea = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !205
  %i.ec = zext i8 %i.eb to i32
  br label %Py_UNICODE_ISSPACE.exit.i134

bb.ay:                                            ; preds = %.lr.ph.i133
  %i.ed = zext i8 %i.dx to i32
  %i.ee = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.ed) #33, !inline_history !678
  br label %Py_UNICODE_ISSPACE.exit.i134

Py_UNICODE_ISSPACE.exit.i134:                     ; preds = %bb.ay, %bb.ax
  %.0.i.i135 = phi i32 [ %i.ec, %bb.ax ], [ %i.ee, %bb.ay ]
  %.not.i136 = icmp eq i32 %.0.i.i135, 0
  br i1 %.not.i136, label %.critedge.i138.preheader, label %bb.az

.critedge.i138.preheader:                         ; preds = %Py_UNICODE_ISSPACE.exit.i134
  %.not134.i1512 = icmp eq i64 %.168156.i, 0
  br i1 %.not134.i1512, label %.critedge2.i158, label %.lr.ph1515

bb.az:                                            ; preds = %Py_UNICODE_ISSPACE.exit.i134
  %i.ef = add nsw i64 %.168156.i, -1
  %i.eg = icmp sgt i64 %.168156.i, 0
  br i1 %i.eg, label %.lr.ph.i133, label %.critedge79.i118, !llvm.loop !679

.critedge.i138:                                   ; preds = %Py_UNICODE_ISSPACE.exit96.i141
  %.not134.i = icmp eq i64 %.269.i1401514, 0
  br i1 %.not134.i, label %.critedge2.i158, label %.lr.ph1515, !llvm.loop !680

.lr.ph1515:                                       ; preds = %.critedge.i138.preheader, %.critedge.i138
  %.269.in.i1391513 = phi i64 [ %.269.i1401514, %.critedge.i138 ], [ %.168156.i, %.critedge.i138.preheader ] ; 2 uses
  %.269.i1401514 = add nsw i64 %.269.in.i1391513, -1 ; 5 uses
  %i.eh = getelementptr i8, ptr %.0.i112, i64 %.269.i1401514
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !205 ; 3 uses
  %i.ej = icmp sgt i8 %i.ei, -1
  br i1 %i.ej, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph1515
  %i.ek = zext nneg i8 %i.ei to i64
  %i.el = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !205
  %i.en = zext i8 %i.em to i32
  br label %Py_UNICODE_ISSPACE.exit96.i141

bb.bb:                                            ; preds = %.lr.ph1515
  %i.eo = zext i8 %i.ei to i32
  %i.ep = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.eo) #33, !inline_history !678
  br label %Py_UNICODE_ISSPACE.exit96.i141

Py_UNICODE_ISSPACE.exit96.i141:                   ; preds = %bb.bb, %bb.ba
  %.0.i95.i142 = phi i32 [ %i.en, %bb.ba ], [ %i.ep, %bb.bb ]
  %.not74.i143 = icmp eq i32 %.0.i95.i142, 0
  br i1 %.not74.i143, label %.critedge.i138, label %.critedge2.thread.i144, !llvm.loop !680

.critedge2.i158:                                  ; preds = %.critedge.i138, %.critedge.i138.preheader
  %.269.in.i139.lcssa = phi i64 [ %.168156.i, %.critedge.i138.preheader ], [ %.269.i1401514, %.critedge.i138 ] ; 2 uses
  %i.eq = icmp eq i64 %.168156.i, %i.dr
  br i1 %i.eq, label %bb.bc, label %.critedge2.thread.i144

bb.bc:                                            ; preds = %.critedge2.i158
  %.val.i159 = load ptr, ptr %i.dt, align 8, !tbaa !197
  %.not135.i = icmp eq ptr %.val.i159, @PyUnicode_Type
  br i1 %.not135.i, label %bb.bd, label %.critedge2.thread.i144

bb.bd:                                            ; preds = %bb.bc
  %i.er = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.es = icmp ugt i32 %i.er, -1073741825
  br i1 %i.es, label %Py_INCREF.exit.i160, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.et = add nuw i32 %i.er, 1
  store i32 %i.et, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit.i160

Py_INCREF.exit.i160:                              ; preds = %bb.be, %bb.bd
  %.val94.i161 = load ptr, ptr %i.du, align 8, !tbaa !540
  store ptr %0, ptr %.val94.i161, align 8, !tbaa !194
  %i.eu = add nuw i64 %.066159.i, 1
  br label %.critedge79.i118

.critedge2.thread.i144:                           ; preds = %Py_UNICODE_ISSPACE.exit96.i141, %bb.bc, %.critedge2.i158
  %.269.in.i1391311 = phi i64 [ %.269.in.i139.lcssa, %.critedge2.i158 ], [ %.269.in.i139.lcssa, %bb.bc ], [ %.269.in.i1391513, %Py_UNICODE_ISSPACE.exit96.i141 ] ; 2 uses
  %.269171.i = phi i64 [ -1, %.critedge2.i158 ], [ -1, %bb.bc ], [ %.269.i1401514, %Py_UNICODE_ISSPACE.exit96.i141 ] ; 2 uses
  %i.ev = getelementptr i8, ptr %.0.i112, i64 %.269.in.i1391311 ; 3 uses
  %i.ew = add nuw i64 %.168156.i, 1               ; 2 uses
  %i.ex = sub i64 %i.ew, %.269.in.i1391311        ; 3 uses
  switch i64 %i.ex, label %bb.bf [
    i64 0, label %_PyUnicode_FromUCS1.exit.thread.i
    i64 1, label %_PyUnicode_FromUCS1.exit.i
  ]

_PyUnicode_FromUCS1.exit.i:                       ; preds = %.critedge2.thread.i144
  %i.ey = load i8, ptr %i.ev, align 1, !tbaa !205 ; 3 uses
  %i.ez = and i8 %i.ey, 127
  %i.fa = zext nneg i8 %i.ez to i64
  %i.fb = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.fa
  %i.fc = zext nneg i8 %i.ey to i64
  %i.fd = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.fc
  %i.fe = icmp slt i8 %i.ey, 0
  %.0.i97.i = select i1 %i.fe, ptr %i.fb, ptr %i.fd ; 2 uses
  %i.ff = icmp eq ptr %.0.i97.i, null
  br i1 %i.ff, label %Py_DECREF.exit87.i121, label %_PyUnicode_FromUCS1.exit.thread.i

bb.bf:                                            ; preds = %.critedge2.thread.i144
  %i.fg = getelementptr i8, ptr %.0.i112, i64 %i.ew ; 3 uses
  br label %bb.bg

bb.bg:                                            ; preds = %.thread31.i.i.i, %bb.bf
  %.021.i.i.i = phi ptr [ %i.ev, %bb.bf ], [ %i.fo, %.thread31.i.i.i ] ; 4 uses
  %i.fh = icmp ult ptr %.021.i.i.i, %i.fg
  br i1 %i.fh, label %bb.bh, label %ucs1lib_find_max_char.exit.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.fi = ptrtoint ptr %.021.i.i.i to i64
  %i.fj = and i64 %i.fi, 7
  %.not.i.i.i157 = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i.i157, label %.preheader.i.i.i, label %.thread31.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bh, %bb.bi
  %.019.i.i.i = phi ptr [ %i.fk, %bb.bi ], [ %.021.i.i.i, %bb.bh ] ; 4 uses
  %i.fk = getelementptr i8, ptr %.019.i.i.i, i64 8 ; 2 uses
  %.not26.i.i.i = icmp ugt ptr %i.fk, %i.fg
  br i1 %.not26.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.preheader.i.i.i
  %i.fl = load i64, ptr %.019.i.i.i, align 8, !tbaa !193
  %i.fm = and i64 %i.fl, -9187201950435737472
  %.not27.i.i.i = icmp eq i64 %i.fm, 0
  br i1 %.not27.i.i.i, label %.preheader.i.i.i, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !220

bb.bj:                                            ; preds = %.preheader.i.i.i
  %i.fn = icmp eq ptr %.019.i.i.i, %i.fg
  br i1 %i.fn, label %ucs1lib_find_max_char.exit.i.i, label %.thread31.i.i.i

.thread31.i.i.i:                                  ; preds = %bb.bj, %bb.bh
  %.223.i.i.i = phi ptr [ %.021.i.i.i, %bb.bh ], [ %.019.i.i.i, %bb.bj ] ; 2 uses
  %i.fo = getelementptr i8, ptr %.223.i.i.i, i64 1
  %i.fp = load i8, ptr %.223.i.i.i, align 1, !tbaa !205
  %.not28.i.i.i = icmp sgt i8 %i.fp, -1
  br i1 %.not28.i.i.i, label %bb.bg, label %ucs1lib_find_max_char.exit.i.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i.i:                   ; preds = %.thread31.i.i.i, %bb.bj, %bb.bg, %bb.bi
  %.5.i.i.i = phi i32 [ 255, %bb.bi ], [ 127, %bb.bg ], [ 127, %bb.bj ], [ 255, %.thread31.i.i.i ]
  %i.fq = tail call ptr @PyUnicode_New(i64 noundef %i.ex, i32 noundef %.5.i.i.i), !inline_history !681 ; 5 uses
  %.not.i98.i = icmp eq ptr %i.fq, null
  br i1 %.not.i98.i, label %Py_DECREF.exit87.i121, label %bb.bk

bb.bk:                                            ; preds = %ucs1lib_find_max_char.exit.i.i
  %i.fr = getelementptr i8, ptr %i.fq, i64 32
  %.val.i.i.i151 = load i32, ptr %i.fr, align 8   ; 2 uses
  %i.fs = and i32 %.val.i.i.i151, 32
  %.not.i15.i.i = icmp eq i32 %i.fs, 0
  br i1 %.not.i15.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ft = and i32 %.val.i.i.i151, 64
  %.not.i.i.i.i152 = icmp eq i32 %i.ft, 0
  %.0.v.i.i.i.i153 = select i1 %.not.i.i.i.i152, i64 56, i64 40
  %.0.i.i.i.i154 = getelementptr i8, ptr %i.fq, i64 %.0.v.i.i.i.i153
  br label %_PyUnicode_DATA.exit.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.fu = getelementptr i8, ptr %i.fq, i64 56
  %.val4.i.i.i156 = load ptr, ptr %i.fu, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.bm, %bb.bl
  %.0.i.i.i155 = phi ptr [ %.0.i.i.i.i154, %bb.bl ], [ %.val4.i.i.i156, %bb.bm ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i155, ptr align 1 %i.ev, i64 %i.ex, i1 false)
  br label %_PyUnicode_FromUCS1.exit.thread.i

_PyUnicode_FromUCS1.exit.thread.i:                ; preds = %_PyUnicode_DATA.exit.i.i, %_PyUnicode_FromUCS1.exit.i, %.critedge2.thread.i144
  %.0.i97125.i = phi ptr [ %.0.i97.i, %_PyUnicode_FromUCS1.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %.critedge2.thread.i144 ], [ %i.fq, %_PyUnicode_DATA.exit.i.i ] ; 7 uses
  %i.fv = icmp samesign ult i64 %.066159.i, 12
  br i1 %i.fv, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i
  %.val93.i150 = load ptr, ptr %i.du, align 8, !tbaa !540
  %i.fw = getelementptr [8 x i8], ptr %.val93.i150, i64 %.066159.i
  store ptr %.0.i97125.i, ptr %i.fw, align 8, !tbaa !194
  br label %Py_DECREF.exit85.i148

bb.bo:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i
  %i.fx = tail call i32 @PyList_Append(ptr noundef nonnull %i.dp, ptr noundef nonnull %.0.i97125.i) #33, !inline_history !678
  %.not76.i145 = icmp eq i32 %i.fx, 0
  %i.fy = load i32, ptr %.0.i97125.i, align 8, !tbaa !205 ; 3 uses
  %.not.i84.i147 = icmp sgt i32 %i.fy, -1         ; 2 uses
  br i1 %.not76.i145, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  br i1 %.not.i84.i147, label %bb.bq, label %Py_DECREF.exit87.i121

bb.bq:                                            ; preds = %bb.bp
  %i.fz = add nsw i32 %i.fy, -1                   ; 2 uses
  store i32 %i.fz, ptr %.0.i97125.i, align 8, !tbaa !205
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %Py_DECREF.exit87.sink.split.i130, label %Py_DECREF.exit87.i121

bb.br:                                            ; preds = %bb.bo
  br i1 %.not.i84.i147, label %bb.bs, label %Py_DECREF.exit85.i148

bb.bs:                                            ; preds = %bb.br
  %i.gb = add nsw i32 %i.fy, -1                   ; 2 uses
  store i32 %i.gb, ptr %.0.i97125.i, align 8, !tbaa !205
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.bt, label %Py_DECREF.exit85.i148

bb.bt:                                            ; preds = %bb.bs
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i97125.i) #33, !inline_history !678
  br label %Py_DECREF.exit85.i148

Py_DECREF.exit85.i148:                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bn
  %i.gd = add nuw nsw i64 %.066159.i, 1           ; 2 uses
  %exitcond.not.i149 = icmp eq i64 %i.gd, %.081
  br i1 %exitcond.not.i149, label %._crit_edge.i115, label %.preheader138.i, !llvm.loop !682

._crit_edge.i115:                                 ; preds = %Py_DECREF.exit85.i148, %bb.aw
  %.067.lcssa.i116 = phi i64 [ %i.dr, %bb.aw ], [ %.269171.i, %Py_DECREF.exit85.i148 ] ; 2 uses
  %.066.lcssa.i117 = phi i64 [ 0, %bb.aw ], [ %.081, %Py_DECREF.exit85.i148 ] ; 5 uses
  %i.ge = icmp sgt i64 %.067.lcssa.i116, -1
  br i1 %i.ge, label %.preheader.i123, label %.critedge79.i118

.preheader.i123:                                  ; preds = %._crit_edge.i115, %bb.bw
  %.4162.i = phi i64 [ %i.go, %bb.bw ], [ %.067.lcssa.i116, %._crit_edge.i115 ] ; 5 uses
  %i.gf = getelementptr i8, ptr %.0.i112, i64 %.4162.i
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !205 ; 3 uses
  %i.gh = icmp sgt i8 %i.gg, -1
  br i1 %i.gh, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.preheader.i123
  %i.gi = zext nneg i8 %i.gg to i64
  %i.gj = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !205
  %i.gl = zext i8 %i.gk to i32
  br label %Py_UNICODE_ISSPACE.exit100.i124

bb.bv:                                            ; preds = %.preheader.i123
  %i.gm = zext i8 %i.gg to i32
  %i.gn = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %i.gm) #33, !inline_history !678
  br label %Py_UNICODE_ISSPACE.exit100.i124

Py_UNICODE_ISSPACE.exit100.i124:                  ; preds = %bb.bv, %bb.bu
  %.0.i99.i125 = phi i32 [ %i.gl, %bb.bu ], [ %i.gn, %bb.bv ]
  %.not77.i126 = icmp eq i32 %.0.i99.i125, 0
  br i1 %.not77.i126, label %.critedge5.i127, label %bb.bw

bb.bw:                                            ; preds = %Py_UNICODE_ISSPACE.exit100.i124
  %i.go = add nsw i64 %.4162.i, -1
  %i.gp = icmp sgt i64 %.4162.i, 0
  br i1 %i.gp, label %.preheader.i123, label %.critedge79.i118, !llvm.loop !683

.critedge5.i127:                                  ; preds = %Py_UNICODE_ISSPACE.exit100.i124
  %i.gq = add nuw i64 %.4162.i, 1                 ; 3 uses
  %cond.i = icmp eq i64 %.4162.i, 0
  br i1 %cond.i, label %_PyUnicode_FromUCS1.exit122.i, label %bb.bx

_PyUnicode_FromUCS1.exit122.i:                    ; preds = %.critedge5.i127
  %i.gr = load i8, ptr %.0.i112, align 1, !tbaa !205 ; 3 uses
  %i.gs = and i8 %i.gr, 127
  %i.gt = zext nneg i8 %i.gs to i64
  %i.gu = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.gt
  %i.gv = zext nneg i8 %i.gr to i64
  %i.gw = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.gv
  %i.gx = icmp slt i8 %i.gr, 0
  %.0.i101.i = select i1 %i.gx, ptr %i.gu, ptr %i.gw ; 2 uses
  %i.gy = icmp eq ptr %.0.i101.i, null
  br i1 %i.gy, label %Py_DECREF.exit87.i121, label %_PyUnicode_FromUCS1.exit122.thread.i

bb.bx:                                            ; preds = %.critedge5.i127
  %i.gz = getelementptr i8, ptr %.0.i112, i64 %i.gq ; 3 uses
  br label %bb.by

bb.by:                                            ; preds = %.thread31.i.i115.i, %bb.bx
  %.021.i.i102.i = phi ptr [ %.0.i112, %bb.bx ], [ %i.hh, %.thread31.i.i115.i ] ; 4 uses
  %i.ha = icmp ult ptr %.021.i.i102.i, %i.gz
  br i1 %i.ha, label %bb.bz, label %ucs1lib_find_max_char.exit.i103.i

bb.bz:                                            ; preds = %bb.by
  %i.hb = ptrtoint ptr %.021.i.i102.i to i64
  %i.hc = and i64 %i.hb, 7
  %.not.i.i114.i = icmp eq i64 %i.hc, 0
  br i1 %.not.i.i114.i, label %.preheader.i.i118.i, label %.thread31.i.i115.i

.preheader.i.i118.i:                              ; preds = %bb.bz, %bb.ca
  %.019.i.i119.i = phi ptr [ %i.hd, %bb.ca ], [ %.021.i.i102.i, %bb.bz ] ; 4 uses
  %i.hd = getelementptr i8, ptr %.019.i.i119.i, i64 8 ; 2 uses
  %.not26.i.i120.i = icmp ugt ptr %i.hd, %i.gz
  br i1 %.not26.i.i120.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.preheader.i.i118.i
  %i.he = load i64, ptr %.019.i.i119.i, align 8, !tbaa !193
  %i.hf = and i64 %i.he, -9187201950435737472
  %.not27.i.i121.i = icmp eq i64 %i.hf, 0
  br i1 %.not27.i.i121.i, label %.preheader.i.i118.i, label %ucs1lib_find_max_char.exit.i103.i, !llvm.loop !220

bb.cb:                                            ; preds = %.preheader.i.i118.i
  %i.hg = icmp eq ptr %.019.i.i119.i, %i.gz
  br i1 %i.hg, label %ucs1lib_find_max_char.exit.i103.i, label %.thread31.i.i115.i

.thread31.i.i115.i:                               ; preds = %bb.cb, %bb.bz
  %.223.i.i116.i = phi ptr [ %.021.i.i102.i, %bb.bz ], [ %.019.i.i119.i, %bb.cb ] ; 2 uses
  %i.hh = getelementptr i8, ptr %.223.i.i116.i, i64 1
  %i.hi = load i8, ptr %.223.i.i116.i, align 1, !tbaa !205
  %.not28.i.i117.i = icmp sgt i8 %i.hi, -1
  br i1 %.not28.i.i117.i, label %bb.by, label %ucs1lib_find_max_char.exit.i103.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i103.i:                ; preds = %.thread31.i.i115.i, %bb.cb, %bb.by, %bb.ca
  %.5.i.i104.i = phi i32 [ 255, %bb.ca ], [ 127, %bb.by ], [ 127, %bb.cb ], [ 255, %.thread31.i.i115.i ]
  %i.hj = tail call ptr @PyUnicode_New(i64 noundef %i.gq, i32 noundef %.5.i.i104.i), !inline_history !681 ; 5 uses
  %.not.i105.i = icmp eq ptr %i.hj, null
  br i1 %.not.i105.i, label %Py_DECREF.exit87.i121, label %bb.cc

bb.cc:                                            ; preds = %ucs1lib_find_max_char.exit.i103.i
  %i.hk = getelementptr i8, ptr %i.hj, i64 32
  %.val.i.i106.i = load i32, ptr %i.hk, align 8   ; 2 uses
  %i.hl = and i32 %.val.i.i106.i, 32
  %.not.i15.i107.i = icmp eq i32 %i.hl, 0
  br i1 %.not.i15.i107.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hm = and i32 %.val.i.i106.i, 64
  %.not.i.i.i108.i = icmp eq i32 %i.hm, 0
  %.0.v.i.i.i109.i = select i1 %.not.i.i.i108.i, i64 56, i64 40
  %.0.i.i.i110.i = getelementptr i8, ptr %i.hj, i64 %.0.v.i.i.i109.i
  br label %_PyUnicode_DATA.exit.i111.i

bb.ce:                                            ; preds = %bb.cc
  %i.hn = getelementptr i8, ptr %i.hj, i64 56
  %.val4.i.i113.i = load ptr, ptr %i.hn, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i111.i

_PyUnicode_DATA.exit.i111.i:                      ; preds = %bb.ce, %bb.cd
  %.0.i.i112.i = phi ptr [ %.0.i.i.i110.i, %bb.cd ], [ %.val4.i.i113.i, %bb.ce ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i112.i, ptr noundef nonnull align 1 dereferenceable(1) %.0.i112, i64 %i.gq, i1 false)
  br label %_PyUnicode_FromUCS1.exit122.thread.i

_PyUnicode_FromUCS1.exit122.thread.i:             ; preds = %_PyUnicode_DATA.exit.i111.i, %_PyUnicode_FromUCS1.exit122.i
  %.0.i101131.i = phi ptr [ %.0.i101.i, %_PyUnicode_FromUCS1.exit122.i ], [ %i.hj, %_PyUnicode_DATA.exit.i111.i ] ; 7 uses
  %i.ho = icmp slt i64 %.066.lcssa.i117, 12
  br i1 %i.ho, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_PyUnicode_FromUCS1.exit122.thread.i
  %i.hp = getelementptr i8, ptr %i.dp, i64 24
  %.val92.i132 = load ptr, ptr %i.hp, align 8, !tbaa !540
  %i.hq = getelementptr [8 x i8], ptr %.val92.i132, i64 %.066.lcssa.i117
  store ptr %.0.i101131.i, ptr %i.hq, align 8, !tbaa !194
  br label %Py_DECREF.exit81.i131

bb.cg:                                            ; preds = %_PyUnicode_FromUCS1.exit122.thread.i
  %i.hr = tail call i32 @PyList_Append(ptr noundef nonnull %i.dp, ptr noundef nonnull %.0.i101131.i) #33, !inline_history !678
  %.not78.i128 = icmp eq i32 %i.hr, 0
  %i.hs = load i32, ptr %.0.i101131.i, align 8, !tbaa !205 ; 3 uses
  %.not.i80.i129 = icmp sgt i32 %i.hs, -1         ; 2 uses
  br i1 %.not78.i128, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  br i1 %.not.i80.i129, label %bb.ci, label %Py_DECREF.exit87.i121

bb.ci:                                            ; preds = %bb.ch
  %i.ht = add nsw i32 %i.hs, -1                   ; 2 uses
  store i32 %i.ht, ptr %.0.i101131.i, align 8, !tbaa !205
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %Py_DECREF.exit87.sink.split.i130, label %Py_DECREF.exit87.i121

bb.cj:                                            ; preds = %bb.cg
  br i1 %.not.i80.i129, label %bb.ck, label %Py_DECREF.exit81.i131

bb.ck:                                            ; preds = %bb.cj
  %i.hv = add nsw i32 %i.hs, -1                   ; 2 uses
  store i32 %i.hv, ptr %.0.i101131.i, align 8, !tbaa !205
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.cl, label %Py_DECREF.exit81.i131

end_hunk_18
begin_hunk_19_@rsplit:bb.a
  br label %Py_DECREF.exit68.i

bb.if:                                            ; preds = %bb.id
  %i.xb = tail call i32 @PyList_Append(ptr noundef nonnull %i.sp, ptr noundef nonnull %.0.i99110.i) #33, !inline_history !694
  %.not66.i = icmp eq i32 %i.xb, 0
  %i.xc = load i32, ptr %.0.i99110.i, align 8, !tbaa !205 ; 3 uses
  %.not.i67.i = icmp sgt i32 %i.xc, -1            ; 2 uses
  br i1 %.not66.i, label %bb.ii, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  br i1 %.not.i67.i, label %bb.ih, label %Py_DECREF.exit74.i

bb.ih:                                            ; preds = %bb.ig
  %i.xd = add nsw i32 %i.xc, -1                   ; 2 uses
  store i32 %i.xd, ptr %.0.i99110.i, align 8, !tbaa !205
  %i.xe = icmp eq i32 %i.xd, 0
  br i1 %i.xe, label %Py_DECREF.exit74.sink.split.i, label %Py_DECREF.exit74.i

bb.ii:                                            ; preds = %bb.if
  br i1 %.not.i67.i, label %bb.ij, label %Py_DECREF.exit68.i

bb.ij:                                            ; preds = %bb.ii
  %i.xf = add nsw i32 %i.xc, -1                   ; 2 uses
  store i32 %i.xf, ptr %.0.i99110.i, align 8, !tbaa !205
  %i.xg = icmp eq i32 %i.xf, 0
  br i1 %i.xg, label %bb.ik, label %Py_DECREF.exit68.i

bb.ik:                                            ; preds = %bb.ij
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i99110.i) #33, !inline_history !694
  br label %Py_DECREF.exit68.i

Py_DECREF.exit68.i:                               ; preds = %bb.ik, %bb.ij, %bb.ii, %bb.ie
  %i.xh = add i64 %.057121206.i, 1
  br label %bb.il

bb.il:                                            ; preds = %Py_DECREF.exit68.i, %Py_INCREF.exit.i295
  %.1.i = phi i64 [ 1, %Py_INCREF.exit.i295 ], [ %i.xh, %Py_DECREF.exit68.i ]
  %i.xi = getelementptr i8, ptr %i.sp, i64 16
  store i64 %.1.i, ptr %i.xi, align 8, !tbaa !380
  %i.xj = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.sp) #33, !inline_history !694
  %i.xk = icmp slt i32 %i.xj, 0
  br i1 %i.xk, label %Py_DECREF.exit74.i, label %asciilib_rsplit.exit

Py_DECREF.exit74.sink.split.i:                    ; preds = %bb.ih, %bb.ht
  %.0.i99110.sink.i = phi ptr [ %.0.i90106.i, %bb.ht ], [ %.0.i99110.i, %bb.ih ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i99110.sink.i) #33, !inline_history !694
  br label %Py_DECREF.exit74.i

Py_DECREF.exit74.i:                               ; preds = %bb.hl, %_PyUnicode_FromASCII.exit.i300, %Py_DECREF.exit74.sink.split.i, %bb.il, %bb.ih, %bb.ig, %bb.hz, %_PyUnicode_FromASCII.exit101.i, %bb.ht, %bb.hs
  %i.xl = load i32, ptr %i.sp, align 8, !tbaa !205 ; 2 uses
  %.not.i.i292 = icmp sgt i32 %i.xl, -1
  br i1 %.not.i.i292, label %bb.im, label %asciilib_rsplit.exit

bb.im:                                            ; preds = %Py_DECREF.exit74.i
  %i.xm = add nsw i32 %i.xl, -1                   ; 2 uses
  store i32 %i.xm, ptr %i.sp, align 8, !tbaa !205
  %i.xn = icmp eq i32 %i.xm, 0
  br i1 %i.xn, label %bb.in, label %asciilib_rsplit.exit

bb.in:                                            ; preds = %bb.im
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.sp) #33, !inline_history !694
  br label %asciilib_rsplit.exit

bb.io:                                            ; preds = %bb.fr, %bb.fq
  switch i64 %.val99, label %bb.kf [
    i64 0, label %bb.ip
    i64 1, label %bb.iq
  ]

bb.ip:                                            ; preds = %bb.io
  %i.xo = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.xo, ptr noundef nonnull @.str.197) #33, !inline_history !701
  br label %asciilib_rsplit.exit

bb.iq:                                            ; preds = %bb.io
  %i.xp = load i8, ptr %.082, align 1, !tbaa !205
  %i.xq = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.xr = add nsw i64 %i.xq, 1
  %i.xs = tail call ptr @PyList_New(i64 noundef %i.xr) #33, !inline_history !702 ; 12 uses
  %i.xt = icmp eq ptr %i.xs, null
  br i1 %i.xt, label %asciilib_rsplit.exit, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.xu = add i64 %.val100, -1                    ; 4 uses
  %i.xv = icmp sgt i64 %i.xu, -1
  br i1 %i.xv, label %.lr.ph122.i.i, label %.critedge.thread.i.i301

.lr.ph122.i.i:                                    ; preds = %bb.ir
  %i.xw = getelementptr i8, ptr %i.xs, i64 24
  %smin.i316 = tail call i64 @llvm.smin.i64(i64 %.1, i64 0)
  %i.xx = sub i64 %.1, %smin.i316                 ; 4 uses
  %exitcond.not.i3171490 = icmp eq i64 %i.xx, 0
  br i1 %exitcond.not.i3171490, label %.critedge.i.i319, label %.lr.ph.i.i318.preheader

bb.is:                                            ; preds = %.loopexit.i.i325
  %exitcond.not.i317 = icmp eq i64 %i.zl, %i.xx
  br i1 %exitcond.not.i317, label %.critedge.i.i319, label %.lr.ph.i.i318.preheader, !llvm.loop !703

.lr.ph.i.i318.preheader:                          ; preds = %.lr.ph122.i.i, %bb.is
  %.051120.i.i1492 = phi i64 [ %i.zm, %bb.is ], [ %i.xu, %.lr.ph122.i.i ] ; 3 uses
  %.050121.i.i1491 = phi i64 [ %i.zl, %bb.is ], [ 0, %.lr.ph122.i.i ] ; 4 uses
  br label %.lr.ph.i.i318

.lr.ph.i.i318:                                    ; preds = %.lr.ph.i.i318.preheader, %bb.jj
  %.154117.i.i = phi i64 [ %i.zj, %bb.jj ], [ %.051120.i.i1492, %.lr.ph.i.i318.preheader ] ; 7 uses
  %i.xy = getelementptr i8, ptr %.0.i273, i64 %.154117.i.i
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !205
  %i.ya = icmp eq i8 %i.xz, %i.xp
  br i1 %i.ya, label %bb.it, label %bb.jj

bb.it:                                            ; preds = %.lr.ph.i.i318
  %i.yb = getelementptr i8, ptr %.0.i273, i64 %.154117.i.i
  %i.yc = getelementptr i8, ptr %i.yb, i64 1      ; 4 uses
  %i.yd = sub nuw nsw i64 %.051120.i.i1492, %.154117.i.i ; 4 uses
  switch i64 %i.yd, label %bb.iu [
    i64 0, label %_PyUnicode_FromUCS1.exit.thread.i.i
    i64 1, label %_PyUnicode_FromUCS1.exit.i.i
  ]

_PyUnicode_FromUCS1.exit.i.i:                     ; preds = %bb.it
  %i.ye = load i8, ptr %i.yc, align 1, !tbaa !205 ; 3 uses
  %i.yf = and i8 %i.ye, 127
  %i.yg = zext nneg i8 %i.yf to i64
  %i.yh = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.yg
  %i.yi = zext nneg i8 %i.ye to i64
  %i.yj = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.yi
  %i.yk = icmp slt i8 %i.ye, 0
  %.0.i.i.i321 = select i1 %i.yk, ptr %i.yh, ptr %i.yj ; 2 uses
  %i.yl = icmp eq ptr %.0.i.i.i321, null
  br i1 %i.yl, label %Py_DECREF.exit69.i.i307, label %_PyUnicode_FromUCS1.exit.thread.i.i

bb.iu:                                            ; preds = %bb.it
  %i.ym = getelementptr i8, ptr %i.yc, i64 %i.yd  ; 3 uses
  br label %bb.iv

bb.iv:                                            ; preds = %.thread31.i.i.i.i, %bb.iu
  %.021.i.i.i.i = phi ptr [ %i.yc, %bb.iu ], [ %i.yu, %.thread31.i.i.i.i ] ; 4 uses
  %i.yn = icmp ult ptr %.021.i.i.i.i, %i.ym
  br i1 %i.yn, label %bb.iw, label %ucs1lib_find_max_char.exit.i.i.i

bb.iw:                                            ; preds = %bb.iv
  %i.yo = ptrtoint ptr %.021.i.i.i.i to i64
  %i.yp = and i64 %i.yo, 7
  %.not.i.i.i.i334 = icmp eq i64 %i.yp, 0
  br i1 %.not.i.i.i.i334, label %.preheader.i.i.i.i, label %.thread31.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.iw, %bb.ix
  %.019.i.i.i.i = phi ptr [ %i.yq, %bb.ix ], [ %.021.i.i.i.i, %bb.iw ] ; 4 uses
  %i.yq = getelementptr i8, ptr %.019.i.i.i.i, i64 8 ; 2 uses
  %.not26.i.i.i.i = icmp ugt ptr %i.yq, %i.ym
  br i1 %.not26.i.i.i.i, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %.preheader.i.i.i.i
  %i.yr = load i64, ptr %.019.i.i.i.i, align 8, !tbaa !193
  %i.ys = and i64 %i.yr, -9187201950435737472
  %.not27.i.i.i.i = icmp eq i64 %i.ys, 0
  br i1 %.not27.i.i.i.i, label %.preheader.i.i.i.i, label %ucs1lib_find_max_char.exit.i.i.i, !llvm.loop !220

bb.iy:                                            ; preds = %.preheader.i.i.i.i
  %i.yt = icmp eq ptr %.019.i.i.i.i, %i.ym
  br i1 %i.yt, label %ucs1lib_find_max_char.exit.i.i.i, label %.thread31.i.i.i.i

.thread31.i.i.i.i:                                ; preds = %bb.iy, %bb.iw
  %.223.i.i.i.i = phi ptr [ %.021.i.i.i.i, %bb.iw ], [ %.019.i.i.i.i, %bb.iy ] ; 2 uses
  %i.yu = getelementptr i8, ptr %.223.i.i.i.i, i64 1
  %i.yv = load i8, ptr %.223.i.i.i.i, align 1, !tbaa !205
  %.not28.i.i.i.i = icmp sgt i8 %i.yv, -1
  br i1 %.not28.i.i.i.i, label %bb.iv, label %ucs1lib_find_max_char.exit.i.i.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i.i.i:                 ; preds = %.thread31.i.i.i.i, %bb.iy, %bb.iv, %bb.ix
  %.5.i.i.i.i = phi i32 [ 255, %bb.ix ], [ 127, %bb.iy ], [ 127, %bb.iv ], [ 255, %.thread31.i.i.i.i ]
  %i.yw = tail call ptr @PyUnicode_New(i64 noundef %i.yd, i32 noundef %.5.i.i.i.i), !inline_history !704 ; 5 uses
  %.not.i77.i.i327 = icmp eq ptr %i.yw, null
  br i1 %.not.i77.i.i327, label %Py_DECREF.exit69.i.i307, label %bb.iz

bb.iz:                                            ; preds = %ucs1lib_find_max_char.exit.i.i.i
  %i.yx = getelementptr i8, ptr %i.yw, i64 32
  %.val.i.i.i.i328 = load i32, ptr %i.yx, align 8 ; 2 uses
  %i.yy = and i32 %.val.i.i.i.i328, 32
  %.not.i15.i.i.i = icmp eq i32 %i.yy, 0
  br i1 %.not.i15.i.i.i, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.yz = and i32 %.val.i.i.i.i328, 64
  %.not.i.i.i.i.i329 = icmp eq i32 %i.yz, 0
  %.0.v.i.i.i.i.i330 = select i1 %.not.i.i.i.i.i329, i64 56, i64 40
  %.0.i.i.i.i.i331 = getelementptr i8, ptr %i.yw, i64 %.0.v.i.i.i.i.i330
  br label %_PyUnicode_DATA.exit.i.i.i

bb.jb:                                            ; preds = %bb.iz
  %i.za = getelementptr i8, ptr %i.yw, i64 56
  %.val4.i.i.i.i333 = load ptr, ptr %i.za, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i.i.i

_PyUnicode_DATA.exit.i.i.i:                       ; preds = %bb.jb, %bb.ja
  %.0.i.i.i.i332 = phi ptr [ %.0.i.i.i.i.i331, %bb.ja ], [ %.val4.i.i.i.i333, %bb.jb ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i332, ptr align 1 %i.yc, i64 %i.yd, i1 false)
  br label %_PyUnicode_FromUCS1.exit.thread.i.i

_PyUnicode_FromUCS1.exit.thread.i.i:              ; preds = %_PyUnicode_DATA.exit.i.i.i, %_PyUnicode_FromUCS1.exit.i.i, %bb.it
  %.0.i101.i.i = phi ptr [ %.0.i.i.i321, %_PyUnicode_FromUCS1.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.it ], [ %i.yw, %_PyUnicode_DATA.exit.i.i.i ] ; 7 uses
  %i.zb = icmp samesign ult i64 %.050121.i.i1491, 12
  br i1 %i.zb, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i.i
  %.val76.i.i326 = load ptr, ptr %i.xw, align 8, !tbaa !540
  %i.zc = getelementptr [8 x i8], ptr %.val76.i.i326, i64 %.050121.i.i1491
  store ptr %.0.i101.i.i, ptr %i.zc, align 8, !tbaa !194
  br label %.loopexit.i.i325

bb.jd:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i.i
  %i.zd = tail call i32 @PyList_Append(ptr noundef nonnull %i.xs, ptr noundef nonnull %.0.i101.i.i) #33, !inline_history !702
  %.not61.i.i322 = icmp eq i32 %i.zd, 0
  %i.ze = load i32, ptr %.0.i101.i.i, align 8, !tbaa !205 ; 3 uses
  %.not.i66.i.i324 = icmp sgt i32 %i.ze, -1       ; 2 uses
  br i1 %.not61.i.i322, label %bb.jg, label %bb.je

bb.je:                                            ; preds = %bb.jd
  br i1 %.not.i66.i.i324, label %bb.jf, label %Py_DECREF.exit69.i.i307

bb.jf:                                            ; preds = %bb.je
  %i.zf = add nsw i32 %i.ze, -1                   ; 2 uses
  store i32 %i.zf, ptr %.0.i101.i.i, align 8, !tbaa !205
  %i.zg = icmp eq i32 %i.zf, 0
  br i1 %i.zg, label %Py_DECREF.exit69.sink.split.i.i311, label %Py_DECREF.exit69.i.i307

bb.jg:                                            ; preds = %bb.jd
  br i1 %.not.i66.i.i324, label %bb.jh, label %.loopexit.i.i325

bb.jh:                                            ; preds = %bb.jg
  %i.zh = add nsw i32 %i.ze, -1                   ; 2 uses
  store i32 %i.zh, ptr %.0.i101.i.i, align 8, !tbaa !205
  %i.zi = icmp eq i32 %i.zh, 0
  br i1 %i.zi, label %bb.ji, label %.loopexit.i.i325

bb.ji:                                            ; preds = %bb.jh
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i101.i.i) #33, !inline_history !702
  br label %.loopexit.i.i325

bb.jj:                                            ; preds = %.lr.ph.i.i318
  %i.zj = add nsw i64 %.154117.i.i, -1
  %i.zk = icmp sgt i64 %.154117.i.i, 0
  br i1 %i.zk, label %.lr.ph.i.i318, label %.critedge.i.i319, !llvm.loop !705

.loopexit.i.i325:                                 ; preds = %bb.ji, %bb.jh, %bb.jg, %bb.jc
  %i.zl = add nuw i64 %.050121.i.i1491, 1         ; 3 uses
  %i.zm = add nsw i64 %.154117.i.i, -1            ; 3 uses
  %i.zn = icmp sgt i64 %.154117.i.i, 0
  br i1 %i.zn, label %bb.is, label %.critedge.i.thread.i304, !llvm.loop !703

.critedge.i.i319:                                 ; preds = %bb.is, %bb.jj, %.lr.ph122.i.i
  %.051120.i.i1386 = phi i64 [ %.051120.i.i1492, %bb.jj ], [ %i.xu, %.lr.ph122.i.i ], [ %i.zm, %bb.is ] ; 2 uses
  %.050.lcssa.i.i320 = phi i64 [ %.050121.i.i1491, %bb.jj ], [ %i.xx, %.lr.ph122.i.i ], [ %i.xx, %bb.is ] ; 2 uses
  %i.zo = icmp eq i64 %.050.lcssa.i.i320, 0
  br i1 %i.zo, label %.critedge.thread.i.i301, label %.critedge.i.thread.i304

.critedge.thread.i.i301:                          ; preds = %.critedge.i.i319, %bb.ir
  %.051.lcssa153.i.i = phi i64 [ %.051120.i.i1386, %.critedge.i.i319 ], [ %i.xu, %bb.ir ]
  %i.zp = getelementptr i8, ptr %0, i64 8
  %.val.i.i302 = load ptr, ptr %i.zp, align 8, !tbaa !197
  %.not.i82.i303 = icmp eq ptr %.val.i.i302, @PyUnicode_Type
  br i1 %.not.i82.i303, label %bb.jk, label %.critedge.i.thread.i304

bb.jk:                                            ; preds = %.critedge.thread.i.i301
  %i.zq = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.zr = icmp ugt i32 %i.zq, -1073741825
  br i1 %i.zr, label %Py_INCREF.exit.i.i314, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.zs = add nuw i32 %i.zq, 1
  store i32 %i.zs, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit.i.i314

Py_INCREF.exit.i.i314:                            ; preds = %bb.jl, %bb.jk
  %i.zt = getelementptr i8, ptr %i.xs, i64 24
  %.val75.i.i315 = load ptr, ptr %i.zt, align 8, !tbaa !540
  store ptr %0, ptr %.val75.i.i315, align 8, !tbaa !194
  br label %bb.kc

.critedge.i.thread.i304:                          ; preds = %.loopexit.i.i325, %.critedge.thread.i.i301, %.critedge.i.i319
  %.050.lcssa154.i.i = phi i64 [ 0, %.critedge.thread.i.i301 ], [ %.050.lcssa.i.i320, %.critedge.i.i319 ], [ %i.zl, %.loopexit.i.i325 ] ; 4 uses
  %.051.lcssa152.i.i = phi i64 [ %.051.lcssa153.i.i, %.critedge.thread.i.i301 ], [ %.051120.i.i1386, %.critedge.i.i319 ], [ %i.zm, %.loopexit.i.i325 ] ; 2 uses
  %i.zu = icmp sgt i64 %.051.lcssa152.i.i, -2
  br i1 %i.zu, label %bb.jm, label %bb.kc

bb.jm:                                            ; preds = %.critedge.i.thread.i304
  %i.zv = add i64 %.051.lcssa152.i.i, 1           ; 4 uses
  switch i64 %i.zv, label %bb.jn [
    i64 0, label %_PyUnicode_FromUCS1.exit99.thread.i.i
    i64 1, label %_PyUnicode_FromUCS1.exit99.i.i
  ]

_PyUnicode_FromUCS1.exit99.i.i:                   ; preds = %bb.jm
  %i.zw = load i8, ptr %.0.i273, align 1, !tbaa !205 ; 3 uses
  %i.zx = and i8 %i.zw, 127
  %i.zy = zext nneg i8 %i.zx to i64
  %i.zz = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.zy
  %i.aaa = zext nneg i8 %i.zw to i64
  %i.aab = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.aaa
  %i.aac = icmp slt i8 %i.zw, 0
  %.0.i78.i.i = select i1 %i.aac, ptr %i.zz, ptr %i.aab ; 2 uses
  %i.aad = icmp eq ptr %.0.i78.i.i, null
  br i1 %i.aad, label %Py_DECREF.exit69.i.i307, label %_PyUnicode_FromUCS1.exit99.thread.i.i

bb.jn:                                            ; preds = %bb.jm
  %i.aae = getelementptr i8, ptr %.0.i273, i64 %i.zv ; 3 uses
  br label %bb.jo

bb.jo:                                            ; preds = %.thread31.i.i92.i.i, %bb.jn
  %.021.i.i79.i.i = phi ptr [ %.0.i273, %bb.jn ], [ %i.aam, %.thread31.i.i92.i.i ] ; 4 uses
  %i.aaf = icmp ult ptr %.021.i.i79.i.i, %i.aae
  br i1 %i.aaf, label %bb.jp, label %ucs1lib_find_max_char.exit.i80.i.i

bb.jp:                                            ; preds = %bb.jo
  %i.aag = ptrtoint ptr %.021.i.i79.i.i to i64
  %i.aah = and i64 %i.aag, 7
  %.not.i.i91.i.i = icmp eq i64 %i.aah, 0
  br i1 %.not.i.i91.i.i, label %.preheader.i.i95.i.i, label %.thread31.i.i92.i.i

.preheader.i.i95.i.i:                             ; preds = %bb.jp, %bb.jq
  %.019.i.i96.i.i = phi ptr [ %i.aai, %bb.jq ], [ %.021.i.i79.i.i, %bb.jp ] ; 4 uses
  %i.aai = getelementptr i8, ptr %.019.i.i96.i.i, i64 8 ; 2 uses
  %.not26.i.i97.i.i = icmp ugt ptr %i.aai, %i.aae
  br i1 %.not26.i.i97.i.i, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %.preheader.i.i95.i.i
  %i.aaj = load i64, ptr %.019.i.i96.i.i, align 8, !tbaa !193
  %i.aak = and i64 %i.aaj, -9187201950435737472
  %.not27.i.i98.i.i = icmp eq i64 %i.aak, 0
  br i1 %.not27.i.i98.i.i, label %.preheader.i.i95.i.i, label %ucs1lib_find_max_char.exit.i80.i.i, !llvm.loop !220

bb.jr:                                            ; preds = %.preheader.i.i95.i.i
  %i.aal = icmp eq ptr %.019.i.i96.i.i, %i.aae
  br i1 %i.aal, label %ucs1lib_find_max_char.exit.i80.i.i, label %.thread31.i.i92.i.i

.thread31.i.i92.i.i:                              ; preds = %bb.jr, %bb.jp
  %.223.i.i93.i.i = phi ptr [ %.021.i.i79.i.i, %bb.jp ], [ %.019.i.i96.i.i, %bb.jr ] ; 2 uses
  %i.aam = getelementptr i8, ptr %.223.i.i93.i.i, i64 1
  %i.aan = load i8, ptr %.223.i.i93.i.i, align 1, !tbaa !205
  %.not28.i.i94.i.i = icmp sgt i8 %i.aan, -1
  br i1 %.not28.i.i94.i.i, label %bb.jo, label %ucs1lib_find_max_char.exit.i80.i.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i80.i.i:               ; preds = %.thread31.i.i92.i.i, %bb.jr, %bb.jo, %bb.jq
  %.5.i.i81.i.i = phi i32 [ 255, %bb.jq ], [ 127, %bb.jr ], [ 127, %bb.jo ], [ 255, %.thread31.i.i92.i.i ]
  %i.aao = tail call ptr @PyUnicode_New(i64 noundef %i.zv, i32 noundef %.5.i.i81.i.i), !inline_history !704 ; 5 uses
  %.not.i82.i.i = icmp eq ptr %i.aao, null
  br i1 %.not.i82.i.i, label %Py_DECREF.exit69.i.i307, label %bb.js

bb.js:                                            ; preds = %ucs1lib_find_max_char.exit.i80.i.i
  %i.aap = getelementptr i8, ptr %i.aao, i64 32
  %.val.i.i83.i.i = load i32, ptr %i.aap, align 8 ; 2 uses
  %i.aaq = and i32 %.val.i.i83.i.i, 32
  %.not.i15.i84.i.i = icmp eq i32 %i.aaq, 0
  br i1 %.not.i15.i84.i.i, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.aar = and i32 %.val.i.i83.i.i, 64
  %.not.i.i.i85.i.i = icmp eq i32 %i.aar, 0
  %.0.v.i.i.i86.i.i = select i1 %.not.i.i.i85.i.i, i64 56, i64 40
  %.0.i.i.i87.i.i = getelementptr i8, ptr %i.aao, i64 %.0.v.i.i.i86.i.i
  br label %_PyUnicode_DATA.exit.i88.i.i

bb.ju:                                            ; preds = %bb.js
  %i.aas = getelementptr i8, ptr %i.aao, i64 56
  %.val4.i.i90.i.i = load ptr, ptr %i.aas, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i88.i.i

_PyUnicode_DATA.exit.i88.i.i:                     ; preds = %bb.ju, %bb.jt
  %.0.i.i89.i.i = phi ptr [ %.0.i.i.i87.i.i, %bb.jt ], [ %.val4.i.i90.i.i, %bb.ju ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i89.i.i, ptr align 1 %.0.i273, i64 %i.zv, i1 false)
  br label %_PyUnicode_FromUCS1.exit99.thread.i.i

_PyUnicode_FromUCS1.exit99.thread.i.i:            ; preds = %_PyUnicode_DATA.exit.i88.i.i, %_PyUnicode_FromUCS1.exit99.i.i, %bb.jm
  %.0.i78105.i.i = phi ptr [ %.0.i78.i.i, %_PyUnicode_FromUCS1.exit99.i.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.jm ], [ %i.aao, %_PyUnicode_DATA.exit.i88.i.i ] ; 7 uses
  %i.aat = icmp slt i64 %.050.lcssa154.i.i, 12
  br i1 %i.aat, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %_PyUnicode_FromUCS1.exit99.thread.i.i
  %i.aau = getelementptr i8, ptr %i.xs, i64 24
  %.val74.i.i313 = load ptr, ptr %i.aau, align 8, !tbaa !540
  %i.aav = getelementptr [8 x i8], ptr %.val74.i.i313, i64 %.050.lcssa154.i.i
  store ptr %.0.i78105.i.i, ptr %i.aav, align 8, !tbaa !194
  br label %Py_DECREF.exit63.i.i312

bb.jw:                                            ; preds = %_PyUnicode_FromUCS1.exit99.thread.i.i
  %i.aaw = tail call i32 @PyList_Append(ptr noundef nonnull %i.xs, ptr noundef nonnull %.0.i78105.i.i) #33, !inline_history !702
  %.not60.i.i309 = icmp eq i32 %i.aaw, 0
  %i.aax = load i32, ptr %.0.i78105.i.i, align 8, !tbaa !205 ; 3 uses
  %.not.i62.i.i310 = icmp sgt i32 %i.aax, -1      ; 2 uses
  br i1 %.not60.i.i309, label %bb.jz, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  br i1 %.not.i62.i.i310, label %bb.jy, label %Py_DECREF.exit69.i.i307

bb.jy:                                            ; preds = %bb.jx
  %i.aay = add nsw i32 %i.aax, -1                 ; 2 uses
  store i32 %i.aay, ptr %.0.i78105.i.i, align 8, !tbaa !205
  %i.aaz = icmp eq i32 %i.aay, 0
  br i1 %i.aaz, label %Py_DECREF.exit69.sink.split.i.i311, label %Py_DECREF.exit69.i.i307

bb.jz:                                            ; preds = %bb.jw
  br i1 %.not.i62.i.i310, label %bb.ka, label %Py_DECREF.exit63.i.i312

bb.ka:                                            ; preds = %bb.jz
  %i.aba = add nsw i32 %i.aax, -1                 ; 2 uses
  store i32 %i.aba, ptr %.0.i78105.i.i, align 8, !tbaa !205
  %i.abb = icmp eq i32 %i.aba, 0
  br i1 %i.abb, label %bb.kb, label %Py_DECREF.exit63.i.i312

bb.kb:                                            ; preds = %bb.ka
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i78105.i.i) #33, !inline_history !702
  br label %Py_DECREF.exit63.i.i312

Py_DECREF.exit63.i.i312:                          ; preds = %bb.kb, %bb.ka, %bb.jz, %bb.jv
  %i.abc = add i64 %.050.lcssa154.i.i, 1
  br label %bb.kc

bb.kc:                                            ; preds = %Py_DECREF.exit63.i.i312, %.critedge.i.thread.i304, %Py_INCREF.exit.i.i314
  %.2.i.i305 = phi i64 [ 1, %Py_INCREF.exit.i.i314 ], [ %i.abc, %Py_DECREF.exit63.i.i312 ], [ %.050.lcssa154.i.i, %.critedge.i.thread.i304 ]
  %i.abd = getelementptr i8, ptr %i.xs, i64 16
  store i64 %.2.i.i305, ptr %i.abd, align 8, !tbaa !380
  %i.abe = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.xs) #33, !inline_history !702
  %i.abf = icmp slt i32 %i.abe, 0
  br i1 %i.abf, label %Py_DECREF.exit69.i.i307, label %asciilib_rsplit.exit

Py_DECREF.exit69.sink.split.i.i311:               ; preds = %bb.jy, %bb.jf
  %.0.i78105.sink.i.i = phi ptr [ %.0.i101.i.i, %bb.jf ], [ %.0.i78105.i.i, %bb.jy ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i78105.sink.i.i) #33, !inline_history !702
  br label %Py_DECREF.exit69.i.i307

Py_DECREF.exit69.i.i307:                          ; preds = %ucs1lib_find_max_char.exit.i.i.i, %_PyUnicode_FromUCS1.exit.i.i, %Py_DECREF.exit69.sink.split.i.i311, %bb.kc, %bb.jy, %bb.jx, %ucs1lib_find_max_char.exit.i80.i.i, %_PyUnicode_FromUCS1.exit99.i.i, %bb.jf, %bb.je
  %i.abg = load i32, ptr %i.xs, align 8, !tbaa !205 ; 2 uses
  %.not.i.i.i308 = icmp sgt i32 %i.abg, -1
  br i1 %.not.i.i.i308, label %bb.kd, label %asciilib_rsplit.exit

bb.kd:                                            ; preds = %Py_DECREF.exit69.i.i307
  %i.abh = add nsw i32 %i.abg, -1                 ; 2 uses
  store i32 %i.abh, ptr %i.xs, align 8, !tbaa !205
  %i.abi = icmp eq i32 %i.abh, 0
  br i1 %i.abi, label %bb.ke, label %asciilib_rsplit.exit

bb.ke:                                            ; preds = %bb.kd
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.xs) #33, !inline_history !702
  br label %asciilib_rsplit.exit

bb.kf:                                            ; preds = %bb.io
  %i.abj = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.abk = add nsw i64 %i.abj, 1
  %i.abl = tail call ptr @PyList_New(i64 noundef %i.abk) #33, !inline_history !701 ; 12 uses
  %i.abm = icmp eq ptr %i.abl, null
  br i1 %i.abm, label %asciilib_rsplit.exit, label %.preheader.i335

.preheader.i335:                                  ; preds = %bb.kf
  %i.abn = icmp slt i64 %.1, 1
  br i1 %i.abn, label %ucs1lib_fastsearch.exit.thread.thread.i, label %.lr.ph.i336

.lr.ph.i336:                                      ; preds = %.preheader.i335
  %i.abo = icmp slt i64 %.val99, 2
  %i.abp = add i64 %.val99, -1                    ; 6 uses
  %i.abq = getelementptr i8, ptr %i.abl, i64 24
  br i1 %i.abo, label %ucs1lib_fastsearch.exit.thread.thread.i, label %.lr.ph.i336.split.preheader

.lr.ph.i336.split.preheader:                      ; preds = %.lr.ph.i336
  %xtraiter1728 = and i64 %i.abp, 1
  %lcmp.mod1729.not = icmp eq i64 %xtraiter1728, 0
  %i.abr = getelementptr i8, ptr %.082, i64 %i.abp
  %i.abs = add nsw i64 %.val99, -2                ; 2 uses
  %i.abt = icmp eq i64 %.val99, 2
  br label %.lr.ph.i336.split

.lr.ph.i336.split:                                ; preds = %.lr.ph.i336.split.preheader, %Py_DECREF.exit72.i366
  %.in.i337 = phi i64 [ %i.ace, %Py_DECREF.exit72.i366 ], [ %.1, %.lr.ph.i336.split.preheader ] ; 2 uses
  %.057158.i = phi i64 [ %i.afg, %Py_DECREF.exit72.i366 ], [ 0, %.lr.ph.i336.split.preheader ] ; 5 uses
  %.059157.i = phi i64 [ %.15065.us.i.i.i354, %Py_DECREF.exit72.i366 ], [ %.val100, %.lr.ph.i336.split.preheader ] ; 5 uses
  %i.abu = load i8, ptr %.082, align 1, !tbaa !205 ; 5 uses
  %i.abv = and i8 %i.abu, 63
  %i.abw = zext nneg i8 %i.abv to i64
  %i.abx = shl nuw i64 1, %i.abw                  ; 2 uses
  br i1 %lcmp.mod1729.not, label %.lr.ph.i76.i.i.prol.loopexit, label %.lr.ph.i76.i.i.prol

.lr.ph.i76.i.i.prol:                              ; preds = %.lr.ph.i336.split
  %i.aby = load i8, ptr %i.abr, align 1, !tbaa !205 ; 2 uses
  %i.abz = and i8 %i.aby, 63
  %i.aca = zext nneg i8 %i.abz to i64
  %i.acb = shl nuw i64 1, %i.aca
  %i.acc = or i64 %i.acb, %i.abx                  ; 2 uses
  %i.acd = icmp eq i8 %i.aby, %i.abu
  %spec.select.i77.i.i.prol = select i1 %i.acd, i64 %i.abs, i64 %i.abp ; 2 uses
  br label %.lr.ph.i76.i.i.prol.loopexit

.lr.ph.i76.i.i.prol.loopexit:                     ; preds = %.lr.ph.i76.i.i.prol, %.lr.ph.i336.split
  %.04660.i.i.i338.unr = phi i64 [ %i.abp, %.lr.ph.i336.split ], [ %spec.select.i77.i.i.prol, %.lr.ph.i76.i.i.prol ]
  %.04759.i.i.i339.unr = phi i64 [ %i.abx, %.lr.ph.i336.split ], [ %i.acc, %.lr.ph.i76.i.i.prol ]
  %.04958.i.i.i340.unr = phi i64 [ %i.abp, %.lr.ph.i336.split ], [ %i.abs, %.lr.ph.i76.i.i.prol ]
  %.lcssa1588.unr = phi i64 [ poison, %.lr.ph.i336.split ], [ %i.acc, %.lr.ph.i76.i.i.prol ]
  %spec.select.i77.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i336.split ], [ %spec.select.i77.i.i.prol, %.lr.ph.i76.i.i.prol ]
  br i1 %i.abt, label %.preheader56.i.i.i341, label %.lr.ph.i76.i.i

.preheader56.i.i.i341:                            ; preds = %.lr.ph.i76.i.i, %.lr.ph.i76.i.i.prol.loopexit
  %.lcssa1588 = phi i64 [ %.lcssa1588.unr, %.lr.ph.i76.i.i.prol.loopexit ], [ %i.adt, %.lr.ph.i76.i.i ] ; 2 uses
  %spec.select.i77.i.i.lcssa = phi i64 [ %spec.select.i77.i.i.lcssa.unr, %.lr.ph.i76.i.i.prol.loopexit ], [ %spec.select.i77.i.i.1, %.lr.ph.i76.i.i ]
  %i.ace = add nsw i64 %.in.i337, -1
  %i.acf = sub i64 %.059157.i, %.val99            ; 2 uses
  %i.acg = icmp sgt i64 %i.acf, -1
  br i1 %i.acg, label %.lr.ph66.split.us.i.i.i353, label %ucs1lib_fastsearch.exit.thread.i

.lr.ph66.split.us.i.i.i353:                       ; preds = %.preheader56.i.i.i341, %bb.kk
  %.15065.us.i.i.i354 = phi i64 [ %i.adc, %bb.kk ], [ %i.acf, %.preheader56.i.i.i341 ] ; 9 uses
  %i.ach = getelementptr i8, ptr %.0.i273, i64 %.15065.us.i.i.i354 ; 4 uses
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !205
  %i.acj = icmp eq i8 %i.aci, %i.abu
  br i1 %i.acj, label %.preheader.us.i80.i.i, label %bb.kg

bb.kg:                                            ; preds = %.lr.ph66.split.us.i.i.i353
  %.not.us.i79.i.i = icmp eq i64 %.15065.us.i.i.i354, 0
  br i1 %.not.us.i79.i.i, label %ucs1lib_fastsearch.exit.thread.i, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.ack = getelementptr i8, ptr %i.ach, i64 -1
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !205
  %i.acm = and i8 %i.acl, 63
  %i.acn = zext nneg i8 %i.acm to i64
  %i.aco = shl nuw i64 1, %i.acn
  %i.acp = and i64 %i.aco, %.lcssa1588
  %.not51.us.i.i.i355 = icmp eq i64 %i.acp, 0
  %i.acq = select i1 %.not51.us.i.i.i355, i64 %.val99, i64 0
  br label %bb.kk

.preheader.us.i80.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i353, %bb.kl
  %.04862.us.i.i.i357 = phi i64 [ %i.ade, %bb.kl ], [ %i.abp, %.lr.ph66.split.us.i.i.i353 ] ; 4 uses
  %i.acr = getelementptr i8, ptr %i.ach, i64 %.04862.us.i.i.i357
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !205
  %i.act = getelementptr i8, ptr %.082, i64 %.04862.us.i.i.i357
  %i.acu = load i8, ptr %i.act, align 1, !tbaa !205
  %.not52.us.i.i.i358 = icmp eq i8 %i.acs, %i.acu
  br i1 %.not52.us.i.i.i358, label %bb.kl, label %.thread.us.i.i.i

.thread.us.i.i.i:                                 ; preds = %.preheader.us.i80.i.i
  %.not53.us.i.i.i359 = icmp eq i64 %.15065.us.i.i.i354, 0
  br i1 %.not53.us.i.i.i359, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %.thread.us.i.i.i
  %i.acv = getelementptr i8, ptr %i.ach, i64 -1
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !205
  %i.acx = and i8 %i.acw, 63
  %i.acy = zext nneg i8 %i.acx to i64
  %i.acz = shl nuw i64 1, %i.acy
  %i.ada = and i64 %i.acz, %.lcssa1588
  %.not54.us.i.i.i360 = icmp eq i64 %i.ada, 0
  br i1 %.not54.us.i.i.i360, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %.thread.us.i.i.i
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki, %bb.kh
  %spec.select.lcssa.sink.i.i.i356 = phi i64 [ %spec.select.i77.i.i.lcssa, %bb.kj ], [ %i.acq, %bb.kh ], [ %.val99, %bb.ki ]
  %i.adb = sub nsw i64 %.15065.us.i.i.i354, %spec.select.lcssa.sink.i.i.i356 ; 2 uses
  %i.adc = add nsw i64 %i.adb, -1
  %i.add = icmp sgt i64 %i.adb, 0
  br i1 %i.add, label %.lr.ph66.split.us.i.i.i353, label %ucs1lib_fastsearch.exit.thread.i, !llvm.loop !666

bb.kl:                                            ; preds = %.preheader.us.i80.i.i
  %i.ade = add nsw i64 %.04862.us.i.i.i357, -1
  %i.adf = icmp sgt i64 %.04862.us.i.i.i357, 1
  br i1 %i.adf, label %.preheader.us.i80.i.i, label %ucs1lib_fastsearch.exit.i, !llvm.loop !667

.lr.ph.i76.i.i:                                   ; preds = %.lr.ph.i76.i.i.prol.loopexit, %.lr.ph.i76.i.i
  %.04660.i.i.i338 = phi i64 [ %spec.select.i77.i.i.1, %.lr.ph.i76.i.i ], [ %.04660.i.i.i338.unr, %.lr.ph.i76.i.i.prol.loopexit ]
  %.04759.i.i.i339 = phi i64 [ %i.adt, %.lr.ph.i76.i.i ], [ %.04759.i.i.i339.unr, %.lr.ph.i76.i.i.prol.loopexit ]
  %.04958.i.i.i340 = phi i64 [ %i.adv, %.lr.ph.i76.i.i ], [ %.04958.i.i.i340.unr, %.lr.ph.i76.i.i.prol.loopexit ] ; 4 uses
  %i.adg = getelementptr i8, ptr %.082, i64 %.04958.i.i.i340
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !205 ; 2 uses
  %i.adi = and i8 %i.adh, 63
  %i.adj = zext nneg i8 %i.adi to i64
  %i.adk = shl nuw i64 1, %i.adj
  %i.adl = or i64 %i.adk, %.04759.i.i.i339
  %i.adm = icmp eq i8 %i.adh, %i.abu
  %i.adn = add nsw i64 %.04958.i.i.i340, -1       ; 2 uses
  %spec.select.i77.i.i = select i1 %i.adm, i64 %i.adn, i64 %.04660.i.i.i338
  %i.ado = getelementptr i8, ptr %.082, i64 %i.adn
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !205 ; 2 uses
  %i.adq = and i8 %i.adp, 63
  %i.adr = zext nneg i8 %i.adq to i64
  %i.ads = shl nuw i64 1, %i.adr
  %i.adt = or i64 %i.ads, %i.adl                  ; 2 uses
  %i.adu = icmp eq i8 %i.adp, %i.abu
  %i.adv = add nsw i64 %.04958.i.i.i340, -2       ; 2 uses
  %spec.select.i77.i.i.1 = select i1 %i.adu, i64 %i.adv, i64 %spec.select.i77.i.i ; 2 uses
  %i.adw = icmp sgt i64 %.04958.i.i.i340, 2
  br i1 %i.adw, label %.lr.ph.i76.i.i, label %.preheader56.i.i.i341, !llvm.loop !668

ucs1lib_fastsearch.exit.i:                        ; preds = %bb.kl
  %i.adx = icmp slt i64 %.15065.us.i.i.i354, 0
  br i1 %i.adx, label %ucs1lib_fastsearch.exit.thread.i, label %bb.km

bb.km:                                            ; preds = %ucs1lib_fastsearch.exit.i
  %i.ady = add nuw i64 %.15065.us.i.i.i354, %.val99 ; 2 uses
  %i.adz = getelementptr i8, ptr %.0.i273, i64 %i.ady ; 3 uses
  %i.aea = sub i64 %.059157.i, %i.ady             ; 3 uses
  switch i64 %i.aea, label %bb.kn [
    i64 0, label %_PyUnicode_FromUCS1.exit.thread.i362
    i64 1, label %_PyUnicode_FromUCS1.exit.i361
  ]

_PyUnicode_FromUCS1.exit.i361:                    ; preds = %bb.km
  %i.aeb = load i8, ptr %i.adz, align 1, !tbaa !205 ; 3 uses
  %i.aec = and i8 %i.aeb, 127
  %i.aed = zext nneg i8 %i.aec to i64
  %i.aee = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.aed
  %i.aef = zext nneg i8 %i.aeb to i64
  %i.aeg = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.aef
  %i.aeh = icmp slt i8 %i.aeb, 0
  %.0.i85.i = select i1 %i.aeh, ptr %i.aee, ptr %i.aeg ; 2 uses
  %i.aei = icmp eq ptr %.0.i85.i, null
  br i1 %i.aei, label %Py_DECREF.exit74.i344, label %_PyUnicode_FromUCS1.exit.thread.i362

bb.kn:                                            ; preds = %bb.km
  %i.aej = getelementptr i8, ptr %.0.i273, i64 %.059157.i ; 3 uses
  br label %bb.ko

bb.ko:                                            ; preds = %.thread31.i.i.i381, %bb.kn
  %.021.i.i.i369 = phi ptr [ %i.adz, %bb.kn ], [ %i.aer, %.thread31.i.i.i381 ] ; 4 uses
  %i.aek = icmp ult ptr %.021.i.i.i369, %i.aej
  br i1 %i.aek, label %bb.kp, label %ucs1lib_find_max_char.exit.i.i370

bb.kp:                                            ; preds = %bb.ko
  %i.ael = ptrtoint ptr %.021.i.i.i369 to i64
  %i.aem = and i64 %i.ael, 7
  %.not.i.i90.i = icmp eq i64 %i.aem, 0
  br i1 %.not.i.i90.i, label %.preheader.i.i.i384, label %.thread31.i.i.i381

.preheader.i.i.i384:                              ; preds = %bb.kp, %bb.kq
  %.019.i.i.i385 = phi ptr [ %i.aen, %bb.kq ], [ %.021.i.i.i369, %bb.kp ] ; 4 uses
  %i.aen = getelementptr i8, ptr %.019.i.i.i385, i64 8 ; 2 uses
  %.not26.i.i.i386 = icmp ugt ptr %i.aen, %i.aej
  br i1 %.not26.i.i.i386, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %.preheader.i.i.i384
  %i.aeo = load i64, ptr %.019.i.i.i385, align 8, !tbaa !193
  %i.aep = and i64 %i.aeo, -9187201950435737472
  %.not27.i.i.i387 = icmp eq i64 %i.aep, 0
  br i1 %.not27.i.i.i387, label %.preheader.i.i.i384, label %ucs1lib_find_max_char.exit.i.i370, !llvm.loop !220

bb.kr:                                            ; preds = %.preheader.i.i.i384
  %i.aeq = icmp eq ptr %.019.i.i.i385, %i.aej
  br i1 %i.aeq, label %ucs1lib_find_max_char.exit.i.i370, label %.thread31.i.i.i381

.thread31.i.i.i381:                               ; preds = %bb.kr, %bb.kp
  %.223.i.i.i382 = phi ptr [ %.021.i.i.i369, %bb.kp ], [ %.019.i.i.i385, %bb.kr ] ; 2 uses
  %i.aer = getelementptr i8, ptr %.223.i.i.i382, i64 1
  %i.aes = load i8, ptr %.223.i.i.i382, align 1, !tbaa !205
  %.not28.i.i.i383 = icmp sgt i8 %i.aes, -1
  br i1 %.not28.i.i.i383, label %bb.ko, label %ucs1lib_find_max_char.exit.i.i370, !llvm.loop !221

ucs1lib_find_max_char.exit.i.i370:                ; preds = %.thread31.i.i.i381, %bb.kr, %bb.ko, %bb.kq
  %.5.i.i.i371 = phi i32 [ 255, %bb.kq ], [ 127, %bb.ko ], [ 127, %bb.kr ], [ 255, %.thread31.i.i.i381 ]
  %i.aet = tail call ptr @PyUnicode_New(i64 noundef %i.aea, i32 noundef %.5.i.i.i371), !inline_history !706 ; 5 uses
  %.not.i86.i372 = icmp eq ptr %i.aet, null
  br i1 %.not.i86.i372, label %Py_DECREF.exit74.i344, label %bb.ks

bb.ks:                                            ; preds = %ucs1lib_find_max_char.exit.i.i370
  %i.aeu = getelementptr i8, ptr %i.aet, i64 32
  %.val.i.i.i373 = load i32, ptr %i.aeu, align 8  ; 2 uses
  %i.aev = and i32 %.val.i.i.i373, 32
  %.not.i15.i.i374 = icmp eq i32 %i.aev, 0
  br i1 %.not.i15.i.i374, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.aew = and i32 %.val.i.i.i373, 64
  %.not.i.i.i87.i375 = icmp eq i32 %i.aew, 0
  %.0.v.i.i.i.i376 = select i1 %.not.i.i.i87.i375, i64 56, i64 40
  %.0.i.i.i88.i377 = getelementptr i8, ptr %i.aet, i64 %.0.v.i.i.i.i376
  br label %_PyUnicode_DATA.exit.i.i378

bb.ku:                                            ; preds = %bb.ks
  %i.aex = getelementptr i8, ptr %i.aet, i64 56
  %.val4.i.i.i380 = load ptr, ptr %i.aex, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i.i378

_PyUnicode_DATA.exit.i.i378:                      ; preds = %bb.ku, %bb.kt
  %.0.i.i89.i379 = phi ptr [ %.0.i.i.i88.i377, %bb.kt ], [ %.val4.i.i.i380, %bb.ku ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i89.i379, ptr align 1 %i.adz, i64 %i.aea, i1 false)
  br label %_PyUnicode_FromUCS1.exit.thread.i362

_PyUnicode_FromUCS1.exit.thread.i362:             ; preds = %_PyUnicode_DATA.exit.i.i378, %_PyUnicode_FromUCS1.exit.i361, %bb.km
  %.0.i85115.i = phi ptr [ %.0.i85.i, %_PyUnicode_FromUCS1.exit.i361 ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.km ], [ %i.aet, %_PyUnicode_DATA.exit.i.i378 ] ; 7 uses
  %i.aey = icmp samesign ult i64 %.057158.i, 12
  br i1 %i.aey, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i362
  %.val81.i368 = load ptr, ptr %i.abq, align 8, !tbaa !540
  %i.aez = getelementptr [8 x i8], ptr %.val81.i368, i64 %.057158.i
  store ptr %.0.i85115.i, ptr %i.aez, align 8, !tbaa !194
  br label %Py_DECREF.exit72.i366

bb.kw:                                            ; preds = %_PyUnicode_FromUCS1.exit.thread.i362
  %i.afa = tail call i32 @PyList_Append(ptr noundef nonnull %i.abl, ptr noundef nonnull %.0.i85115.i) #33, !inline_history !701
  %.not.i363 = icmp eq i32 %i.afa, 0
  %i.afb = load i32, ptr %.0.i85115.i, align 8, !tbaa !205 ; 3 uses
  %.not.i71.i365 = icmp sgt i32 %i.afb, -1        ; 2 uses
  br i1 %.not.i363, label %bb.kz, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  br i1 %.not.i71.i365, label %bb.ky, label %Py_DECREF.exit74.i344

bb.ky:                                            ; preds = %bb.kx
  %i.afc = add nsw i32 %i.afb, -1                 ; 2 uses
  store i32 %i.afc, ptr %.0.i85115.i, align 8, !tbaa !205
  %i.afd = icmp eq i32 %i.afc, 0
  br i1 %i.afd, label %Py_DECREF.exit74.sink.split.i346, label %Py_DECREF.exit74.i344

bb.kz:                                            ; preds = %bb.kw
  br i1 %.not.i71.i365, label %bb.la, label %Py_DECREF.exit72.i366

bb.la:                                            ; preds = %bb.kz
  %i.afe = add nsw i32 %i.afb, -1                 ; 2 uses
  store i32 %i.afe, ptr %.0.i85115.i, align 8, !tbaa !205
  %i.aff = icmp eq i32 %i.afe, 0
  br i1 %i.aff, label %bb.lb, label %Py_DECREF.exit72.i366

bb.lb:                                            ; preds = %bb.la
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i85115.i) #33, !inline_history !701
  br label %Py_DECREF.exit72.i366

Py_DECREF.exit72.i366:                            ; preds = %bb.lb, %bb.la, %bb.kz, %bb.kv
  %i.afg = add nuw nsw i64 %.057158.i, 1          ; 2 uses
  %i.afh = icmp slt i64 %.in.i337, 2
  %i.afi = icmp slt i64 %.15065.us.i.i.i354, %.val99
  %or.cond.i367 = or i1 %i.afh, %i.afi
  br i1 %or.cond.i367, label %ucs1lib_fastsearch.exit.thread.thread241.i, label %.lr.ph.i336.split, !llvm.loop !707

ucs1lib_fastsearch.exit.thread.i:                 ; preds = %.preheader56.i.i.i341, %ucs1lib_fastsearch.exit.i, %bb.kk, %bb.kg
  %i.afj = icmp eq i64 %.057158.i, 0
  br i1 %i.afj, label %ucs1lib_fastsearch.exit.thread.thread.i, label %ucs1lib_fastsearch.exit.thread.thread241.i

ucs1lib_fastsearch.exit.thread.thread.i:          ; preds = %.lr.ph.i336, %ucs1lib_fastsearch.exit.thread.i, %.preheader.i335
  %.059143238.i = phi i64 [ %.059157.i, %ucs1lib_fastsearch.exit.thread.i ], [ %.val100, %.preheader.i335 ], [ %.val100, %.lr.ph.i336 ]
  %i.afk = getelementptr i8, ptr %0, i64 8
  %.val.i350 = load ptr, ptr %i.afk, align 8, !tbaa !197
  %.not122.i = icmp eq ptr %.val.i350, @PyUnicode_Type
  br i1 %.not122.i, label %bb.lc, label %ucs1lib_fastsearch.exit.thread.thread241.i

bb.lc:                                            ; preds = %ucs1lib_fastsearch.exit.thread.thread.i
  %i.afl = load i32, ptr %0, align 8, !tbaa !205  ; 2 uses
  %i.afm = icmp ugt i32 %i.afl, -1073741825
  br i1 %i.afm, label %Py_INCREF.exit.i351, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.afn = add nuw i32 %i.afl, 1
  store i32 %i.afn, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit.i351

Py_INCREF.exit.i351:                              ; preds = %bb.ld, %bb.lc
  %i.afo = getelementptr i8, ptr %i.abl, i64 24
  %.val80.i352 = load ptr, ptr %i.afo, align 8, !tbaa !540
  store ptr %0, ptr %.val80.i352, align 8, !tbaa !194
  br label %bb.lt

ucs1lib_fastsearch.exit.thread.thread241.i:       ; preds = %Py_DECREF.exit72.i366, %ucs1lib_fastsearch.exit.thread.thread.i, %ucs1lib_fastsearch.exit.thread.i
  %.057138239.i = phi i64 [ 0, %ucs1lib_fastsearch.exit.thread.thread.i ], [ %.057158.i, %ucs1lib_fastsearch.exit.thread.i ], [ %i.afg, %Py_DECREF.exit72.i366 ] ; 3 uses
  %.059143237.i = phi i64 [ %.059143238.i, %ucs1lib_fastsearch.exit.thread.thread.i ], [ %.059157.i, %ucs1lib_fastsearch.exit.thread.i ], [ %.15065.us.i.i.i354, %Py_DECREF.exit72.i366 ] ; 4 uses
  switch i64 %.059143237.i, label %bb.le [
    i64 0, label %_PyUnicode_FromUCS1.exit112.thread.i
    i64 1, label %_PyUnicode_FromUCS1.exit112.i
  ]

_PyUnicode_FromUCS1.exit112.i:                    ; preds = %ucs1lib_fastsearch.exit.thread.thread241.i
  %i.afp = load i8, ptr %.0.i273, align 1, !tbaa !205 ; 3 uses
  %i.afq = and i8 %i.afp, 127
  %i.afr = zext nneg i8 %i.afq to i64
  %i.afs = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.afr
  %i.aft = zext nneg i8 %i.afp to i64
  %i.afu = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.aft
  %i.afv = icmp slt i8 %i.afp, 0
  %.0.i91.i = select i1 %i.afv, ptr %i.afs, ptr %i.afu ; 2 uses
  %i.afw = icmp eq ptr %.0.i91.i, null
  br i1 %i.afw, label %Py_DECREF.exit74.i344, label %_PyUnicode_FromUCS1.exit112.thread.i

bb.le:                                            ; preds = %ucs1lib_fastsearch.exit.thread.thread241.i
  %i.afx = getelementptr i8, ptr %.0.i273, i64 %.059143237.i ; 3 uses
  br label %bb.lf

bb.lf:                                            ; preds = %.thread31.i.i105.i, %bb.le
  %.021.i.i92.i = phi ptr [ %.0.i273, %bb.le ], [ %i.agf, %.thread31.i.i105.i ] ; 4 uses
  %i.afy = icmp ult ptr %.021.i.i92.i, %i.afx
  br i1 %i.afy, label %bb.lg, label %ucs1lib_find_max_char.exit.i93.i

bb.lg:                                            ; preds = %bb.lf
  %i.afz = ptrtoint ptr %.021.i.i92.i to i64
  %i.aga = and i64 %i.afz, 7
  %.not.i.i104.i = icmp eq i64 %i.aga, 0
  br i1 %.not.i.i104.i, label %.preheader.i.i108.i, label %.thread31.i.i105.i

.preheader.i.i108.i:                              ; preds = %bb.lg, %bb.lh
  %.019.i.i109.i = phi ptr [ %i.agb, %bb.lh ], [ %.021.i.i92.i, %bb.lg ] ; 4 uses
  %i.agb = getelementptr i8, ptr %.019.i.i109.i, i64 8 ; 2 uses
  %.not26.i.i110.i = icmp ugt ptr %i.agb, %i.afx
  br i1 %.not26.i.i110.i, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %.preheader.i.i108.i
  %i.agc = load i64, ptr %.019.i.i109.i, align 8, !tbaa !193
  %i.agd = and i64 %i.agc, -9187201950435737472
  %.not27.i.i111.i = icmp eq i64 %i.agd, 0
  br i1 %.not27.i.i111.i, label %.preheader.i.i108.i, label %ucs1lib_find_max_char.exit.i93.i, !llvm.loop !220

bb.li:                                            ; preds = %.preheader.i.i108.i
  %i.age = icmp eq ptr %.019.i.i109.i, %i.afx
  br i1 %i.age, label %ucs1lib_find_max_char.exit.i93.i, label %.thread31.i.i105.i

.thread31.i.i105.i:                               ; preds = %bb.li, %bb.lg
  %.223.i.i106.i = phi ptr [ %.021.i.i92.i, %bb.lg ], [ %.019.i.i109.i, %bb.li ] ; 2 uses
  %i.agf = getelementptr i8, ptr %.223.i.i106.i, i64 1
  %i.agg = load i8, ptr %.223.i.i106.i, align 1, !tbaa !205
  %.not28.i.i107.i = icmp sgt i8 %i.agg, -1
  br i1 %.not28.i.i107.i, label %bb.lf, label %ucs1lib_find_max_char.exit.i93.i, !llvm.loop !221

ucs1lib_find_max_char.exit.i93.i:                 ; preds = %.thread31.i.i105.i, %bb.li, %bb.lf, %bb.lh
  %.5.i.i94.i = phi i32 [ 255, %bb.lh ], [ 127, %bb.lf ], [ 127, %bb.li ], [ 255, %.thread31.i.i105.i ]
  %i.agh = tail call ptr @PyUnicode_New(i64 noundef %.059143237.i, i32 noundef %.5.i.i94.i), !inline_history !706 ; 5 uses
  %.not.i95.i = icmp eq ptr %i.agh, null
  br i1 %.not.i95.i, label %Py_DECREF.exit74.i344, label %bb.lj

bb.lj:                                            ; preds = %ucs1lib_find_max_char.exit.i93.i
  %i.agi = getelementptr i8, ptr %i.agh, i64 32
  %.val.i.i96.i = load i32, ptr %i.agi, align 8   ; 2 uses
  %i.agj = and i32 %.val.i.i96.i, 32
  %.not.i15.i97.i = icmp eq i32 %i.agj, 0
  br i1 %.not.i15.i97.i, label %bb.ll, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.agk = and i32 %.val.i.i96.i, 64
  %.not.i.i.i98.i = icmp eq i32 %i.agk, 0
  %.0.v.i.i.i99.i = select i1 %.not.i.i.i98.i, i64 56, i64 40
  %.0.i.i.i100.i = getelementptr i8, ptr %i.agh, i64 %.0.v.i.i.i99.i
  br label %_PyUnicode_DATA.exit.i101.i

bb.ll:                                            ; preds = %bb.lj
  %i.agl = getelementptr i8, ptr %i.agh, i64 56
  %.val4.i.i103.i = load ptr, ptr %i.agl, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i101.i

_PyUnicode_DATA.exit.i101.i:                      ; preds = %bb.ll, %bb.lk
  %.0.i.i102.i = phi ptr [ %.0.i.i.i100.i, %bb.lk ], [ %.val4.i.i103.i, %bb.ll ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i102.i, ptr align 1 %.0.i273, i64 %.059143237.i, i1 false)
  br label %_PyUnicode_FromUCS1.exit112.thread.i

_PyUnicode_FromUCS1.exit112.thread.i:             ; preds = %_PyUnicode_DATA.exit.i101.i, %_PyUnicode_FromUCS1.exit112.i, %ucs1lib_fastsearch.exit.thread.thread241.i
  %.0.i91119.i = phi ptr [ %.0.i91.i, %_PyUnicode_FromUCS1.exit112.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %ucs1lib_fastsearch.exit.thread.thread241.i ], [ %i.agh, %_PyUnicode_DATA.exit.i101.i ] ; 7 uses
  %i.agm = icmp slt i64 %.057138239.i, 12
  br i1 %i.agm, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %_PyUnicode_FromUCS1.exit112.thread.i
  %i.agn = getelementptr i8, ptr %i.abl, i64 24
  %.val79.i349 = load ptr, ptr %i.agn, align 8, !tbaa !540
  %i.ago = getelementptr [8 x i8], ptr %.val79.i349, i64 %.057138239.i
  store ptr %.0.i91119.i, ptr %i.ago, align 8, !tbaa !194
  br label %Py_DECREF.exit68.i347

bb.ln:                                            ; preds = %_PyUnicode_FromUCS1.exit112.thread.i
  %i.agp = tail call i32 @PyList_Append(ptr noundef nonnull %i.abl, ptr noundef nonnull %.0.i91119.i) #33, !inline_history !701
  %.not66.i342 = icmp eq i32 %i.agp, 0
  %i.agq = load i32, ptr %.0.i91119.i, align 8, !tbaa !205 ; 3 uses
  %.not.i67.i343 = icmp sgt i32 %i.agq, -1        ; 2 uses
  br i1 %.not66.i342, label %bb.lq, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  br i1 %.not.i67.i343, label %bb.lp, label %Py_DECREF.exit74.i344

bb.lp:                                            ; preds = %bb.lo
  %i.agr = add nsw i32 %i.agq, -1                 ; 2 uses
  store i32 %i.agr, ptr %.0.i91119.i, align 8, !tbaa !205
  %i.ags = icmp eq i32 %i.agr, 0
  br i1 %i.ags, label %Py_DECREF.exit74.sink.split.i346, label %Py_DECREF.exit74.i344

bb.lq:                                            ; preds = %bb.ln
  br i1 %.not.i67.i343, label %bb.lr, label %Py_DECREF.exit68.i347

bb.lr:                                            ; preds = %bb.lq
  %i.agt = add nsw i32 %i.agq, -1                 ; 2 uses
  store i32 %i.agt, ptr %.0.i91119.i, align 8, !tbaa !205
  %i.agu = icmp eq i32 %i.agt, 0
  br i1 %i.agu, label %bb.ls, label %Py_DECREF.exit68.i347

bb.ls:                                            ; preds = %bb.lr
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i91119.i) #33, !inline_history !701
  br label %Py_DECREF.exit68.i347

Py_DECREF.exit68.i347:                            ; preds = %bb.ls, %bb.lr, %bb.lq, %bb.lm
  %i.agv = add i64 %.057138239.i, 1
  br label %bb.lt

bb.lt:                                            ; preds = %Py_DECREF.exit68.i347, %Py_INCREF.exit.i351
  %.1.i348 = phi i64 [ 1, %Py_INCREF.exit.i351 ], [ %i.agv, %Py_DECREF.exit68.i347 ]
  %i.agw = getelementptr i8, ptr %i.abl, i64 16
  store i64 %.1.i348, ptr %i.agw, align 8, !tbaa !380
  %i.agx = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.abl) #33, !inline_history !701
  %i.agy = icmp slt i32 %i.agx, 0
  br i1 %i.agy, label %Py_DECREF.exit74.i344, label %asciilib_rsplit.exit

Py_DECREF.exit74.sink.split.i346:                 ; preds = %bb.lp, %bb.ky
  %.0.i91119.sink.i = phi ptr [ %.0.i85115.i, %bb.ky ], [ %.0.i91119.i, %bb.lp ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i91119.sink.i) #33, !inline_history !701
  br label %Py_DECREF.exit74.i344

Py_DECREF.exit74.i344:                            ; preds = %ucs1lib_find_max_char.exit.i.i370, %_PyUnicode_FromUCS1.exit.i361, %Py_DECREF.exit74.sink.split.i346, %bb.lt, %bb.lp, %bb.lo, %ucs1lib_find_max_char.exit.i93.i, %_PyUnicode_FromUCS1.exit112.i, %bb.ky, %bb.kx
  %i.agz = load i32, ptr %i.abl, align 8, !tbaa !205 ; 2 uses
  %.not.i.i345 = icmp sgt i32 %i.agz, -1
  br i1 %.not.i.i345, label %bb.lu, label %asciilib_rsplit.exit

bb.lu:                                            ; preds = %Py_DECREF.exit74.i344
  %i.aha = add nsw i32 %i.agz, -1                 ; 2 uses
  store i32 %i.aha, ptr %i.abl, align 8, !tbaa !205
  %i.ahb = icmp eq i32 %i.aha, 0
  br i1 %i.ahb, label %bb.lv, label %asciilib_rsplit.exit

bb.lv:                                            ; preds = %bb.lu
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.abl) #33, !inline_history !701
  br label %asciilib_rsplit.exit

bb.lw:                                            ; preds = %bb.fp
  switch i64 %.val99, label %bb.mz [
    i64 0, label %bb.lx
    i64 1, label %bb.ly
  ]

bb.lx:                                            ; preds = %bb.lw
  %i.ahc = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.ahc, ptr noundef nonnull @.str.197) #33, !inline_history !708
  br label %asciilib_rsplit.exit

bb.ly:                                            ; preds = %bb.lw
  %i.ahd = load i16, ptr %.082, align 2, !tbaa !208
  %i.ahe = tail call i64 @llvm.smin.i64(i64 %.1, i64 11)
  %i.ahf = add nsw i64 %i.ahe, 1
  %i.ahg = tail call ptr @PyList_New(i64 noundef %i.ahf) #33, !inline_history !709 ; 12 uses
  %i.ahh = icmp eq ptr %i.ahg, null
  br i1 %i.ahh, label %asciilib_rsplit.exit, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.ahi = add i64 %.val100, -1                   ; 4 uses
  %i.ahj = icmp sgt i64 %i.ahi, -1
  br i1 %i.ahj, label %.lr.ph89.i.i, label %.critedge.thread.i.i388

.lr.ph89.i.i:                                     ; preds = %bb.lz
  %i.ahk = getelementptr i8, ptr %i.ahg, i64 24
  %smin.i403 = tail call i64 @llvm.smin.i64(i64 %.1, i64 0)
  %i.ahl = sub i64 %.1, %smin.i403                ; 4 uses
  %exitcond.not.i4041482 = icmp eq i64 %i.ahl, 0
  br i1 %exitcond.not.i4041482, label %.critedge.i.i406, label %.lr.ph.i.i405.preheader

bb.ma:                                            ; preds = %.loopexit.i.i411
  %exitcond.not.i404 = icmp eq i64 %i.aie, %i.ahl
  br i1 %exitcond.not.i404, label %.critedge.i.i406, label %.lr.ph.i.i405.preheader, !llvm.loop !710

.lr.ph.i.i405.preheader:                          ; preds = %.lr.ph89.i.i, %bb.ma
  %.05187.i.i1484 = phi i64 [ %i.aif, %bb.ma ], [ %i.ahi, %.lr.ph89.i.i ] ; 3 uses
  %.05088.i.i1483 = phi i64 [ %i.aie, %bb.ma ], [ 0, %.lr.ph89.i.i ] ; 4 uses
  br label %.lr.ph.i.i405

.lr.ph.i.i405:                                    ; preds = %.lr.ph.i.i405.preheader, %bb.mk
  %.15484.i.i = phi i64 [ %i.aic, %bb.mk ], [ %.05187.i.i1484, %.lr.ph.i.i405.preheader ] ; 7 uses
  %i.ahm = getelementptr [2 x i8], ptr %.0.i273, i64 %.15484.i.i
  %i.ahn = load i16, ptr %i.ahm, align 2, !tbaa !208
  %i.aho = icmp eq i16 %i.ahn, %i.ahd
  br i1 %i.aho, label %bb.mb, label %bb.mk

bb.mb:                                            ; preds = %.lr.ph.i.i405
  %i.ahp = getelementptr [2 x i8], ptr %.0.i273, i64 %.15484.i.i
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 2
  %i.ahr = sub nuw nsw i64 %.05187.i.i1484, %.15484.i.i
  %i.ahs = tail call fastcc ptr @_PyUnicode_FromUCS2(ptr noundef readonly %i.ahq, i64 noundef %i.ahr), !inline_history !709 ; 8 uses
  %i.aht = icmp eq ptr %i.ahs, null
  br i1 %i.aht, label %Py_DECREF.exit69.i.i394, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.ahu = icmp samesign ult i64 %.05088.i.i1483, 12
  br i1 %i.ahu, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  %.val76.i.i412 = load ptr, ptr %i.ahk, align 8, !tbaa !540
  %i.ahv = getelementptr [8 x i8], ptr %.val76.i.i412, i64 %.05088.i.i1483
  store ptr %i.ahs, ptr %i.ahv, align 8, !tbaa !194
  br label %.loopexit.i.i411

bb.me:                                            ; preds = %bb.mc
  %i.ahw = tail call i32 @PyList_Append(ptr noundef nonnull %i.ahg, ptr noundef nonnull %i.ahs) #33, !inline_history !709
  %.not61.i.i408 = icmp eq i32 %i.ahw, 0
  %i.ahx = load i32, ptr %i.ahs, align 8, !tbaa !205 ; 3 uses
  %.not.i66.i.i410 = icmp sgt i32 %i.ahx, -1      ; 2 uses
  br i1 %.not61.i.i408, label %bb.mh, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  br i1 %.not.i66.i.i410, label %bb.mg, label %Py_DECREF.exit69.i.i394

bb.mg:                                            ; preds = %bb.mf
  %i.ahy = add nsw i32 %i.ahx, -1                 ; 2 uses
  store i32 %i.ahy, ptr %i.ahs, align 8, !tbaa !205
  %i.ahz = icmp eq i32 %i.ahy, 0
  br i1 %i.ahz, label %Py_DECREF.exit69.sink.split.i.i398, label %Py_DECREF.exit69.i.i394

bb.mh:                                            ; preds = %bb.me
  br i1 %.not.i66.i.i410, label %bb.mi, label %.loopexit.i.i411

bb.mi:                                            ; preds = %bb.mh
  %i.aia = add nsw i32 %i.ahx, -1                 ; 2 uses
  store i32 %i.aia, ptr %i.ahs, align 8, !tbaa !205
  %i.aib = icmp eq i32 %i.aia, 0
  br i1 %i.aib, label %bb.mj, label %.loopexit.i.i411

bb.mj:                                            ; preds = %bb.mi
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ahs) #33, !inline_history !709
  br label %.loopexit.i.i411

bb.mk:                                            ; preds = %.lr.ph.i.i405
  %i.aic = add nsw i64 %.15484.i.i, -1
  %i.aid = icmp sgt i64 %.15484.i.i, 0
  br i1 %i.aid, label %.lr.ph.i.i405, label %.critedge.i.i406, !llvm.loop !711

.loopexit.i.i411:                                 ; preds = %bb.mj, %bb.mi, %bb.mh, %bb.md
  %i.aie = add nuw i64 %.05088.i.i1483, 1         ; 3 uses
  %i.aif = add nsw i64 %.15484.i.i, -1            ; 3 uses
  %i.aig = icmp sgt i64 %.15484.i.i, 0
  br i1 %i.aig, label %bb.ma, label %.critedge.i.thread.i391, !llvm.loop !710

.critedge.i.i406:                                 ; preds = %bb.ma, %bb.mk, %.lr.ph89.i.i
  %.05187.i.i1441 = phi i64 [ %.05187.i.i1484, %bb.mk ], [ %i.ahi, %.lr.ph89.i.i ], [ %i.aif, %bb.ma ] ; 2 uses
  %.050.lcssa.i.i407 = phi i64 [ %.05088.i.i1483, %bb.mk ], [ %i.ahl, %.lr.ph89.i.i ], [ %i.ahl, %bb.ma ] ; 2 uses
  %i.aih = icmp eq i64 %.050.lcssa.i.i407, 0
  br i1 %i.aih, label %.critedge.thread.i.i388, label %.critedge.i.thread.i391

.critedge.thread.i.i388:                          ; preds = %.critedge.i.i406, %bb.lz
  %.051.lcssa113.i.i = phi i64 [ %.05187.i.i1441, %.critedge.i.i406 ], [ %i.ahi, %bb.lz ]
  %i.aii = getelementptr i8, ptr %0, i64 8
  %.val.i.i389 = load ptr, ptr %i.aii, align 8, !tbaa !197
  %.not.i82.i390 = icmp eq ptr %.val.i.i389, @PyUnicode_Type
  br i1 %.not.i82.i390, label %bb.ml, label %.critedge.i.thread.i391

bb.ml:                                            ; preds = %.critedge.thread.i.i388
  %i.aij = load i32, ptr %0, align 8, !tbaa !205  ; 2 uses
  %i.aik = icmp ugt i32 %i.aij, -1073741825
  br i1 %i.aik, label %Py_INCREF.exit.i.i401, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.ail = add nuw i32 %i.aij, 1
  store i32 %i.ail, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit.i.i401

Py_INCREF.exit.i.i401:                            ; preds = %bb.mm, %bb.ml
end_hunk_19
begin_hunk_20_@unicode_new:bb.a

bb.ai:                                            ; preds = %bb.ah
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #33, !inline_history !737
  br label %unicode_new_impl.exit

unicode_new_impl.exit:                            ; preds = %bb.ai, %bb.ah, %unicode_subtype_new.exit.i, %.thread80, %.thread76, %bb.h, %bb.m, %bb.p, %bb.c, %bb.n
  %.048 = phi ptr [ null, %bb.n ], [ null, %bb.p ], [ null, %bb.c ], [ null, %bb.m ], [ null, %.thread76 ], [ null, %bb.h ], [ %.0.i, %.thread80 ], [ %.0.i.i, %unicode_subtype_new.exit.i ], [ %.0.i.i, %bb.ah ], [ %.0.i.i, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.048
}

declare void @PyObject_Free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @unicode_vectorcall(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = and i64 %2, 9223372036854775807          ; 7 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !380
  %.not40 = icmp eq i64 %.val, 0
  br i1 %.not40, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @PyTuple_FromArray(ptr noundef %1, i64 noundef %i.c) #33 ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit45, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr [8 x i8], ptr %1, i64 %i.c
  %i.h = tail call ptr @_PyStack_AsDict(ptr noundef %i.g, ptr noundef nonnull %3) #33 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.e, align 8, !tbaa !205  ; 2 uses
  %.not.i44 = icmp sgt i32 %i.j, -1
  br i1 %.not.i44, label %bb.f, label %Py_DECREF.exit45

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.e, align 8, !tbaa !205
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %Py_DECREF.exit45

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #33
  br label %Py_DECREF.exit45

bb.h:                                             ; preds = %bb.d
  %i.m = tail call ptr @unicode_new(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h) ; 3 uses
  %i.n = load i32, ptr %i.e, align 8, !tbaa !205  ; 2 uses
  %.not.i42 = icmp sgt i32 %i.n, -1
  br i1 %.not.i42, label %bb.i, label %Py_DECREF.exit43

bb.i:                                             ; preds = %bb.h
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.e, align 8, !tbaa !205
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %Py_DECREF.exit43

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #33
  br label %Py_DECREF.exit43

Py_DECREF.exit43:                                 ; preds = %bb.h, %bb.i, %bb.j
  %i.q = load i32, ptr %i.h, align 8, !tbaa !205  ; 2 uses
  %.not.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit45

bb.k:                                             ; preds = %Py_DECREF.exit43
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.h, align 8, !tbaa !205
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.l, label %Py_DECREF.exit45

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #33
  br label %Py_DECREF.exit45

bb.m:                                             ; preds = %bb.b, %bb.a
  %i.t = icmp samesign ult i64 %i.c, 4
  br i1 %i.t, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.109, i64 noundef %i.c, i64 noundef 0, i64 noundef 3) #33
  %.not41 = icmp eq i32 %i.u, 0
  br i1 %.not41, label %Py_DECREF.exit45, label %.thread58

.thread58:                                        ; preds = %bb.n
  %i.v = load ptr, ptr %1, align 8, !tbaa !194
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.w = icmp eq i64 %i.c, 0
  br i1 %i.w, label %Py_DECREF.exit45, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = load ptr, ptr %1, align 8, !tbaa !194    ; 2 uses
  %i.y = icmp eq i64 %i.c, 1
  br i1 %i.y, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.z = tail call ptr @PyObject_Str(ptr noundef %i.x) #33
  br label %Py_DECREF.exit45

bb.r:                                             ; preds = %.thread58, %bb.p
  %i.aa = phi ptr [ %i.v, %.thread58 ], [ %i.x, %bb.p ]
  %i.ab = getelementptr i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !194 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !tbaa !197
  %i.ae = getelementptr i8, ptr %.val.i, i64 168
  %.val5.i = load i64, ptr %i.ae, align 8, !tbaa !198
  %i.af = and i64 %.val5.i, 268435456
  %.not.i48 = icmp eq i64 %i.af, 0
  br i1 %.not.i48, label %arg_as_utf8.exit.thread, label %bb.s

arg_as_utf8.exit.thread:                          ; preds = %bb.r
  %i.ag = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.ah = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ag, ptr noundef nonnull @.str.301, ptr noundef nonnull @.str.252, ptr noundef nonnull %i.ac) #33 ; 0 uses
  br label %Py_DECREF.exit45

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.ai = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b) ; 3 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %arg_as_utf8.exit.thread60, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #34
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !193
  %.not6.i.i = icmp eq i64 %i.aj, %i.ak
  br i1 %.not6.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.al, ptr noundef nonnull @.str.37) #33
  br label %arg_as_utf8.exit.thread60

arg_as_utf8.exit.thread60:                        ; preds = %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %Py_DECREF.exit45

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.am = icmp eq i64 %i.c, 3
  br i1 %i.am, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.an = getelementptr i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !194 ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val.i49 = load ptr, ptr %i.ap, align 8, !tbaa !197
  %i.aq = getelementptr i8, ptr %.val.i49, i64 168
  %.val5.i50 = load i64, ptr %i.aq, align 8, !tbaa !198
  %i.ar = and i64 %.val5.i50, 268435456
  %.not.i51 = icmp eq i64 %i.ar, 0
  br i1 %.not.i51, label %arg_as_utf8.exit57.thread, label %bb.x

arg_as_utf8.exit57.thread:                        ; preds = %bb.w
  %i.as = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.at = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.as, ptr noundef nonnull @.str.301, ptr noundef nonnull @.str.253, ptr noundef nonnull %i.ao) #33 ; 0 uses
  br label %Py_DECREF.exit45

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.au = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.a) ; 3 uses
  %.not.i.i52 = icmp eq ptr %i.au, null
  br i1 %.not.i.i52, label %arg_as_utf8.exit57.thread63, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #34
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !193
  %.not6.i.i53 = icmp eq i64 %i.av, %i.aw
  br i1 %.not6.i.i53, label %arg_as_utf8.exit57, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.ax, ptr noundef nonnull @.str.37) #33
  br label %arg_as_utf8.exit57.thread63

arg_as_utf8.exit57.thread63:                      ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %Py_DECREF.exit45

arg_as_utf8.exit57:                               ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.aa

bb.aa:                                            ; preds = %arg_as_utf8.exit57, %bb.v
  %.0 = phi ptr [ %i.au, %arg_as_utf8.exit57 ], [ null, %bb.v ]
  %i.ay = call ptr @PyUnicode_FromEncodedObject(ptr noundef %i.aa, ptr noundef nonnull %i.ai, ptr noundef %.0)
  br label %Py_DECREF.exit45

Py_DECREF.exit45:                                 ; preds = %bb.o, %arg_as_utf8.exit57.thread63, %arg_as_utf8.exit57.thread, %arg_as_utf8.exit.thread60, %arg_as_utf8.exit.thread, %bb.l, %bb.k, %Py_DECREF.exit43, %bb.g, %bb.f, %bb.e, %bb.q, %bb.aa, %bb.n, %bb.c
  %.5 = phi ptr [ null, %bb.g ], [ null, %arg_as_utf8.exit57.thread ], [ null, %bb.n ], [ null, %bb.c ], [ null, %arg_as_utf8.exit57.thread63 ], [ %i.z, %bb.q ], [ null, %arg_as_utf8.exit.thread60 ], [ %i.ay, %bb.aa ], [ null, %bb.e ], [ null, %bb.f ], [ %i.m, %Py_DECREF.exit43 ], [ %i.m, %bb.k ], [ %i.m, %bb.l ], [ null, %arg_as_utf8.exit.thread ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.o ]
  ret ptr %.5
}

; Function Attrs: nounwind uwtable
define hidden void @_PyUnicode_InitState(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_PyInterpreterState_Main() #33
  %.not = icmp eq ptr %0, %i.a
  br i1 %.not, label %bb.b, label %_init_global_state.exit

bb.b:                                             ; preds = %bb.a
  %.b.i = load i1, ptr @_init_global_state.initialized, align 4
  br i1 %.b.i, label %_init_global_state.exit, label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %bb.b
  store i1 true, ptr @_init_global_state.initialized, align 4
  store i1 true, ptr @bloom_linebreak, align 8
  br label %_init_global_state.exit

_init_global_state.exit:                          ; preds = %.lr.ph41.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_PyUnicode_InitGlobalObjects(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PyStatus) align 8 captures(none) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct._Py_hashtable_allocator_t, align 8 ; 5 uses
  %i.a = tail call ptr @_PyInterpreterState_Main() #33
  %.not = icmp eq ptr %1, %i.a
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @__const.init_global_interned_strings.hashtable_alloc, i64 16, i1 false), !noalias !740
  %i.b = call ptr @_Py_hashtable_new_full(ptr noundef nonnull @hashtable_unicode_hash, ptr noundef nonnull @hashtable_unicode_compare, ptr noundef null, ptr noundef null, ptr noundef nonnull %2) #33, !noalias !740 ; 2 uses
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14128), align 8, !tbaa !104, !noalias !740
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %init_global_interned_strings.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @_PyUnicode_InitStaticStrings(), !noalias !740
  br label %bb.d

init_global_interned_strings.exit.thread:         ; preds = %_PyUnicode_InternStatic.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !740
  br label %bb.l

bb.d:                                             ; preds = %_PyUnicode_InternStatic.exit.i, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %_PyUnicode_InternStatic.exit.i ] ; 4 uses
  %i.d = icmp samesign ult i64 %indvars.iv.i, 128
  %i.e = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %indvars.iv.i
  %i.f = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %indvars.iv.i
  %i.g = getelementptr i8, ptr %i.f, i64 -8192
  %i.h = select i1 %i.d, ptr %i.e, ptr %i.g       ; 8 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14128), align 8, !tbaa !104, !noalias !740
  %i.j = call ptr @_Py_hashtable_get(ptr noundef %i.i, ptr noundef %i.h) #33, !noalias !740 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  %.not13.i.i.i = icmp eq ptr %i.j, %i.h
  %or.cond.i.i.i = or i1 %.not.i.i.i, %.not13.i.i.i
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.h, align 8, !tbaa !205, !noalias !740 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i.i.i.i, label %bb.f, label %Py_DECREF.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.h, align 8, !tbaa !205, !noalias !740
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %Py_DECREF.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.h) #33, !noalias !740
  br label %Py_DECREF.exit.i.i.i

Py_DECREF.exit.i.i.i:                             ; preds = %bb.g, %bb.f, %bb.e
  %i.n = load i32, ptr %i.j, align 8, !tbaa !205, !noalias !740 ; 2 uses
  %i.o = icmp ugt i32 %i.n, -1073741825
  br i1 %i.o, label %_PyUnicode_InternStatic.exit.i, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit.i.i.i
  %i.p = add nuw i32 %i.n, 1
  store i32 %i.p, ptr %i.j, align 8, !tbaa !205, !noalias !740
  br label %_PyUnicode_InternStatic.exit.i

bb.i:                                             ; preds = %bb.d
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14128), align 8, !tbaa !104, !noalias !740
  %i.r = call i32 @_Py_hashtable_set(ptr noundef %i.q, ptr noundef %i.h, ptr noundef %i.h) #33, !noalias !740
  %i.s = icmp slt i32 %i.r, -1
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.intern_static, ptr noundef nonnull @.str.307) #35, !noalias !740
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !noalias !740
  %i.v = or i32 %i.u, 3
  store i32 %i.v, ptr %i.t, align 8, !noalias !740
  br label %_PyUnicode_InternStatic.exit.i

_PyUnicode_InternStatic.exit.i:                   ; preds = %bb.k, %bb.h, %Py_DECREF.exit.i.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %init_global_interned_strings.exit.thread, label %bb.d, !llvm.loop !743

init_global_interned_strings.exit:                ; preds = %bb.b
  call void @PyErr_Clear() #33, !noalias !740
  store i32 1, ptr %0, align 8, !tbaa !744, !alias.scope !740
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.w, align 4, !alias.scope !740
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @__func__.init_global_interned_strings, ptr %i.x, align 8, !tbaa !746, !alias.scope !740
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.302, ptr %i.y, align 8, !tbaa !747, !alias.scope !740
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.z, align 8, !tbaa !748, !alias.scope !740
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.aa, align 4, !alias.scope !740
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !740
  br label %bb.p

bb.l:                                             ; preds = %init_global_interned_strings.exit.thread, %bb.a
  %i.ab = call ptr @_PyInterpreterState_Main() #33
  %.not.i.i = icmp eq ptr %1, %i.ab
  br i1 %.not.i.i, label %has_shared_intern_dict.exit.thread.i, label %has_shared_intern_dict.exit.i

has_shared_intern_dict.exit.i:                    ; preds = %bb.l
  %i.ac = getelementptr i8, ptr %1, i64 8536
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !749
  %i.ae = and i64 %i.ad, 32
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %has_shared_intern_dict.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %has_shared_intern_dict.exit.i
  %i.af = call ptr @_PyInterpreterState_Main() #33
  %i.ag = getelementptr i8, ptr %i.af, i64 224840
  %.val.i = load ptr, ptr %i.ag, align 8, !tbaa !14 ; 4 uses
  %i.ah = load i32, ptr %.val.i, align 8, !tbaa !205 ; 2 uses
  %i.ai = icmp ugt i32 %i.ah, -1073741825
  br i1 %i.ai, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = add nuw i32 %i.ah, 1
  store i32 %i.aj, ptr %.val.i, align 8, !tbaa !205
  br label %bb.o

has_shared_intern_dict.exit.thread.i:             ; preds = %has_shared_intern_dict.exit.i, %bb.l
  %i.ak = call ptr @PyDict_New() #33              ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %init_interned_dict.exit, label %bb.o

init_interned_dict.exit:                          ; preds = %has_shared_intern_dict.exit.thread.i
  call void @PyErr_Clear() #33
  store i32 1, ptr %0, align 8, !tbaa !744
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @__func__._PyUnicode_InitGlobalObjects, ptr %i.an, align 8, !tbaa !746
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.111, ptr %i.ao, align 8, !tbaa !747
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ap, align 8, !tbaa !748
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.aq, align 4
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.n, %has_shared_intern_dict.exit.thread.i
  %.0.i = phi ptr [ %i.ak, %has_shared_intern_dict.exit.thread.i ], [ %.val.i, %bb.m ], [ %.val.i, %bb.n ]
  %i.ar = getelementptr i8, ptr %1, i64 224840
  store ptr %.0.i, ptr %i.ar, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %init_global_interned_strings.exit, %bb.o, %init_interned_dict.exit
  ret void
}

declare void @PyErr_Clear() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_PyUnicode_InitTypes(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PyStatus) align 8 captures(none) initializes((0, 32)) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_PyStaticType_InitBuiltin(ptr noundef %1, ptr noundef nonnull @EncodingMapType) #33
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyStaticType_InitBuiltin(ptr noundef %1, ptr noundef nonnull @PyFieldNameIter_Type) #33
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @_PyStaticType_InitBuiltin(ptr noundef %1, ptr noundef nonnull @PyFormatterIter_Type) #33
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

end_hunk_20
begin_hunk_21_@fieldnameiter_next:bb.a
  %i.b = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.SubString, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = call fastcc i32 @FieldNameIterator_next(ptr noundef %i.c, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %1)
  %or.cond = icmp samesign ult i32 %i.d, 2
  br i1 %or.cond, label %Py_XDECREF.exit18, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !7
  %i.f = sext i32 %i.e to i64
  %i.g = tail call ptr @PyBool_FromLong(i64 noundef %i.f) #33 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %Py_XDECREF.exit18, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.b, align 8, !tbaa !193  ; 2 uses
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.i) #33
  br label %SubString_new_object.exit

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %1, align 8, !tbaa !940    ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %SubString_new_object.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !942
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !943
  %i.q = tail call ptr @PyUnicode_Substring(ptr noundef nonnull %i.k, i64 noundef %i.n, i64 noundef %i.p), !inline_history !1012
  br label %SubString_new_object.exit

SubString_new_object.exit:                        ; preds = %bb.f, %bb.d
  %.0 = phi ptr [ %i.j, %bb.d ], [ %i.q, %bb.f ]  ; 2 uses
  %i.r = icmp eq ptr %.0, null
  br i1 %i.r, label %bb.g, label %SubString_new_object.exit.thread

SubString_new_object.exit.thread:                 ; preds = %bb.e, %SubString_new_object.exit
  %.020 = phi ptr [ %.0, %SubString_new_object.exit ], [ @_Py_NoneStruct, %bb.e ] ; 2 uses
  %i.s = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %i.g, ptr noundef nonnull %.020) #33
  br label %bb.g

bb.g:                                             ; preds = %SubString_new_object.exit, %SubString_new_object.exit.thread
  %.012.ph = phi ptr [ %i.s, %SubString_new_object.exit.thread ], [ null, %SubString_new_object.exit ] ; 4 uses
  %.1.ph = phi ptr [ %.020, %SubString_new_object.exit.thread ], [ null, %SubString_new_object.exit ] ; 4 uses
  %i.t = load i32, ptr %i.g, align 8, !tbaa !205  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i.i, label %bb.h, label %Py_XDECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.g, align 8, !tbaa !205
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %Py_XDECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.g, %bb.h, %bb.i
  %.not.i16 = icmp eq ptr %.1.ph, null
  br i1 %.not.i16, label %Py_XDECREF.exit18, label %bb.j

bb.j:                                             ; preds = %Py_XDECREF.exit
  %i.w = load i32, ptr %.1.ph, align 8, !tbaa !205 ; 2 uses
  %.not.i.i17 = icmp sgt i32 %i.w, -1
  br i1 %.not.i.i17, label %bb.k, label %Py_XDECREF.exit18

bb.k:                                             ; preds = %bb.j
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %.1.ph, align 8, !tbaa !205
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.l, label %Py_XDECREF.exit18

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1.ph) #33
  br label %Py_XDECREF.exit18

Py_XDECREF.exit18:                                ; preds = %bb.b, %bb.l, %bb.k, %bb.j, %Py_XDECREF.exit, %bb.a
  %.013 = phi ptr [ null, %bb.a ], [ %.012.ph, %bb.l ], [ %.012.ph, %Py_XDECREF.exit ], [ %.012.ph, %bb.j ], [ %.012.ph, %bb.k ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.013
}

; Function Attrs: nounwind uwtable
define internal void @formatteriter_dealloc(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1013 ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %Py_XDECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !205  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i.i, label %bb.c, label %Py_XDECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !205
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  tail call void @PyObject_Free(ptr noundef nonnull %0) #33
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @formatteriter_next(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %1 = alloca %struct.SubString, align 8          ; 6 uses
  %2 = alloca %struct.SubString, align 8          ; 6 uses
  %3 = alloca %struct.SubString, align 8          ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = call fastcc i32 @MarkupIterator_next(ptr noundef %i.d, ptr noundef %1, ptr noundef %i.c, ptr noundef %2, ptr noundef %3, ptr noundef %i.a, ptr noundef %i.b)
  %or.cond = icmp samesign ult i32 %i.e, 2
  br i1 %or.cond, label %Py_XDECREF.exit38, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !940    ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %SubString_new_object.exit.thread, label %SubString_new_object.exit

SubString_new_object.exit:                        ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !942
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !943
  %i.l = tail call ptr @PyUnicode_Substring(ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef %i.k), !inline_history !1012 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %Py_XDECREF.exit38, label %SubString_new_object.exit.thread

SubString_new_object.exit.thread:                 ; preds = %bb.b, %SubString_new_object.exit
  %.0.i41 = phi ptr [ %i.l, %SubString_new_object.exit ], [ @_Py_NoneStruct, %bb.b ] ; 4 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !940    ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %SubString_new_object.exit28.thread, label %SubString_new_object.exit28

SubString_new_object.exit28:                      ; preds = %SubString_new_object.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !942
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !943
  %i.t = tail call ptr @PyUnicode_Substring(ptr noundef nonnull %i.n, i64 noundef %i.q, i64 noundef %i.s), !inline_history !1012 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_Py_NewRef.exit.thread47, label %SubString_new_object.exit28.thread

SubString_new_object.exit28.thread:               ; preds = %SubString_new_object.exit.thread, %SubString_new_object.exit28
  %.0.i2744 = phi ptr [ %i.t, %SubString_new_object.exit28 ], [ @_Py_NoneStruct, %SubString_new_object.exit.thread ] ; 5 uses
  %i.v = load i32, ptr %i.c, align 4, !tbaa !7
  %.not = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not, ptr @SubString_new_object, ptr @SubString_new_object_or_empty
  %i.x = call ptr %i.w(ptr noundef nonnull %3) #33, !callees !1015 ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_Py_NewRef.exit.thread47, label %bb.c

bb.c:                                             ; preds = %SubString_new_object.exit28.thread
  %i.z = load i32, ptr %i.a, align 4, !tbaa !7    ; 7 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ab = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !205 ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, -1073741825
  br i1 %i.ac, label %_Py_NewRef.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = add nuw i32 %i.ab, 1
  store i32 %i.ad, ptr @_Py_NoneStruct, align 8, !tbaa !205
  br label %_Py_NewRef.exit.thread

bb.f:                                             ; preds = %bb.c
  %i.ae = icmp ult i32 %i.z, 256
  br i1 %i.ae, label %_Py_NewRef.exit, label %bb.g

_Py_NewRef.exit:                                  ; preds = %bb.f
  %i.af = trunc nuw i32 %i.z to i8                ; 2 uses
  %4 = and i8 %i.af, 127
  %5 = zext nneg i8 %4 to i64
  %6 = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %5
  %i.ag = zext nneg i32 %i.z to i64
  %7 = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.ag
  %i.ah = icmp slt i8 %i.af, 0
  %.018 = select i1 %i.ah, ptr %6, ptr %7         ; 2 uses
  %i.ai = icmp eq ptr %.018, null
  br i1 %i.ai, label %_Py_NewRef.exit.thread47, label %_Py_NewRef.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.aj = call ptr @PyUnicode_New(i64 noundef 1, i32 noundef %i.z), !inline_history !1016 ; 8 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_Py_NewRef.exit.thread47, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr i8, ptr %i.aj, i64 32
  %i.am = load i32, ptr %i.al, align 8            ; 5 uses
  %i.an = and i32 %i.am, 28
  %i.ao = icmp eq i32 %i.an, 8
  br i1 %i.ao, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ap = trunc i32 %i.z to i16
  %i.aq = and i32 %i.am, 32
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = and i32 %i.am, 64
  %.not.i.i.i.i = icmp eq i32 %i.ar, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.aj, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %i.aj, i64 56
  %.val4.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.j ], [ %.val4.i.i.i, %bb.k ]
  store i16 %i.ap, ptr %.0.i.i.i, align 2, !tbaa !208
  br label %_Py_NewRef.exit.thread

bb.l:                                             ; preds = %bb.h
  %i.at = and i32 %i.am, 32
  %.not.i13.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i13.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = and i32 %i.am, 64
  %.not.i.i14.i.i = icmp eq i32 %i.au, 0
  %.0.v.i.i15.i.i = select i1 %.not.i.i14.i.i, i64 56, i64 40
  %.0.i.i16.i.i = getelementptr i8, ptr %i.aj, i64 %.0.v.i.i15.i.i
  br label %_PyUnicode_DATA.exit19.i.i

bb.n:                                             ; preds = %bb.l
  %i.av = getelementptr i8, ptr %i.aj, i64 56
  %.val4.i18.i.i = load ptr, ptr %i.av, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit19.i.i

_PyUnicode_DATA.exit19.i.i:                       ; preds = %bb.n, %bb.m
  %.0.i17.i.i = phi ptr [ %.0.i.i16.i.i, %bb.m ], [ %.val4.i18.i.i, %bb.n ]
  store i32 %i.z, ptr %.0.i17.i.i, align 4, !tbaa !7
  br label %_Py_NewRef.exit.thread

_Py_NewRef.exit.thread:                           ; preds = %_PyUnicode_DATA.exit.i.i, %_PyUnicode_DATA.exit19.i.i, %bb.d, %bb.e, %_Py_NewRef.exit
  %.01846 = phi ptr [ %.018, %_Py_NewRef.exit ], [ %i.aj, %_PyUnicode_DATA.exit.i.i ], [ %i.aj, %_PyUnicode_DATA.exit19.i.i ], [ @_Py_NoneStruct, %bb.d ], [ @_Py_NoneStruct, %bb.e ] ; 2 uses
  %i.aw = call ptr (i64, ...) @PyTuple_Pack(i64 noundef 4, ptr noundef nonnull %.0.i41, ptr noundef nonnull %.0.i2744, ptr noundef nonnull %i.x, ptr noundef nonnull %.01846) #33
  br label %_Py_NewRef.exit.thread47

_Py_NewRef.exit.thread47:                         ; preds = %bb.g, %SubString_new_object.exit28, %SubString_new_object.exit28.thread, %_Py_NewRef.exit, %_Py_NewRef.exit.thread
  %.020.ph = phi ptr [ null, %SubString_new_object.exit28 ], [ %.0.i2744, %_Py_NewRef.exit.thread ], [ %.0.i2744, %_Py_NewRef.exit ], [ %.0.i2744, %SubString_new_object.exit28.thread ], [ %.0.i2744, %bb.g ] ; 4 uses
  %.019.ph = phi ptr [ null, %SubString_new_object.exit28 ], [ %i.x, %_Py_NewRef.exit.thread ], [ %i.x, %_Py_NewRef.exit ], [ null, %SubString_new_object.exit28.thread ], [ %i.x, %bb.g ] ; 4 uses
  %.1.ph = phi ptr [ null, %SubString_new_object.exit28 ], [ %.01846, %_Py_NewRef.exit.thread ], [ null, %_Py_NewRef.exit ], [ null, %SubString_new_object.exit28.thread ], [ null, %bb.g ] ; 4 uses
  %.0.ph = phi ptr [ null, %SubString_new_object.exit28 ], [ %i.aw, %_Py_NewRef.exit.thread ], [ null, %_Py_NewRef.exit ], [ null, %SubString_new_object.exit28.thread ], [ null, %bb.g ] ; 4 uses
  %i.ax = load i32, ptr %.0.i41, align 8, !tbaa !205 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ax, -1
  br i1 %.not.i.i, label %bb.o, label %Py_XDECREF.exit

bb.o:                                             ; preds = %_Py_NewRef.exit.thread47
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %.0.i41, align 8, !tbaa !205
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.p, label %Py_XDECREF.exit

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i41) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %_Py_NewRef.exit.thread47, %bb.o, %bb.p
  %.not.i30 = icmp eq ptr %.020.ph, null
  br i1 %.not.i30, label %Py_XDECREF.exit32, label %bb.q

bb.q:                                             ; preds = %Py_XDECREF.exit
  %i.ba = load i32, ptr %.020.ph, align 8, !tbaa !205 ; 2 uses
  %.not.i.i31 = icmp sgt i32 %i.ba, -1
  br i1 %.not.i.i31, label %bb.r, label %Py_XDECREF.exit32

bb.r:                                             ; preds = %bb.q
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %.020.ph, align 8, !tbaa !205
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.s, label %Py_XDECREF.exit32

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %.020.ph) #33
  br label %Py_XDECREF.exit32

Py_XDECREF.exit32:                                ; preds = %Py_XDECREF.exit, %bb.q, %bb.r, %bb.s
  %.not.i33 = icmp eq ptr %.019.ph, null
  br i1 %.not.i33, label %Py_XDECREF.exit35, label %bb.t

bb.t:                                             ; preds = %Py_XDECREF.exit32
  %i.bd = load i32, ptr %.019.ph, align 8, !tbaa !205 ; 2 uses
  %.not.i.i34 = icmp sgt i32 %i.bd, -1
  br i1 %.not.i.i34, label %bb.u, label %Py_XDECREF.exit35

bb.u:                                             ; preds = %bb.t
  %i.be = add nsw i32 %i.bd, -1                   ; 2 uses
  store i32 %i.be, ptr %.019.ph, align 8, !tbaa !205
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.v, label %Py_XDECREF.exit35

bb.v:                                             ; preds = %bb.u
  call void @_Py_Dealloc(ptr noundef nonnull %.019.ph) #33
  br label %Py_XDECREF.exit35

Py_XDECREF.exit35:                                ; preds = %Py_XDECREF.exit32, %bb.t, %bb.u, %bb.v
  %.not.i36 = icmp eq ptr %.1.ph, null
  br i1 %.not.i36, label %Py_XDECREF.exit38, label %bb.w

bb.w:                                             ; preds = %Py_XDECREF.exit35
  %i.bg = load i32, ptr %.1.ph, align 8, !tbaa !205 ; 2 uses
  %.not.i.i37 = icmp sgt i32 %i.bg, -1
  br i1 %.not.i.i37, label %bb.x, label %Py_XDECREF.exit38

bb.x:                                             ; preds = %bb.w
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  store i32 %i.bh, ptr %.1.ph, align 8, !tbaa !205
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.y, label %Py_XDECREF.exit38

bb.y:                                             ; preds = %bb.x
  call void @_Py_Dealloc(ptr noundef nonnull %.1.ph) #33
  br label %Py_XDECREF.exit38

Py_XDECREF.exit38:                                ; preds = %SubString_new_object.exit, %bb.y, %bb.x, %bb.w, %Py_XDECREF.exit35, %bb.a
  %.021 = phi ptr [ null, %bb.a ], [ %.0.ph, %bb.y ], [ %.0.ph, %Py_XDECREF.exit35 ], [ %.0.ph, %bb.w ], [ %.0.ph, %bb.x ], [ null, %SubString_new_object.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret ptr %.021
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @SubString_new_object_or_empty(ptr nofree noundef readonly captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !940    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %SubString_new_object.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @Py_GetConstant(i32 noundef 7) #33
  br label %bb.c

SubString_new_object.exit:                        ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !942
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !943
  %i.h = tail call ptr @PyUnicode_Substring(ptr noundef nonnull %i.a, i64 noundef %i.e, i64 noundef %i.g), !inline_history !1012
  br label %bb.c

bb.c:                                             ; preds = %SubString_new_object.exit, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.h, %SubString_new_object.exit ]
  ret ptr %.0
}

declare ptr @_Py_hashtable_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_Py_hashtable_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_Py_FatalErrorFunc(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @PyDict_SetDefaultRef(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @PyDict_Clear(ptr noundef) local_unnamed_addr #3

declare void @_Py_hashtable_destroy(ptr noundef) local_unnamed_addr #3

declare void @PyObject_GC_Del(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @unicodeiter_len(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !730  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !207
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !728
  %i.f = sub i64 %.val, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.g = tail call ptr @PyLong_FromSsize_t(i64 noundef %.0) #33
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define internal ptr @unicodeiter_reduce(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = tail call ptr @_PyEval_GetBuiltin(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88752)) #33 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !730  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !728
  %i.f = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.312, ptr noundef %i.a, ptr noundef nonnull %i.c, i64 noundef %i.e) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.313, ptr noundef %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176)) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @unicodeiter_setstate(ptr nofree noundef captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = tail call i64 @PyLong_AsSsize_t(ptr noundef %1) #33 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #33
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !730  ; 2 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.f, label %bb.d

.thread:                                          ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !730
  %.not1315 = icmp eq ptr %i.g, null
  br i1 %.not1315, label %bb.f, label %.thread16

bb.d:                                             ; preds = %bb.c
end_hunk_21
