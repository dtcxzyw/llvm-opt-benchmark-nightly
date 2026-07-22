inline.NumInlined: 5513
inline.NumDeleted: 2439
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@"_ZNSt17_Function_handlerIFvvEZNK6google8protobuf8compiler10objectivec13FileGenerator14GenerateHeaderEPNS2_2io7PrinterESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E9_M_invokeERKSt9_Any_data":bb.a
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.bt = load i64, ptr %i.ad, align 8, !tbaa !12
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.m

bb.j:                                             ; preds = %._crit_edge219.i.i.i, %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit144._crit_edge.i.i.i, %bb.ak, %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit140.i.i.i, %bb.aj, %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit135.i.i.i, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i.i.i, %bb.m, %._crit_edge.i.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i.i

bb.l:                                             ; preds = %bb.h
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %6) #29
  %i.by = load ptr, ptr %8, align 8, !tbaa !182   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.aw
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i.i: ; preds = %bb.l
  %i.ca = load i64, ptr %i.aw, align 8, !tbaa !12
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i.i, %bb.k
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.bw, %bb.k ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i.i ], [ %i.bx, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.cc = load ptr, ptr %7, align 8, !tbaa !182   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ad
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i.i
  %i.ce = load i64, ptr %i.ad, align 8, !tbaa !12
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.ar

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i.i.i, %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit.i.i.i
  %i.cg = load ptr, ptr %i.m, align 8, !tbaa !899, !nonnull !16, !align !372
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !337
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.ch, ptr null, i64 0, i64 25, ptr nonnull @.str.72)
          to label %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit77.i.i.i unwind label %bb.j

_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit77.i.i.i: ; preds = %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !910, !nonnull !16, !align !372 ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !535
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit124.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i83.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i83.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit77.i.i.i
  %i.cm = load ptr, ptr %i.m, align 8, !tbaa !899, !nonnull !16, !align !372
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !337
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.co, ptr noundef nonnull align 1 dereferenceable(9) @.str.73, i64 9, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 25
  store i8 0, ptr %i.cq, align 1, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.cr, ptr %9, align 8, !tbaa !216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.cr, ptr noundef nonnull align 8 dereferenceable(10) %i.co, i64 10, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 9, ptr %i.cs, align 8, !tbaa !178
  store ptr %i.co, ptr %10, align 8, !tbaa !182
  store i64 0, ptr %i.cp, align 8, !tbaa !178
  store i8 0, ptr %i.co, align 8, !tbaa !12
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.cj, align 8, !tbaa !89 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !452 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29, !noalias !911
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.cu, ptr %1, align 8, !tbaa !216, !noalias !911
  %i.cv = icmp eq ptr %.sroa.2.0.copyload.i.i.i.i, null
  %i.cw = icmp ne i64 %.sroa.0.0.copyload.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i = and i1 %i.cw, %i.cv
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i, label %bb.n

.noexc.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i83.i.i.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.64) #31
          to label %.noexc150.i.i.i unwind label %bb.s

.noexc150.i.i.i:                                  ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i83.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !911
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.a, align 8, !tbaa !89, !noalias !911
  %i.cx = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i, 15
  br i1 %i.cx, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.n
  %i.cy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc151.i.i.i unwind label %bb.s ; 2 uses

