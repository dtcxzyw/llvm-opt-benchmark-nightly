Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.15?download=true
inline.NumInlined: 691
inline.NumDeleted: 235
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter11write_count:bb.a
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = load i8, ptr %i.u, align 8, !range !9, !alias.scope !613, !noundef !5
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.m, label %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter11maybe_flush.exit

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.y = call noundef ptr @_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs5Xr050g3D4S_3std2io5stdio6StdoutENtNtNtCsf3Ta7LF998c_4core2io5write5Write5flushCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
  br label %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter11maybe_flush.exit

bb.n:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter11maybe_flush.exit: ; preds = %bb.c, %bb.m, %bb.l, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit
  %.sroa.0.0 = phi ptr [ null, %bb.l ], [ %i.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.y, %bb.m ], [ %i.o, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter11write_match(ptr noalias nofree noundef align 8 dereferenceable(464) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.032 = alloca [24 x i8], align 8          ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 11 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 5 uses
  %i.ab = alloca [32 x i8], align 8               ; 6 uses
  %i.ac = alloca [32 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [32 x i8], align 8               ; 5 uses
  %i.af = alloca [32 x i8], align 8               ; 6 uses
  %i.ag = alloca [32 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [32 x i8], align 8               ; 5 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 8 uses
  %i.am = alloca [32 x i8], align 8               ; 6 uses
  %i.an = alloca [32 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 8 uses
  %i.ap = alloca [32 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [32 x i8], align 8               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 8 uses
  %i.av = alloca [32 x i8], align 8               ; 6 uses
  %i.aw = alloca [32 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 8 uses
  %i.ay = alloca [32 x i8], align 8               ; 5 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %i.ba = alloca [32 x i8], align 8               ; 5 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [32 x i8], align 8               ; 5 uses
  %i.bd = alloca [24 x i8], align 8               ; 11 uses
  %i.be = alloca [32 x i8], align 8               ; 5 uses
  %i.bf = alloca [24 x i8], align 8               ; 7 uses
  %i.bg = alloca [32 x i8], align 8               ; 5 uses
  %i.bh = alloca [32 x i8], align 8               ; 6 uses
  %i.bi = alloca [32 x i8], align 8               ; 4 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %i.bk = alloca [32 x i8], align 8               ; 5 uses
  %i.bl = alloca [24 x i8], align 8               ; 8 uses
  %i.bm = alloca [32 x i8], align 8               ; 9 uses
  %i.bn = alloca [24 x i8], align 8               ; 6 uses
  %i.bo = alloca [24 x i8], align 8               ; 11 uses
  %i.bp = alloca [64 x i8], align 8               ; 11 uses
  %i.bq = alloca [8 x i8], align 8                ; 4 uses
  %i.br = alloca [48 x i8], align 8               ; 9 uses
  %i.bs = alloca [24 x i8], align 8               ; 13 uses
  %i.bt = alloca [24 x i8], align 8               ; 13 uses
  %i.bu = alloca [32 x i8], align 8               ; 7 uses
  %i.bv = alloca [24 x i8], align 8               ; 12 uses
  %i.bw = alloca [24 x i8], align 8               ; 17 uses
  %i.bx = alloca [24 x i8], align 8               ; 23 uses
  %i.by = alloca [24 x i8], align 8               ; 15 uses
  %i.bz = alloca [40 x i8], align 8               ; 6 uses
  %i.ca = alloca [24 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !5, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !5
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !5, !noundef !5
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !5
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 145
  %.val207 = load i8, ptr %i.cj, align 1, !range !9, !noundef !5
  call fastcc void @_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter11trim_adjust(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bz, i8 %.val207, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cc, i64 noundef %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cg, i64 noundef %i.ci)
  %i.ck = load ptr, ptr %i.bz, align 8, !nonnull !5, !noundef !5
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !5 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %i.cm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.c unwind label %bb.b

.body211:                                         ; preds = %bb.gt, %bb.u, %bb.b, %.body232
  %.pn187 = phi { ptr, i32 } [ %.pn185, %.body232 ], [ %i.ej, %bb.u ], [ %i.co, %bb.b ], [ %i.qk, %bb.gt ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ca) #31
          to label %common.resume unwind label %bb.bc

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i325, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.d, %bb.a
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body211

bb.c:                                             ; preds = %bb.a
  %i.cp = load i64, ptr %i.s, align 8, !range !8, !noundef !5
  %i.cq = trunc nuw i64 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !range !22, !noundef !5 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %i.cq, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.cu = load i64, ptr %i.ct, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.cs, i64 %i.cu) #33
          to label %bb.ae unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.cv = load ptr, ptr %i.ct, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.cw = icmp ule i64 %i.cm, %i.cs
  tail call void @llvm.assume(i1 %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.not = icmp eq i64 %i.cm, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  store i64 %i.cs, ptr %i.by, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  store ptr %i.cv, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 3 uses
  store i64 %i.cm, ptr %.sroa.650.0..sroa_idx, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 155
  %i.cy = load i8, ptr %i.cx, align 1, !range !15, !noundef !5
  switch i8 %i.cy, label %default.unreachable406 [
    i8 0, label %bb.h
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.k
  ]

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr nonnull align 1 %i.ck, i64 %i.cm, i1 false)
  br label %bb.f

default.unreachable406:                           ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.f
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 146
  %i.da = load i8, ptr %i.cz, align 2, !range !9, !noundef !5
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.m, label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noundef !5 ; 2 uses
  %i.dg = invoke fastcc noundef ptr @_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter17ensure_json_begin(ptr noalias nofree noundef align 8 dereferenceable(464) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef %i.df)
          to label %bb.be unwind label %2         ; 2 uses

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !5, !noundef !5
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !5
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.val209 = load i8, ptr %i.dl, align 8, !range !9, !noundef !5
  invoke fastcc void @_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter9highlight(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bt, i8 %.val209, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.di, i64 noundef %i.dk)
          to label %bb.fv unwind label %2

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit313, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit, %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.032)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.gn unwind label %2

bb.l:                                             ; preds = %bb.h
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !5, !noundef !5
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !noundef !5
  %i.dq = invoke fastcc noundef ptr @_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter14ensure_heading(ptr noalias nofree noundef align 8 dereferenceable(464) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef %i.dp)
          to label %bb.s unwind label %2          ; 2 uses

bb.m:                                             ; preds = %._crit_edge, %bb.h
  %i.dr = phi i64 [ %.pre387, %._crit_edge ], [ %i.cm, %bb.h ] ; 8 uses
  %i.ds = phi ptr [ %.pre386, %._crit_edge ], [ %i.cv, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.du = load i64, ptr %i.dt, align 8, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.dv = load i64, ptr %0, align 8, !range !8, !alias.scope !667, !noundef !5
  %i.dw = trunc nuw i64 %i.dv to i1
  br i1 %i.dw, label %bb.n, label %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter17apply_max_columns.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !667, !noundef !5 ; 2 uses
  %i.dz = add i64 %i.du, %i.dr
  %.not.i = icmp ugt i64 %i.dz, %i.dy
  br i1 %.not.i, label %bb.o, label %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter17apply_max_columns.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 151
  %i.eb = load i8, ptr %i.ea, align 1, !range !9, !alias.scope !667, !noundef !5
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.p, label %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter17apply_max_columns.exit.thread407

bb.p:                                             ; preds = %bb.o
  %i.ed = tail call i64 @llvm.umin.i64(i64 %i.dy, i64 %i.dr) ; 2 uses
  %.not6.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not6.i.i, label %.split.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %bb.r
  %.sroa.0.07.i.i = phi i64 [ %i.eh, %bb.r ], [ %i.ed, %bb.p ] ; 5 uses
  %.not5.i.i = icmp ult i64 %.sroa.0.07.i.i, %i.dr
  br i1 %.not5.i.i, label %bb.q, label %.split.i

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.sroa.0.07.i.i
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !669, !noundef !5
  %i.eg = icmp sgt i8 %i.ef, -65
  br i1 %i.eg, label %.split.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eh = add i64 %.sroa.0.07.i.i, -1             ; 2 uses
  %.not.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i, label %.split.i, label %.lr.ph.i.i

.split.i:                                         ; preds = %.lr.ph.i.i, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.lcssa.i18.i = phi i64 [ 0, %bb.p ], [ %.sroa.0.07.i.i, %bb.q ], [ %.sroa.0.07.i.i, %.lr.ph.i.i ], [ 0, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !670
  store ptr %i.ds, ptr %i.b, align 8, !noalias !670, !captures !24
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.lcssa.i18.i, ptr %i.ei, align 8, !noalias !670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !670
  store ptr %i.b, ptr %i.a, align 8, !noalias !670
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsbNLsQi0JuJ4_5tgrep, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !670
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bx, ptr noundef nonnull @94, ptr noundef nonnull %i.a)
          to label %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter17apply_max_columns.exit unwind label %2

.body232:                                         ; preds = %bb.gj, %bb.gh, %bb.fp, %bb.ba, %bb.av, %2, %.body320, %.body298, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit, %bb.bd, %.body228
  %.pn185 = phi { ptr, i32 } [ %.pn, %.body298 ], [ %.pn183, %bb.bd ], [ %.pn183, %.body228 ], [ %eh.lpad-body321, %.body320 ], [ %.pn172.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.pr, %bb.gh ], [ %i.gl, %bb.av ], [ %i.gr, %bb.ba ], [ %i.om, %bb.fp ], [ %3, %2 ], [ %i.pt, %bb.gj ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by) #31
          to label %.body211 unwind label %bb.bc

2:                                                ; preds = %bb.gs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i315, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i309, %bb.fq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i243, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i, %.split.i, %bb.j, %bb.fm, %bb.bf, %bb.l, %bb.k, %bb.i
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %.body232

bb.s:                                             ; preds = %bb.l
  %.not175 = icmp eq ptr %i.dq, null
  br i1 %.not175, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.s
  %.pre386 = load ptr, ptr %.sroa.449.0..sroa_idx, align 8
  %.pre387 = load i64, ptr %.sroa.650.0..sroa_idx, align 8
  br label %bb.m

bb.t:                                             ; preds = %bb.be, %bb.s, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit319, %bb.fn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit247
  %.sroa.0.0 = phi ptr [ %i.gb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit247 ], [ %.sroa.0.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit319 ], [ %i.dq, %bb.s ], [ %i.od, %bb.fn ], [ %i.dg, %bb.be ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body211 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.t
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.b

_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter17apply_max_columns.exit.thread: ; preds = %bb.n, %bb.m
  %i.el = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.ds, ptr %i.el, align 8, !alias.scope !666
  %i.em = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %i.dr, ptr %i.em, align 8, !alias.scope !666
  store i64 -1, ptr %i.bx, align 8, !alias.scope !666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.en = icmp sgt i64 %i.dr, -1
  tail call void @llvm.assume(i1 %i.en)
  br label %bb.x

_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter17apply_max_columns.exit: ; preds = %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !670
  %.pr = load i64, ptr %i.bx, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.pre388 = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.pre389 = load i64, ptr %.sroa.650.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.eo = icmp sgt i64 %.pre389, -1
  call void @llvm.assume(i1 %i.eo)
  %i.ep = icmp eq i64 %.pre388, %.pre389
  br i1 %i.ep, label %bb.x, label %bb.w

_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter17apply_max_columns.exit.thread407: ; preds = %bb.o
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @93, ptr %i.eq, align 8, !alias.scope !666
  %i.er = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 28, ptr %i.er, align 8, !alias.scope !666
  store i64 -1, ptr %i.bx, align 8, !alias.scope !666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.es = icmp sgt i64 %i.dr, -1
  tail call void @llvm.assume(i1 %i.es)
  %i.et = icmp eq i64 %i.dr, 28
  br i1 %i.et, label %bb.x, label %.thread

.thread:                                          ; preds = %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter17apply_max_columns.exit.thread407
  %.sroa.5.0..sroa_idx409 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.5.0.copyload410 = load ptr, ptr %.sroa.5.0..sroa_idx409, align 8
  br label %bb.y

bb.w:                                             ; preds = %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter17apply_max_columns.exit
  %.not176 = icmp eq i64 %.pr, -1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not176, label %bb.y, label %.sink.split

bb.x:                                             ; preds = %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter17apply_max_columns.exit.thread407, %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter17apply_max_columns.exit.thread, %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter17apply_max_columns.exit
  %i.eu = phi i64 [ %i.dr, %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter17apply_max_columns.exit.thread ], [ %.pre389, %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter17apply_max_columns.exit ], [ 28, %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter17apply_max_columns.exit.thread407 ]
  %i.ev = load ptr, ptr %.sroa.449.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !nonnull !5, !noundef !5
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !noundef !5
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.val208 = load i8, ptr %i.fa, align 8, !range !9, !noundef !5
  invoke fastcc void @_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter9highlight(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bw, i8 %.val208, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ev, i64 noundef %i.eu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ex, i64 noundef %i.ez)
          to label %bb.af unwind label %bb.z

bb.y:                                             ; preds = %.thread, %bb.w
  %.sroa.5.0.copyload411 = phi ptr [ %.sroa.5.0.copyload410, %.thread ], [ %.sroa.5.0.copyload, %bb.w ] ; 2 uses
  %i.fb = phi i64 [ 28, %.thread ], [ %.pre388, %bb.w ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload411) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, i64 noundef %i.fb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.aa unwind label %bb.z

.body228:                                         ; preds = %bb.ax, %bb.as, %bb.z, %.body216
  %.pn183 = phi { ptr, i32 } [ %.pn181, %.body216 ], [ %i.gh, %bb.as ], [ %i.fc, %bb.z ], [ %i.gn, %bb.ax ] ; 2 uses
  %.sroa.036.0 = phi i8 [ %.sroa.036.2, %.body216 ], [ %.sroa.036.2, %bb.as ], [ %.sroa.036.1, %bb.z ], [ %.sroa.036.2, %bb.ax ]
  %4 = trunc nuw i8 %.sroa.036.0 to i1
  br i1 %4, label %bb.bd, label %.body232

bb.z:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i236, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i227, %bb.x, %bb.ab, %bb.y
  %.sroa.036.1 = phi i8 [ %.sroa.036.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i236 ], [ %.sroa.036.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i227 ], [ 1, %bb.x ], [ 0, %bb.ab ], [ 0, %bb.y ]
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body228

bb.aa:                                            ; preds = %bb.y
  %i.fd = load i64, ptr %i.r, align 8, !range !8, !noundef !5
  %i.fe = trunc nuw i64 %i.fd to i1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !range !22, !noundef !5 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  br i1 %i.fe, label %bb.ab, label %bb.ac, !prof !6

bb.ab:                                            ; preds = %bb.aa
  %i.fi = load i64, ptr %i.fh, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.fg, i64 %i.fi) #33
          to label %bb.ae unwind label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %i.fj = load ptr, ptr %i.fh, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.fk = icmp ule i64 %i.fb, %i.fg
  call void @llvm.assume(i1 %i.fk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.not178 = icmp eq i64 %i.fb, 0
  br i1 %.not178, label %.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fj, ptr nonnull align 1 %.sroa.5.0.copyload411, i64 %i.fb, i1 false)
  br label %.sink.split

bb.ae:                                            ; preds = %bb.db, %bb.ce, %bb.ab, %bb.d
  unreachable

.sink.split:                                      ; preds = %bb.ac, %bb.ad, %bb.w
  %.pr.sink = phi i64 [ %.pr, %bb.w ], [ %i.fg, %bb.ad ], [ %i.fg, %bb.ac ]
  %.sroa.5.0.copyload.sink = phi ptr [ %.sroa.5.0.copyload, %bb.w ], [ %i.fj, %bb.ad ], [ %i.fj, %bb.ac ]
  %.pre388.sink = phi i64 [ %.pre388, %bb.w ], [ %i.fb, %bb.ad ], [ %i.fb, %bb.ac ]
  store i64 %.pr.sink, ptr %i.bw, align 8
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %.sroa.5.0.copyload.sink, ptr %.sroa.5.0..sroa_idx7, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %.pre388.sink, ptr %.sroa.6.0..sroa_idx9, align 8
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.x
  %.sroa.036.2 = phi i8 [ 1, %bb.x ], [ 0, %.sink.split ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !nonnull !5, !noundef !5
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !noundef !5
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.fq = load i64, ptr %i.fp, align 8, !noundef !5
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !5
  %.not179 = icmp eq i64 %i.fs, 0
  br i1 %.not179, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fu = load ptr, ptr %i.ft, align 8, !nonnull !5, !noundef !5
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !5
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.sroa.512.0 = phi i64 [ %i.fv, %bb.ag ], [ undef, %bb.af ]
  %.sroa.011.0 = phi i64 [ 1, %bb.ag ], [ 0, %bb.af ]
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.fx = load i64, ptr %i.fw, align 8, !noundef !5
  invoke fastcc void @_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter12field_prefix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fm, i64 noundef %i.fo, i64 noundef %i.fq, i64 noundef %.sroa.011.0, i64 %.sroa.512.0, i64 noundef %i.fx, i1 noundef zeroext true)
          to label %bb.aj unwind label %bb.ai

.body216:                                         ; preds = %bb.aq, %bb.an, %bb.ai, %bb.ak
  %.pn181 = phi { ptr, i32 } [ %i.gc, %bb.ak ], [ %i.gd, %bb.an ], [ %i.fy, %bb.ai ], [ %i.gf, %bb.aq ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw) #31
          to label %.body228 unwind label %bb.bc

bb.ai:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i221, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i215, %bb.ah
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body216

bb.aj:                                            ; preds = %bb.ah
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  store ptr %i.bv, ptr %i.bu, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.457.0..sroa_idx, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.bw, ptr %i.ga, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.461.0..sroa_idx, align 8
  %i.gb = invoke noundef ptr @_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs5Xr050g3D4S_3std2io5stdio6StdoutENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.fz, ptr noundef nonnull @72, ptr noundef nonnull %i.bu)
          to label %bb.al unwind label %bb.ak     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv) #31
          to label %.body216 unwind label %bb.bc

bb.al:                                            ; preds = %bb.aj
  %.not180 = icmp eq ptr %i.gb, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br i1 %.not180, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i215 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %.body216 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i215: ; preds = %bb.am
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit219 unwind label %bb.ai

bb.ap:                                            ; preds = %bb.al
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i221 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %.body216 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i221: ; preds = %bb.ap
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit225 unwind label %bb.ai

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit225: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i227 unwind label %bb.as

bb.as:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit225
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %.body228 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i227: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit225
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit231 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit231: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %5 = trunc nuw i8 %.sroa.036.2 to i1
  %i.gj = load i64, ptr %i.bx, align 8, !range !10
  %i.gk = icmp ne i64 %i.gj, -1
  %or.cond.not = select i1 %5, i1 %i.gk, i1 false
  br i1 %or.cond.not, label %bb.au, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.k

bb.au:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit231
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %.body232 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.au
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit unwind label %2

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit219: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i236 unwind label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit219
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %.body228 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i236: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit219
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit241 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit241: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %6 = trunc nuw i8 %.sroa.036.2 to i1
  %i.gp = load i64, ptr %i.bx, align 8, !range !10
  %i.gq = icmp ne i64 %i.gp, -1
  %or.cond377.not = select i1 %6, i1 %i.gq, i1 false
  br i1 %or.cond377.not, label %bb.az, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit247

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit247: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i243, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.t

bb.az:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit241
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i243 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %.body232 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i243: ; preds = %bb.az
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep.exit247 unwind label %2

bb.bc:                                            ; preds = %.body271, %.body258, %bb.by, %bb.bj, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body298, %.body201.thread, %bb.fu, %bb.ft, %.body198.thread, %bb.fs, %.body195.thread, %.body192.thread, %.body189.thread, %.body.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit, %bb.fe, %.body289, %bb.dm, %bb.dd, %bb.cq, %bb.cg, %bb.bd, %bb.ak, %.body216, %.body232, %.body211
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.bd:                                            ; preds = %.body228
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bx) #31
          to label %.body232 unwind label %bb.bc

bb.be:                                            ; preds = %bb.i
  %.not154 = icmp eq ptr %i.dg, null
  br i1 %.not154, label %bb.bf, label %bb.t

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.gx = load i64, ptr %i.gw, align 8, !noundef !5
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %i.gx
  store ptr %i.gv, ptr %i.bn, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.gy, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.by, ptr %i.ha, align 8
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterTjjEENCNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB3G_12OutputWriter11write_match0EE9from_iterB3I_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bn)
          to label %bb.bg unwind label %2

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !range !8, !noundef !5
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.hf = trunc nuw i64 %i.hd to i1
  %.pre = load i64, ptr %i.hb, align 8            ; 2 uses
  %i.hg = load i64, ptr %i.he, align 8
  %.not155 = icmp eq i64 %i.hg, %.pre
  %or.cond = select i1 %i.hf, i1 %.not155, i1 false
  br i1 %or.cond, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !noundef !5
  %i.hj = add i64 %i.hi, 1
  store i64 %i.hj, ptr %i.hh, align 8
  store i64 1, ptr %i.hc, align 8
  store i64 %.pre, ptr %i.he, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !noundef !5 ; 2 uses
  %i.hm = icmp ult i64 %i.hl, 288230376151711744
  call void @llvm.assume(i1 %i.hm)
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !noundef !5
  %i.hp = add i64 %i.ho, %i.hl
  store i64 %i.hp, ptr %i.hn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store ptr null, ptr %i.bl, align 8
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 0, ptr %.sroa.6101.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bk unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit251

bb.bj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit251, %.body201.thread, %bb.fu
  %.pn172 = phi { ptr, i32 } [ %eh.lpad-body202336, %.body201.thread ], [ %.pn169, %bb.fu ], [ %i.nj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit251 ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.bc

bb.bk:                                            ; preds = %bb.bi
  %i.hq = load i64, ptr %i.q, align 8, !range !8, !noundef !5
  %i.hr = trunc nuw i64 %i.hq to i1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ht = load i64, ptr %i.hs, align 8, !range !22, !noundef !5 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.hr, label %bb.bl, label %bb.bm, !prof !6

bb.bl:                                            ; preds = %bb.bk
  %i.hv = load i64, ptr %i.hu, align 8
  br label %.invoke414

.invoke414:                                       ; preds = %bb.bw, %bb.bl
  %i.hw = phi i64 [ %i.ht, %bb.bl ], [ %i.im, %bb.bw ]
  %i.hx = phi i64 [ %i.hv, %bb.bl ], [ %i.io, %bb.bw ]
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.hw, i64 %i.hx) #33
          to label %.cont415 unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit251

.cont415:                                         ; preds = %.invoke414
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.hy = load ptr, ptr %i.hu, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.hz = icmp samesign ugt i64 %i.ht, 3
  call void @llvm.assume(i1 %i.hz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i32 1701869940, ptr %i.hy, align 1
  store i64 %i.ht, ptr %i.bj, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.hy, ptr %.sroa.4109.0..sroa_idx, align 8
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 4, ptr %.sroa.6110.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  invoke void @_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @74)
          to label %bb.bn unwind label %.body201.thread337

.body201.thread337:                               ; preds = %bb.bm
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body201.thread

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.ib = load i8, ptr %i.bh, align 8, !range !23, !alias.scope !672, !noundef !5
  %i.ic = icmp eq i8 %i.ib, -1
  br i1 %i.ic, label %bb.bo, label %bb.bs, !prof !6

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !673
  %i.id = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !alias.scope !672, !nonnull !5, !align !12, !noundef !5
  store ptr %i.ie, ptr %i.c, align 8, !noalias !673
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #33
          to label %bb.bq unwind label %bb.bp, !noalias !674

bb.bp:                                            ; preds = %bb.bo
  %i.if = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #31
          to label %.body201.thread unwind label %bb.br, !noalias !674

bb.bq:                                            ; preds = %bb.bo
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !674
  unreachable

bb.bs:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bh, i64 32, i1 false), !alias.scope !674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bk, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bi)
          to label %bb.bt unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit251

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.ih = load i8, ptr %i.bk, align 8, !range !23, !alias.scope !675, !noundef !5
  %i.ii = icmp eq i8 %i.ih, -1
  br i1 %i.ii, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bk)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit251

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bv unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit251

