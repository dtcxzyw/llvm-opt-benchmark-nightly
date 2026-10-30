Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/binary_annotator?download=true
inline.NumInlined: 3604
inline.NumDeleted: 1081
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN11flatbuffers15BinaryAnnotator10BuildTableEmNS_17BinarySectionTypeEPKN10reflection6ObjectE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i412: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i411
  %i.lv = load i64, ptr %i.le, align 8, !tbaa !86
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i413

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i413: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i411, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i412
  %i.lx = load ptr, ptr %i.ky, align 8, !tbaa !95 ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.kz
  br i1 %i.ly, label %_ZN11flatbuffers12BinaryRegionD2Ev.exit418, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i414

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i414: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i413
  %i.lz = load i64, ptr %i.kz, align 8, !tbaa !86
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #33
  br label %_ZN11flatbuffers12BinaryRegionD2Ev.exit418

_ZN11flatbuffers12BinaryRegionD2Ev.exit418:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i413, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i414
  %i.mb = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !95 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %20, i64 96 ; 2 uses
  %i.me = icmp eq ptr %i.mc, %i.md
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i420, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i419

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i419: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit418
  %i.mf = load i64, ptr %i.md, align 8, !tbaa !86
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i420

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i420: ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit418, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i419
  %i.mh = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !95 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %20, i64 64 ; 2 uses
  %i.mk = icmp eq ptr %i.mi, %i.mj
  br i1 %i.mk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i421

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i421: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i420
  %i.ml = load i64, ptr %i.mj, align 8, !tbaa !86
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.mm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i422

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i422: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i420, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i421
  %i.mn = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !95 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.mq = icmp eq ptr %i.mo, %i.mp
  br i1 %i.mq, label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit427, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i423

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i423: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i422
  %i.mr = load i64, ptr %i.mp, align 8, !tbaa !86
  %i.ms = add i64 %i.mr, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.ms) #33
  br label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit427

_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit427: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i422, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i423
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %i.mt = invoke noundef ptr @_ZN11flatbuffers15BinaryAnnotator16GetOrBuildVTableEmPKN10reflection6ObjectEm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %i.fx, ptr noundef %3, i64 noundef %1)
          to label %bb.ah unwind label %bb.al     ; 6 uses

bb.ah:                                            ; preds = %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit427
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EED2Ev.exit, label %bb.am

bb.ai:                                            ; preds = %bb.af
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.mw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11flatbuffers12BinaryRegionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %19) #30
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %20) #30
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn262 = phi { ptr, i32 } [ %i.mw, %bb.aj ], [ %i.mv, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EED2Ev.exit1057

bb.al:                                            ; preds = %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit427
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EED2Ev.exit1057

bb.am:                                            ; preds = %bb.ah
  %i.my = getelementptr inbounds nuw i8, ptr %i.mt, i64 58
  %i.mz = load i16, ptr %i.my, align 2, !tbaa !123
  %i.na = zext i16 %i.mz to i64
  %i.nb = add i64 %1, %i.na                       ; 2 uses
  %i.nc = add i64 %i.nb, -1
  %i.nd = load i64, ptr %i.an, align 8, !tbaa !71 ; 2 uses
  %i.ne = icmp ult i64 %i.nc, %i.nd
  %spec.select = select i1 %i.ne, i64 %i.nb, i64 %i.nd ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !68 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mt, i64 16 ; 4 uses
  %.not1697 = icmp eq ptr %i.ng, %i.nh
  br i1 %.not1697, label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit.thread", label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE9push_backERKS3_.exit
  %i.ni = icmp eq ptr %.sroa.01141.1, %.sroa.14.1
  br i1 %i.ni, label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit.thread", label %bb.an

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit.thread": ; preds = %._crit_edge, %bb.am
  %.sroa.01141.0.lcssa2203 = phi ptr [ %.sroa.01141.1, %._crit_edge ], [ null, %bb.am ] ; 2 uses
  %.sroa.21.0.lcssa2184 = phi ptr [ %.sroa.21.1, %._crit_edge ], [ null, %bb.am ]
  %.pre1735 = ptrtoint ptr %.sroa.01141.0.lcssa2203 to i64
  br label %._crit_edge1706

bb.an:                                            ; preds = %._crit_edge
  %i.nj = ptrtoint ptr %.sroa.14.1 to i64         ; 2 uses
  %i.nk = ptrtoint ptr %.sroa.01141.1 to i64      ; 2 uses
  %i.nl = sub i64 %i.nj, %i.nk
  %i.nm = ashr exact i64 %i.nl, 4                 ; 4 uses
  %i.nn = add nsw i64 %i.nm, 1
  %i.no = sdiv i64 %i.nn, 2                       ; 4 uses
  %i.np = icmp sgt i64 %i.nm, 0
  br i1 %i.np, label %.lr.ph.i.i.i.i428, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i

.lr.ph.i.i.i.i428:                                ; preds = %bb.an, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.nu, %select.unfold.i.i.i.i ], [ %i.no, %bb.an ] ; 5 uses
  %i.nq = shl nuw nsw i64 %.010.i.i.i.i, 4        ; 3 uses
  %i.nr = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.nq, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 8 uses
  %.not.i.i.i.i429 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i.i.i429, label %select.unfold.i.i.i.i, label %bb.ao

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i428
  %i.ns = icmp eq i64 %.010.i.i.i.i, 1
  %i.nt = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.nu = lshr i64 %i.nt, 1
  br i1 %i.ns, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i, label %.lr.ph.i.i.i.i428, !llvm.loop !234

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i428
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.nq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nr, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01141.1, i64 16, i1 false), !tbaa.struct !126
  %.not18.i.i.i.i.i = icmp eq i64 %.010.i.i.i.i, 1
  br i1 %.not18.i.i.i.i.i, label %_ZSt29__uninitialized_construct_bufIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEvT_SB_T0_.exit.i.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.ao
  %.01317.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nr, i64 16 ; 2 uses
  %i.nw = add nsw i64 %i.nq, -32                  ; 2 uses
  %i.nx = lshr exact i64 %i.nw, 4
  %i.ny = add nuw nsw i64 %i.nx, 1
  %xtraiter = and i64 %i.ny, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.01320.i.i.i.i.i.prol = phi ptr [ %.013.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i.prol = phi ptr [ %i.nz, %.lr.ph.i.i.i.i.i.prol ], [ %i.nr, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.preheader.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.i.i.prol, i64 16, i1 false), !tbaa.struct !126
  %i.nz = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i.prol, i64 16 ; 3 uses
  %.013.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !235

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.preheader.i.i.i
  %.lcssa2320.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i.i ], [ %i.nz, %.lr.ph.i.i.i.i.i.prol ]
  %.01320.i.i.i.i.i.unr = phi ptr [ %.01317.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %.013.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.019.i.i.i.i.i.unr = phi ptr [ %i.nr, %.lr.ph.i.i.preheader.i.i.i ], [ %i.nz, %.lr.ph.i.i.i.i.i.prol ]
  %i.oa = icmp ult i64 %i.nw, 48
  br i1 %i.oa, label %_ZSt29__uninitialized_construct_bufIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEvT_SB_T0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.01320.i.i.i.i.i = phi ptr [ %.013.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i ], [ %.01320.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.019.i.i.i.i.i = phi ptr [ %i.oe, %.lr.ph.i.i.i.i.i ], [ %.019.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !126
  %i.ob = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 16
  %.013.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ob, i64 16, i1 false), !tbaa.struct !126
  %i.oc = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 32
  %.013.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(16) %i.oc, i64 16, i1 false), !tbaa.struct !126
  %i.od = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 48
  %.013.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(16) %i.od, i64 16, i1 false), !tbaa.struct !126
  %i.oe = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 64 ; 2 uses
  %.013.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq ptr %.013.i.i.i.i.i.3, %i.nv
  br i1 %.not.i.i.i.i.i.3, label %_ZSt29__uninitialized_construct_bufIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEvT_SB_T0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !236