.noexc151.i.i.i:                                  ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.cy, ptr %1, align 8, !tbaa !182, !noalias !911
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !89, !noalias !911
  store i64 %i.cz, ptr %i.cu, align 8, !tbaa !12, !noalias !911
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc151.i.i.i, %bb.n
  %i.da = phi ptr [ %i.cy, %.noexc151.i.i.i ], [ %i.cu, %bb.n ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i.i.i.i, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.db = load i8, ptr %.sroa.2.0.copyload.i.i.i.i, align 1, !tbaa !12, !noalias !911
  store i8 %i.db, ptr %i.da, align 1, !tbaa !12, !noalias !911
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr align 1 %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i, i1 false), !noalias !911
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.dc = load i64, ptr %i.a, align 8, !tbaa !89, !noalias !911 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !178, !noalias !911
  %i.de = load ptr, ptr %1, align 8, !tbaa !182, !noalias !911
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc
  store i8 0, ptr %i.df, align 1, !tbaa !12, !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !911
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store ptr %i.dg, ptr %i.ct, align 8, !tbaa !216, !alias.scope !911
  %i.dh = load ptr, ptr %1, align 8, !tbaa !182, !noalias !911 ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cu
  br i1 %i.di, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.dj = load i64, ptr %i.dd, align 8, !tbaa !178, !noalias !911 ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 16
  call void @llvm.assume(i1 %i.dk)
  %i.dl = add nuw nsw i64 %i.dj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dg, ptr noundef nonnull align 8 dereferenceable(1) %i.cu, i64 %i.dl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i89.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q
  store ptr %i.dh, ptr %i.ct, align 8, !tbaa !182, !alias.scope !911
  %i.dm = load i64, ptr %i.cu, align 8, !tbaa !12, !noalias !911
  store i64 %i.dm, ptr %i.dg, align 8, !tbaa !12, !alias.scope !911
  %.pre.i.i149.i.i.i = load i64, ptr %i.dd, align 8, !tbaa !178, !noalias !911
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i89.i.i.i

bb.s:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %9, align 8, !tbaa !182   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cr
  br i1 %i.dp, label %.body.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.s
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !12
  br label %.body.i.i.i.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i89.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r
  %i.dr = phi i64 [ %i.dj, %bb.r ], [ %.pre.i.i149.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !178, !alias.scope !911
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i8 0, ptr %i.dt, align 8, !tbaa !517, !alias.scope !911
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !911
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !216
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 80
  store i64 0, ptr %i.dw, align 8, !tbaa !178
  store i8 0, ptr %i.dv, align 8, !tbaa !12
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i8 0, ptr %i.dx, align 8, !tbaa !519
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 176
  store i8 0, ptr %i.dy, align 8, !tbaa !527
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ea, ptr noundef nonnull align 1 dereferenceable(5) @.str.74, i64 5, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 21
  store i8 0, ptr %i.ec, align 1, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !371, !nonnull !16, !align !372 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 4 uses
  store ptr %i.ef, ptr %i.dz, align 8, !tbaa !216
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ef, ptr noundef nonnull align 8 dereferenceable(6) %i.ea, i64 6, i1 false)
  %.pre222.i.i.i = load ptr, ptr %i.eg, align 8, !tbaa !182 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 192
  store i64 5, ptr %i.eh, align 8, !tbaa !178
  store ptr %i.ea, ptr %11, align 8, !tbaa !182
  store i64 0, ptr %i.eb, align 8, !tbaa !178
  store i8 0, ptr %i.ea, align 8, !tbaa !12
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ej, ptr %3, align 8, !tbaa !216
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 144
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !178 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.el, ptr %i.c, align 8, !tbaa !89
  %i.em = icmp ugt i64 %i.el, 15
  br i1 %i.em, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i89.i.i.i
  %i.en = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i93.i.i.i unwind label %bb.w ; 2 uses

.noexc.i93.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i
  store ptr %i.en, ptr %3, align 8, !tbaa !182
  %i.eo = load i64, ptr %i.c, align 8, !tbaa !89
  store i64 %i.eo, ptr %i.ej, align 8, !tbaa !12
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc.i93.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i89.i.i.i
  %i.ep = phi ptr [ %i.en, %.noexc.i93.i.i.i ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i89.i.i.i ] ; 2 uses
  switch i64 %i.el, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.eq = load i8, ptr %.pre222.i.i.i, align 1, !tbaa !12
  store i8 %i.eq, ptr %i.ep, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ep, ptr align 1 %.pre222.i.i.i, i64 %i.el, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t, %._crit_edge.i.i.i.i.i.i.i
  %i.er = load i64, ptr %i.c, align 8, !tbaa !89  ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.er, ptr %i.es, align 8, !tbaa !178
  %i.et = load ptr, ptr %3, align 8, !tbaa !182
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.er
  store i8 0, ptr %i.eu, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 232 ; 3 uses
  store ptr %i.ev, ptr %i.ei, align 8, !tbaa !216, !alias.scope !914
  %i.ew = load ptr, ptr %3, align 8, !tbaa !182, !noalias !914 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.ej
  br i1 %i.ex, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i
  %i.ey = load i64, ptr %i.es, align 8, !tbaa !178, !noalias !914 ; 3 uses
  %i.ez = icmp ult i64 %i.ey, 16
  call void @llvm.assume(i1 %i.ez)
  %i.fa = add nuw nsw i64 %i.ey, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ev, ptr noundef nonnull align 8 dereferenceable(1) %i.ej, i64 %i.fa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i101.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i
  store ptr %i.ew, ptr %i.ei, align 8, !tbaa !182, !alias.scope !914
  %i.fb = load i64, ptr %i.ej, align 8, !tbaa !12, !noalias !914
  store i64 %i.fb, ptr %i.ev, align 8, !tbaa !12, !alias.scope !914
  %.pre.i.i.i.i.i.i = load i64, ptr %i.es, align 8, !tbaa !178, !noalias !914
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i101.i.i.i