bb.bv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit
  %i.ij = load i64, ptr %i.p, align 8, !range !8, !noundef !5
  %i.ik = trunc nuw i64 %i.ij to i1
  %i.il = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.im = load i64, ptr %i.il, align 8, !range !22, !noundef !5 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br i1 %i.ik, label %bb.bw, label %bb.bx, !prof !6

bb.bw:                                            ; preds = %bb.bv
  %i.io = load i64, ptr %i.in, align 8
  br label %.invoke414

bb.bx:                                            ; preds = %bb.bv
  %i.ip = load ptr, ptr %i.in, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.iq = icmp samesign ugt i64 %i.im, 3
  call void @llvm.assume(i1 %i.iq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i32 1635017060, ptr %i.ip, align 1
  store i64 %i.im, ptr %i.bf, align 8
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.ip, ptr %.sroa.4112.0..sroa_idx, align 8
  %.sroa.6113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 4, ptr %.sroa.6113.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store ptr null, ptr %i.bd, align 8
  %.sroa.6101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 0, ptr %.sroa.6101.0..sroa_idx102, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bz unwind label %.body

bb.by:                                            ; preds = %.body, %bb.ft, %bb.fs, %.body192.thread, %.body189.thread, %.body.thread
  %.pn169 = phi { ptr, i32 } [ %eh.lpad-body190362, %.body189.thread ], [ %.pn166, %bb.ft ], [ %eh.lpad-body193357, %.body192.thread ], [ %.pn163, %bb.fs ], [ %i.mz, %.body ], [ %eh.lpad-body367, %.body.thread ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %bb.fu unwind label %bb.bc

bb.bz:                                            ; preds = %bb.bx
  %i.ir = load i64, ptr %i.o, align 8, !range !8, !noundef !5
  %i.is = trunc nuw i64 %i.ir to i1
  %i.it = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !range !22, !noundef !5 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.is, label %bb.ca, label %bb.cb, !prof !6

bb.ca:                                            ; preds = %bb.bz
  %i.iw = load i64, ptr %i.iv, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.ep, %bb.ee, %bb.dt, %bb.cx, %bb.ca
  %i.ix = phi i64 [ %i.iu, %bb.ca ], [ %i.kd, %bb.cx ], [ %i.lk, %bb.dt ], [ %i.mb, %bb.ee ], [ %i.mt, %bb.ep ]
  %i.iy = phi i64 [ %i.iw, %bb.ca ], [ %i.kf, %bb.cx ], [ %i.lm, %bb.dt ], [ %i.md, %bb.ee ], [ %i.mv, %bb.ep ]
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ix, i64 %i.iy) #33
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter11write_match:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtB2_5ValueEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo)
          to label %bb.er unwind label %.body.thread368

