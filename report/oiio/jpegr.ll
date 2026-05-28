inline.NumInlined: 1678
inline.NumDeleted: 808
begin_hunk_0_@_ZN8ultrahdr5JpegR13parseJpegInfoEP21uhdr_compressed_imagePNS_16jpeg_info_structEPjS5_:bb.a
  %.pre67 = load ptr, ptr %i.bz, align 8, !tbaa !216
  %.pre76 = ptrtoint ptr %.pre67 to i64
  %.pre78 = ptrtoint ptr %.pre66 to i64
  %.pre80 = sub i64 %.pre76, %.pre78
  br label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit53

bb.w:                                             ; preds = %bb.u
  %i.co = icmp ult i64 %i.ce, %i.cl
  br i1 %i.co, label %bb.x, label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit53

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ce ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.ch, %i.cp
  br i1 %.not.i.i50, label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit53, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i51

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i51:      ; preds = %bb.x
  store ptr %i.cp, ptr %i.cg, align 8, !tbaa !216
  br label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit53

_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit53:          ; preds = %._ZNSt6vectorIhSaIhEE6resizeEmRKh.exit53_crit_edge, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i51, %bb.x, %bb.w
  %.pre-phi81 = phi i64 [ %.pre80, %._ZNSt6vectorIhSaIhEE6resizeEmRKh.exit53_crit_edge ], [ %i.ce, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i51 ], [ %i.ce, %bb.x ], [ %i.ce, %bb.w ]
  %i.cq = phi ptr [ %.pre66, %._ZNSt6vectorIhSaIhEE6resizeEmRKh.exit53_crit_edge ], [ %i.cb, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i51 ], [ %i.cb, %bb.x ], [ %i.cb, %bb.w ]
  %i.cr = phi ptr [ %.pre65, %._ZNSt6vectorIhSaIhEE6resizeEmRKh.exit53_crit_edge ], [ %i.ci, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i51 ], [ %i.ci, %bb.x ], [ %i.ci, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr align 1 %i.cq, i64 %.pre-phi81, i1 false)
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.aj

bb.z:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit53, %bb.t
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !216 ; 2 uses
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !105 ; 5 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 7 uses
  %.not39 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not39, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i8 0, ptr %i.e, align 1, !tbaa !93
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !216 ; 3 uses
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !105 ; 5 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 3 uses
  %i.dh = icmp ugt i64 %i.cz, %i.dg
  br i1 %i.dh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.di = sub nuw i64 %i.cz, %i.dg
  invoke void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr %i.dc, i64 noundef %i.di, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %._ZNSt6vectorIhSaIhEE6resizeEmRKh.exit57_crit_edge unwind label %bb.ae

._ZNSt6vectorIhSaIhEE6resizeEmRKh.exit57_crit_edge: ; preds = %bb.ab
  %.pre68 = load ptr, ptr %i.da, align 8, !tbaa !105
  %.pre69 = load ptr, ptr %i.ct, align 8, !tbaa !105 ; 2 uses
  %.pre70 = load ptr, ptr %i.cu, align 8, !tbaa !216
  %.pre71 = ptrtoint ptr %.pre70 to i64
  %.pre72 = ptrtoint ptr %.pre69 to i64
  %.pre74 = sub i64 %.pre71, %.pre72
  br label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit57

bb.ac:                                            ; preds = %bb.aa
  %i.dj = icmp ult i64 %i.cz, %i.dg
  br i1 %i.dj, label %bb.ad, label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit57

bb.ad:                                            ; preds = %bb.ac
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cz ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.dc, %i.dk
  br i1 %.not.i.i54, label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit57, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i55

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i55:      ; preds = %bb.ad
  store ptr %i.dk, ptr %i.db, align 8, !tbaa !216
  br label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit57

_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit57:          ; preds = %._ZNSt6vectorIhSaIhEE6resizeEmRKh.exit57_crit_edge, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i55, %bb.ad, %bb.ac
  %.pre-phi75 = phi i64 [ %.pre74, %._ZNSt6vectorIhSaIhEE6resizeEmRKh.exit57_crit_edge ], [ %i.cz, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i55 ], [ %i.cz, %bb.ad ], [ %i.cz, %bb.ac ]
  %i.dl = phi ptr [ %.pre69, %._ZNSt6vectorIhSaIhEE6resizeEmRKh.exit57_crit_edge ], [ %i.cw, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i55 ], [ %i.cw, %bb.ad ], [ %i.cw, %bb.ac ]
  %i.dm = phi ptr [ %.pre68, %._ZNSt6vectorIhSaIhEE6resizeEmRKh.exit57_crit_edge ], [ %i.dd, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i55 ], [ %i.dd, %bb.ad ], [ %i.dd, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %i.dl, i64 %.pre-phi75, i1 false)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %bb.aj