bb.w:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %i.dz, align 8, !tbaa !182 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.ef
  br i1 %i.fe, label %.body94.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90.i.i.i: ; preds = %bb.w
  %i.ff = load i64, ptr %i.ef, align 8, !tbaa !12
  br label %.body94.i.i.i.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i101.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v
  %i.fg = phi i64 [ %i.ey, %bb.v ], [ %.pre.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 224
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !178, !alias.scope !914
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 248
  store i8 0, ptr %i.fi, align 8, !tbaa !517, !alias.scope !914
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 256
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 272 ; 2 uses
  store ptr %i.fk, ptr %i.fj, align 8, !tbaa !216
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 264
  store i64 0, ptr %i.fl, align 8, !tbaa !178
  store i8 0, ptr %i.fk, align 8, !tbaa !12
  %i.fm = getelementptr inbounds nuw i8, ptr %9, i64 288
  store i8 0, ptr %i.fm, align 8, !tbaa !519
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 360
  store i8 0, ptr %i.fn, align 8, !tbaa !527
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 368 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.fp, ptr noundef nonnull align 1 dereferenceable(6) @.str.75, i64 6, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i8 0, ptr %i.fr, align 2, !tbaa !12
  %i.fs = load ptr, ptr %i.ed, align 8, !tbaa !371, !nonnull !16, !align !372 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 384 ; 4 uses
  store ptr %i.ft, ptr %i.fo, align 8, !tbaa !216
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ft, ptr noundef nonnull align 8 dereferenceable(7) %i.fp, i64 7, i1 false)
  %.pre223.i.i.i = load ptr, ptr %i.fu, align 8, !tbaa !182 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %9, i64 376
  store i64 6, ptr %i.fv, align 8, !tbaa !178
  store ptr %i.fp, ptr %12, align 8, !tbaa !182
  store i64 0, ptr %i.fq, align 8, !tbaa !178
  store i8 0, ptr %i.fp, align 8, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %9, i64 400 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.fx, ptr %2, align 8, !tbaa !216
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 112
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !178 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.fz, ptr %i.b, align 8, !tbaa !89
  %i.ga = icmp ugt i64 %i.fz, 15
  br i1 %i.ga, label %.noexc.i.i.i106.i.i.i, label %._crit_edge.i.i.i.i102.i.i.i

.noexc.i.i.i106.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i101.i.i.i
  %i.gb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i110.i.i.i unwind label %bb.aa ; 2 uses

.noexc.i110.i.i.i:                                ; preds = %.noexc.i.i.i106.i.i.i
  store ptr %i.gb, ptr %2, align 8, !tbaa !182
  %i.gc = load i64, ptr %i.b, align 8, !tbaa !89
  store i64 %i.gc, ptr %i.fx, align 8, !tbaa !12
  br label %._crit_edge.i.i.i.i102.i.i.i

._crit_edge.i.i.i.i102.i.i.i:                     ; preds = %.noexc.i110.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i101.i.i.i
  %i.gd = phi ptr [ %i.gb, %.noexc.i110.i.i.i ], [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i101.i.i.i ] ; 2 uses
  switch i64 %i.fz, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i103.i.i.i
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i.i102.i.i.i
  %i.ge = load i8, ptr %.pre223.i.i.i, align 1, !tbaa !12
  store i8 %i.ge, ptr %i.gd, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i103.i.i.i