.body.thread368:                                  ; preds = %bb.eq
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %.invoke, %bb.el, %bb.ea, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit274, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit261, %bb.bx, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit263, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit276, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit278, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit280, %bb.cv, %bb.dr, %bb.ec, %bb.en, %bb.ey, %bb.ew
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.er:                                            ; preds = %bb.eq
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %i.na = load i8, ptr %i.x, align 8, !range !23, !alias.scope !699, !noundef !5
  %i.nb = icmp eq i8 %i.na, -1
  br i1 %i.nb, label %bb.es, label %bb.ew, !prof !6

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !700
  %i.nc = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8, !alias.scope !699, !nonnull !5, !align !12, !noundef !5
  store ptr %i.nd, ptr %i.h, align 8, !noalias !700
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #33
          to label %bb.eu unwind label %bb.et, !noalias !701

bb.et:                                            ; preds = %bb.es
  %i.ne = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #31
          to label %.body.thread unwind label %bb.ev, !noalias !701

bb.eu:                                            ; preds = %bb.es
  unreachable

bb.ev:                                            ; preds = %bb.et
  %i.nf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !701
  unreachable

bb.ew:                                            ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.x, i64 32, i1 false), !alias.scope !701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.y)
          to label %bb.ex unwind label %.body

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.ng = load i8, ptr %i.aa, align 8, !range !23, !alias.scope !702, !noundef !5
  %i.nh = icmp eq i8 %i.ng, -1
  br i1 %i.nh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit282, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit282 unwind label %.body

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit282: ; preds = %bb.ex, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ni = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ni, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  store i8 5, ptr %i.be, align 8
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.be)
          to label %bb.ez unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit251

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit251: ; preds = %.invoke414, %bb.bs, %bb.bi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit, %bb.bu, %bb.fa, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit282
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ez:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.nk = load i8, ptr %i.bg, align 8, !range !23, !alias.scope !703, !noundef !5
  %i.nl = icmp eq i8 %i.nk, -1
  br i1 %i.nl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit284, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit284 unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit251

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit284: ; preds = %bb.ez, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.nm = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nm, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  store i8 5, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.bm, ptr %i.u, align 8
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs_NtCs6MoqnCnVQOT_10serde_json5valueNtB4_5ValueNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4144.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @69, ptr noundef nonnull %i.u)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit286 unwind label %bb.fb

