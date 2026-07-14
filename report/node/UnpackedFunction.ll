inline.NumInlined: 2980
inline.NumDeleted: 985
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN4LIEF2PE14unwind_aarch6416UnpackedFunction5parseERNS0_6ParserERNS_12BinaryStreamEjj:bb.a
  %i.s = icmp ult i32 %i.q, 4194304               ; 4 uses
  br i1 %i.s, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4
  %i.t = load ptr, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call i64 %i.v(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.b, i64 noundef %i.r, i64 noundef 4, i64 noundef 0) #24, !inline_history !4
  %i.x = and i64 %i.w, 4294967296
  %.not.i.i24 = icmp eq i64 %i.x, 0
  store i64 %i.r, ptr %i.e, align 8
  br i1 %.not.i.i24, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit29.thread, label %bb.e

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit29.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.y = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.31) #24 ; 0 uses
  store ptr null, ptr %0, align 8
  br label %bb.ag

bb.e:                                             ; preds = %bb.d
  %i.z = load i8, ptr %i.m, align 8, !range !5, !noundef !6
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.f, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit29

bb.f:                                             ; preds = %bb.e
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #24
  %.pre.i27 = load i64, ptr %i.e, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit29

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit29: ; preds = %bb.e, %bb.f
  %i.ab = phi i64 [ %i.r, %bb.e ], [ %.pre.i27, %bb.f ]
  %i.ac = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.ad = add i64 %i.ab, 4
  store i64 %i.ad, ptr %i.e, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit29, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %.sroa.25.1 = phi i32 [ %i.ac, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit29 ], [ 0, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ] ; 2 uses
  %i.ae = shl i32 %i.q, 2
  %i.af = and i32 %i.ae, 1048572
  call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %i.ag = call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #25, !noalias !7 ; 22 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 1, ptr %i.ah, align 8, !noalias !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 %4, ptr %i.ai, align 4, !noalias !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 0, ptr %i.aj, align 8, !noalias !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 %i.af, ptr %i.ak, align 4, !noalias !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i32 0, ptr %i.al, align 8, !noalias !7
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF2PE14unwind_aarch6416UnpackedFunctionE, i64 16), ptr %i.ag, align 8, !noalias !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i32 0, ptr %i.ap, align 8, !noalias !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.aq, i8 0, i64 48, i1 false), !noalias !7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false), !noalias !7
  store ptr %i.ag, ptr %0, align 8, !alias.scope !7
  store i32 %3, ptr %i.am, align 4
  %i.as = lshr i32 %i.q, 18
  %i.at = and i32 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i32 %i.at, ptr %i.au, align 8
  %i.av = and i32 %i.q, 1048576                   ; 2 uses
  %.not106 = icmp eq i32 %i.av, 0
  %.lobit = lshr exact i32 %i.av, 20
  %i.aw = trunc nuw nsw i32 %.lobit to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  store i8 %i.aw, ptr %i.ax, align 4
  %i.ay = lshr i32 %i.q, 21
  %i.az = trunc i32 %i.ay to i8
  %i.ba = and i8 %i.az, 1                         ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 37
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = lshr i32 %i.q, 22
  %i.bd = and i32 %i.bc, 31
  %i.be = and i32 %.sroa.25.1, 65535
  %i.bf = select i1 %i.s, i32 %i.be, i32 %i.bd    ; 3 uses
  store i32 %i.bf, ptr %i.an, align 8
  %i.bg = lshr i32 %.sroa.25.1, 16
  %i.bh = lshr i32 %i.q, 27
  %i.bi = select i1 %i.s, i32 %i.bg, i32 %i.bh    ; 2 uses
  %i.bj = and i32 %i.bi, 255
  store i32 %i.bj, ptr %i.ao, align 4
  %i.bk = zext i1 %i.s to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  store i8 %i.bk, ptr %i.bl, align 8
  %i.bm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.31) #24 ; 0 uses
  %i.bn = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.31) #24 ; 0 uses
  %i.bo = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.31) #24 ; 0 uses
  %i.bp = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.31) #24 ; 0 uses
  %i.bq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.31) #24 ; 0 uses
  %i.br = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.31) #24 ; 0 uses
  %i.bs = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.31) #24 ; 0 uses
  %i.bt = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.31) #24 ; 0 uses
  %.not = icmp eq i8 %i.ba, 0
  %i.bu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.31) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %.not, label %bb.h, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_IN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaISC_EEEZNSB_5parseERNS9_6ParserERNS8_12BinaryStreamEjjE3$_0ET0_T_SM_SL_T1_.exit"

bb.h:                                             ; preds = %bb.g
  %i.bv = load i64, ptr %i.e, align 8             ; 5 uses
  %i.bw = sub i64 %i.bv, %i.f
  store i64 %i.bw, ptr %i.ar, align 8
  %i.bx = zext nneg i32 %i.bf to i64              ; 8 uses
  %i.by = icmp eq i32 %i.bf, 0
  br i1 %i.by, label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = shl nuw nsw i64 %i.bx, 2                ; 2 uses
  %i.ca = load ptr, ptr %2, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call noundef i64 %i.cc(ptr noundef nonnull align 8 dereferenceable(24) %2) #24, !inline_history !10
  %i.ce = icmp slt i64 %i.bv, %i.cd
  br i1 %i.ce, label %_ZNK4LIEF12BinaryStream8can_readEll.exit.i.i.i, label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit.thread97

_ZNK4LIEF12BinaryStream8can_readEll.exit.i.i.i:   ; preds = %bb.i
  %i.cf = add i64 %i.bv, %i.bz                    ; 2 uses
  %i.cg = load ptr, ptr %2, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef i64 %i.ci(ptr noundef nonnull align 8 dereferenceable(24) %2) #24, !inline_history !10
  %i.ck = icmp slt i64 %i.cf, %i.cj
  br i1 %i.ck, label %bb.j, label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit.thread97

_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit.thread97: ; preds = %bb.i, %_ZNK4LIEF12BinaryStream8can_readEll.exit.i.i.i
  store i64 %i.bv, ptr %i.e, align 8
  br label %bb.o

bb.j:                                             ; preds = %_ZNK4LIEF12BinaryStream8can_readEll.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = load ptr, ptr %5, align 8               ; 5 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2                 ; 3 uses
  %i.cs = icmp ult i64 %i.cr, %i.bx
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ct = sub nuw nsw i64 %i.bx, %i.cr
  call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.ct)
  %.pre.i.i.i = load ptr, ptr %5, align 8
  br label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit

bb.l:                                             ; preds = %bb.j
  %i.cu = icmp ugt i64 %i.cr, %i.bx
  br i1 %i.cu, label %bb.m, label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit

bb.m:                                             ; preds = %bb.l
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.bx ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cm, %i.cv
  br i1 %.not.i.i.i.i.i, label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.cv, ptr %i.cl, align 8
  br label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit

_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %i.cw = phi ptr [ %.pre.i.i.i, %bb.k ], [ %i.cn, %bb.l ], [ %i.cn, %bb.m ], [ %i.cn, %bb.n ]
  %i.cx = load i64, ptr %i.e, align 8
  %i.cy = load ptr, ptr %2, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = call i64 %i.da(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.cw, i64 noundef %i.cx, i64 noundef %i.bz, i64 noundef 0) #24, !inline_history !11
  %i.dc = and i64 %i.db, 4294967296
  %.not.i = icmp eq i64 %i.dc, 0                  ; 2 uses
  %spec.store.select.i = select i1 %.not.i, i64 %i.bv, i64 %i.cf
  store i64 %spec.store.select.i, ptr %i.e, align 8
  br i1 %.not.i, label %bb.o, label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit.thread

bb.o:                                             ; preds = %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit.thread97, %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit
  %i.dd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.31) #24 ; 0 uses
  br label %.critedge

_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit.thread: ; preds = %bb.h, %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit
  %i.de = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.31) #24 ; 0 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ag, i64 72 ; 4 uses
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = load ptr, ptr %i.aq, align 8            ; 7 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64               ; 4 uses
  %i.dk = sub i64 %i.di, %i.dj                    ; 2 uses
  %i.dl = ashr exact i64 %i.dk, 3
  %i.dm = icmp ult i64 %i.dl, %i.bx
  br i1 %i.dm, label %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_M_allocateEm.exit.i: ; preds = %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit.thread
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ag, i64 64 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8            ; 4 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dp, %i.dj
  %i.dr = shl nuw nsw i64 %i.bx, 3
  %i.ds = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #25 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.dh, %i.do
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_M_allocateEm.exit.i
  %i.dt = ptrtoaddr ptr %i.ds to i64
  %7 = ptrtoint ptr %i.do to i64
  %i.du = sub i64 %7, %i.dj
  %8 = add i64 %i.du, -8                          ; 2 uses
  %i.dv = lshr i64 %8, 3
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 72
  %i.dx = sub i64 %i.dj, %i.dt
  %diff.check = icmp ugt i64 %i.dx, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader154, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.dw, 4611686018427387900     ; 3 uses
  %i.dy = shl i64 %n.vec, 3                       ; 2 uses
  %i.dz = getelementptr i8, ptr %i.ds, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dh, i64 %i.dy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ds, i64 %i.eb ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.dh, i64 %i.eb ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.ec = getelementptr i8, ptr %next.gep131, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep131, align 4, !alias.scope !15, !noalias !12
  %wide.load132 = load <2 x i64>, ptr %i.ec, align 4, !alias.scope !15, !noalias !12
  %i.ed = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !12, !noalias !15
  store <2 x i64> %wide.load132, ptr %i.ed, align 4, !alias.scope !12, !noalias !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i.preheader154

.lr.ph.i.i.i.i.preheader154:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.preheader ], [ %i.dz, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.preheader ], [ %i.ea, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader154, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader154 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader154 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.ef = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !15, !noalias !12
  store i64 %i.ef, ptr %.012.i.i.i.i, align 4, !alias.scope !12, !noalias !15
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.eg, %i.do
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.dh, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dk) #26
  br label %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.p, %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.ds, ptr %i.aq, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dq
  store ptr %i.ei, ptr %i.dn, align 8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.bx
  store ptr %i.ej, ptr %i.df, align 8
  br label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE7reserveEm.exit: ; preds = %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit.thread, %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE13_M_deallocateEPS4_m.exit.i
  %i.ek = load ptr, ptr %5, align 8               ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %.not15.i = icmp eq ptr %i.ek, %i.em
  br i1 %.not15.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_IN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaISC_EEEZNSB_5parseERNS9_6ParserERNS8_12BinaryStreamEjjE3$_0ET0_T_SM_SL_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE7reserveEm.exit
  %i.en = getelementptr inbounds nuw i8, ptr %i.ag, i64 64 ; 4 uses
  %.pre.i30 = load ptr, ptr %i.en, align 8
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS5_EEEaSEOS5_.exit.i, %.lr.ph.i
  %i.eo = phi ptr [ %.pre.i30, %.lr.ph.i ], [ %i.gc, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS5_EEEaSEOS5_.exit.i ] ; 5 uses
  %.sroa.012.016.i = phi ptr [ %i.ek, %.lr.ph.i ], [ %i.gd, %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS5_EEEaSEOS5_.exit.i ] ; 2 uses
  %i.ep = load i32, ptr %.sroa.012.016.i, align 4 ; 3 uses
  %i.eq = and i32 %i.ep, 262143
  %i.er = lshr i32 %i.ep, 22
  %.sroa.2.0.insert.ext.i.i.i = zext nneg i32 %i.er to i64
  %i.es = lshr i32 %i.ep, 18
  %i.et = and i32 %i.es, 3
  %.sroa.3.0.insert.ext.i.i.i = zext nneg i32 %i.et to i64
  %.sroa.3.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i.i, 48
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i.i, %.sroa.2.0.insert.shift.i.i.i
  %.sroa.0.0.insert.ext.i.i.i = zext nneg i32 %i.eq to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i ; 2 uses
  %i.eu = load ptr, ptr %i.df, align 8
  %.not.i.i.i.i31 = icmp eq ptr %i.eo, %i.eu
  br i1 %.not.i.i.i.i31, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.eo, align 4
  %i.ev = load ptr, ptr %i.en, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  store ptr %i.ew, ptr %i.en, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS5_EEEaSEOS5_.exit.i

bb.s:                                             ; preds = %bb.q
  %i.ex = load ptr, ptr %i.aq, align 8            ; 7 uses
  %i.ey = ptrtoint ptr %i.eo to i64               ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64               ; 3 uses
  %i.fa = sub i64 %i.ey, %i.ez                    ; 4 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775800
  br i1 %i.fb, label %bb.t, label %_ZNKSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #27
  unreachable

_ZNKSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.s
  %i.fc = ashr exact i64 %i.fa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  %i.fd = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.fc ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.fc
  %i.ff = call i64 @llvm.umin.i64(i64 %i.fd, i64 1152921504606846975)
  %i.fg = select i1 %i.fe, i64 1152921504606846975, i64 %i.ff ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.fg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.fh = shl nuw nsw i64 %i.fg, 3
  %i.fi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #25 ; 8 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fa
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.fj, align 4
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.ex, %i.eo
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZNKSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.fk = ptrtoaddr ptr %i.fi to i64
  %i.fl = sub i64 %i.ey, %i.ez
  %i.fm = add i64 %i.fl, -8                       ; 2 uses
  %i.fn = lshr i64 %i.fm, 3
  %i.fo = add nuw nsw i64 %i.fn, 1                ; 2 uses
  %min.iters.check137 = icmp ult i64 %i.fm, 24
  %i.fp = sub i64 %i.ez, %i.fk
  %diff.check135 = icmp ugt i64 %i.fp, -32
  %or.cond152 = or i1 %min.iters.check137, %diff.check135
  br i1 %or.cond152, label %.lr.ph.i.i.i.i.i.i.i.i.preheader153, label %vector.ph138

vector.ph138:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec140 = and i64 %i.fo, 4611686018427387900  ; 3 uses
  %i.fq = shl i64 %n.vec140, 3                    ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fi, i64 %i.fq  ; 2 uses
  %i.fs = getelementptr i8, ptr %i.ex, i64 %i.fq
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph138
  %index142 = phi i64 [ 0, %vector.ph138 ], [ %index.next147, %vector.body141 ] ; 2 uses
  %i.ft = shl i64 %index142, 3                    ; 2 uses
  %next.gep143 = getelementptr i8, ptr %i.fi, i64 %i.ft ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.ex, i64 %i.ft ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.fu = getelementptr i8, ptr %next.gep144, i64 16
  %wide.load145 = load <2 x i64>, ptr %next.gep144, align 4, !alias.scope !25, !noalias !22
  %wide.load146 = load <2 x i64>, ptr %i.fu, align 4, !alias.scope !25, !noalias !22
  %i.fv = getelementptr i8, ptr %next.gep143, i64 16
  store <2 x i64> %wide.load145, ptr %next.gep143, align 4, !alias.scope !22, !noalias !25
  store <2 x i64> %wide.load146, ptr %i.fv, align 4, !alias.scope !22, !noalias !25
  %index.next147 = add nuw i64 %index142, 4       ; 2 uses
  %i.fw = icmp eq i64 %index.next147, %n.vec140
  br i1 %i.fw, label %middle.block148, label %vector.body141, !llvm.loop !27

middle.block148:                                  ; preds = %vector.body141
  %cmp.n149 = icmp eq i64 %i.fo, %n.vec140
  br i1 %cmp.n149, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader153

.lr.ph.i.i.i.i.i.i.i.i.preheader153:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block148
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.fr, %middle.block148 ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.fs, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader153, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader153 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.fy, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader153 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.fx = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 4, !alias.scope !25, !noalias !22
  store i64 %i.fx, ptr %.012.i.i.i.i.i.i.i.i, align 4, !alias.scope !22, !noalias !25
  %i.fy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fy, %i.eo
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !28

_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block148, %_ZNKSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.fi, %_ZNKSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.fr, %middle.block148 ], [ %i.fz, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fa) #26
  br label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZNK4LIEF12BinaryStream7peek_inEPvmmm:bb.a
  %i.g = icmp eq ptr %.fca.0.extract, null
  %or.cond17 = select i1 %or.cond, i1 true, i1 %i.g
  br i1 %or.cond17, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %.fca.0.extract, i64 %3, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a
  %.sroa.415.1 = phi i64 [ 1, %bb.a ], [ 4294967297, %bb.b ]
  ret i64 %.sroa.415.1
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23.i = icmp ult i64 %i.l, %i.h
  br i1 %.not23.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #27
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #25 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %.not28.i = icmp eq ptr %i.b, %i.c
  br i1 %.not28.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i
  %.not.i27.i = icmp eq ptr %i.c, null
  br i1 %.not.i27.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #26
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit:   ; preds = %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF2PE14unwind_aarch6416UnpackedFunctionC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF2PE13ExceptionInfoE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i64 12, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF2PE22RuntimeFunctionAArch64E, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i64, ptr %i.d, align 4
  store i64 %i.e, ptr %i.c, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF2PE14unwind_aarch6416UnpackedFunctionE, i64 16), ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.f, ptr noundef nonnull align 4 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EEC2EmRKS5_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.c, label %_ZNSt15__new_allocatorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tEE8allocateEmPKv.exit.i.i.i.i, !prof !137

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25
  br label %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EEC2EmRKS5_.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EEC2EmRKS5_.exit.i: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.r = phi ptr [ %i.q, %_ZNSt15__new_allocatorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  store ptr %i.r, ptr %i.h, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.t, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.i, align 8              ; 6 uses
  %i.w = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EEC2EmRKS5_.exit.i
  %i.x = ptrtoaddr ptr %i.v to i64
  %i.y = ptrtoaddr ptr %i.r to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.v to i64
  %2 = sub i64 %i.z, %i.aa
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ab = lshr i64 %3, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.ad = sub i64 %i.x, %i.y
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.r, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ah ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.v, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep11, align 4
  %wide.load12 = load <2 x i64>, ptr %i.ai, align 4
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load12, ptr %i.aj, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i.preheader14

.lr.ph.i.i.i.i.i.preheader14:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader14, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 2 uses
  %i.al = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.al, ptr %.09.i.i.i.i.i, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.w
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !139

_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EEC2ERKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EEC2EmRKS5_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNSt12_Vector_baseIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EEC2EmRKS5_.exit.i ], [ %i.af, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %.not.i.i.i.i6 = icmp eq ptr %i.ar, %i.as
  br i1 %.not.i.i.i.i6, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EEC2ERKS6_.exit
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.e, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !137

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #25
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EEC2ERKS6_.exit
  %i.ay = phi ptr [ %i.ax, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EEC2ERKS6_.exit ] ; 6 uses
  store ptr %i.ay, ptr %i.ao, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ba, ptr %i.bb, align 8
  %i.bc = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.bd = load ptr, ptr %i.aq, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 4 uses
  %i.bh = icmp sgt i64 %i.bg, 1
  br i1 %i.bh, label %bb.f, label %bb.g, !prof !140

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.bc, i64 %i.bg, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  %i.bi = icmp eq i64 %i.bg, 1
  br i1 %i.bi, label %bb.h, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.bj = load i8, ptr %i.bc, align 1
  store i8 %i.bj, ptr %i.ay, align 1
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.bk = getelementptr inbounds i8, ptr %i.ay, i64 %i.bg
  store ptr %i.bk, ptr %i.az, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF2PE13ExceptionInfoD0Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF2PE13ExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail11assert_failEPKciS3_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.37, ptr noundef %0, i32 noundef %1, ptr noundef %2) #28 ; 0 uses
  tail call void @abort() #27
  unreachable
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"class.fmt::v11::parse_context", align 8 ; 4 uses
  %4 = alloca %"class.fmt::v11::context", align 8 ; 5 uses
  %5 = alloca %class.anon.569, align 8            ; 5 uses
  %6 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %7 = alloca %"struct.fmt::v11::format_specs", align 8 ; 5 uses
  %8 = alloca %class.anon.543, align 8            ; 5 uses
  %9 = alloca %"struct.fmt::v11::format_specs", align 4 ; 4 uses
  %10 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp.549", align 8 ; 5 uses
  %11 = alloca %"struct.fmt::v11::format_specs", align 8 ; 5 uses
  %12 = alloca %class.anon.543, align 8           ; 5 uses
  %13 = alloca %"struct.fmt::v11::format_specs", align 4 ; 4 uses
  %14 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp", align 8 ; 4 uses
  %15 = alloca %class.anon.542, align 8           ; 5 uses
  %16 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %17 = alloca %"class.fmt::v11::parse_context", align 8 ; 4 uses
  %18 = alloca %"class.fmt::v11::context", align 8 ; 5 uses
  %19 = alloca %class.anon.569, align 8           ; 5 uses
  %20 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %21 = alloca %"struct.fmt::v11::format_specs", align 8 ; 5 uses
  %22 = alloca %class.anon.543, align 8           ; 5 uses
  %23 = alloca %"struct.fmt::v11::format_specs", align 4 ; 4 uses
  %24 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp.549", align 8 ; 5 uses
  %25 = alloca %"struct.fmt::v11::format_specs", align 8 ; 5 uses
  %26 = alloca %class.anon.543, align 8           ; 5 uses
  %27 = alloca %"struct.fmt::v11::format_specs", align 4 ; 4 uses
  %28 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp", align 8 ; 4 uses
  %29 = alloca %class.anon.542, align 8           ; 5 uses
  %30 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %31 = alloca %struct.id_adapter, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 8 uses
  %.not233 = icmp samesign eq i64 %1, 0