_ZSt29__uninitialized_construct_bufIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEvT_SB_T0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.ao
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.nr, %bb.ao ], [ %.lcssa2320.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.oe, %.lr.ph.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.01141.1, ptr noundef nonnull align 8 dereferenceable(10) %.0.lcssa.i.i.i.i.i, i64 10, i1 false), !tbaa.struct !126
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEvT_SB_T0_.exit.i.i.i, %bb.an
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.an ], [ %.010.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEvT_SB_T0_.exit.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 4 uses
  %.sroa.12.0.i.i = phi ptr [ null, %bb.an ], [ %i.nr, %_ZSt29__uninitialized_construct_bufIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEvT_SB_T0_.exit.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 7 uses
  %i.of = icmp eq i64 %i.no, %.sroa.5.0.i.i
  br i1 %i.of, label %bb.ap, label %bb.ar, !prof !127

bb.ap:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i
  %i.og = getelementptr inbounds [16 x i8], ptr %.sroa.01141.1, i64 %i.no ; 4 uses
  call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_"(ptr %.sroa.01141.1, ptr %i.og, ptr noundef %.sroa.12.0.i.i)
  call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_"(ptr %i.og, ptr nonnull %.sroa.14.1, ptr noundef %.sroa.12.0.i.i)
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = sub i64 %i.nj, %i.oh
  %i.oj = ashr exact i64 %i.oi, 4
  call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_SK_T0_SL_T1_T2_"(ptr %.sroa.01141.1, ptr %i.og, ptr nonnull %.sroa.14.1, i64 noundef %i.no, i64 noundef %i.oj, ptr noundef %.sroa.12.0.i.i)
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit"

bb.aq:                                            ; preds = %bb.at
  %i.ok = landingpad { ptr, i32 }
          cleanup
  %i.ol = shl i64 %.sroa.5.0.i.i, 4
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.12.0.i.i, i64 noundef %i.ol) #30
  br label %.body

bb.ar:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i
  %i.om = icmp eq ptr %.sroa.12.0.i.i, null
  br i1 %i.om, label %bb.as, label %bb.at, !prof !128

bb.as:                                            ; preds = %bb.ar
  call fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_"(ptr %.sroa.01141.1, ptr nonnull %.sroa.14.1)
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit"

bb.at:                                            ; preds = %bb.ar
  invoke fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_T2_"(ptr %.sroa.01141.1, ptr nonnull %.sroa.14.1, ptr noundef nonnull %.sroa.12.0.i.i, i64 noundef %.sroa.5.0.i.i)
          to label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit" unwind label %bb.aq

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit": ; preds = %bb.ap, %bb.as, %bb.at
  %i.on = shl i64 %.sroa.5.0.i.i, 4
  call void @_ZdlPvm(ptr noundef %.sroa.12.0.i.i, i64 noundef %i.on) #30
  %i.oo = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.or = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.os = getelementptr inbounds nuw i8, ptr %29, i64 48 ; 6 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %29, i64 64 ; 6 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %29, i64 56 ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %29, i64 80 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %29, i64 96 ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %29, i64 88
  %i.oy = getelementptr inbounds nuw i8, ptr %29, i64 112
  %i.oz = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 7 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 7 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 9 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 6 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 5 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.pj = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.pk = getelementptr inbounds nuw i8, ptr %35, i64 48 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %35, i64 64 ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %35, i64 40 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %35, i64 56
  %i.po = getelementptr inbounds nuw i8, ptr %35, i64 80
  %i.pp = getelementptr inbounds nuw i8, ptr %35, i64 88 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %35, i64 104 ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %35, i64 96
  %i.ps = getelementptr inbounds nuw i8, ptr %35, i64 120 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %35, i64 136 ; 4 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %35, i64 128
  %i.pv = getelementptr inbounds nuw i8, ptr %35, i64 152
  %i.pw = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.px = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.py = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.pz = getelementptr inbounds nuw i8, ptr %36, i64 80
  %i.qa = getelementptr inbounds nuw i8, ptr %36, i64 96 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %36, i64 48
  %i.qc = getelementptr inbounds nuw i8, ptr %36, i64 64 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.qe = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 6 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.qi = getelementptr inbounds nuw i8, ptr %38, i64 24
  %i.qj = getelementptr inbounds nuw i8, ptr %38, i64 48 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %38, i64 64 ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %38, i64 40 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %38, i64 56
  %i.qn = getelementptr inbounds nuw i8, ptr %38, i64 80
  %i.qo = getelementptr inbounds nuw i8, ptr %38, i64 88 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %38, i64 104 ; 4 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %38, i64 96
  %i.qr = getelementptr inbounds nuw i8, ptr %38, i64 120 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %38, i64 136 ; 4 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %38, i64 128
  %i.qu = getelementptr inbounds nuw i8, ptr %38, i64 152
  %i.qv = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.qw = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.qx = getelementptr inbounds nuw i8, ptr %39, i64 80
  %i.qy = getelementptr inbounds nuw i8, ptr %39, i64 96 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %39, i64 48
  %i.ra = getelementptr inbounds nuw i8, ptr %39, i64 64 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.rc = getelementptr inbounds nuw i8, ptr %39, i64 24 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %40, i64 24
  %i.re = getelementptr inbounds nuw i8, ptr %40, i64 48 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %40, i64 64 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %40, i64 40 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %40, i64 56
  %i.ri = getelementptr inbounds nuw i8, ptr %40, i64 80
  %i.rj = getelementptr inbounds nuw i8, ptr %40, i64 88 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %40, i64 104 ; 4 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %40, i64 96
  %i.rm = getelementptr inbounds nuw i8, ptr %40, i64 120 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %40, i64 136 ; 4 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %40, i64 128
  %i.rp = getelementptr inbounds nuw i8, ptr %40, i64 152
  %i.rq = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.rr = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %41, i64 80
  %i.rt = getelementptr inbounds nuw i8, ptr %41, i64 96 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %41, i64 48
  %i.rv = getelementptr inbounds nuw i8, ptr %41, i64 64 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.rx = getelementptr inbounds nuw i8, ptr %41, i64 24 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 5 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %42, i64 24 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.sb = getelementptr inbounds nuw i8, ptr %42, i64 40
  %i.sc = getelementptr inbounds nuw i8, ptr %42, i64 48 ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %42, i64 64 ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %42, i64 56
  %i.sf = getelementptr inbounds nuw i8, ptr %42, i64 80 ; 8 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %42, i64 96 ; 4 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %42, i64 88 ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %42, i64 112
  %i.sj = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 7 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.sl = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 7 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 7 uses
  %i.so = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.sp = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 6 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.sr = getelementptr inbounds nuw i8, ptr %50, i64 24
  %i.ss = getelementptr inbounds nuw i8, ptr %50, i64 48 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %50, i64 64 ; 4 uses
  %i.su = getelementptr inbounds nuw i8, ptr %50, i64 40 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %50, i64 56
  %i.sw = getelementptr inbounds nuw i8, ptr %50, i64 80
  %i.sx = getelementptr inbounds nuw i8, ptr %50, i64 88 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %50, i64 104 ; 4 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %50, i64 96
  %i.ta = getelementptr inbounds nuw i8, ptr %50, i64 120 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %50, i64 136 ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %50, i64 128
  %i.td = getelementptr inbounds nuw i8, ptr %50, i64 152
  %i.te = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.tf = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.tg = getelementptr inbounds nuw i8, ptr %50, i64 32
  %i.th = getelementptr inbounds nuw i8, ptr %51, i64 80
  %i.ti = getelementptr inbounds nuw i8, ptr %51, i64 96 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %51, i64 48
  %i.tk = getelementptr inbounds nuw i8, ptr %51, i64 64 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.tm = getelementptr inbounds nuw i8, ptr %51, i64 24 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.mt, i64 24 ; 3 uses
  %i.to = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 4 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 4 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %61, i64 24
  %i.tt = getelementptr inbounds nuw i8, ptr %61, i64 48 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %61, i64 64 ; 4 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %61, i64 40 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %61, i64 56
  %i.tx = getelementptr inbounds nuw i8, ptr %61, i64 80
  %i.ty = getelementptr inbounds nuw i8, ptr %61, i64 88 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %61, i64 104 ; 4 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %61, i64 96
  %i.ub = getelementptr inbounds nuw i8, ptr %61, i64 120 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %61, i64 136 ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %61, i64 128
  %i.ue = getelementptr inbounds nuw i8, ptr %61, i64 152
  %i.uf = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.ug = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.uh = getelementptr inbounds nuw i8, ptr %61, i64 32
  %i.ui = getelementptr inbounds nuw i8, ptr %62, i64 80
  %i.uj = getelementptr inbounds nuw i8, ptr %62, i64 96 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %62, i64 48
  %i.ul = getelementptr inbounds nuw i8, ptr %62, i64 64 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.un = getelementptr inbounds nuw i8, ptr %62, i64 24 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 4 uses
  %i.up = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 3 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %63, i64 24 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %63, i64 32 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %63, i64 40 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.mt, i64 48 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %58, i64 24
  %i.uv = getelementptr inbounds nuw i8, ptr %58, i64 48 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %58, i64 64 ; 4 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %58, i64 40 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %58, i64 56
  %i.uz = getelementptr inbounds nuw i8, ptr %58, i64 80
  %i.va = getelementptr inbounds nuw i8, ptr %58, i64 88 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %58, i64 104 ; 4 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %58, i64 96
  %i.vd = getelementptr inbounds nuw i8, ptr %58, i64 120 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %58, i64 136 ; 4 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %58, i64 128
  %i.vg = getelementptr inbounds nuw i8, ptr %58, i64 152
  %i.vh = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.vi = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.vj = getelementptr inbounds nuw i8, ptr %58, i64 32
  %i.vk = getelementptr inbounds nuw i8, ptr %59, i64 80
  %i.vl = getelementptr inbounds nuw i8, ptr %59, i64 96 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %59, i64 48
  %i.vn = getelementptr inbounds nuw i8, ptr %59, i64 64 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.vp = getelementptr inbounds nuw i8, ptr %59, i64 24 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 4 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 3 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %60, i64 24 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %60, i64 32 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %60, i64 40 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %56, i64 24
  %i.vw = getelementptr inbounds nuw i8, ptr %56, i64 48 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %56, i64 64 ; 4 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %56, i64 40 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %56, i64 56
  %i.wa = getelementptr inbounds nuw i8, ptr %56, i64 80
  %i.wb = getelementptr inbounds nuw i8, ptr %56, i64 88 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %56, i64 104 ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %56, i64 96
  %i.we = getelementptr inbounds nuw i8, ptr %56, i64 120 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %56, i64 136 ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %56, i64 128
  %i.wh = getelementptr inbounds nuw i8, ptr %56, i64 152
  %i.wi = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.wj = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.wk = getelementptr inbounds nuw i8, ptr %56, i64 32
  %i.wl = getelementptr inbounds nuw i8, ptr %57, i64 80
  %i.wm = getelementptr inbounds nuw i8, ptr %57, i64 96 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %57, i64 48
  %i.wo = getelementptr inbounds nuw i8, ptr %57, i64 64 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.wq = getelementptr inbounds nuw i8, ptr %57, i64 24 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 6 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.wu = getelementptr inbounds nuw i8, ptr %47, i64 24
  %i.wv = getelementptr inbounds nuw i8, ptr %47, i64 48 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %47, i64 64 ; 4 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %47, i64 40 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %47, i64 56
  %i.wz = getelementptr inbounds nuw i8, ptr %47, i64 80
  %i.xa = getelementptr inbounds nuw i8, ptr %47, i64 88 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %47, i64 104 ; 4 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %47, i64 96
  %i.xd = getelementptr inbounds nuw i8, ptr %47, i64 120 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %47, i64 136 ; 4 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %47, i64 128
  %i.xg = getelementptr inbounds nuw i8, ptr %47, i64 152
  %i.xh = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.xi = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.xj = getelementptr inbounds nuw i8, ptr %47, i64 32
  %i.xk = getelementptr inbounds nuw i8, ptr %48, i64 80
  %i.xl = getelementptr inbounds nuw i8, ptr %48, i64 96 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %48, i64 48
  %i.xn = getelementptr inbounds nuw i8, ptr %48, i64 64 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.xp = getelementptr inbounds nuw i8, ptr %48, i64 24 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 6 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %23, i64 64 ; 6 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %23, i64 56 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 4 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %23, i64 96 ; 6 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %23, i64 88 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %23, i64 112 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 8 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.yh = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.yi = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.yj = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.yk = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.yl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ym = getelementptr i8, ptr %i.yk, i64 -24
  %i.yn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.yo = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.yr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.ys = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.yt = getelementptr i8, ptr %i.yr, i64 -24
  %i.yu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.yv = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.yw = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.yy = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.yz = getelementptr inbounds nuw i8, ptr %25, i64 48 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %25, i64 64 ; 4 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %25, i64 56
  %i.zd = getelementptr inbounds nuw i8, ptr %25, i64 80
  %i.ze = getelementptr inbounds nuw i8, ptr %25, i64 88 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %25, i64 104 ; 4 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %25, i64 96
  %i.zh = getelementptr inbounds nuw i8, ptr %25, i64 120 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %25, i64 136 ; 4 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %25, i64 128
  %i.zk = getelementptr inbounds nuw i8, ptr %25, i64 152
  %i.zl = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.zm = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.zn = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.zo = getelementptr inbounds nuw i8, ptr %26, i64 80
  %i.zp = getelementptr inbounds nuw i8, ptr %26, i64 96 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %26, i64 48
  %i.zr = getelementptr inbounds nuw i8, ptr %26, i64 64 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.zt = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.zv = getelementptr inbounds nuw i8, ptr %27, i64 48 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %27, i64 64 ; 4 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %27, i64 40 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %27, i64 56
  %i.zz = getelementptr inbounds nuw i8, ptr %27, i64 80
  %i.aaa = getelementptr inbounds nuw i8, ptr %27, i64 88 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %27, i64 104 ; 4 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %27, i64 96
  %i.aad = getelementptr inbounds nuw i8, ptr %27, i64 120 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %27, i64 136 ; 4 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %27, i64 128
  %i.aag = getelementptr inbounds nuw i8, ptr %27, i64 152
  %i.aah = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.aai = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.aaj = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.aak = getelementptr inbounds nuw i8, ptr %28, i64 80
  %i.aal = getelementptr inbounds nuw i8, ptr %28, i64 96 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %28, i64 48
  %i.aan = getelementptr inbounds nuw i8, ptr %28, i64 64 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.aap = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %46, i64 17
  br label %bb.ay

.lr.ph:                                           ; preds = %bb.am, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE9push_backERKS3_.exit
  %.sroa.01141.01701 = phi ptr [ %.sroa.01141.1, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.am ] ; 7 uses
  %.sroa.14.01700 = phi ptr [ %.sroa.14.1, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.am ] ; 7 uses
  %.sroa.21.01699 = phi ptr [ %.sroa.21.1, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.am ] ; 2 uses
  %.sroa.01138.01698 = phi ptr [ %i.abh, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE9push_backERKS3_.exit ], [ %i.ng, %bb.am ] ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.sroa.01138.01698, i64 40 ; 2 uses
  %.not.i430 = icmp eq ptr %.sroa.14.01700, %.sroa.21.01699
  br i1 %.not.i430, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.01700, ptr noundef nonnull align 8 dereferenceable(16) %i.aar, i64 16, i1 false), !tbaa.struct !126
  br label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE9push_backERKS3_.exit