.body289:                                         ; preds = %bb.fi, %bb.fb, %bb.fe
  %.pn161 = phi { ptr, i32 } [ %i.oi, %bb.fe ], [ %i.nn, %bb.fb ], [ %i.oj, %bb.fi ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bm) #31
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.bc

bb.fb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i288, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit284, %bb.fg
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %.body289

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit286: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.no = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.np = load i64, ptr %i.no, align 8, !noundef !5 ; 6 uses
  %i.nq = icmp sgt i64 %i.np, -1
  call void @llvm.assume(i1 %i.nq)
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ns = load i64, ptr %i.nr, align 8, !noundef !5
  %i.nt = add i64 %i.ns, %i.np
  store i64 %i.nt, ptr %i.nr, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.nx = load i64, ptr %i.nu, align 8, !range !18, !noundef !5
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.nz = load i64, ptr %i.ny, align 8, !noundef !5 ; 4 uses
  %i.oa = icmp sgt i64 %i.nz, -1
  call void @llvm.assume(i1 %i.oa)
  %i.ob = sub nsw i64 %i.nx, %i.nz
  %i.oc = icmp ult i64 %i.np, %i.ob
  br i1 %i.oc, label %bb.fd, label %bb.fc, !prof !13

bb.fc:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit286
  %i.od = invoke noundef ptr @_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs5Xr050g3D4S_3std2io5stdio6StdoutE14write_all_coldCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.nu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nw, i64 noundef %i.np)
          to label %bb.ff unwind label %bb.fe     ; 2 uses