end_hunk_1
begin_hunk_2_@_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104: ; preds = %bb.k, %bb.j
  %.pre-phi.i.i105 = phi i64 [ %i.cg, %bb.j ], [ %.pre2.i.i107, %bb.k ]
  %i.ck = phi i64 [ %i.cf, %bb.j ], [ %.pre.i.i106, %bb.k ]
  %i.cl = load ptr, ptr %8, align 8
  store i64 %.pre-phi.i.i105, ptr %i.m, align 8
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ck
  store i32 %i.cd, ptr %i.cm, align 4
  br label %_ZN3fmt3v116detail6bigintlSEi.exit108

_ZN3fmt3v116detail6bigintlSEi.exit108:            ; preds = %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit, %.lr.ph.i98, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit108
  %i.cn = load ptr, ptr %9, align 8
  store i32 1, ptr %i.cn, align 4
  %i.co = load i64, ptr %i.p, align 8
  %.not8.i.i112.not = icmp eq i64 %i.co, 0
  br i1 %.not8.i.i112.not, label %bb.m, label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114

bb.m:                                             ; preds = %bb.l
  %i.cp = load ptr, ptr %i.q, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef 1) #24, !inline_history !283
  %.pre.i.i.i.i113 = load i64, ptr %i.p, align 8
  %i.cq = icmp ne i64 %.pre.i.i.i.i113, 0
  %i.cr = zext i1 %i.cq to i64
  br label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114

_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114:       ; preds = %bb.l, %bb.m
  %i.cs = phi i64 [ 1, %bb.l ], [ %i.cr, %bb.m ]  ; 2 uses
  store i64 %i.cs, ptr %i.r, align 8
  %i.ct = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.cu = lshr i32 %i.ct, 5
  store i32 %i.cu, ptr %i.t, align 8
  %i.cv = and i32 %i.ct, 31                       ; 3 uses
  %i.cw = icmp eq i32 %i.cv, 0
  %.not19.i115 = icmp eq i64 %i.cs, 0
  %or.cond488 = or i1 %i.cw, %.not19.i115
  br i1 %or.cond488, label %bb.p, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114
  %i.cx = sub nuw nsw i32 32, %i.cv
  %i.cy = load ptr, ptr %9, align 8               ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.da = lshr i32 %i.cz, %i.cx                   ; 2 uses
  %i.db = shl i32 %i.cz, %i.cv
  store i32 %i.db, ptr %i.cy, align 4
  %.not.i121 = icmp eq i32 %i.da, 0
  br i1 %.not.i121, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i116
  %i.dc = load i64, ptr %i.r, align 8             ; 2 uses
  %i.dd = add i64 %i.dc, 1                        ; 3 uses
  %i.de = load i64, ptr %i.p, align 8
  %i.df = icmp ugt i64 %i.dd, %i.de
  br i1 %i.df, label %bb.o, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122

bb.o:                                             ; preds = %bb.n
  %i.dg = load ptr, ptr %i.q, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.dd) #24, !inline_history !282
  %.pre.i.i124 = load i64, ptr %i.r, align 8      ; 2 uses
  %.pre2.i.i125 = add i64 %.pre.i.i124, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122: ; preds = %bb.o, %bb.n
  %.pre-phi.i.i123 = phi i64 [ %i.dd, %bb.n ], [ %.pre2.i.i125, %bb.o ]
  %i.dh = phi i64 [ %i.dc, %bb.n ], [ %.pre.i.i124, %bb.o ]
  %i.di = load ptr, ptr %9, align 8
  store i64 %.pre-phi.i.i123, ptr %i.r, align 8
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dh
  store i32 %i.da, ptr %i.dj, align 4
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit108, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114, %.lr.ph.i116, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122
  %.074 = phi ptr [ null, %_ZN3fmt3v116detail6bigintlSEi.exit108 ], [ %9, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114 ], [ %9, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122 ], [ %9, %.lr.ph.i116 ] ; 3 uses
  %i.dk = load i32, ptr %4, align 4
  call void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %7, i32 noundef %i.dk)
  %i.dl = load i64, ptr %i.h, align 8             ; 5 uses
  %.not19.i127 = icmp eq i64 %i.dl, 0
  %extract.t725 = trunc i128 %i.z to i32
  br i1 %.not19.i127, label %_ZN3fmt3v116detail6bigintlSEi.exit138, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %bb.p
  %i.dm = xor i32 %i.u, 31                        ; 3 uses
  %xtraiter977 = and i64 %i.dl, 1
  %i.dn = icmp eq i64 %i.dl, 1
  br i1 %i.dn, label %.epil.preheader976, label %.lr.ph.i128.new

