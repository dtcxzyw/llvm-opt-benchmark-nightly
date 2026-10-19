Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/gui?download=true
inline.NumInlined: 1288
inline.NumDeleted: 611
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4pbrt3GUI14RefreshDisplayEv:bb.a
  %i.ap = load ptr, ptr @glad_glDrawPixels, align 8, !tbaa !74
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !325
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.at = load i32, ptr %i.as, align 8, !tbaa !326
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !66
  call void %i.ap(i32 noundef %i.ar, i32 noundef %i.at, i32 noundef 6407, i32 noundef 5126, ptr noundef %i.av)
  %i.aw = load ptr, ptr @glad_glGetError, align 8, !tbaa !74
  %i.ax = call i32 %i.aw()                        ; 2 uses
  %.not39 = icmp eq i32 %i.ax, 0
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.ay = call noundef ptr @_ZN4pbrt16getGLErrorStringEj(i32 noundef %i.ax)
  store ptr %i.ay, ptr %i.i, align 8, !tbaa !68
  call void @_ZN4pbrt8LogFatalIJPKcEEEvNS_8LogLevelES2_iS2_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 294, ptr noundef nonnull @.str.16, ptr noundef nonnull align 8 dereferenceable(8) %i.i) #30
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !65
  call void @glfwSwapBuffers(ptr noundef %i.az)
  call void @glfwPollEvents()
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !41, !range !42, !noundef !43
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.l, label %bb.aa

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !66 ; 2 uses
  %.not40 = icmp eq ptr %i.bd, null
  br i1 %.not40, label %bb.aa, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.be = load i32, ptr %i.a, align 4, !tbaa !15
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bg, ptr %4, align 8, !tbaa !70
  store i8 82, ptr %i.bg, align 8, !tbaa !45
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.bh, align 8, !tbaa !72
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.bi, align 1, !tbaa !45
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !70
  store i8 71, ptr %i.bk, align 8, !tbaa !45
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 1, ptr %i.bl, align 8, !tbaa !72
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 49
  store i8 0, ptr %i.bm, align 1, !tbaa !45
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !70
  store i8 66, ptr %i.bo, align 8, !tbaa !45
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 1, ptr %i.bp, align 8, !tbaa !72
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 81
  store i8 0, ptr %i.bq, align 1, !tbaa !45
  store i64 0, ptr %5, align 8, !tbaa !76
  %i.br = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25
  %.sroa.268.0.insert.ext = zext i32 %i.bf to i64
  %.sroa.268.0.insert.shift = shl nuw i64 %.sroa.268.0.insert.ext, 32
  %.sroa.067.0.insert.ext = zext i32 %i.be to i64
  %.sroa.067.0.insert.insert = or disjoint i64 %.sroa.268.0.insert.shift, %.sroa.067.0.insert.ext
  %i.bs = ptrtoint ptr %i.br to i64
  invoke void @_ZN4pbrt5ImageC1ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %3, i32 noundef 2, i64 %.sroa.067.0.insert.insert, ptr nonnull %4, i64 3, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %5, i64 %i.bs)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !73 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !45
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !73 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !45
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.cf = load ptr, ptr %4, align 8, !tbaa !73    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !45
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ck = load i32, ptr %3, align 8, !tbaa !332   ; 2 uses
  %i.cl = icmp ult i32 %i.ck, 3
  br i1 %i.cl, label %switch.lookup, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  invoke void @_ZN4pbrt8LogFatalIJRA16_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef 389, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(16) @.str.31) #30
          to label %.noexc54 unwind label %bb.y

.noexc54:                                         ; preds = %bb.n
  unreachable