bb.av:                                            ; preds = %.lr.ph
  %i.aas = ptrtoint ptr %.sroa.14.01700 to i64
  %i.aat = ptrtoint ptr %.sroa.01141.01701 to i64
  %i.aau = sub i64 %i.aas, %i.aat                 ; 4 uses
  %i.aav = icmp eq i64 %i.aau, 9223372036854775792
  br i1 %i.aav, label %bb.aw, label %_ZNKSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #35
          to label %.noexc435 unwind label %.loopexit.split-lp1227.loopexit.split-lp

.noexc435:                                        ; preds = %bb.aw
  unreachable

_ZNKSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.av
  %i.aaw = ashr exact i64 %i.aau, 4               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aaw, i64 1)
  %i.aax = add nsw i64 %.sroa.speculated.i.i.i, %i.aaw ; 2 uses
  %i.aay = icmp ult i64 %i.aax, %i.aaw
  %i.aaz = call i64 @llvm.umin.i64(i64 %i.aax, i64 576460752303423487)
  %i.aba = select i1 %i.aay, i64 576460752303423487, i64 %i.aaz ; 3 uses
  %.not.i.i.i431 = icmp ne i64 %i.aba, 0
  call void @llvm.assume(i1 %.not.i.i.i431)
  %i.abb = shl nuw nsw i64 %i.aba, 4
  %i.abc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abb) #36
          to label %.noexc436 unwind label %.loopexit.split-lp1227.loopexit.split-lp ; 5 uses

