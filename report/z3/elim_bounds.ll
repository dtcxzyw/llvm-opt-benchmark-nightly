Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/elim_bounds?download=true
inline.NumInlined: 311
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
%class.ptr_buffer = type { %class.buffer }
%class.buffer = type { ptr, i32, i32, [128 x i8] }
%class.used_vars = type { %class.ptr_vector.21, %class.hashtable, %class.svector.27, i32, i32 }
%class.ptr_vector.21 = type { %class.vector.22 }
%class.vector.22 = type { ptr }
%class.hashtable = type { %class.core_hashtable.base.26, [4 x i8] }
%class.core_hashtable.base.26 = type <{ ptr, i32, i32, i32 }>
%class.svector.27 = type { %class.vector.28 }
%class.vector.28 = type { ptr }
%class.obj_hashtable = type { %class.core_hashtable.base.31, [4 x i8] }
%class.core_hashtable.base.31 = type <{ ptr, i32, i32, i32 }>
%class.ptr_buffer.32 = type { %class.buffer.33 }
%class.buffer.33 = type { ptr, i32, i32, [128 x i8] }
%class.obj_ref.35 = type { ptr, ptr }
%class.obj_ref = type { ptr, ptr }
%class.params_ref = type { ptr }

$_ZN8rationalD2Ev = comdat any

$_ZN7obj_refI10quantifier11ast_managerED2Ev = comdat any

$_ZN6bufferIP3varLb0ELj16EED2Ev = comdat any

$_ZN14core_hashtableI14obj_hash_entryI3varE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev = comdat any

$_ZN9used_varsD2Ev = comdat any

$_ZN6bufferIP4exprLb0ELj16EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN6vectorIP4sortLb0EjED2Ev = comdat any

$_ZN14core_hashtableI14obj_hash_entryI3varE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertEOPS1_ = comdat any

$_ZN14core_hashtableI14obj_hash_entryI3varE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12expand_tableEv = comdat any

$_ZN14core_hashtableI14obj_hash_entryI3varE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6removeERKPS1_ = comdat any

$_ZN14core_hashtableI14obj_hash_entryI3varE12obj_ptr_hashIS1_E6ptr_eqIS1_EE22remove_deleted_entriesEv = comdat any

@_ZN8rational13g_mpq_managerE = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [43 x i8] c"/opt-bench/work/z3/z3/src/util/hashtable.h\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"UNEXPECTED CODE WAS REACHED.\00", align 1

@_ZN15elim_bounds_cfgC1ER11ast_manager = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN15elim_bounds_cfgC2ER11ast_manager

; Function Attrs: mustprogress uwtable
define hidden void @_ZN15elim_bounds_cfgC2ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(952) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN10arith_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(952) %1)
  ret void
}

declare void @_ZN10arith_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(952)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN15elim_bounds_cfg8is_boundEP4exprRP3varS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.rational, align 8            ; 15 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  store ptr null, ptr %3, align 8, !tbaa !15
  store ptr null, ptr %2, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 4 uses
  %i.d = and i32 %i.c, 65535
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZNK11ast_manager6is_notEPK4expr.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNK11ast_manager6is_notEPK4expr.exit.thread, label %_ZNK11ast_manager6is_notEPK4expr.exit

_ZNK11ast_manager6is_notEPK4expr.exit:            ; preds = %bb.b
  %i.j = load i32, ptr %i.i, align 8, !tbaa !31
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 8
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  br i1 %i.o, label %bb.c, label %_ZNK11ast_manager6is_notEPK4expr.exit.thread

bb.c:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %_ZNK11ast_manager6is_notEPK4expr.exit.thread