switch.lookup:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.cm = shl nuw nsw i32 %i.ck, 5
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !74
  %i.cr = load i32, ptr %i.a, align 4, !tbaa !15
  %i.cs = load i32, ptr %i.b, align 4, !tbaa !15
  %i.ct = mul nsw i32 %i.cs, %i.cr
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul nsw i64 %i.cu, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr nonnull align 4 %i.bd, i64 %i.cv, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %.val = load i32, ptr %i.cw, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %.val, ptr %i.cx, align 8, !tbaa !335, !alias.scope !333
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.cy, ptr noundef nonnull align 8 dereferenceable(152) %3, i64 12, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !89, !noalias !333
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !89, !alias.scope !333
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !90, !noalias !333
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !90, !alias.scope !333
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !91, !noalias !333
  store i64 %i.di, ptr %i.dd, align 8, !tbaa !91, !alias.scope !333
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !92, !noalias !333
  store ptr %i.dk, ptr %i.dc, align 8, !tbaa !92, !alias.scope !333
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i8 0, i64 24, i1 false), !noalias !333
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dn = load <2 x i64>, ptr %i.dm, align 8, !tbaa !45, !noalias !333
  store <2 x i64> %i.dn, ptr %i.dl, align 8, !tbaa !45, !alias.scope !333
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.dr = load <2 x i64>, ptr %i.dq, align 8, !tbaa !93, !noalias !333
  store <2 x i64> %i.dr, ptr %i.dp, align 8, !tbaa !93, !alias.scope !333
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !94, !noalias !333
  store ptr %i.dt, ptr %i.do, align 8, !tbaa !94, !alias.scope !333
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i8 0, i64 24, i1 false), !noalias !333
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !89, !noalias !333
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !89, !alias.scope !333
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ea = load <2 x i64>, ptr %i.dz, align 8, !tbaa !93, !noalias !333
  store <2 x i64> %i.ea, ptr %i.dy, align 8, !tbaa !93, !alias.scope !333
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !95, !noalias !333
  store ptr %i.ec, ptr %i.dx, align 8, !tbaa !95, !alias.scope !333
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i8 0, i64 24, i1 false), !noalias !333
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !89, !noalias !333
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !89, !alias.scope !333
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.ej = load <2 x i64>, ptr %i.ei, align 8, !tbaa !93, !noalias !333
  store <2 x i64> %i.ej, ptr %i.eh, align 8, !tbaa !93, !alias.scope !333
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !96, !noalias !333
  store ptr %i.el, ptr %i.eg, align 8, !tbaa !96, !alias.scope !333
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i8 0, i64 24, i1 false), !noalias !333
  %i.em = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #27
          to label %bb.o unwind label %6          ; 14 uses

bb.o:                                             ; preds = %switch.lookup
  %i.en = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #27
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %.body.i ; 16 uses

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.o
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load i32, ptr %i.cx, align 8, !tbaa !15
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !15
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.eq, ptr noundef nonnull align 8 dereferenceable(152) %i.cy, i64 12, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.es = load i64, ptr %i.cz, align 8, !tbaa !89
  store i64 %i.es, ptr %i.er, align 8, !tbaa !89
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  %i.ew = load i64, ptr %i.de, align 8, !tbaa !90
  store i64 %i.ew, ptr %i.ev, align 8, !tbaa !90
  %i.ex = load i64, ptr %i.dd, align 8, !tbaa !91
  store i64 %i.ex, ptr %i.eu, align 8, !tbaa !91
  %i.ey = load ptr, ptr %i.dc, align 8, !tbaa !92
  store ptr %i.ey, ptr %i.et, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i8 0, i64 24, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %i.fa = load <2 x i64>, ptr %i.dl, align 8, !tbaa !45
  store <2 x i64> %i.fa, ptr %i.ez, align 8, !tbaa !45
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 80
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 88
  %i.fd = load <2 x i64>, ptr %i.dp, align 8, !tbaa !93
  store <2 x i64> %i.fd, ptr %i.fc, align 8, !tbaa !93
  %i.fe = load ptr, ptr %i.do, align 8, !tbaa !94
  store ptr %i.fe, ptr %i.fb, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, i8 0, i64 24, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.en, i64 104
  %i.fg = load i64, ptr %i.du, align 8, !tbaa !89
  store i64 %i.fg, ptr %i.ff, align 8, !tbaa !89
  %i.fh = getelementptr inbounds nuw i8, ptr %i.en, i64 112
  %i.fi = getelementptr inbounds nuw i8, ptr %i.en, i64 120
  %i.fj = load <2 x i64>, ptr %i.dy, align 8, !tbaa !93
  store <2 x i64> %i.fj, ptr %i.fi, align 8, !tbaa !93
  %i.fk = load ptr, ptr %i.dx, align 8, !tbaa !95
  store ptr %i.fk, ptr %i.fh, align 8, !tbaa !95
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i8 0, i64 24, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.en, i64 136
  %i.fm = load i64, ptr %i.ed, align 8, !tbaa !89
  store i64 %i.fm, ptr %i.fl, align 8, !tbaa !89
  %i.fn = getelementptr inbounds nuw i8, ptr %i.en, i64 144
  %i.fo = getelementptr inbounds nuw i8, ptr %i.en, i64 152
  %i.fp = load <2 x i64>, ptr %i.eh, align 8, !tbaa !93
  store <2 x i64> %i.fp, ptr %i.fo, align 8, !tbaa !93
  %i.fq = load ptr, ptr %i.eg, align 8, !tbaa !96
  store ptr %i.fq, ptr %i.fn, align 8, !tbaa !96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i8 0, i64 24, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i32 0, ptr %i.fr, align 8, !tbaa !336
  %i.fs = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.fs, i8 0, i64 17, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pbrt8AsyncJobIiEE, i64 16), ptr %i.em, align 8, !tbaa !100
  %i.ft = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.fu = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  store ptr @"_ZNSt17_Function_handlerIFivESt5_BindIFZN4pbrt3GUI14RefreshDisplayEvE3$_0NS2_5ImageEiEEE9_M_invokeERKSt9_Any_data", ptr %i.fu, align 8, !tbaa !102
  %i.fv = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  store ptr %i.en, ptr %i.ft, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  store ptr @"_ZNSt17_Function_handlerIFivESt5_BindIFZN4pbrt3GUI14RefreshDisplayEvE3$_0NS2_5ImageEiEEE10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.fv, align 8, !tbaa !54
  %i.fw = getelementptr inbounds nuw i8, ptr %i.em, i64 72
  store i8 0, ptr %i.fw, align 8, !tbaa !109
  %i.fx = getelementptr inbounds nuw i8, ptr %i.em, i64 80
  store i8 0, ptr %i.fx, align 8, !tbaa !110
  %i.fy = getelementptr inbounds nuw i8, ptr %i.em, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fy, i8 0, i64 40, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.em, i64 128
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.fz) #25
  %i.ga = invoke noundef i32 @_ZN4pbrt14RunningThreadsEv()
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.gb = icmp eq i32 %i.ga, 1
  br i1 %i.gb, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4pbrt8AsyncJobIiE6DoWorkEv(ptr noundef nonnull align 8 dereferenceable(176) %i.em)
          to label %bb.w unwind label %bb.r