.noexc436:                                        ; preds = %_ZNKSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 %i.aau
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abd, ptr noundef nonnull align 8 dereferenceable(16) %i.aar, i64 16, i1 false), !tbaa.struct !126
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.01141.01701, %.sroa.14.01700
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i432

.lr.ph.i.i.i.i.i432:                              ; preds = %.noexc436, %.lr.ph.i.i.i.i.i432
  %.012.i.i.i.i.i = phi ptr [ %i.abf, %.lr.ph.i.i.i.i.i432 ], [ %i.abc, %.noexc436 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.abe, %.lr.ph.i.i.i.i.i432 ], [ %.sroa.01141.01701, %.noexc436 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !126, !alias.scope !295
  %i.abe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i433 = icmp eq ptr %i.abe, %.sroa.14.01700
  br i1 %.not.i.i.i.i.i433, label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i432, !llvm.loop !240

_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i432, %.noexc436
  %.0.lcssa.i.i.i.i.i434 = phi ptr [ %i.abc, %.noexc436 ], [ %i.abf, %.lr.ph.i.i.i.i.i432 ]
  %.not.i23.i.i = icmp eq ptr %.sroa.01141.01701, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01141.01701, i64 noundef %i.aau) #33
  br label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ax, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.abg = getelementptr inbounds nuw [16 x i8], ptr %i.abc, i64 %i.aba
  br label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.au
  %.sroa.21.1 = phi ptr [ %i.abg, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.21.01699, %bb.au ] ; 7 uses
  %.0.lcssa.i.i.i.i.i434.pn = phi ptr [ %.0.lcssa.i.i.i.i.i434, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.14.01700, %bb.au ]
  %.sroa.01141.1 = phi ptr [ %i.abc, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.01141.01701, %bb.au ] ; 18 uses
  %.sroa.14.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i434.pn, i64 16 ; 7 uses
  %i.abh = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01138.01698) #31 ; 2 uses
  %.not = icmp eq ptr %i.abh, %i.nh
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit.split-lp1227.loopexit.split-lp:         ; preds = %_ZNKSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.aw
  %lpad.loopexit.split-lp2327 = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge1706:                                  ; preds = %bb.hv, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit.thread"
  %.pre-phi17362226 = phi i64 [ %.pre1735, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit.thread" ], [ %i.nk, %bb.hv ]
  %.sroa.21.0.lcssa21832225 = phi ptr [ %.sroa.21.0.lcssa2184, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit.thread" ], [ %.sroa.21.1, %bb.hv ] ; 3 uses
  %.sroa.01141.0.lcssa22022224 = phi ptr [ %.sroa.01141.0.lcssa2203, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit.thread" ], [ %.sroa.01141.1, %bb.hv ] ; 4 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !115 ; 2 uses
  %i.abk = getelementptr inbounds i8, ptr %i.abj, i64 -160
  %i.abl = load i64, ptr %i.abk, align 8, !tbaa !92
  %i.abm = getelementptr inbounds i8, ptr %i.abj, i64 -152
  %i.abn = load i64, ptr %i.abm, align 8, !tbaa !93
  %i.abo = add i64 %i.abn, %i.abl                 ; 2 uses
  %i.abp = add i64 %i.abo, 1                      ; 2 uses
  %i.abq = icmp ult i64 %i.abp, %spec.select
  br i1 %i.abq, label %bb.hx, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i1007

bb.ay:                                            ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit", %bb.hv
  %.01691704 = phi i64 [ 0, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit" ], [ %i.btt, %bb.hv ] ; 3 uses
  %i.abr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01141.1, i64 %.01691704 ; 2 uses
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !296 ; 30 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abu = load i16, ptr %i.abt, align 8, !tbaa !130 ; 2 uses
  %i.abv = icmp eq i16 %i.abu, 0
  br i1 %i.abv, label %bb.hv, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.abw = zext i16 %i.abu to i64
  %i.abx = add i64 %1, %i.abw                     ; 31 uses
  %i.aby = load i64, ptr %i.an, align 8, !tbaa !71 ; 11 uses
  %i.abz = icmp ult i64 %i.abx, %i.aby
  br i1 %i.abz, label %bb.ba, label %bb.hv

bb.ba:                                            ; preds = %bb.az
  %i.aca = icmp eq ptr %i.abs, null
  br i1 %i.aca, label %bb.bb, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i525

bb.bb:                                            ; preds = %bb.ba
  %i.acb = add nuw i64 %.01691704, 1              ; 2 uses
  %i.acc = icmp ult i64 %i.acb, %i.nm
  br i1 %i.acc, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.acd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01141.1, i64 %i.acb
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  %i.acf = load i16, ptr %i.ace, align 8, !tbaa !130
  %i.acg = zext i16 %i.acf to i64
  %i.ach = add i64 %1, %i.acg
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %i.aci = phi i64 [ %i.ach, %bb.bc ], [ %spec.select, %bb.bb ] ; 3 uses
  %i.acj = sub i64 %i.aci, %i.abx                 ; 9 uses
  %i.ack = icmp eq i64 %i.aci, %i.abx
  br i1 %i.ack, label %bb.hv, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  store ptr %i.xq, ptr %21, align 8, !tbaa !84
  store i64 0, ptr %i.xr, align 8, !tbaa !85
  store i8 0, ptr %i.xq, align 8, !tbaa !86
  %i.acl = icmp eq i64 %i.acj, 4
  br i1 %i.acl, label %bb.bf, label %.split

.split:                                           ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  store i32 0, ptr %23, align 8, !tbaa !83
  store ptr %i.xt, ptr %i.xs, align 8, !tbaa !84
  store i64 0, ptr %i.xu, align 8, !tbaa !85
  store i8 0, ptr %i.xt, align 8, !tbaa !86
  store ptr %i.xx, ptr %i.xw, align 8, !tbaa !84
  store i64 0, ptr %i.xy, align 8, !tbaa !85
  store i8 0, ptr %i.xx, align 8, !tbaa !86
  store ptr %i.ya, ptr %i.xz, align 8, !tbaa !84
  store i64 0, ptr %i.yb, align 8, !tbaa !85
  store i8 0, ptr %i.ya, align 8, !tbaa !86
  store i64 0, ptr %i.yc, align 8, !tbaa !87
  store i32 11, ptr %i.xv, align 8, !tbaa !88
  %i.acm = icmp ult i64 %i.acj, %i.aby
  %i.acn = add i64 %i.aci, -1
  %i.aco = icmp ult i64 %i.acn, %i.aby
  %i.acp = and i1 %i.acm, %i.aco
  br i1 %i.acp, label %bb.ch, label %bb.br

bb.bf:                                            ; preds = %bb.be
  %i.acq = icmp ugt i64 %i.aby, 4
  %i.acr = add i64 %i.abx, 3                      ; 2 uses
  %i.acs = icmp ult i64 %i.acr, %i.aby
  %i.act = and i1 %i.acq, %i.acs
  br i1 %i.act, label %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit, label %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit.thread

_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit: ; preds = %bb.bf
  %i.acu = load ptr, ptr %i.fs, align 8, !tbaa !89
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 %i.abx
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !63
  %i.acx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.4, i64 noundef 35)
          to label %bb.bg unwind label %.loopexit.split-lp1212.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bg:                                            ; preds = %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  %i.acy = zext i32 %i.acw to i64
  %i.acz = add i64 %i.abx, %i.acy
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !297
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %.noexc443 unwind label %bb.bq

.noexc443:                                        ; preds = %bb.bg
  %i.ada = load ptr, ptr %i.yd, align 8, !tbaa !132, !noalias !297 ; 3 uses
  %i.adb = getelementptr i8, ptr %i.ada, i64 -24  ; 3 uses
  %i.adc = load i64, ptr %i.adb, align 8, !noalias !297
  %i.add = getelementptr inbounds i8, ptr %i.yd, i64 %i.adc
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 24 ; 2 uses
  %i.adf = load i32, ptr %i.ade, align 8, !tbaa !304, !noalias !297
  %i.adg = and i32 %i.adf, -75
  %i.adh = or disjoint i32 %i.adg, 8
  store i32 %i.adh, ptr %i.ade, align 8, !tbaa !305, !noalias !297
  %i.adi = load i64, ptr %i.adb, align 8, !noalias !297
  %i.adj = getelementptr inbounds i8, ptr %i.yd, i64 %i.adi
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 24 ; 2 uses
  %i.adl = load i32, ptr %i.adk, align 8, !tbaa !304, !noalias !297
  %i.adm = or i32 %i.adl, 16384
  store i32 %i.adm, ptr %i.adk, align 8, !tbaa !305, !noalias !297
  %i.adn = load i64, ptr %i.adb, align 8, !noalias !297
  %i.ado = getelementptr inbounds i8, ptr %i.yd, i64 %i.adn ; 3 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 225 ; 2 uses
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !312, !range !66, !noalias !297, !noundef !67
  %i.adr = trunc nuw i8 %i.adq to i1
  br i1 %i.adr, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %.noexc443
  %i.ads = getelementptr inbounds nuw i8, ptr %i.ado, i64 240
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !313, !noalias !297 ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.adt, null
  br i1 %.not.i.i.i.i.i.i, label %bb.bi, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZSt16__throw_bad_castv() #35
          to label %.noexc.i442 unwind label %.loopexit.split-lp1217.loopexit.split-lp.loopexit.split-lp, !noalias !297

.noexc.i442:                                      ; preds = %bb.bi
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i: ; preds = %bb.bh
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 56
  %i.adv = load i8, ptr %i.adu, align 8, !tbaa !318, !noalias !297
  %.not.i1.i.i.i.i.i = icmp eq i8 %i.adv, 0
  br i1 %.not.i1.i.i.i.i.i, label %bb.bj, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i

bb.bj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.adt)
          to label %.noexc5.i unwind label %.loopexit.split-lp1217.loopexit.split-lp.loopexit.split-lp, !noalias !297

.noexc5.i:                                        ; preds = %bb.bj
  %i.adw = load ptr, ptr %i.adt, align 8, !tbaa !132, !noalias !297
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 48
  %i.ady = load ptr, ptr %i.adx, align 8, !noalias !297
  %i.adz = invoke noundef signext i8 %i.ady(ptr noundef nonnull align 8 dereferenceable(570) %i.adt, i8 noundef signext 32)
          to label %.noexc5._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge.i unwind label %.loopexit.split-lp1217.loopexit.split-lp.loopexit.split-lp, !noalias !297, !inline_history !243 ; 0 uses

.noexc5._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge.i: ; preds = %.noexc5.i
  %.pre.pre.i = load ptr, ptr %i.yd, align 8, !tbaa !132, !noalias !297
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i: ; preds = %.noexc5._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  %.pre.i = phi ptr [ %.pre.pre.i, %.noexc5._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge.i ], [ %i.ada, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i ]
  store i8 1, ptr %i.adp, align 1, !tbaa !312, !noalias !297
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i, %.noexc443
  %i.aea = phi ptr [ %i.ada, %.noexc443 ], [ %.pre.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i ]
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.ado, i64 224
  store i8 48, ptr %i.aeb, align 8, !tbaa !319, !noalias !297
  %i.aec = getelementptr i8, ptr %i.aea, i64 -24
  %i.aed = load i64, ptr %i.aec, align 8, !noalias !297
  %i.aee = getelementptr inbounds i8, ptr %i.yd, i64 %i.aed
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 16
  store i64 8, ptr %i.aef, align 8, !tbaa !320, !noalias !297
  %i.aeg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.yd, i64 noundef %i.acz)
          to label %_ZNSolsEm.exit.i unwind label %.loopexit.split-lp1217.loopexit.split-lp.loopexit.split-lp, !noalias !297 ; 0 uses

_ZNSolsEm.exit.i:                                 ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  store ptr %i.ye, ptr %22, align 8, !tbaa !84, !alias.scope !323
  store i64 0, ptr %i.yf, align 8, !tbaa !85, !alias.scope !323
  store i8 0, ptr %i.ye, align 8, !tbaa !86, !alias.scope !323
  %i.aeh = load ptr, ptr %i.yg, align 8, !tbaa !137, !noalias !323 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.aeh, null
  %i.aei = load ptr, ptr %i.yh, align 8, !noalias !323 ; 2 uses
  %i.aej = icmp ugt ptr %i.aeh, %i.aei
  %.08.i.i.i.i = select i1 %i.aej, ptr %i.aeh, ptr %i.aei ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
end_hunk_0
begin_hunk_1_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_:bb.a
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.preheader.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i
  %i.cj = udiv exact i64 %i.ch, 160
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %.lr.ph.i.i.i.i.i20.i, %.lr.ph.preheader.i.i.i.i.i19.i
  %.012.i.i.i.i.i21.i = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i20.i ], [ %i.cj, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i20.i ], [ %i.ce, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i20.i ], [ %.117.i, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.0811.i.i.i.i.i22.i, ptr noundef nonnull align 8 dereferenceable(160) %.0910.i.i.i.i.i23.i, i64 40, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 40
  %i.cm = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.ck, ptr noundef nonnull align 8 dereferenceable(120) %i.cl) #30 ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 160
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 160 ; 2 uses
  %i.cp = add nsw i64 %.012.i.i.i.i.i21.i, -1
  %i.cq = icmp samesign ugt i64 %.012.i.i.i.i.i21.i, 1
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i20.i, label %_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit, !llvm.loop !22