.lr.ph.i128.new:                                  ; preds = %.lr.ph.i128
  %unroll_iter981 = and i64 %i.dl, -2
  br label %bb.q

._crit_edge.i132.unr-lcssa:                       ; preds = %bb.q
  %lcmp.mod978.not = icmp eq i64 %xtraiter977, 0
  br i1 %lcmp.mod978.not, label %._crit_edge.i132, label %.epil.preheader976

.epil.preheader976:                               ; preds = %._crit_edge.i132.unr-lcssa, %.lr.ph.i128
  %.01418.i129.epil.init = phi i64 [ 0, %.lr.ph.i128 ], [ %i.eh, %._crit_edge.i132.unr-lcssa ]
  %.017.i130.epil.init = phi i32 [ 0, %.lr.ph.i128 ], [ %i.ee, %._crit_edge.i132.unr-lcssa ]
  %lcmp.mod980 = trunc i64 %i.dl to i1
  call void @llvm.assume(i1 %lcmp.mod980)
  %i.do = load ptr, ptr %7, align 8
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.01418.i129.epil.init ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.dr = lshr i32 %i.dq, %i.dm
  %i.ds = shl i32 %i.dq, %i.v
  %i.dt = add i32 %i.ds, %.017.i130.epil.init
  store i32 %i.dt, ptr %i.dp, align 4
  br label %._crit_edge.i132

._crit_edge.i132:                                 ; preds = %._crit_edge.i132.unr-lcssa, %.epil.preheader976
  %.lcssa936 = phi i32 [ %i.ee, %._crit_edge.i132.unr-lcssa ], [ %i.dr, %.epil.preheader976 ] ; 2 uses
  %.not.i133 = icmp eq i32 %.lcssa936, 0
  %extract.t726 = trunc i128 %i.z to i32
  br i1 %.not.i133, label %_ZN3fmt3v116detail6bigintlSEi.exit138, label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph.i128.new
  %.01418.i129 = phi i64 [ 0, %.lr.ph.i128.new ], [ %i.eh, %bb.q ] ; 3 uses
  %.017.i130 = phi i32 [ 0, %.lr.ph.i128.new ], [ %i.ee, %bb.q ]
  %niter982 = phi i64 [ 0, %.lr.ph.i128.new ], [ %niter982.next.1, %bb.q ]
  %i.du = load ptr, ptr %7, align 8
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.01418.i129 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = lshr i32 %i.dw, %i.dm
  %i.dy = shl i32 %i.dw, %i.v
  %i.dz = add i32 %i.dy, %.017.i130
  store i32 %i.dz, ptr %i.dv, align 4
  %i.ea = load ptr, ptr %7, align 8
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.01418.i129
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4            ; 2 uses
  %i.ee = lshr i32 %i.ed, %i.dm                   ; 3 uses
  %i.ef = shl i32 %i.ed, %i.v
  %i.eg = add i32 %i.ef, %i.dx
  store i32 %i.eg, ptr %i.ec, align 4
  %i.eh = add nuw i64 %.01418.i129, 2             ; 2 uses
  %niter982.next.1 = add i64 %niter982, 2         ; 2 uses
  %niter982.ncmp.1 = icmp eq i64 %niter982.next.1, %unroll_iter981
  br i1 %niter982.ncmp.1, label %._crit_edge.i132.unr-lcssa, label %bb.q, !llvm.loop !281

bb.r:                                             ; preds = %._crit_edge.i132
  %i.ei = load i64, ptr %i.h, align 8             ; 2 uses
  %i.ej = add i64 %i.ei, 1                        ; 3 uses
  %i.ek = load i64, ptr %i.f, align 8
  %i.el = icmp ugt i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.s, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134

bb.s:                                             ; preds = %bb.r
  %i.em = load ptr, ptr %i.g, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.ej) #24, !inline_history !282
  %.pre.i.i136 = load i64, ptr %i.h, align 8      ; 2 uses
  %.pre2.i.i137 = add i64 %.pre.i.i136, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134: ; preds = %bb.s, %bb.r
  %.pre-phi.i.i135 = phi i64 [ %i.ej, %bb.r ], [ %.pre2.i.i137, %bb.s ]
  %i.en = phi i64 [ %i.ei, %bb.r ], [ %.pre.i.i136, %bb.s ]
  %i.eo = load ptr, ptr %7, align 8
  store i64 %.pre-phi.i.i135, ptr %i.h, align 8
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.en
  store i32 %.lcssa936, ptr %i.ep, align 4
  %extract.t723 = trunc i128 %i.z to i32
  br label %_ZN3fmt3v116detail6bigintlSEi.exit138

