Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.02?download=true
inline.NumInlined: 782
inline.NumDeleted: 344
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCsbNLsQi0JuJ4_5tgrep6search10list_files:bb.a
  store i64 %i.ba, ptr %i.ay, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %i.bb, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @_RINvNtCs5Xr050g3D4S_3std2fs12canonicalizeRNtNtB4_4path4PathECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %i.bd = load i64, ptr %i.aw, align 8, !range !15, !noundef !6
  %i.be = icmp eq i64 %i.bd, -1
  br i1 %i.be, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val122 = load ptr, ptr %i.bf, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.bg = ptrtoint ptr %.val122 to i64            ; 4 uses
  %i.bh = and i64 %i.bg, 3                        ; 2 uses
  switch i64 %i.bh, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 0, label %bb.e
    i64 1, label %bb.f
  ], !prof !18

default.unreachable:                              ; preds = %bb.fl, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.bi = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.fq

.noexc:                                           ; preds = %bb.c
  %i.bj = lshr i64 %i.bg, 32
  %i.bk = trunc nuw i64 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !6, !noundef !6
  %i.bn = invoke noundef i8 %i.bm(i32 noundef %i.bk)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.fq, !inline_history !0

bb.d:                                             ; preds = %bb.b
  %i.bo = lshr i64 %i.bg, 32
  %i.bp = icmp ult ptr %.val122, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.bo to i8  ; 2 uses
  %i.bq = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.bp)
  call void @llvm.assume(i1 %i.bq)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.e:                                             ; preds = %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %.val122, i64 16
  %i.bs = load i8, ptr %i.br, align 8, !range !22, !noundef !6
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.f:                                             ; preds = %bb.b
  %i.bt = getelementptr i8, ptr %.val122, i64 31
  %i.bu = load i8, ptr %i.bt, align 8, !range !22, !noundef !6
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !441, !nonnull !6, !noundef !6
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !441, !noundef !6
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !441, !nonnull !6, !noundef !6
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 296
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !441, !noundef !6
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 582
  %i.ce = load i8, ptr %i.cd, align 2, !range !8, !alias.scope !441, !noundef !6
  %i.cf = trunc nuw i8 %i.ce to i1
  invoke void @_RNvMs_NtCsbNLsQi0JuJ4_5tgrep11glob_filterNtB4_10GlobFilter3new(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bw, i64 noundef %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ca, i64 noundef %i.cc, i1 noundef zeroext %i.cf)
          to label %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions11glob_filter.exit unwind label %bb.h

.body169:                                         ; preds = %bb.fd, %bb.ff, %bb.h, %bb.k
  %.pn117 = phi { ptr, i32 } [ %.pn115, %bb.k ], [ %i.cg, %bb.h ], [ %i.nv, %bb.ff ], [ %i.ns, %bb.fd ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax) #22
          to label %common.resume unwind label %bb.ax

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringbEEECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.g, %bb.eh
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body169

_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions11glob_filter.exit: ; preds = %bb.g
  %i.ch = load i64, ptr %i.au, align 8, !range !15, !noundef !6 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, -1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions11glob_filter.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep11glob_filter10GlobFilterEBF_.exit

bb.j:                                             ; preds = %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions11glob_filter.exit
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.560.0..sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  store i64 %i.ch, ptr %i.av, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.ck, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 360
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !442, !nonnull !6, !noundef !6
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 368
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !442, !noundef !6
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 384
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !442, !nonnull !6, !noundef !6
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 392
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !442, !noundef !6
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 312
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !442, !nonnull !6, !noundef !6
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 320
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !442, !noundef !6
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 336
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !442, !nonnull !6, !noundef !6
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 344
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !442, !noundef !6
  invoke void @_RNvNtCsbNLsQi0JuJ4_5tgrep6search17build_type_filter(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cm, i64 noundef %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cq, i64 noundef %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cu, i64 noundef %i.cw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cy, i64 noundef %i.da)
          to label %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions11type_filter.exit unwind label %bb.l

bb.k:                                             ; preds = %.body, %bb.l
  %.pn115 = phi { ptr, i32 } [ %i.db, %bb.l ], [ %.pn113, %.body ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep11glob_filter10GlobFilterEBF_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.av) #22
          to label %.body169 unwind label %bb.ax