bb.fd:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit286
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.of = load ptr, ptr %i.oe, align 8, !nonnull !5, !noundef !5
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.nz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.og, ptr nonnull align 1 %i.nw, i64 %i.np, i1 false)
  %i.oh = add nuw i64 %i.nz, %i.np
  store i64 %i.oh, ptr %i.ny, align 8
  br label %bb.fh

bb.fe:                                            ; preds = %bb.fc
  %i.oi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #31
          to label %.body289 unwind label %bb.bc

bb.ff:                                            ; preds = %bb.fc
  %.not160 = icmp eq ptr %i.od, null
  br i1 %.not160, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.fk unwind label %bb.fb

bb.fh:                                            ; preds = %bb.ff, %bb.fd
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i288 unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.oj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body289 unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ok = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i288: ; preds = %bb.fh
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit292 unwind label %bb.fb

bb.fk:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bm)
          to label %bb.fm unwind label %bb.fl

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.bj, %bb.fl, %.body289
  %.pn172.pn = phi { ptr, i32 } [ %.pn161, %.body289 ], [ %i.ol, %bb.fl ], [ %.pn172, %bb.bj ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bo) #31
          to label %.body232 unwind label %bb.bc

bb.fl:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit292, %bb.fk
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit

bb.fm:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bo)
          to label %bb.fn unwind label %2

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.t

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit292: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bm)
          to label %bb.fo unwind label %bb.fl