_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i20.i, %_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.ce, %_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ], [ %i.co, %.lr.ph.i.i.i.i.i20.i ]
  %i.cr = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.cs = sub i64 %i.cr, %i.cb
  %i.ct = getelementptr inbounds i8, ptr %i.ce, i64 %i.cs ; 2 uses
  %i.cu = sub i64 %i.i, %i.cf
  %i.cv = sdiv exact i64 %i.cu, 160               ; 2 uses
  %.not.i22 = icmp slt i64 %i.cv, %i.ba
  br i1 %.not.i22, label %_ZSt17__merge_sort_loopIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_T1_T2_.exit, label %.lr.ph.i21, !llvm.loop !759

_ZSt17__merge_sort_loopIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_T2_.exit
  %.0.lcssa.i23 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_T2_.exit ], [ %i.bc, %_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 2 uses
  %.sroa.021.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_T2_.exit ], [ %i.ct, %_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ]
  %.lcssa.i24 = phi i64 [ %i.j, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_T2_.exit ], [ %i.cv, %_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ]
  %.sroa.speculated.i25 = tail call i64 @llvm.smin.i64(i64 %i.k, i64 %.lcssa.i24)
  %i.cw = getelementptr inbounds [160 x i8], ptr %.0.lcssa.i23, i64 %.sroa.speculated.i25 ; 2 uses
  %i.cx = tail call ptr @_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_(ptr noundef %.0.lcssa.i23, ptr noundef %i.cw, ptr noundef %i.cw, ptr noundef nonnull %i.e, ptr %.sroa.021.0.lcssa.i, ptr %3) ; 0 uses
  %i.cy = icmp slt i64 %i.ba, %i.d
  br i1 %i.cy, label %bb.b, label %._crit_edge, !llvm.loop !760

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_T0_SH_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.f = udiv exact i64 %i.d, 160
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(160) %.0910.i.i.i.i.i, i64 40, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.i = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.h) #30 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 160
  %i.k = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 160 ; 3 uses
  %i.l = add nsw i64 %.012.i.i.i.i.i, -1
  %i.m = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.m, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !22

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.027.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %.sroa.017.026.i = phi ptr [ %.sroa.017.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.sroa.013.025.i = phi ptr [ %i.v, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.not20.i = icmp eq ptr %.sroa.017.026.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = tail call noundef zeroext i1 %i.a(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.017.026.i, ptr noundef nonnull align 8 dereferenceable(160) %.027.i), !inline_history !761
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 40 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.013.025.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.017.026.i, i64 40, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.017.026.i, i64 40
  %i.q = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.o, ptr noundef nonnull align 8 dereferenceable(120) %i.p) #30 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.017.026.i, i64 160
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.013.025.i, ptr noundef nonnull align 8 dereferenceable(160) %.027.i, i64 40, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.027.i, i64 40
  %i.t = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.o, ptr noundef nonnull align 8 dereferenceable(120) %i.s) #30 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.027.i, i64 160
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.017.1.i = phi ptr [ %i.r, %bb.d ], [ %.sroa.017.026.i, %bb.e ]
  %.1.i = phi ptr [ %.027.i, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 160
  %.not.i = icmp eq ptr %.1.i, %i.k
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !762

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.w = ptrtoint ptr %i.k to i64
  %i.x = ptrtoint ptr %.027.i to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.aa = udiv exact i64 %i.y, 160
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.013.025.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %.027.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(160) %.0910.i.i.i.i.i.i, i64 40, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.ad = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.ab, ptr noundef nonnull align 8 dereferenceable(120) %i.ac) #30 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 160
  %i.ag = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ah = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit, !llvm.loop !22