bb.l:                                             ; preds = %bb.j, %bb.em, %bb.eg
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions11type_filter.exit: ; preds = %bb.j
  %i.dc = load i64, ptr %i.as, align 8, !range !17, !noundef !6 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, -2
  %i.de = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  br i1 %i.dd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions11type_filter.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.fc

bb.n:                                             ; preds = %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions11type_filter.exit
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.520.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.563.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 %i.dc, ptr %i.at, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.df, ptr %.sroa.419.0..sroa_idx, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 10 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !6, !noundef !6
  %i.di = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 10 uses
  %i.dj = load i64, ptr %i.di, align 8, !noundef !6
  %i.dk = invoke noundef zeroext i1 @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path7is_file(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dh, i64 noundef %i.dj)
          to label %bb.p unwind label %bb.o

.body:                                            ; preds = %bb.ez, %bb.bv, %bb.o, %bb.ep, %.body146
  %.pn113 = phi { ptr, i32 } [ %.pn107, %.body146 ], [ %.pn111, %bb.ep ], [ %i.ik, %bb.bv ], [ %i.dl, %bb.o ], [ %i.nq, %bb.ez ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core9filetypes10TypeFilterECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(64) %i.at) #22
          to label %bb.k unwind label %bb.ax

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.t, %bb.ef, %bb.s, %bb.r, %bb.n
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.n
  br i1 %i.dk, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.dm = load ptr, ptr %i.dg, align 8, !nonnull !6, !noundef !6
  %i.dn = load i64, ptr %i.di, align 8, !noundef !6
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep6search26explicit_file_display_path(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef %i.dn)
          to label %bb.en unwind label %bb.o

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.v unwind label %bb.o

bb.t:                                             ; preds = %bb.q
  %.val123 = load ptr, ptr %i.dg, align 8, !nonnull !6, !noundef !6
  %.val124 = load i64, ptr %i.di, align 8, !noundef !6
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder17default_index_dir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val123, i64 noundef %.val124)
          to label %_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search10list_files0B5_.exit unwind label %bb.o

_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search10list_files0B5_.exit: ; preds = %bb.t, %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 581
  %i.dp = load i8, ptr %i.do, align 1, !range !8, !alias.scope !443, !noundef !6
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 589
  %i.dr = load i8, ptr %i.dq, align 1, !range !8, !alias.scope !443
  %.fr229 = freeze i8 %i.dr
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 611
  %i.dt = load i8, ptr %i.ds, align 1, !range !8, !alias.scope !443
  %.fr235 = freeze i8 %i.dt
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 612
  %i.dv = load i8, ptr %i.du, align 4, !range !8, !alias.scope !443
  %.fr230 = freeze i8 %i.dv
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 613
  %i.dx = load <4 x i8>, ptr %i.dw, align 1, !alias.scope !443
  %.fr = freeze <4 x i8> %i.dx
  %i.dy = trunc <4 x i8> %.fr to <4 x i1>
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 597
  %i.ea = load i8, ptr %i.dz, align 1, !range !8, !alias.scope !443
  %.fr233 = freeze i8 %i.ea
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 609
  %i.ec = load i8, ptr %i.eb, align 1, !range !8, !alias.scope !443
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = bitcast <4 x i1> %i.dy to i4
  %i.ef = icmp ne i4 %i.ee, 0
  %5 = or i8 %.fr230, %.fr233
  %.fr229.masked = and i8 %.fr229, 1
  %6 = or i8 %.fr229.masked, %i.dp
  %7 = icmp ne i8 %6, 0
  %8 = or i1 %i.ef, %7
  %9 = or i8 %5, %.fr235
  %10 = trunc i8 %9 to i1
  %11 = or i1 %8, %10
  %op.rdx228 = select i1 %11, i1 true, i1 %i.ed
  br i1 %op.rdx228, label %_RNvNtCsbNLsQi0JuJ4_5tgrep6search25filename_index_compatible.exit.thread, label %bb.u

