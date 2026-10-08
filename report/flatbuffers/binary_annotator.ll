Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/binary_annotator?download=true
inline.NumInlined: 3604
inline.NumDeleted: 1081
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN11flatbuffers15BinaryAnnotator11BuildHeaderEm:bb.a

.thread236:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.bu = add i64 %1, 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %.thread
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11flatbuffers12BinaryRegionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %4) #30
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %5) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.f ], [ %i.bv, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.h:                                             ; preds = %bb.c
  %i.bx = add i64 %1, 3
  %i.by = icmp ult i64 %i.bx, %i.q
  %i.bz = and i64 %i.y, 4294967295
  %i.ca = icmp ult i64 %i.q, %i.bz
  %or.cond = and i1 %i.by, %i.ca
  br i1 %or.cond, label %._crit_edge.i.i, label %.critedge

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN11flatbuffers19BinaryRegionCommentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %7, ptr noundef nonnull align 8 dereferenceable(120) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 0, ptr %i.ce, align 8, !alias.scope !219
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !84, !alias.scope !219
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 0, ptr %i.cf, align 8, !tbaa !85, !alias.scope !219
  store i8 0, ptr %i.cd, align 8, !tbaa !86, !alias.scope !219
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i32 0, ptr %i.cg, align 8, !tbaa !88, !alias.scope !219
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 4 uses
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !84, !alias.scope !219
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i64 0, ptr %i.cj, align 8, !tbaa !85, !alias.scope !219
  store i8 0, ptr %i.ci, align 8, !tbaa !86, !alias.scope !219
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 4 uses
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !84, !alias.scope !219
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 128
  store i64 0, ptr %i.cm, align 8, !tbaa !85, !alias.scope !219
  store i8 0, ptr %i.cl, align 8, !tbaa !86, !alias.scope !219
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 152
  store i64 0, ptr %i.cn, align 8, !tbaa !87, !alias.scope !219
  store i64 %1, ptr %6, align 8, !tbaa !92, !alias.scope !219
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 4, ptr %i.co, align 8, !tbaa !93, !alias.scope !219
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 11, ptr %i.cp, align 8, !tbaa !94, !alias.scope !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  %i.cq = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.ce, ptr noundef nonnull align 8 dereferenceable(120) %7) #30 ; 0 uses
  %i.cr = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(160) %6)
          to label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit65 unwind label %bb.k ; 0 uses

_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit65: ; preds = %bb.i
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !95 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cl
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit65
  %i.cu = load i64, ptr %i.cl, align 8, !tbaa !86
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i67: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE9push_backEOS1_.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66
  %i.cw = load ptr, ptr %i.ch, align 8, !tbaa !95 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ci
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i67
  %i.cy = load i64, ptr %i.ci, align 8, !tbaa !86
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i68
  %i.da = load ptr, ptr %i.cc, align 8, !tbaa !95 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cd
  br i1 %i.db, label %_ZN11flatbuffers12BinaryRegionD2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i69
  %i.dc = load i64, ptr %i.cd, align 8, !tbaa !86
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #33
  br label %_ZN11flatbuffers12BinaryRegionD2Ev.exit74

_ZN11flatbuffers12BinaryRegionD2Ev.exit74:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i70
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !95 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit74
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !86
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !95 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !86
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i77
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !95 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i78
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !86
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #33
  br label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit83