bb.g:                                             ; preds = %bb.a
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i.i23, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit28

.lr.ph.preheader.i.i.i.i.i23:                     ; preds = %bb.g
  %i.am = udiv exact i64 %i.ak, 160
  br label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %.lr.ph.i.i.i.i.i24, %.lr.ph.preheader.i.i.i.i.i23
  %.012.i.i.i.i.i25 = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i24 ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i23 ] ; 2 uses
  %.0811.i.i.i.i.i26 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i24 ], [ %5, %.lr.ph.preheader.i.i.i.i.i23 ] ; 3 uses
  %.0910.i.i.i.i.i27 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i24 ], [ %1, %.lr.ph.preheader.i.i.i.i.i23 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.0811.i.i.i.i.i26, ptr noundef nonnull align 8 dereferenceable(160) %.0910.i.i.i.i.i27, i64 40, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 40
  %i.ap = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.an, ptr noundef nonnull align 8 dereferenceable(120) %i.ao) #30 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 160
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 160 ; 2 uses
  %i.as = add nsw i64 %.012.i.i.i.i.i25, -1
  %i.at = icmp samesign ugt i64 %.012.i.i.i.i.i25, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit28, !llvm.loop !22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit28: ; preds = %.lr.ph.i.i.i.i.i24, %bb.g
  %.08.lcssa.i.i.i.i.i22 = phi ptr [ %5, %bb.g ], [ %i.ar, %.lr.ph.i.i.i.i.i24 ]
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_S8_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_SH_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %.08.lcssa.i.i.i.i.i22, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i, %bb.b, %.critedge.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.flatbuffers::BinaryRegion", align 8 ; 16 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit18, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.019 = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %.not20 = icmp eq ptr %.sroa.0.019, %1
  br i1 %.not20, label %.loopexit18, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.n = ptrtoint ptr %0 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.0.022 = phi ptr [ %.sroa.0.019, %.lr.ph ], [ %.sroa.0.0, %bb.h ] ; 7 uses
  %.pn21 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.022, %bb.h ] ; 16 uses
  %i.p = call noundef zeroext i1 %2(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.022, ptr noundef nonnull align 8 dereferenceable(160) %0), !inline_history !24
  br i1 %i.p, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.022, i64 40, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.pn21, i64 200
  %i.r = load i32, ptr %i.q, align 8, !tbaa !83
  store i32 %i.r, ptr %i.b, align 8, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %.pn21, i64 208 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !84
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !95   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.pn21, i64 224 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.pn21, i64 216
  %i.x = load i64, ptr %i.w, align 8, !tbaa !85   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  store ptr %i.t, ptr %i.c, align 8, !tbaa !95
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !86
  store i64 %i.aa, ptr %i.d, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %4 = getelementptr inbounds nuw i8, ptr %.pn21, i64 216 ; 2 uses
  %5 = load i64, ptr %4, align 8, !tbaa !85
  store i64 %5, ptr %i.e, align 8, !tbaa !85
  store ptr %i.u, ptr %i.s, align 8, !tbaa !95
  store i64 0, ptr %4, align 8, !tbaa !85
  store i8 0, ptr %i.u, align 8, !tbaa !86
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn21, i64 240
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !88
  store i32 %i.ac, ptr %i.f, align 8, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn21, i64 248 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !84
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !95 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pn21, i64 264 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn21, i64 256
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !85 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !95
  %i.al = load i64, ptr %i.af, align 8, !tbaa !86
  store i64 %i.al, ptr %i.h, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i.i, %bb.e
  %6 = getelementptr inbounds nuw i8, ptr %.pn21, i64 256 ; 2 uses
  %7 = load i64, ptr %6, align 8, !tbaa !85
  store i64 %7, ptr %i.i, align 8, !tbaa !85
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !95
  store i64 0, ptr %6, align 8, !tbaa !85
  store i8 0, ptr %i.af, align 8, !tbaa !86
  %i.am = getelementptr inbounds nuw i8, ptr %.pn21, i64 280 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !84
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !95 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn21, i64 296 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn21, i64 288
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !85 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZN11flatbuffers12BinaryRegionC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i.i
  store ptr %i.an, ptr %i.j, align 8, !tbaa !95
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !86
  store i64 %i.au, ptr %i.k, align 8, !tbaa !86
  br label %_ZN11flatbuffers12BinaryRegionC2EOS0_.exit