bb.t:                                             ; preds = %bb.a
  %i.eq = load i32, ptr %4, align 4               ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %bb.u, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.es = sub nsw i32 0, %i.eq
  call void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.es)
  %i.et = load i64, ptr %i.c, align 8             ; 7 uses
  %i.eu = load i64, ptr %i.k, align 8
  %i.ev = icmp ugt i64 %i.et, %i.eu
  br i1 %i.ev, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.u
  %i.ew = load ptr, ptr %i.l, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.et) #24, !inline_history !284
  %.pre.i.i.i = load i64, ptr %i.k, align 8
  %i.ex = call noundef i64 @llvm.umin.i64(i64 %i.et, i64 %.pre.i.i.i)
  store i64 %i.ex, ptr %i.m, align 8
  %i.ey = load ptr, ptr %6, align 8               ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.et, 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.u
  store i64 %i.et, ptr %i.m, align 8
  %i.fa = load ptr, ptr %6, align 8               ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.et, 2
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.et, 0
  br i1 %.not6.i.i, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %i.fc = phi ptr [ %i.ez, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i ], [ %i.fb, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.fd = phi ptr [ %i.ey, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i ], [ %i.fa, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 5 uses
  %10 = load ptr, ptr %8, align 8                 ; 4 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %11 = ptrtoint ptr %i.fd to i64
  %12 = sub i64 %i.fe, %11
  %13 = add i64 %12, -4                           ; 2 uses
  %i.ff = lshr i64 %13, 2
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 44
  %i.fh = ptrtoaddr ptr %10 to i64
  %i.fi = ptrtoaddr ptr %i.fd to i64
  %i.fj = sub i64 %i.fi, %i.fh
  %diff.check = icmp ugt i64 %i.fj, -32
  %or.cond884 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond884, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.fg, 9223372036854775800     ; 3 uses
  %i.fk = shl i64 %n.vec, 2                       ; 2 uses
  %i.fl = getelementptr i8, ptr %10, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fd, i64 %i.fk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %10, i64 %i.fn ; 2 uses
  %next.gep861 = getelementptr i8, ptr %i.fd, i64 %i.fn ; 2 uses
  %i.fo = getelementptr i8, ptr %next.gep861, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep861, align 4
  %wide.load862 = load <4 x i32>, ptr %i.fo, align 4
  %i.fp = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load862, ptr %i.fp, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !285

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fg, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.08.i.i.ph = phi ptr [ %10, %.lr.ph.i.preheader.i ], [ %i.fl, %middle.block ]
  %.057.i.i.ph = phi ptr [ %i.fd, %.lr.ph.i.preheader.i ], [ %i.fm, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ft, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.fr, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.fs = load i32, ptr %.057.i.i, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.fs, ptr %.08.i.i, align 4
  %.not.i.i139 = icmp eq ptr %i.fr, %i.fc
  br i1 %.not.i.i139, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.i, !llvm.loop !286

_ZN3fmt3v116detail6bigint6assignERKS2_.exit:      ; preds = %.lr.ph.i.i, %middle.block, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.fu = load i32, ptr %i.e, align 8             ; 2 uses
  store i32 %i.fu, ptr %i.o, align 8
  br i1 %.not, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %bb.v

bb.v:                                             ; preds = %_ZN3fmt3v116detail6bigint6assignERKS2_.exit
  %i.fv = load i64, ptr %i.c, align 8             ; 7 uses
  %i.fw = load i64, ptr %i.p, align 8
  %i.fx = icmp ugt i64 %i.fv, %i.fw
  br i1 %i.fx, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148: ; preds = %bb.v
  %i.fy = load ptr, ptr %i.q, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.fv) #24, !inline_history !284
  %.pre.i.i.i149 = load i64, ptr %i.p, align 8
  %i.fz = call noundef i64 @llvm.umin.i64(i64 %i.fv, i64 %.pre.i.i.i149)
  store i64 %i.fz, ptr %i.r, align 8
  %i.ga = load ptr, ptr %6, align 8               ; 2 uses
  %.idx8.i150 = shl nuw nsw i64 %i.fv, 2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.idx8.i150
  br label %.lr.ph.i.preheader.i143

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140: ; preds = %bb.v
  store i64 %i.fv, ptr %i.r, align 8
  %i.gc = load ptr, ptr %6, align 8               ; 2 uses
  %.idx.i141 = shl nuw nsw i64 %i.fv, 2
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx.i141
  %.not6.i.i142 = icmp eq i64 %i.fv, 0
  br i1 %.not6.i.i142, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread, label %.lr.ph.i.preheader.i143

_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread: ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140
  store i32 %i.fu, ptr %i.t, align 8
  br label %_ZN3fmt3v116detail6bigintlSEi.exit163

.lr.ph.i.preheader.i143:                          ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148
  %i.ge = phi ptr [ %i.gb, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148 ], [ %i.gd, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140 ] ; 2 uses
  %i.gf = phi ptr [ %i.ga, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148 ], [ %i.gc, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140 ] ; 5 uses
  %14 = load ptr, ptr %9, align 8                 ; 4 uses
  %i.gg = ptrtoint ptr %i.ge to i64
  %15 = ptrtoint ptr %i.gf to i64
  %16 = sub i64 %i.gg, %15
  %17 = add i64 %16, -4                           ; 2 uses
  %i.gh = lshr i64 %17, 2
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check867 = icmp ult i64 %17, 44
  %i.gj = ptrtoaddr ptr %14 to i64
  %i.gk = ptrtoaddr ptr %i.gf to i64
  %i.gl = sub i64 %i.gk, %i.gj
  %diff.check865 = icmp ugt i64 %i.gl, -32
  %or.cond887 = select i1 %min.iters.check867, i1 true, i1 %diff.check865
  br i1 %or.cond887, label %.lr.ph.i.i144.preheader, label %vector.ph868

vector.ph868:                                     ; preds = %.lr.ph.i.preheader.i143
  %n.vec870 = and i64 %i.gi, 9223372036854775800  ; 3 uses
  %i.gm = shl i64 %n.vec870, 2                    ; 2 uses
  %i.gn = getelementptr i8, ptr %14, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gf, i64 %i.gm
  br label %vector.body871

vector.body871:                                   ; preds = %vector.body871, %vector.ph868
  %index872 = phi i64 [ 0, %vector.ph868 ], [ %index.next877, %vector.body871 ] ; 2 uses
  %i.gp = shl i64 %index872, 2                    ; 2 uses
  %next.gep873 = getelementptr i8, ptr %14, i64 %i.gp ; 2 uses
  %next.gep874 = getelementptr i8, ptr %i.gf, i64 %i.gp ; 2 uses
  %i.gq = getelementptr i8, ptr %next.gep874, i64 16
  %wide.load875 = load <4 x i32>, ptr %next.gep874, align 4
  %wide.load876 = load <4 x i32>, ptr %i.gq, align 4
  %i.gr = getelementptr i8, ptr %next.gep873, i64 16
  store <4 x i32> %wide.load875, ptr %next.gep873, align 4
  store <4 x i32> %wide.load876, ptr %i.gr, align 4
  %index.next877 = add nuw i64 %index872, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next877, %n.vec870
  br i1 %i.gs, label %middle.block878, label %vector.body871, !llvm.loop !287

middle.block878:                                  ; preds = %vector.body871
  %cmp.n879 = icmp eq i64 %i.gi, %n.vec870
  br i1 %cmp.n879, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, label %.lr.ph.i.i144.preheader

.lr.ph.i.i144.preheader:                          ; preds = %.lr.ph.i.preheader.i143, %middle.block878
  %.08.i.i145.ph = phi ptr [ %14, %.lr.ph.i.preheader.i143 ], [ %i.gn, %middle.block878 ]
  %.057.i.i146.ph = phi ptr [ %i.gf, %.lr.ph.i.preheader.i143 ], [ %i.go, %middle.block878 ]
  br label %.lr.ph.i.i144

.lr.ph.i.i144:                                    ; preds = %.lr.ph.i.i144.preheader, %.lr.ph.i.i144
  %.08.i.i145 = phi ptr [ %i.gv, %.lr.ph.i.i144 ], [ %.08.i.i145.ph, %.lr.ph.i.i144.preheader ] ; 2 uses
  %.057.i.i146 = phi ptr [ %i.gt, %.lr.ph.i.i144 ], [ %.057.i.i146.ph, %.lr.ph.i.i144.preheader ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.057.i.i146, i64 4 ; 2 uses
  %i.gu = load i32, ptr %.057.i.i146, align 4
  %i.gv = getelementptr inbounds nuw i8, ptr %.08.i.i145, i64 4
  store i32 %i.gu, ptr %.08.i.i145, align 4
  %.not.i.i147 = icmp eq ptr %i.gt, %i.ge
  br i1 %.not.i.i147, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, label %.lr.ph.i.i144, !llvm.loop !288

_ZN3fmt3v116detail6bigint6assignERKS2_.exit151:   ; preds = %.lr.ph.i.i144, %middle.block878
  %.pr = load i64, ptr %i.r, align 8              ; 5 uses
  %i.gw = load i32, ptr %i.e, align 8
  store i32 %i.gw, ptr %i.t, align 8
  %.not19.i152 = icmp eq i64 %.pr, 0
  br i1 %.not19.i152, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %.lr.ph.i153.preheader

.lr.ph.i153.preheader:                            ; preds = %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151
  %xtraiter955 = and i64 %.pr, 1
  %i.gx = icmp eq i64 %.pr, 1
  br i1 %i.gx, label %.lr.ph.i153.epil.preheader, label %.lr.ph.i153.preheader.new

.lr.ph.i153.preheader.new:                        ; preds = %.lr.ph.i153.preheader
  %unroll_iter960 = and i64 %.pr, -2
  br label %.lr.ph.i153

._crit_edge.i157.unr-lcssa:                       ; preds = %.lr.ph.i153
  %lcmp.mod956.not = icmp eq i64 %xtraiter955, 0
  br i1 %lcmp.mod956.not, label %._crit_edge.i157, label %.lr.ph.i153.epil.preheader

.lr.ph.i153.epil.preheader:                       ; preds = %._crit_edge.i157.unr-lcssa, %.lr.ph.i153.preheader
  %.01418.i154.epil.init = phi i64 [ 0, %.lr.ph.i153.preheader ], [ %i.hp, %._crit_edge.i157.unr-lcssa ]
  %.017.i155.epil.init = phi i32 [ 0, %.lr.ph.i153.preheader ], [ %i.hn, %._crit_edge.i157.unr-lcssa ]
  %lcmp.mod959 = trunc i64 %.pr to i1
  call void @llvm.assume(i1 %lcmp.mod959)
  %i.gy = load ptr, ptr %9, align 8
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.01418.i154.epil.init ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4            ; 3 uses
  %i.hb = lshr i32 %i.ha, 31
  %i.hc = shl i32 %i.ha, 1
  %i.hd = or disjoint i32 %i.hc, %.017.i155.epil.init
  store i32 %i.hd, ptr %i.gz, align 4
  br label %._crit_edge.i157

._crit_edge.i157:                                 ; preds = %._crit_edge.i157.unr-lcssa, %.lr.ph.i153.epil.preheader
  %.lcssa942 = phi i32 [ %i.hm, %._crit_edge.i157.unr-lcssa ], [ %i.ha, %.lr.ph.i153.epil.preheader ]
  %.lcssa941 = phi i32 [ %i.hn, %._crit_edge.i157.unr-lcssa ], [ %i.hb, %.lr.ph.i153.epil.preheader ]
  %.not.i158 = icmp sgt i32 %.lcssa942, -1
  br i1 %.not.i158, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %bb.w

.lr.ph.i153:                                      ; preds = %.lr.ph.i153, %.lr.ph.i153.preheader.new
  %.01418.i154 = phi i64 [ 0, %.lr.ph.i153.preheader.new ], [ %i.hp, %.lr.ph.i153 ] ; 3 uses
  %.017.i155 = phi i32 [ 0, %.lr.ph.i153.preheader.new ], [ %i.hn, %.lr.ph.i153 ]
  %niter961 = phi i64 [ 0, %.lr.ph.i153.preheader.new ], [ %niter961.next.1, %.lr.ph.i153 ]
  %i.he = load ptr, ptr %9, align 8
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.01418.i154 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4            ; 2 uses
  %i.hh = shl i32 %i.hg, 1
  %i.hi = or disjoint i32 %i.hh, %.017.i155
  store i32 %i.hi, ptr %i.hf, align 4
  %i.hj = load ptr, ptr %9, align 8
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %.01418.i154
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4            ; 3 uses
  %i.hn = lshr i32 %i.hm, 31                      ; 3 uses
  %i.ho = call i32 @llvm.fshl.i32(i32 %i.hm, i32 %i.hg, i32 1)
  store i32 %i.ho, ptr %i.hl, align 4
  %i.hp = add nuw i64 %.01418.i154, 2             ; 2 uses
  %niter961.next.1 = add i64 %niter961, 2         ; 2 uses
  %niter961.ncmp.1 = icmp eq i64 %niter961.next.1, %unroll_iter960
  br i1 %niter961.ncmp.1, label %._crit_edge.i157.unr-lcssa, label %.lr.ph.i153, !llvm.loop !281

bb.w:                                             ; preds = %._crit_edge.i157
  %i.hq = load i64, ptr %i.r, align 8             ; 2 uses
  %i.hr = add i64 %i.hq, 1                        ; 3 uses
  %i.hs = load i64, ptr %i.p, align 8
  %i.ht = icmp ugt i64 %i.hr, %i.hs
  br i1 %i.ht, label %bb.x, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159

bb.x:                                             ; preds = %bb.w
  %i.hu = load ptr, ptr %i.q, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.hr) #24, !inline_history !282
  %.pre.i.i161 = load i64, ptr %i.r, align 8      ; 2 uses
  %.pre2.i.i162 = add i64 %.pre.i.i161, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159: ; preds = %bb.x, %bb.w
  %.pre-phi.i.i160 = phi i64 [ %i.hr, %bb.w ], [ %.pre2.i.i162, %bb.x ]
  %i.hv = phi i64 [ %i.hq, %bb.w ], [ %.pre.i.i161, %bb.x ]
  %i.hw = load ptr, ptr %9, align 8
  store i64 %.pre-phi.i.i160, ptr %i.r, align 8
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hv
  store i32 %.lcssa941, ptr %i.hx, align 4
  br label %_ZN3fmt3v116detail6bigintlSEi.exit163

_ZN3fmt3v116detail6bigintlSEi.exit163:            ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159, %._crit_edge.i157, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit
  %.1 = phi ptr [ null, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit ], [ %9, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread ], [ %9, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151 ], [ %9, %._crit_edge.i157 ], [ %9, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159 ] ; 3 uses
  %i.hy = load i128, ptr %0, align 16             ; 5 uses
  %i.hz = and i128 %i.hy, 18446744073709551615
  %i.ia = load i64, ptr %i.c, align 8             ; 2 uses
  %.not23.i.i = icmp eq i64 %i.ia, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v116detail6bigintlSEi.exit178, label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit163
  %i.ib = lshr i128 %i.hy, 32
  %i.ic = and i128 %i.ib, 79228162514264337589248983040
  br label %bb.y

.preheader.i.i:                                   ; preds = %bb.y
  %.not20.i.i = icmp eq i128 %i.io, 0
  br i1 %.not20.i.i, label %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i164
  %.019.i.i = phi i128 [ 0, %.lr.ph.i.i164 ], [ %i.io, %bb.y ] ; 2 uses
  %.01718.i.i = phi i64 [ 0, %.lr.ph.i.i164 ], [ %i.iq, %bb.y ] ; 2 uses
  %i.id = load ptr, ptr %6, align 8
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %.01718.i.i ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4
  %i.ig = zext i32 %i.if to i128                  ; 2 uses
  %i.ih = mul nuw nsw i128 %i.hz, %i.ig
  %i.ii = and i128 %.019.i.i, 4294967295
  %i.ij = add nuw nsw i128 %i.ih, %i.ii           ; 2 uses
  %i.ik = mul nuw i128 %i.ic, %i.ig
  %i.il = lshr i128 %i.ij, 32
  %i.im = lshr i128 %.019.i.i, 32
  %i.in = add nuw i128 %i.ik, %i.im
  %i.io = add nuw i128 %i.in, %i.il               ; 3 uses
  %i.ip = trunc i128 %i.ij to i32
  store i32 %i.ip, ptr %i.ie, align 4
  %i.iq = add nuw i64 %.01718.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.iq, %i.ia
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.y, !llvm.loop !289

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i
  %.121.i.i = phi i128 [ %i.ja, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.io, %.preheader.i.i ] ; 2 uses
  %i.ir = trunc i128 %.121.i.i to i32
  %i.is = load i64, ptr %i.c, align 8             ; 2 uses
  %i.it = add i64 %i.is, 1                        ; 3 uses
  %i.iu = load i64, ptr %i.a, align 8
  %i.iv = icmp ugt i64 %i.it, %i.iu
  br i1 %i.iv, label %bb.z, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

bb.z:                                             ; preds = %.lr.ph22.i.i
  %i.iw = load ptr, ptr %i.b, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.it) #24, !inline_history !290
  %.pre.i.i.i166 = load i64, ptr %i.c, align 8    ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i166, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %bb.z, %.lr.ph22.i.i
  %.pre-phi.i.i.i = phi i64 [ %i.it, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %bb.z ]
  %i.ix = phi i64 [ %i.is, %.lr.ph22.i.i ], [ %.pre.i.i.i166, %bb.z ]
  %i.iy = load ptr, ptr %6, align 8
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.ix
  store i32 %i.ir, ptr %i.iz, align 4
  %i.ja = lshr i128 %.121.i.i, 32                 ; 2 uses
  %.not.i.i165 = icmp eq i128 %i.ja, 0
  br i1 %.not.i.i165, label %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !291

_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit:       ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i, %.preheader.i.i
  %.pr731 = load i64, ptr %i.c, align 8           ; 5 uses
  %.not19.i167 = icmp eq i64 %.pr731, 0
  br i1 %.not19.i167, label %_ZN3fmt3v116detail6bigintlSEi.exit178, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit
  %i.jb = xor i32 %i.u, 31                        ; 3 uses
  %xtraiter963 = and i64 %.pr731, 1
  %i.jc = icmp eq i64 %.pr731, 1
  br i1 %i.jc, label %.epil.preheader962, label %.lr.ph.i168.new

.lr.ph.i168.new:                                  ; preds = %.lr.ph.i168
  %unroll_iter967 = and i64 %.pr731, -2
  br label %bb.aa

._crit_edge.i172.unr-lcssa:                       ; preds = %bb.aa
  %lcmp.mod964.not = icmp eq i64 %xtraiter963, 0
  br i1 %lcmp.mod964.not, label %._crit_edge.i172, label %.epil.preheader962

.epil.preheader962:                               ; preds = %._crit_edge.i172.unr-lcssa, %.lr.ph.i168
  %.01418.i169.epil.init = phi i64 [ 0, %.lr.ph.i168 ], [ %i.jw, %._crit_edge.i172.unr-lcssa ]
  %.017.i170.epil.init = phi i32 [ 0, %.lr.ph.i168 ], [ %i.jt, %._crit_edge.i172.unr-lcssa ]
  %lcmp.mod966 = trunc i64 %.pr731 to i1
  call void @llvm.assume(i1 %lcmp.mod966)
  %i.jd = load ptr, ptr %6, align 8
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %.01418.i169.epil.init ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4            ; 2 uses
  %i.jg = lshr i32 %i.jf, %i.jb
  %i.jh = shl i32 %i.jf, %i.v
  %i.ji = add i32 %i.jh, %.017.i170.epil.init
  store i32 %i.ji, ptr %i.je, align 4
  br label %._crit_edge.i172

._crit_edge.i172:                                 ; preds = %._crit_edge.i172.unr-lcssa, %.epil.preheader962
  %.lcssa939 = phi i32 [ %i.jt, %._crit_edge.i172.unr-lcssa ], [ %i.jg, %.epil.preheader962 ] ; 2 uses
  %.not.i173 = icmp eq i32 %.lcssa939, 0
  br i1 %.not.i173, label %_ZN3fmt3v116detail6bigintlSEi.exit178, label %bb.ab
end_hunk_2