bb.af:                                            ; preds = %bb.z, %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit57, %bb.c
  %i.do = icmp ne ptr %4, null
  %i.dp = icmp ne ptr %5, null
  %or.cond = and i1 %i.do, %i.dp
  br i1 %or.cond, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 %i.l, ptr %4, align 4, !tbaa !3
  store i32 %i.n, ptr %5, align 4, !tbaa !3
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN8ultrahdr17JpegDecoderHelper10parseImageEPKvm.exit, %bb.ah
  call void @_ZN8ultrahdr17JpegDecoderHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void

bb.aj:                                            ; preds = %bb.l, %bb.m, %bb.s, %bb.y, %bb.ae, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.dn, %bb.ae ], [ %i.cs, %bb.y ], [ %i.bx, %bb.s ], [ %i.bc, %bb.m ], [ %i.bb, %bb.l ]
  call void @_ZN8ultrahdr17JpegDecoderHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr5JpegR20parseGainMapMetadataEPhmS1_mPNS_25uhdr_gainmap_metadata_extE(ptr dead_on_unwind noalias writable sret(%struct.uhdr_error_info) align 4 %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.ultrahdr::uhdr_gainmap_metadata_frac", align 4 ; 5 uses
  %8 = alloca %"class.std::vector", align 8       ; 13 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ultrahdrL13kIsoNameSpaceB5cxx11E, i64 8), align 8, !tbaa !91
  %i.b = add i64 %i.a, 1                          ; 4 uses
  %i.c = icmp ult i64 %3, %i.b
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %0, align 4, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.d, align 4, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 256, ptr noundef nonnull @.str.26, i64 noundef %i.b, i64 noundef %3) #28 ; 0 uses
  br label %bb.w

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.g = icmp ult i64 %i.b, %3
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit, %bb.d
  invoke void @_ZN8ultrahdr26uhdr_gainmap_metadata_frac21decodeGainmapMetadataERKSt6vectorIhSaIhEEPS0_(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %7)
          to label %bb.k unwind label %bb.l

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 3 uses
  %.01730 = phi i64 [ %i.b, %.lr.ph ], [ %.017, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.01730 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !107
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i8, ptr %i.k, align 1, !tbaa !93
  store i8 %i.m, ptr %i.j, align 1, !tbaa !93
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !216
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  store ptr %i.o, ptr %i.h, align 8, !tbaa !216
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.g:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %8, align 8, !tbaa !105    ; 6 uses
  %i.q = ptrtoint ptr %i.j to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 8 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775807
  br i1 %i.t, label %bb.h, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.u = add i64 %.sroa.speculated.i.i.i, %i.s    ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.s
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807)
  %i.x = select i1 %i.v, i64 9223372036854775807, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i, label %9

9:                                                ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %10 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #31
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i unwind label %.loopexit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %9, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %11 = phi ptr [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i ], [ %10, %9 ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 %i.s ; 2 uses
  %i.z = load i8, ptr %i.k, align 1, !tbaa !93
  store i8 %i.z, ptr %i.y, align 1, !tbaa !93
  %i.aa = icmp sgt i64 %i.s, 0
  br i1 %i.aa, label %bb.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %11, ptr align 1 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #30
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %11, ptr %8, align 8, !tbaa !105
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !216
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 %i.x
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !107
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i
  %i.ad = phi ptr [ %i.o, %bb.f ], [ %i.ab, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ]
  %.017 = add nuw i64 %.01730, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %.017, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.e

.loopexit:                                        ; preds = %9
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.k:                                             ; preds = %._crit_edge
  %i.ae = load i32, ptr %0, align 4, !tbaa !79
  %.not22 = icmp eq i32 %i.ae, 0
  br i1 %.not22, label %bb.m, label %bb.o

bb.l:                                             ; preds = %bb.m, %._crit_edge
  %i.af = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %8, align 8, !tbaa !105
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  invoke void @_ZN8ultrahdr26uhdr_gainmap_metadata_frac30gainmapMetadataFractionToFloatEPKS0_PNS_25uhdr_gainmap_metadata_extE(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull %7, ptr noundef %6)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.ag = load i32, ptr %0, align 4, !tbaa !79
  %.not23 = icmp eq i32 %i.ag, 0
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.0 = phi i1 [ false, %bb.k ], [ %.not23, %bb.n ]
  %i.ah = load ptr, ptr %8, align 8, !tbaa !105   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !107
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br i1 %.0, label %bb.v, label %bb.w

bb.q:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.l
  %i.an = phi ptr [ %.pre, %bb.l ], [ %i.p, %.loopexit ], [ %i.p, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.af, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i27 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIhSaIhEED2Ev.exit28, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !107
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit28

_ZNSt6vectorIhSaIhEED2Ev.exit28:                  ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %bb.a
  %.not20 = icmp eq i64 %5, 0
  br i1 %.not20, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN8ultrahdr18getMetadataFromXMPEPhmPNS_25uhdr_gainmap_metadata_extE(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef %4, i64 noundef %5, ptr noundef %6)
  %i.at = load i32, ptr %0, align 4, !tbaa !79
  %.not21 = icmp eq i32 %i.at, 0
  br i1 %.not21, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  store i32 3, ptr %0, align 4, !tbaa !79
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.au, align 4, !tbaa !82
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(51) %i.av, ptr noundef nonnull align 1 dereferenceable(51) @.str.27, i64 51, i1 false)
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %bb.v, %bb.u, %bb.c
  ret void
}