_ZNK11ast_manager6is_notEPK4expr.exit.thread:     ; preds = %bb.b, %bb.a, %bb.c, %_ZNK11ast_manager6is_notEPK4expr.exit
  %i.r = phi i32 [ %.pre, %bb.c ], [ %i.c, %_ZNK11ast_manager6is_notEPK4expr.exit ], [ %i.c, %bb.a ], [ %i.c, %bb.b ]
  %i.s = phi i1 [ true, %bb.c ], [ false, %_ZNK11ast_manager6is_notEPK4expr.exit ], [ false, %bb.a ], [ false, %bb.b ]
  %.030 = phi ptr [ %i.q, %bb.c ], [ %1, %_ZNK11ast_manager6is_notEPK4expr.exit ], [ %1, %bb.a ], [ %1, %bb.b ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = and i32 %i.r, 65535
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26   ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %.critedge, label %_ZNK17arith_recognizers5is_leEPK4expr.exit.i

_ZNK17arith_recognizers5is_leEPK4expr.exit.i:     ; preds = %bb.d
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !31
  %i.ab = icmp eq i32 %i.aa, 5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp eq i32 %i.ad, 2
  %i.af = select i1 %i.ab, i1 %i.ae, i1 false
  br i1 %i.af, label %bb.e, label %_ZNK17arith_recognizers5is_geEPK4expr.exit.i

bb.e:                                             ; preds = %_ZNK17arith_recognizers5is_leEPK4expr.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.030, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !34
  %i.ai = icmp eq i32 %i.ah, 2
  br i1 %i.ai, label %bb.f, label %_ZNK17arith_recognizers5is_geEPK4expr.exit.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.030, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %.030, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !33 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, 65535
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %_ZNK17arith_recognizers5is_geEPK4expr.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i39 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i39, label %_ZNK17arith_recognizers5is_geEPK4expr.exit.i, label %_ZNK10arith_util10is_numeralEPK4expr.exit

_ZNK10arith_util10is_numeralEPK4expr.exit:        ; preds = %bb.g
  %i.av = load i32, ptr %i.au, align 8, !tbaa !31
  %i.aw = icmp eq i32 %i.av, 5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = select i1 %i.aw, i1 %i.az, i1 false
  br i1 %i.ba, label %bb.k, label %_ZNK17arith_recognizers5is_geEPK4expr.exit.i

_ZNK17arith_recognizers5is_geEPK4expr.exit.i:     ; preds = %_ZNK17arith_recognizers5is_leEPK4expr.exit.i, %bb.e, %bb.g, %bb.f, %_ZNK10arith_util10is_numeralEPK4expr.exit
  %i.bb = load i32, ptr %i.z, align 8, !tbaa !31
  %i.bc = icmp eq i32 %i.bb, 5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = icmp eq i32 %i.be, 3
  %i.bg = select i1 %i.bc, i1 %i.bf, i1 false
  br i1 %i.bg, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZNK17arith_recognizers5is_geEPK4expr.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.030, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !34
  %i.bj = icmp eq i32 %i.bi, 2
  br i1 %i.bj, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %.030, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %.030, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !33 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = and i32 %i.bp, 65535
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i42 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i42, label %.critedge, label %_ZNK10arith_util10is_numeralEPK4expr.exit43

_ZNK10arith_util10is_numeralEPK4expr.exit43:      ; preds = %bb.j
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !31
  %i.bx = icmp eq i32 %i.bw, 5
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = icmp eq i32 %i.bz, 0
  %i.cb = select i1 %i.bx, i1 %i.ca, i1 false
  br i1 %i.cb, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZNK10arith_util10is_numeralEPK4expr.exit43, %_ZNK10arith_util10is_numeralEPK4expr.exit
  %.052 = phi ptr [ %i.ak, %_ZNK10arith_util10is_numeralEPK4expr.exit ], [ %i.bl, %_ZNK10arith_util10is_numeralEPK4expr.exit43 ] ; 6 uses
  %5 = phi i1 [ false, %_ZNK10arith_util10is_numeralEPK4expr.exit ], [ true, %_ZNK10arith_util10is_numeralEPK4expr.exit43 ]
  %.034 = phi i1 [ true, %_ZNK10arith_util10is_numeralEPK4expr.exit ], [ false, %_ZNK10arith_util10is_numeralEPK4expr.exit43 ]
  %spec.select = select i1 %i.s, i1 %5, i1 %.034
  %i.cc = getelementptr inbounds nuw i8, ptr %.052, i64 4
  %i.cd = load i32, ptr %i.cc, align 4
  %trunc = trunc i32 %i.cd to i16
  switch i16 %trunc, label %.critedge [
    i16 1, label %bb.l
    i16 0, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  store ptr %.052, ptr %3, align 8, !tbaa !15
  br label %bb.z

bb.m:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %.052, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i45 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i45, label %.critedge, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.i

_ZNK17arith_recognizers6is_addEPK4expr.exit.i:    ; preds = %bb.m
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !31
  %i.cj = icmp eq i32 %i.ci, 5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = icmp eq i32 %i.cl, 6
  %i.cn = select i1 %i.cj, i1 %i.cm, i1 false
  br i1 %i.cn, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZNK17arith_recognizers6is_addEPK4expr.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %.052, i64 24
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !34
  %i.cq = icmp eq i32 %i.cp, 2
  br i1 %i.cq, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %.052, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !33 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.052, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !33 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cw = load i32, ptr %i.cv, align 4
  %trunc73 = trunc i32 %i.cw to i16
  switch i16 %trunc73, label %.critedge [
    i16 1, label %bb.p
    i16 0, label %_Z9is_groundPK4expr.exit
  ]

bb.p:                                             ; preds = %bb.o
  store ptr %i.cs, ptr %3, align 8, !tbaa !15
  br label %bb.q

_Z9is_groundPK4expr.exit:                         ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 30
  %i.cy = load i8, ptr %i.cx, align 2
  %i.cz = trunc i8 %i.cy to i1
  br i1 %i.cz, label %bb.q, label %.critedge

bb.q:                                             ; preds = %_Z9is_groundPK4expr.exit, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store i32 0, ptr %4, align 8, !tbaa !71
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.db = load i8, ptr %i.da, align 4
  %i.dc = and i8 %i.db, -4
  store i8 %i.dc, ptr %i.da, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.dd, align 8, !tbaa !72
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 1, ptr %i.de, align 8, !tbaa !71
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  %i.dg = load i8, ptr %i.df, align 4
  %i.dh = and i8 %i.dg, -4
  store i8 %i.dh, ptr %i.df, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.di, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = and i32 %i.dk, 65535
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.r, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !21
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i46, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit

_ZNK17arith_recognizers6is_mulEPK4expr.exit:      ; preds = %bb.r
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !31
  %i.ds = icmp eq i32 %i.dr, 5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = icmp eq i32 %i.du, 9
  %i.dw = select i1 %i.ds, i1 %i.dv, i1 false
  br i1 %i.dw, label %bb.s, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread

bb.s:                                             ; preds = %_ZNK17arith_recognizers6is_mulEPK4expr.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !33
  %i.dz = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef %i.dy, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  br i1 %i.dz, label %bb.u, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.ea = load i8, ptr %i.da, align 4
  %i.eb = and i8 %i.ea, 1
  %i.ec = icmp eq i8 %i.eb, 0
  %i.ed = load i32, ptr %4, align 8
  %i.ee = icmp eq i32 %i.ed, -1
  %i.ef = select i1 %i.ec, i1 %i.ee, i1 false
  br i1 %i.ef, label %_ZNK8rational12is_minus_oneEv.exit, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread

_ZNK8rational12is_minus_oneEv.exit:               ; preds = %bb.u
  %i.eg = load i8, ptr %i.df, align 4
  %i.eh = and i8 %i.eg, 1
  %i.ei = icmp eq i8 %i.eh, 0
  %i.ej = load i32, ptr %i.de, align 8
  %i.ek = icmp eq i32 %i.ej, 1
  %i.el = select i1 %i.ei, i1 %i.ek, i1 false
  br i1 %i.el, label %bb.v, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread

bb.v:                                             ; preds = %_ZNK8rational12is_minus_oneEv.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !33 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = load i32, ptr %i.eo, align 4
  %trunc74 = trunc i32 %i.ep to i16
  switch i16 %trunc74, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread [
    i16 1, label %bb.w
    i16 0, label %_Z9is_groundPK4expr.exit47
  ]

bb.w:                                             ; preds = %bb.v
  store ptr %i.en, ptr %2, align 8, !tbaa !15
  br label %.critedge38

bb.x:                                             ; preds = %bb.s
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %i.eq

_Z9is_groundPK4expr.exit47:                       ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 30
  %i.es = load i8, ptr %i.er, align 2
  %i.et = trunc i8 %i.es to i1
  br i1 %i.et, label %.critedge38, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread

.critedge38:                                      ; preds = %bb.w, %_Z9is_groundPK4expr.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.z

_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread: ; preds = %bb.v, %bb.u, %bb.r, %bb.q, %_ZNK17arith_recognizers6is_mulEPK4expr.exit, %bb.t, %_ZNK8rational12is_minus_oneEv.exit, %_Z9is_groundPK4expr.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.eu = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !36 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i unwind label %bb.y

.noexc.i:                                         ; preds = %_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %i.de)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %.noexc.i, %_ZNK17arith_recognizers6is_mulEPK4expr.exit.thread
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #10
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.critedge

bb.z:                                             ; preds = %.critedge38, %bb.l
  br i1 %spec.select, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ex = load ptr, ptr %3, align 8, !tbaa !15
  %i.ey = load ptr, ptr %2, align 8, !tbaa !15
  store ptr %i.ey, ptr %3, align 8, !tbaa !15
  store ptr %i.ex, ptr %2, align 8, !tbaa !15
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.o, %bb.k, %bb.m, %_ZNK17arith_recognizers6is_addEPK4expr.exit.i, %bb.n, %bb.j, %bb.i, %_ZNK11ast_manager6is_notEPK4expr.exit.thread, %_ZNK17arith_recognizers5is_geEPK4expr.exit.i, %bb.h, %_ZN8rationalD2Ev.exit, %_Z9is_groundPK4expr.exit, %bb.z, %bb.aa, %_ZNK10arith_util10is_numeralEPK4expr.exit43
  %.2 = phi i1 [ false, %bb.j ], [ false, %_ZN8rationalD2Ev.exit ], [ true, %bb.z ], [ false, %_ZNK10arith_util10is_numeralEPK4expr.exit43 ], [ false, %bb.m ], [ true, %bb.aa ], [ false, %_Z9is_groundPK4expr.exit ], [ false, %_ZNK11ast_manager6is_notEPK4expr.exit.thread ], [ false, %bb.h ], [ false, %_ZNK17arith_recognizers5is_geEPK4expr.exit.i ], [ false, %bb.o ], [ false, %bb.i ], [ false, %bb.n ], [ false, %_ZNK17arith_recognizers6is_addEPK4expr.exit.i ], [ false, %bb.k ], [ false, %bb.d ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

end_hunk_0