bb.u:                                             ; preds = %_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search10list_files0B5_.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 464
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !443, !noundef !6 ; 2 uses
  %i.ei = icmp ult i64 %i.eh, 384307168202282326
  call void @llvm.assume(i1 %i.ei)
  %i.ej = icmp ne i64 %i.eh, 0
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 610
  %i.el = load i8, ptr %i.ek, align 2, !range !8, !alias.scope !443
  %i.em = trunc nuw i8 %i.el to i1
  %or.cond29.i = select i1 %i.ej, i1 true, i1 %i.em
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 596
  %i.eo = load i8, ptr %i.en, align 4, !range !8
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = select i1 %or.cond29.i, i1 true, i1 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %.val125 = load i64, ptr %i.er, align 8
  %i.es = icmp ne i64 %.val125, 0
  %or.cond189 = select i1 %i.eq, i1 true, i1 %i.es
  br i1 %or.cond189, label %_RNvNtCsbNLsQi0JuJ4_5tgrep6search25filename_index_compatible.exit.thread, label %bb.w

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search10list_files0B5_.exit

.body146:                                         ; preds = %bb.ck, %bb.cc, %.split, %bb.aa, %bb.ab, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep.exit155, %bb.ch, %bb.bz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityECsbNLsQi0JuJ4_5tgrep.exit
  %.pn107 = phi { ptr, i32 } [ %i.im, %bb.cc ], [ %.pn105, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep.exit155 ], [ %i.ja, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.it, %bb.ch ], [ %i.ij, %.split ], [ %.pn102180, %bb.bz ], [ %.pn100, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.iy, %bb.ck ], [ %.pn93, %bb.ab ], [ %.pn93, %bb.aa ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #22
          to label %.body unwind label %bb.ax

_RNvNtCsbNLsQi0JuJ4_5tgrep6search25filename_index_compatible.exit.thread: ; preds = %_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search10list_files0B5_.exit, %bb.u, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.et = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !nonnull !6, !noundef !6
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !noundef !6
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep6search24index_storage_exclusions(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eu, i64 noundef %i.ew)
          to label %bb.ce unwind label %.split

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !6, !noundef !6
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 4 uses
  %i.fa = load i64, ptr %i.ez, align 8, !noundef !6
  invoke void @_RNvMs_NtCsbNLsQi0JuJ4_5tgrep5serveNtB4_10ServerInfo4load(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ey, i64 noundef %i.fa)
          to label %bb.x unwind label %.split

bb.x:                                             ; preds = %bb.w
  %i.fb = load i32, ptr %i.an, align 8, !range !23, !noundef !6
  %i.fc = trunc nuw i32 %i.fb to i1
  br i1 %i.fc, label %.thread, label %bb.z

bb.y:                                             ; preds = %bb.ad, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %.pre = load i32, ptr %i.an, align 8, !range !23
  %i.fd = trunc nuw i32 %.pre to i1
  br i1 %i.fd, label %.thread, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbNLsQi0JuJ4_5tgrep5serve10ServerInfoNtCsjYKKaZ3qa7A_6anyhow5ErrorEEB11_.exit135

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !noundef !6
  %i.fg = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.fh = load i16, ptr %i.fg, align 8, !noundef !6
  store i32 %i.ff, ptr %i.am, align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i16 %i.fh, ptr %i.fi, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.fj = load ptr, ptr %i.ex, align 8, !nonnull !6, !noundef !6
  %i.fk = load i64, ptr %i.ez, align 8, !noundef !6
  %i.fl = load ptr, ptr %i.dg, align 8, !nonnull !6, !noundef !6
  %i.fm = load i64, ptr %i.di, align 8, !noundef !6
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep6search13resolve_scope(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fj, i64 noundef %i.fk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fl, i64 noundef %i.fm)
          to label %bb.ad unwind label %bb.ac

bb.aa:                                            ; preds = %bb.ar, %bb.ac
  %.pn93 = phi { ptr, i32 } [ %i.fp, %bb.ac ], [ %.pn91, %bb.ar ] ; 2 uses
  %i.fn = load i32, ptr %i.an, align 8, !range !23, !alias.scope !444, !noundef !6
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %.body146, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXs4_NtCsjYKKaZ3qa7A_6anyhow5errorNtB7_5ErrorNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fg)
          to label %.body146 unwind label %bb.ax