_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.dw = add i64 %1, 4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %.critedge
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11flatbuffers12BinaryRegionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %6) #30
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %7) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn46 = phi { ptr, i32 } [ %i.dy, %bb.k ], [ %i.dx, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

._crit_edge.i.i:                                  ; preds = %bb.h
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.dz, ptr %8, align 8, !tbaa !84
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ea, align 8, !tbaa !85
  store i8 0, ptr %i.dz, align 8, !tbaa !86
  store i32 200, ptr %3, align 8, !tbaa !83
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.m

_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i
  %i.eb = load ptr, ptr %8, align 8, !tbaa !95    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.dz
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ed = load i64, ptr %i.dz, align 8, !tbaa !86
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load ptr, ptr %8, align 8, !tbaa !95    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.dz
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.m
  %i.ei = load i64, ptr %i.dz, align 8, !tbaa !86
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit83, %.thread236
  %.241242 = phi i64 [ %i.bu, %.thread236 ], [ %i.dw, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit83 ], [ %1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %1, %_ZN11flatbuffers12_GLOBAL__N_18SetErrorERNS_19BinaryRegionCommentENS_18BinaryRegionStatusENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %i.ek = load ptr, ptr %i.l, align 8, !tbaa !95  ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.m
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.em = load i64, ptr %i.m, align 8, !tbaa !86
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88
  %i.eo = load ptr, ptr %i.i, align 8, !tbaa !95  ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.j
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89
  %i.eq = load i64, ptr %i.j, align 8, !tbaa !86
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i90
  %i.es = load ptr, ptr %i.e, align 8, !tbaa !95  ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.f
  br i1 %i.et, label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i91
  %i.eu = load i64, ptr %i.f, align 8, !tbaa !86
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #33
  br label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit96

_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.l, %bb.g
  %.pn49.pn = phi { ptr, i32 } [ %.pn46, %bb.l ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.pn, %bb.g ], [ %i.ef, %bb.m ]
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.an

bb.n:                                             ; preds = %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit96, %bb.a
  %.342 = phi i64 [ %.241242, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit96 ], [ %1, %bb.a ] ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !71 ; 2 uses
  %i.ey = icmp ugt i64 %i.ex, 4
  %i.ez = add i64 %.342, 3
  %i.fa = icmp ult i64 %i.ez, %i.ex
  %i.fb = and i1 %i.ey, %i.fa
  br i1 %i.fb, label %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit98, label %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit98.thread

_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit98: ; preds = %bb.n
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !89
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.342
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !63
  %i.fg = zext i32 %i.ff to i64
  %i.fh = add i64 %.342, %i.fg                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store i32 0, ptr %9, align 8, !tbaa !83
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store ptr %i.fj, ptr %i.fi, align 8, !tbaa !84
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.fk, align 8, !tbaa !85
  store i8 0, ptr %i.fj, align 8, !tbaa !86
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.fm = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 6 uses
  store ptr %i.fn, ptr %i.fm, align 8, !tbaa !84
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  store i64 0, ptr %i.fo, align 8, !tbaa !85
  store i8 0, ptr %i.fn, align 8, !tbaa !86
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 4 uses
  store ptr %i.fq, ptr %i.fp, align 8, !tbaa !84
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i64 0, ptr %i.fr, align 8, !tbaa !85
  store i8 0, ptr %i.fq, align 8, !tbaa !86
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 112
  store i64 0, ptr %i.fs, align 8, !tbaa !87
  store i32 2, ptr %i.fl, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.ft = invoke noundef ptr @_ZNK11flatbuffers15BinaryAnnotator9RootTableEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i unwind label %bb.w ; 3 uses

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit98
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !63
  %i.fv = sext i32 %i.fu to i64
  %i.fw = sub nsw i64 0, %i.fv
  %i.fx = getelementptr inbounds i8, ptr %i.ft, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i = icmp ne i16 %i.fz, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ga = zext i16 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.ga ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !63
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gd ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4 ; 2 uses
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !99, !noalias !220 ; 3 uses
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.gi, ptr %10, align 8, !tbaa !84, !alias.scope !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !220
  store i64 %i.gh, ptr %i.a, align 8, !tbaa !64, !noalias !220
  %i.gj = icmp ugt i32 %i.gg, 15
  br i1 %i.gj, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.gk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc99 unwind label %bb.w   ; 2 uses

.noexc99:                                         ; preds = %.noexc.i.i
  store ptr %i.gk, ptr %10, align 8, !tbaa !95, !alias.scope !220
  %i.gl = load i64, ptr %i.a, align 8, !tbaa !64, !noalias !220
  store i64 %i.gl, ptr %i.gi, align 8, !tbaa !86, !alias.scope !220
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc99, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.gm = phi ptr [ %i.gk, %.noexc99 ], [ %i.gi, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ] ; 2 uses
  switch i32 %i.gg, label %bb.p [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.gn = load i8, ptr %i.gf, align 4, !tbaa !86, !noalias !220
  store i8 %i.gn, ptr %i.gm, align 1, !tbaa !86
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gm, ptr nonnull align 4 %i.gf, i64 %i.gh, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i
  %i.go = load i64, ptr %i.a, align 8, !tbaa !64, !noalias !220 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !85, !alias.scope !220
  %i.gq = load ptr, ptr %10, align 8, !tbaa !95, !alias.scope !220
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.go
  store i8 0, ptr %i.gr, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !220
  %i.gs = load ptr, ptr %i.fm, align 8, !tbaa !95 ; 6 uses
  %i.gt = icmp eq ptr %i.gs, %i.fn
  %i.gu = load ptr, ptr %10, align 8, !tbaa !95   ; 5 uses
  %i.gv = icmp eq ptr %i.gu, %i.gi                ; 2 uses
  br i1 %i.gt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.q
  br i1 %i.gv, label %bb.r, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.q
  br i1 %i.gv, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.gw = load i64, ptr %i.gp, align 8, !tbaa !85 ; 3 uses
  %i.gx = icmp ult i64 %i.gw, 16
  call void @llvm.assume(i1 %i.gx)
  switch i64 %i.gw, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.gy = load i8, ptr %i.gu, align 1, !tbaa !86
  store i8 %i.gy, ptr %i.gs, align 1, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gs, ptr align 1 %i.gu, i64 %i.gw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.gz = load i64, ptr %i.gp, align 8, !tbaa !85 ; 2 uses
  store i64 %i.gz, ptr %i.fo, align 8, !tbaa !85
  %i.ha = load ptr, ptr %i.fm, align 8, !tbaa !95
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gz
  store i8 0, ptr %i.hb, align 1, !tbaa !86
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.gu, ptr %i.fm, align 8, !tbaa !95
  %i.hc = load <2 x i64>, ptr %i.gp, align 8, !tbaa !86
  store <2 x i64> %i.hc, ptr %i.fo, align 8, !tbaa !86
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.hd = load i64, ptr %i.fn, align 8, !tbaa !86
  store ptr %i.gu, ptr %i.fm, align 8, !tbaa !95
  %i.he = load <2 x i64>, ptr %i.gp, align 8, !tbaa !86
  store <2 x i64> %i.he, ptr %i.fo, align 8, !tbaa !86
  %.not.i = icmp eq ptr %i.gs, null
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
end_hunk_0