bb.fo:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %bb.fq unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.om = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %.body232 unwind label %bb.fr

bb.fq:                                            ; preds = %bb.fo
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit unwind label %2

bb.fr:                                            ; preds = %bb.fp
  %i.on = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.k

.body.thread:                                     ; preds = %bb.et, %.body.thread368
  %eh.lpad-body367 = phi { ptr, i32 } [ %i.my, %.body.thread368 ], [ %i.ne, %bb.et ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #31
          to label %bb.by unwind label %bb.bc

.body189.thread:                                  ; preds = %bb.ei, %.body189.thread363
  %eh.lpad-body190362 = phi { ptr, i32 } [ %i.mh, %.body189.thread363 ], [ %i.mm, %bb.ei ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #31
          to label %bb.by unwind label %bb.bc

.body192.thread:                                  ; preds = %bb.dx, %.body192.thread358
  %eh.lpad-body193357 = phi { ptr, i32 } [ %i.lp, %.body192.thread358 ], [ %i.lu, %bb.dx ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah) #31
          to label %bb.by unwind label %bb.bc

.body195.thread:                                  ; preds = %bb.dg, %.body195.thread350
  %eh.lpad-body196349 = phi { ptr, i32 } [ %i.ks, %.body195.thread350 ], [ %i.kx, %bb.dg ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao) #31
          to label %bb.dm unwind label %bb.bc

bb.fs:                                            ; preds = %.body271
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as) #31
          to label %bb.by unwind label %bb.bc

.body198.thread:                                  ; preds = %bb.ck, %.body198.thread342
  %eh.lpad-body199341 = phi { ptr, i32 } [ %i.jl, %.body198.thread342 ], [ %i.jq, %bb.ck ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax) #31
          to label %bb.cq unwind label %bb.bc

bb.ft:                                            ; preds = %.body258
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb) #31
          to label %bb.by unwind label %bb.bc