bb.y:                                             ; preds = %._crit_edge.i.i.i.i102.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gd, ptr align 1 %.pre223.i.i.i, i64 %i.fz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i103.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i103.i.i.i: ; preds = %bb.y, %bb.x, %._crit_edge.i.i.i.i102.i.i.i
  %i.gf = load i64, ptr %i.b, align 8, !tbaa !89  ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !178
  %i.gh = load ptr, ptr %2, align 8, !tbaa !182
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gf
  store i8 0, ptr %i.gi, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 416 ; 3 uses
  store ptr %i.gj, ptr %i.fw, align 8, !tbaa !216, !alias.scope !917
  %i.gk = load ptr, ptr %2, align 8, !tbaa !182, !noalias !917 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.fx
  br i1 %i.gl, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i104.i.i.i

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i103.i.i.i
  %i.gm = load i64, ptr %i.gg, align 8, !tbaa !178, !noalias !917 ; 3 uses
  %i.gn = icmp ult i64 %i.gm, 16
  call void @llvm.assume(i1 %i.gn)
  %i.go = add nuw nsw i64 %i.gm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gj, ptr noundef nonnull align 8 dereferenceable(1) %i.fx, i64 %i.go, i1 false)
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i104.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i103.i.i.i
  store ptr %i.gk, ptr %i.fw, align 8, !tbaa !182, !alias.scope !917
  %i.gp = load i64, ptr %i.fx, align 8, !tbaa !12, !noalias !917
  store i64 %i.gp, ptr %i.gj, align 8, !tbaa !12, !alias.scope !917
  %.pre.i.i.i105.i.i.i = load i64, ptr %i.gg, align 8, !tbaa !178, !noalias !917
  br label %bb.ab

bb.aa:                                            ; preds = %.noexc.i.i.i106.i.i.i
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = load ptr, ptr %i.fo, align 8, !tbaa !182 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.ft
  br i1 %i.gs, label %.body111.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107.i.i.i: ; preds = %bb.aa
  %i.gt = load i64, ptr %i.ft, align 8, !tbaa !12
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #33
  br label %.body111.i.i.i

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i104.i.i.i, %bb.z
  %i.gv = phi i64 [ %i.gm, %bb.z ], [ %.pre.i.i.i105.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i104.i.i.i ]
  %i.gw = getelementptr inbounds nuw i8, ptr %9, i64 408
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !178, !alias.scope !917
  %i.gx = getelementptr inbounds nuw i8, ptr %9, i64 432
  store i8 0, ptr %i.gx, align 8, !tbaa !517, !alias.scope !917
  %i.gy = getelementptr inbounds nuw i8, ptr %9, i64 440
  %i.gz = getelementptr inbounds nuw i8, ptr %9, i64 456 ; 2 uses
  store ptr %i.gz, ptr %i.gy, align 8, !tbaa !216
  %i.ha = getelementptr inbounds nuw i8, ptr %9, i64 448
  store i64 0, ptr %i.ha, align 8, !tbaa !178
  store i8 0, ptr %i.gz, align 8, !tbaa !12
  %i.hb = getelementptr inbounds nuw i8, ptr %9, i64 472
  store i8 0, ptr %i.hb, align 8, !tbaa !519
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.hc = getelementptr inbounds nuw i8, ptr %9, i64 544
  store i8 0, ptr %i.hc, align 8, !tbaa !527
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.cn, ptr nonnull %9, i64 3, i64 128, ptr nonnull @.str.76)
          to label %bb.ac unwind label %.body111.loopexit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.fo) #29
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.dz) #29
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %9) #29
  %i.hd = load ptr, ptr %12, align 8, !tbaa !182  ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.fp
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114.i.i.i: ; preds = %bb.ac
  %i.hf = load i64, ptr %i.fp, align 8, !tbaa !12
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114.i.i.i
  %i.hh = load ptr, ptr %11, align 8, !tbaa !182  ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.ea
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i.i.i
  %i.hj = load i64, ptr %i.ea, align 8, !tbaa !12
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i.i.i
  %i.hl = load ptr, ptr %10, align 8, !tbaa !182  ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.co
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i.i.i
  %i.hn = load i64, ptr %i.co, align 8, !tbaa !12
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.hp = load ptr, ptr %i.m, align 8, !tbaa !899, !nonnull !16, !align !372
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !337
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.hq, ptr null, i64 0, i64 1, ptr nonnull @.str.31)
          to label %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit124.i.i.i unwind label %bb.j