declare void @_ZN8ultrahdr26uhdr_gainmap_metadata_frac21decodeGainmapMetadataERKSt6vectorIhSaIhEEPS0_(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #7

declare void @_ZN8ultrahdr26uhdr_gainmap_metadata_frac30gainmapMetadataFractionToFloatEPKS0_PNS_25uhdr_gainmap_metadata_extE(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @_ZN8ultrahdr18getMetadataFromXMPEPhmPNS_25uhdr_gainmap_metadata_extE(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr5JpegR11decodeJPEGREP21uhdr_compressed_imageP14uhdr_raw_imagef19uhdr_color_transfer12uhdr_img_fmtS4_P21uhdr_gainmap_metadata(ptr dead_on_unwind noalias writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(40) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, float noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef writeonly captures(address_is_null) %8) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %struct.uhdr_compressed_image, align 8 ; 6 uses
  %10 = alloca %struct.uhdr_compressed_image, align 8 ; 6 uses
  %11 = alloca %"class.ultrahdr::JpegDecoderHelper", align 8 ; 10 uses
  %12 = alloca %"class.ultrahdr::JpegDecoderHelper", align 8 ; 14 uses
  %13 = alloca %struct.uhdr_raw_image, align 8    ; 7 uses
  %14 = alloca %struct.uhdr_raw_image, align 8    ; 5 uses
  %15 = alloca %"struct.ultrahdr::uhdr_gainmap_metadata_ext", align 8 ; 15 uses
  %16 = alloca %struct.uhdr_raw_image, align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @_ZN8ultrahdr5JpegR29extractPrimaryImageAndGainMapEP21uhdr_compressed_imageS2_S2_(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4 %0, ptr nonnull align 8 poison, ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %i.a = load i32, ptr %0, align 4, !tbaa !79
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %11, i8 0, i64 144, i1 false)
  %i.b = load ptr, ptr %9, align 8, !tbaa !218
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !217
  %i.e = icmp eq i32 %5, 3                        ; 2 uses
  %i.f = select i1 %i.e, i32 262144, i32 131072
  invoke void @_ZN8ultrahdr17JpegDecoderHelper15decompressImageEPKvmNS_13decode_mode_tE(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef %i.b, i64 noundef %i.d, i32 noundef %i.f)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 4, !tbaa !79
  %.not34 = icmp eq i32 %i.g, 0
  br i1 %.not34, label %bb.e, label %bb.ai

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %12, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.i = icmp ne ptr %7, null                     ; 2 uses
  %i.j = icmp ne i32 %5, 3                        ; 2 uses
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %10, align 8, !tbaa !218
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !217
  invoke void @_ZN8ultrahdr17JpegDecoderHelper15decompressImageEPKvmNS_13decode_mode_tE(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef %i.k, i64 noundef %i.m, i32 noundef 65536)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %0, align 4, !tbaa !79
  %.not35 = icmp eq i32 %i.n, 0
  br i1 %.not35, label %bb.i, label %bb.ag

bb.h:                                             ; preds = %bb.n, %bb.k, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  invoke void @_ZN8ultrahdr17JpegDecoderHelper20getDecompressedImageEv(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_raw_image) align 8 %14, ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %14, i64 64, i1 false), !tbaa.struct !392
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br i1 %i.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN8ultrahdr14copy_raw_imageEP14uhdr_raw_imageS1_(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull %13, ptr noundef nonnull %7)
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k
  %i.p = load i32, ptr %0, align 4, !tbaa !79
  %.not36 = icmp eq i32 %i.p, 0
  br i1 %.not36, label %bb.n, label %bb.ag

bb.m:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.ah

bb.n:                                             ; preds = %bb.l, %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !105  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !216
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = invoke noundef i32 @_ZN8ultrahdr9IccHelper17readIccColorGamutEPvm(ptr noundef %i.s, i64 noundef %i.x)
end_hunk_0