bb.fu:                                            ; preds = %bb.by
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf) #31
          to label %bb.bj unwind label %bb.bc

.body201.thread:                                  ; preds = %bb.bp, %.body201.thread337
  %eh.lpad-body202336 = phi { ptr, i32 } [ %i.ia, %.body201.thread337 ], [ %i.if, %bb.bp ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj) #31
          to label %bb.bj unwind label %bb.bc

bb.fv:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.op = load ptr, ptr %i.oo, align 8, !nonnull !5, !noundef !5
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.or = load i64, ptr %i.oq, align 8, !noundef !5
  invoke fastcc void @_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter12display_path(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.op, i64 noundef %i.or)
          to label %bb.fx unwind label %bb.fw

.body298:                                         ; preds = %bb.ge, %bb.gc, %bb.fw, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp417, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.pn, %bb.gc ], [ %i.os, %bb.fw ], [ %i.pp, %bb.ge ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt) #31
          to label %.body232 unwind label %bb.bc

bb.fw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i303, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i297, %bb.fv
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %.body298

bb.fx:                                            ; preds = %bb.fv
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ou = load i64, ptr %i.ot, align 8, !noundef !5 ; 3 uses
  %i.ov = icmp ult i64 %i.ou, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ov)
  %i.ow = icmp eq i64 %i.ou, 0
  br i1 %i.ow, label %bb.fy, label %.lr.ph

.lr.ph:                                           ; preds = %bb.fx
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.oy = load ptr, ptr %i.ox, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ou, 3
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 %.idx
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.pd = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.pe = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  store ptr %i.bs, ptr %i.br, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.465.0..sroa_idx, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.pg, ptr %i.ph, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.469.0..sroa_idx, align 8
  %i.pi = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store ptr %i.bt, ptr %i.pi, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.473.0..sroa_idx, align 8
  %i.pj = invoke noundef ptr @_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs5Xr050g3D4S_3std2io5stdio6StdoutENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.pf, ptr noundef nonnull @82, ptr noundef nonnull %i.br)
          to label %bb.gg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.fz:                                            ; preds = %.lr.ph, %bb.gb
  %.sroa.019.0380 = phi ptr [ %i.oy, %.lr.ph ], [ %i.pk, %bb.gb ] ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.019.0380, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  store ptr %.sroa.019.0380, ptr %i.bq, align 8, !captures !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store ptr %i.bs, ptr %i.bp, align 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.477.0..sroa_idx, align 8
  store ptr %i.pb, ptr %i.pc, align 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.481.0..sroa_idx, align 8
  store ptr %i.bq, ptr %i.pd, align 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRjNtB6_7Display3fmtCsbNLsQi0JuJ4_5tgrep, ptr %.sroa.485.0..sroa_idx, align 8
  store ptr %i.bt, ptr %i.pe, align 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.489.0..sroa_idx, align 8
  %i.pl = invoke noundef ptr @_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs5Xr050g3D4S_3std2io5stdio6StdoutENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_fmtCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.pa, ptr noundef nonnull @81, ptr noundef nonnull %i.bp)
          to label %bb.ga unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fz, %bb.fy
  %lpad.loopexit.split-lp417 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs) #31
          to label %.body298 unwind label %bb.bc

bb.ga:                                            ; preds = %bb.fz
  %.not151 = icmp eq ptr %i.pl, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br i1 %.not151, label %bb.gb, label %.loopexit418

bb.gb:                                            ; preds = %bb.ga
  %i.pm = icmp eq ptr %i.pk, %i.oz
  br i1 %i.pm, label %.loopexit, label %bb.fz

.loopexit418:                                     ; preds = %bb.ga, %bb.gg
  %.sroa.0.1 = phi ptr [ %i.pj, %bb.gg ], [ %i.pl, %bb.ga ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i297 unwind label %bb.gc

bb.gc:                                            ; preds = %.loopexit418
  %i.pn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %.body298 unwind label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.po = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i297: ; preds = %.loopexit418
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit301 unwind label %bb.fw

.loopexit:                                        ; preds = %bb.gb, %bb.gg
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i303 unwind label %bb.ge

bb.ge:                                            ; preds = %.loopexit
  %i.pp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %.body298 unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.pq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i303: ; preds = %.loopexit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit307 unwind label %bb.fw

bb.gg:                                            ; preds = %bb.fy
  %.not152 = icmp eq ptr %i.pj, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br i1 %.not152, label %.loopexit, label %.loopexit418

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit307: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i309 unwind label %bb.gh

bb.gh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit307
  %i.pr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %.body232 unwind label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.ps = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i309: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit307
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit313 unwind label %2

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit313: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit301: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i315 unwind label %bb.gj

bb.gj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit301
  %i.pt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %.body232 unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.pu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i315: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit301
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit319 unwind label %2

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit319: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.t

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep.exit331 unwind label %bb.gl

bb.gl:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit
  %i.pv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %common.resume unwind label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.pw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body211, %bb.gv, %bb.gl
  %common.resume.op = phi { ptr, i32 } [ %i.qm, %bb.gv ], [ %i.pv, %bb.gl ], [ %.pn187, %.body211 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep.exit331: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit329
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit329 ], [ %.sroa.0.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit ]
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  ret ptr %.sroa.0.2

bb.gn:                                            ; preds = %bb.k
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.py = load i64, ptr %i.px, align 8, !noundef !5 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.032, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.qa = load i64, ptr %i.pz, align 8, !range !10, !alias.scope !704, !noundef !5
  %i.qb = icmp eq i64 %i.qa, -1
  br i1 %i.qb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgCecv3eZDcN_5alloc6string6StringjEEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.go

bb.go:                                            ; preds = %bb.gn
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.pz)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringjEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.qc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.pz)
          to label %.body320 unwind label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.qd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringjEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.go
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.pz)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgCecv3eZDcN_5alloc6string6StringjEEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.gr