_ZN11flatbuffers12BinaryRegionC2EOS0_.exit:       ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i.i
  %8 = getelementptr inbounds nuw i8, ptr %.pn21, i64 288 ; 2 uses
  %9 = load i64, ptr %8, align 8, !tbaa !85
  store i64 %9, ptr %i.l, align 8, !tbaa !85
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !95
  store i64 0, ptr %8, align 8, !tbaa !85
  store i8 0, ptr %i.ao, align 8, !tbaa !86
  %i.av = getelementptr inbounds nuw i8, ptr %.pn21, i64 312
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !87
  store i64 %i.aw, ptr %i.m, align 8, !tbaa !87
  %i.ax = ptrtoint ptr %.sroa.0.022 to i64
  %i.ay = sub i64 %i.ax, %i.n                     ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 0
  br i1 %i.az, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN11flatbuffers12BinaryRegionC2EOS0_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn21, i64 320
  %i.bb = udiv exact i64 %i.ay, 160
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %i.bb, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %i.ba, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.022, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -160 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -160 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bd, ptr noundef nonnull align 8 dereferenceable(160) %i.bc, i64 40, i1 false)
  %i.be = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -120
  %i.bf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -120
  %i.bg = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.be, ptr noundef nonnull align 8 dereferenceable(120) %i.bf) #30 ; 0 uses
  %i.bh = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bi = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %_ZN11flatbuffers12BinaryRegionC2EOS0_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %3, i64 40, i1 false)
  %i.bj = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.o, ptr noundef nonnull align 8 dereferenceable(120) %i.b) #30 ; 0 uses
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !95  ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.k
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.loopexit
  %i.bm = load i64, ptr %i.k, align 8, !tbaa !86
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !95  ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.h
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.bq = load i64, ptr %i.h, align 8, !tbaa !86
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !95  ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.d
  br i1 %i.bt, label %_ZN11flatbuffers12BinaryRegionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %i.bu = load i64, ptr %i.d, align 8, !tbaa !86
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #33
  br label %_ZN11flatbuffers12BinaryRegionD2Ev.exit