6:                                                ; preds = %switch.lookup
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit19.i

.body.i:                                          ; preds = %bb.o
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 176) #28
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit19.i

bb.r:                                             ; preds = %bb.q, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit19.i

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ge = load ptr, ptr @_ZN4pbrt11ParallelJob10threadPoolE, align 8, !tbaa !112
  invoke void @_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_lock") align 8 %2, ptr noundef nonnull align 8 dereferenceable(128) %i.ge, ptr noundef nonnull %i.em)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit19.i

bb.u:                                             ; preds = %bb.s
  %i.gg = load ptr, ptr %2, align 8, !tbaa !115   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !116, !range !42, !noundef !43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.gj = trunc nuw i8 %i.gi to i1
  %.not.i.i15.i = icmp ne ptr %i.gg, null
  %or.cond.not.i = select i1 %i.gj, i1 %.not.i.i15.i, i1 false
  br i1 %or.cond.not.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gk = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.gg) #25 ; 0 uses
  br label %bb.w

_ZNSt11unique_lockISt5mutexED2Ev.exit19.i:        ; preds = %bb.t, %bb.r, %.body.i, %6
  %.pn.pn.i = phi { ptr, i32 } [ %7, %6 ], [ %i.gc, %.body.i ], [ %i.gd, %bb.r ], [ %i.gf, %bb.t ]
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.cy) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %.body

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.q
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.cy) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.gl = load i32, ptr %i.cw, align 8, !tbaa !64
  %i.gm = add nsw i32 %i.gl, 1
  store i32 %i.gm, ptr %i.cw, align 8, !tbaa !64
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.aa

bb.x:                                             ; preds = %._crit_edge.i.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !73 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.x
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !45
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !73 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !45
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.1
  %i.ha = load ptr, ptr %4, align 8, !tbaa !73    ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.1
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !45
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.he) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.z

bb.y:                                             ; preds = %bb.n
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit19.i, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.hf, %bb.y ], [ %.pn.pn.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit19.i ]
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %3) #25
  br label %bb.z

bb.z:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.2
  %.pn44 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %.pn44

bb.aa:                                            ; preds = %bb.l, %bb.w, %bb.k
  %i.hg = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.hh = call i32 @glfwWindowShouldClose(ptr noundef %i.hg)
  %.not = icmp eq i32 %i.hh, 0
  br i1 %.not, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hi = call noundef zeroext i1 @_ZN4pbrt3GUI11processKeysEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
  %i.hj = call noundef zeroext i1 @_ZN4pbrt3GUI12processMouseEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
  %i.hk = or i1 %i.hi, %i.hj
  %. = select i1 %i.hk, i32 1, i32 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.028 = phi i32 [ 0, %bb.aa ], [ %., %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.028
}

declare void @glfwGetFramebufferSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glfwGetWindowSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJPKcEEEvNS_8LogLevelES2_iS2_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !70, !alias.scope !339
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !72, !alias.scope !339
  store i8 0, ptr %i.a, align 8, !tbaa !45, !alias.scope !339
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIPKcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN4pbrt12StringPrintfIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !73, !alias.scope !339 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !45, !alias.scope !339
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !73
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !73     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !45
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume
}

declare void @glfwSwapBuffers(ptr noundef) local_unnamed_addr #2

declare void @glfwPollEvents() local_unnamed_addr #2

declare void @_ZN4pbrt5ImageC1ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef, i64, ptr, i64, ptr nofree noundef align 8 dead_on_return dereferenceable(8), i64) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.a, align 8, !tbaa !117
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i64, ptr %i.e, align 8, !tbaa !118
  %i.g = shl i64 %i.f, 2
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !119  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.c, i64 noundef %i.g, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit unwind label %bb.c, !inline_history !340

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #29
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.n, align 8, !tbaa !120
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !95   ; 2 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.p, null
end_hunk_0