bb.gr:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringjEECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %.body320

.body320:                                         ; preds = %bb.gp, %bb.gr
  %eh.lpad-body321 = phi { ptr, i32 } [ %i.qe, %bb.gr ], [ %i.qc, %bb.gp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pz, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.032, i64 24, i1 false)
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.py, ptr %.sroa.533.0..sroa_idx, align 8
  br label %.body232

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgCecv3eZDcN_5alloc6string6StringjEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.gn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringjEECsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pz, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.032, i64 24, i1 false)
  %.sroa.533.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.py, ptr %.sroa.533.0..sroa_idx34, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.032)
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.qg = load i8, ptr %i.qf, align 8, !range !9, !alias.scope !705, !noundef !5
  %i.qh = trunc nuw i8 %i.qg to i1
  br i1 %i.qh, label %bb.gs, label %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter11maybe_flush.exit

bb.gs:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgCecv3eZDcN_5alloc6string6StringjEEECsbNLsQi0JuJ4_5tgrep.exit
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.qj = invoke noundef ptr @_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs5Xr050g3D4S_3std2io5stdio6StdoutENtNtNtCsf3Ta7LF998c_4core2io5write5Write5flushCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.qi)
          to label %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter11maybe_flush.exit unwind label %2

_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter11maybe_flush.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgCecv3eZDcN_5alloc6string6StringjEEECsbNLsQi0JuJ4_5tgrep.exit, %bb.gs
  %.sroa.0.0.i = phi ptr [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgCecv3eZDcN_5alloc6string6StringjEEECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.qj, %bb.gs ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i325 unwind label %bb.gt

bb.gt:                                            ; preds = %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter11maybe_flush.exit
  %i.qk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body211 unwind label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ql = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i325: ; preds = %_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter11maybe_flush.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit329 unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit329: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep.exit331 unwind label %bb.gv

bb.gv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit329
  %i.qm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %common.resume unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.qn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsbNLsQi0JuJ4_5tgrep6outputNtB5_12OutputWriter12display_path(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !17, !noundef !5
  switch i64 %i.k, label %default.unreachable35 [
    i64 0, label %bb.b
    i64 1, label %bb.f
    i64 2, label %bb.j
  ]

default.unreachable35:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !736
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !736
  %i.l = load i64, ptr %i.d, align 8, !range !8, !noalias !736, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !22, !noalias !736, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.p, align 8, !noalias !736
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #33, !noalias !736
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.p, align 8, !noalias !736, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = icmp ule i64 %3, %i.o
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !736
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_RNvNtCsbNLsQi0JuJ4_5tgrep6output17native_separators.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !noalias !735
  br label %_RNvNtCsbNLsQi0JuJ4_5tgrep6output17native_separators.exit

_RNvNtCsbNLsQi0JuJ4_5tgrep6output17native_separators.exit: ; preds = %bb.d, %bb.e
  store i64 %i.o, ptr %i.i, align 8, !alias.scope !735
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !735
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %3, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !735
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.t, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !738
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !738
  %i.u = load i64, ptr %i.c, align 8, !range !8, !noalias !738, !noundef !5
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !22, !noalias !738, !noundef !5 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.y, align 8, !noalias !738
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #33, !noalias !738
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !738, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = icmp ule i64 %3, %i.x
  tail call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !738
  %.not.i15 = icmp eq i64 %3, 0
  br i1 %.not.i15, label %_RNvNtCsbNLsQi0JuJ4_5tgrep6output17native_separators.exit18, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !noalias !737
  br label %_RNvNtCsbNLsQi0JuJ4_5tgrep6output17native_separators.exit18

_RNvNtCsbNLsQi0JuJ4_5tgrep6output17native_separators.exit18: ; preds = %bb.h, %bb.i
  store i64 %i.x, ptr %i.f, align 8, !alias.scope !737
  %.sroa.4.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i16, align 8, !alias.scope !737
  %.sroa.6.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %3, ptr %.sroa.6.0..sroa_idx.i17, align 8, !alias.scope !737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCsbNLsQi0JuJ4_5tgrep, ptr %.sroa.44.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.ac, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @83, ptr noundef nonnull %i.e)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit, %bb.j, %_RNvNtCsbNLsQi0JuJ4_5tgrep6output17native_separators.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.af = load i64, ptr %i.ae, align 8, !range !10, !noundef !5
  %.not = icmp eq i64 %i.af, -1
  br i1 %.not, label %bb.ae, label %bb.p

bb.l:                                             ; preds = %_RNvNtCsbNLsQi0JuJ4_5tgrep6output17native_separators.exit18
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #31
          to label %common.resume unwind label %bb.o

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvNtCsbNLsQi0JuJ4_5tgrep6output17native_separators.exit18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.m

bb.m:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.ai, %bb.l, %.body, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.l ], [ %i.ah, %bb.m ], [ %eh.lpad-body, %.body ], [ %i.dm, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbNLsQi0JuJ4_5tgrep.exit
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.k

bb.o:                                             ; preds = %.body, %bb.l
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
end_hunk_1