_ZN11flatbuffers12BinaryRegionD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_(ptr nonnull %.sroa.0.022, ptr %2)
  br label %bb.h

bb.h:                                             ; preds = %_ZN11flatbuffers12BinaryRegionD2Ev.exit, %bb.g
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 160 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit18, label %bb.b, !llvm.loop !763

.loopexit18:                                      ; preds = %bb.h, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.flatbuffers::BinaryRegion", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(160) %0, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !83
  store i32 %i.c, ptr %i.a, align 8, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !84
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !95   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !85   ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.g, ptr %i.d, align 8, !tbaa !95
  %i.n = load i64, ptr %i.h, align 8, !tbaa !86
  store i64 %i.n, ptr %i.f, align 8, !tbaa !86
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !85
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.o = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.k, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 %i.o, ptr %i.q, align 8, !tbaa !85
  store ptr %i.h, ptr %i.e, align 8, !tbaa !95
  store i64 0, ptr %i.p, align 8, !tbaa !85
  store i8 0, ptr %i.h, align 8, !tbaa !86
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load i32, ptr %i.s, align 8, !tbaa !88
  store i32 %i.t, ptr %i.r, align 8, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 5 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !84
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !95   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !85 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.x, ptr %i.u, align 8, !tbaa !95
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !86
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !86
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre10 = load i64, ptr %.phi.trans.insert9, align 8, !tbaa !85
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i.i, %bb.c
  %i.af = phi i64 [ %.pre10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i.i ], [ %i.ab, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !85
  store ptr %i.y, ptr %i.v, align 8, !tbaa !95
  store i64 0, ptr %i.ag, align 8, !tbaa !85
  store i8 0, ptr %i.y, align 8, !tbaa !86
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 5 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !84
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !95 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !85 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %_ZN11flatbuffers12BinaryRegionC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i.i
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !95
  %i.as = load i64, ptr %i.am, align 8, !tbaa !86
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !86
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre12 = load i64, ptr %.phi.trans.insert11, align 8, !tbaa !85
  br label %_ZN11flatbuffers12BinaryRegionC2EOS0_.exit

_ZN11flatbuffers12BinaryRegionC2EOS0_.exit:       ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i.i
  %i.at = phi i64 [ %i.ap, %bb.d ], [ %.pre12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i64 %i.at, ptr %i.av, align 8, !tbaa !85
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !95
  store i64 0, ptr %i.au, align 8, !tbaa !85
  store i8 0, ptr %i.am, align 8, !tbaa !86
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !87
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !87
end_hunk_1