bb.ac:                                            ; preds = %bb.ba, %bb.at, %bb.z
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ad:                                            ; preds = %bb.z
  %i.fq = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 3 uses
  %i.fr = load i64, ptr %i.fq, align 8, !range !14, !noundef !6
  %.not87 = icmp eq i64 %i.fr, -1
  br i1 %.not87, label %bb.y, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.fq, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  invoke fastcc void @_RNvNtCsbNLsQi0JuJ4_5tgrep6search21list_files_via_server(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(624) %4)
          to label %bb.ah unwind label %bb.ag

bb.af:                                            ; preds = %bb.aw, %bb.aj, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.fs, %bb.ag ], [ %i.gc, %bb.aj ], [ %i.gc, %bb.aw ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6search10IndexScopeEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aj) #22
          to label %bb.ar unwind label %bb.ax

bb.ag:                                            ; preds = %bb.ay, %bb.ap, %bb.ae
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ah:                                            ; preds = %bb.ae
  %i.ft = load i64, ptr %i.ai, align 8, !range !15, !noundef !6
  %i.fu = icmp eq i64 %i.ft, -1
  br i1 %i.fu, label %bb.ay, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !6, !noundef !6
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !6
  %i.fz = load ptr, ptr %i.dg, align 8, !nonnull !6, !noundef !6
  %i.ga = load i64, ptr %i.di, align 8, !noundef !6
  %i.gb = invoke fastcc noundef ptr @_RINvNtCsbNLsQi0JuJ4_5tgrep6search24write_indexed_file_pathsINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB10_6string6StringEEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fw, i64 noundef %i.fy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fz, i64 noundef %i.ga, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(624) %4)
          to label %bb.ak unwind label %bb.aj     ; 2 uses

bb.aj:                                            ; preds = %bb.am, %bb.al, %bb.ai
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gd = load i64, ptr %i.ai, align 8, !range !15, !noundef !6
  %.not89 = icmp eq i64 %i.gd, -1
  br i1 %.not89, label %bb.aw, label %bb.af

bb.ak:                                            ; preds = %bb.ai
  %.not88 = icmp eq ptr %i.gb, null
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 580
  %i.gf = load i8, ptr %i.ge, align 4, !range !8
  %i.gg = trunc nuw i8 %i.gf to i1
  %or.cond192 = select i1 %.not88, i1 %i.gg, i1 false
  br i1 %or.cond192, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.gh = invoke { i64, i32 } @_RNvMNtCs5Xr050g3D4S_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ay)
          to label %bb.am unwind label %bb.aj     ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.gi = extractvalue { i64, i32 } %i.gh, 0
  %i.gj = extractvalue { i64, i32 } %i.gh, 1      ; 2 uses
  %i.gk = uitofp i64 %i.gi to double
  %i.gl = icmp ult i32 %i.gj, 1000000000
  call void @llvm.assume(i1 %i.gl)
  %i.gm = uitofp nneg i32 %i.gj to double
  %i.gn = fdiv nnan double %i.gm, 1.000000e+09
  %i.go = fadd nnan double %i.gn, %i.gk
  %i.gp = fmul nnan double %i.go, 1.000000e+03
  store double %i.gp, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ag, ptr %i.af, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXs7_NtNtCsf3Ta7LF998c_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.467.0..sroa_idx, align 8
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @23, ptr noundef nonnull %i.af)
          to label %bb.an unwind label %bb.aj

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.gq = load i64, ptr %i.ai, align 8, !range !15, !noundef !6
  %i.gr = icmp eq i64 %i.gq, -1
  br i1 %i.gr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB12_6string6StringENtCsjYKKaZ3qa7A_6anyhow5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai)
          to label %bb.aq unwind label %bb.ag

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6search10IndexScopeEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aj)
          to label %bb.at unwind label %bb.as

bb.ar:                                            ; preds = %bb.as, %bb.af
  %.pn91 = phi { ptr, i32 } [ %i.gs, %bb.as ], [ %.pn, %bb.af ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #22
          to label %bb.aa unwind label %bb.ax
end_hunk_0