.body111.loopexit.i.i.i:                          ; preds = %bb.ab
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.fo) #29
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.dz) #29
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %9) #29
  br label %.body111.i.i.i

.body111.i.i.i:                                   ; preds = %bb.aa, %.body111.loopexit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107.i.i.i
  %i.hs = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107.i.i.i ], [ true, %.body111.loopexit.i.i.i ], [ false, %bb.aa ] ; 2 uses
  %.pn55.i.i.i = phi { ptr, i32 } [ %i.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107.i.i.i ], [ %i.hr, %.body111.loopexit.i.i.i ], [ %i.gq, %bb.aa ] ; 2 uses
  %i.ht = load ptr, ptr %12, align 8, !tbaa !182  ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.fp
  br i1 %i.hu, label %.body94.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i.i.i: ; preds = %.body111.i.i.i
  %i.hv = load i64, ptr %i.fp, align 8, !tbaa !12
  br label %.body94.i.i.i.sink.split

.body94.i.i.i.sink.split:                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i.i.i
  %.sink51 = phi i64 [ %i.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i.i.i ], [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90.i.i.i ]
  %.sink = phi ptr [ %i.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i.i.i ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90.i.i.i ]
  %.248.i.i.i.ph = phi i1 [ %i.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i.i.i ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90.i.i.i ]
  %.042.i.i.i.ph = phi ptr [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i.i.i ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90.i.i.i ]
  %.pn55.pn.pn.i.i.i.ph = phi { ptr, i32 } [ %.pn55.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i.i.i ], [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90.i.i.i ]
  %i.hw = add i64 %.sink51, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.hw) #33
  br label %.body94.i.i.i

.body94.i.i.i:                                    ; preds = %.body94.i.i.i.sink.split, %.body111.i.i.i, %bb.w
  %.248.i.i.i = phi i1 [ %i.hs, %.body111.i.i.i ], [ false, %bb.w ], [ %.248.i.i.i.ph, %.body94.i.i.i.sink.split ] ; 2 uses
  %.042.i.i.i = phi ptr [ %i.fo, %.body111.i.i.i ], [ %i.dz, %bb.w ], [ %.042.i.i.i.ph, %.body94.i.i.i.sink.split ] ; 2 uses
  %.pn55.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn55.i.i.i, %.body111.i.i.i ], [ %i.fc, %bb.w ], [ %.pn55.pn.pn.i.i.i.ph, %.body94.i.i.i.sink.split ] ; 2 uses
  %i.hx = load ptr, ptr %11, align 8, !tbaa !182  ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.ea
  br i1 %i.hy, label %.body.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i.i.i: ; preds = %.body94.i.i.i
  %i.hz = load i64, ptr %i.ea, align 8, !tbaa !12
  br label %.body.i.i.i.sink.split

.body.i.i.i.sink.split:                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i.i.i
  %.sink54 = phi i64 [ %i.hz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i.i.i ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %.sink52 = phi ptr [ %i.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i.i.i ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %.450.i.i.i.ph = phi i1 [ %.248.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i.i.i ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %.244.i.i.i.ph = phi ptr [ %.042.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i.i.i ], [ %9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %.pn55.pn.pn.pn.pn.i.i.i.ph = phi { ptr, i32 } [ %.pn55.pn.pn.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i.i.i ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ia = add i64 %.sink54, 1
  call void @_ZdlPvm(ptr noundef %.sink52, i64 noundef %i.ia) #33
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.body.i.i.i.sink.split, %.body94.i.i.i, %bb.s
  %.450.i.i.i = phi i1 [ %.248.i.i.i, %.body94.i.i.i ], [ false, %bb.s ], [ %.450.i.i.i.ph, %.body.i.i.i.sink.split ]
  %.244.i.i.i = phi ptr [ %.042.i.i.i, %.body94.i.i.i ], [ %9, %bb.s ], [ %.244.i.i.i.ph, %.body.i.i.i.sink.split ] ; 2 uses
  %.pn55.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn55.pn.pn.i.i.i, %.body94.i.i.i ], [ %i.dn, %bb.s ], [ %.pn55.pn.pn.pn.pn.i.i.i.ph, %.body.i.i.i.sink.split ]
  %i.ib = load ptr, ptr %10, align 8, !tbaa !182  ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.co
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i.i.i: ; preds = %.body.i.i.i
  %i.id = load i64, ptr %i.co, align 8, !tbaa !12
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i.i.i: ; preds = %.body.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i.i.i
  %i.if = icmp eq ptr %9, %.244.i.i.i
  %or.cond4.i.i.i = or i1 %.450.i.i.i, %i.if
  br i1 %or.cond4.i.i.i, label %.loopexit205.i.i.i, label %.preheader204.i.i.i

.preheader204.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i.i.i, %.preheader204.i.i.i
  %i.ig = phi ptr [ %i.ih, %.preheader204.i.i.i ], [ %.244.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i.i.i ]
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 -184 ; 3 uses
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.ih) #29
  %i.ii = icmp eq ptr %i.ih, %9
  br i1 %i.ii, label %.loopexit205.i.i.i, label %.preheader204.i.i.i

.loopexit205.i.i.i:                               ; preds = %.preheader204.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.ar

_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit124.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.i.i.i, %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit77.i.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !366 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !366 ; 2 uses
  %.not202208.i.i.i = icmp eq ptr %i.ik, %i.im
  br i1 %.not202208.i.i.i, label %._crit_edge211.i.i.i, label %.lr.ph210.i.i.i

._crit_edge211.i.i.i:                             ; preds = %bb.ad, %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit124.i.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !371, !nonnull !16, !align !372
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 168
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !616
  %i.ir = add i32 %i.iq, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.ir, 2
  br i1 %spec.select.i.i.i.i, label %bb.af, label %.loopexit.i.i.i

.lr.ph210.i.i.i:                                  ; preds = %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit124.i.i.i, %bb.ad
  %.sroa.0169.0209.i.i.i = phi ptr [ %i.iv, %bb.ad ], [ %i.ik, %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit124.i.i.i ] ; 2 uses
  %i.is = load ptr, ptr %.sroa.0169.0209.i.i.i, align 8, !tbaa !223
  %i.it = load ptr, ptr %i.m, align 8, !tbaa !899, !nonnull !16, !align !372
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !337
  invoke void @_ZNK6google8protobuf8compiler10objectivec13EnumGenerator14GenerateHeaderEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(128) %i.is, ptr noundef %i.iu)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph210.i.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0169.0209.i.i.i, i64 8 ; 2 uses
  %.not202.i.i.i = icmp eq ptr %i.iv, %i.im
  br i1 %.not202.i.i.i, label %._crit_edge211.i.i.i, label %.lr.ph210.i.i.i

bb.ae:                                            ; preds = %.lr.ph210.i.i.i
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.af:                                            ; preds = %._crit_edge211.i.i.i
  %i.ix = load ptr, ptr %i.m, align 8, !tbaa !899, !nonnull !16, !align !372
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !337
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.iy, ptr null, i64 0, i64 291, ptr nonnull @.str.77)
          to label %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit135.i.i.i unwind label %bb.j

_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit135.i.i.i: ; preds = %bb.af
  %i.iz = load ptr, ptr %i.m, align 8, !tbaa !899, !nonnull !16, !align !372
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !337
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.ja, ptr null, i64 0, i64 1, ptr nonnull @.str.31)
          to label %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit137.i.i.i unwind label %bb.j

_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit137.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit135.i.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.d, i64 216 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !245
  %.not.i.i.i = icmp eq i64 %i.jc, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph213.i.i.i
end_hunk_0
