Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/rewrites_bool?download=true
inline.NumInlined: 184
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN4bzla12_GLOBAL__N_113_rw_and_idem2ERNS_8RewriterERKNS_4NodeEm:bb.a
  %.not.i.i.i61 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorImSaImEED2Ev.exit62, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !22
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit62

_ZNSt6vectorImSaImEED2Ev.exit62:                  ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %i.cu = load ptr, ptr %7, align 8, !tbaa !16    ; 3 uses
  %i.cv = load ptr, ptr %i.cf, align 8, !tbaa !18 ; 2 uses
  %.not4.i.i.i63 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not4.i.i.i63, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i69, label %.lr.ph.i.i.i64

.lr.ph.i.i.i64:                                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit62, %.lr.ph.i.i.i64
  %.05.i.i.i65 = phi ptr [ %i.cw, %.lr.ph.i.i.i64 ], [ %i.cu, %_ZNSt6vectorImSaImEED2Ev.exit62 ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i65) #10
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i65, i64 8 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.cw, %i.cv
  br i1 %.not.i.i.i66, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i67, label %.lr.ph.i.i.i64, !llvm.loop !0

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i67: ; preds = %.lr.ph.i.i.i64
  %.pr.i68 = load ptr, ptr %7, align 8, !tbaa !16
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i69

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i69: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i67, %_ZNSt6vectorImSaImEED2Ev.exit62
  %i.cx = phi ptr [ %.pr.i68, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i67 ], [ %i.cu, %_ZNSt6vectorImSaImEED2Ev.exit62 ] ; 3 uses
  %.not.i.i1.i70 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i1.i70, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit72, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i69
  %i.cy = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.db) #14
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit72

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit72:     ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i69, %bb.ah
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dc) #10
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.al

.thread98:                                        ; preds = %bb.w, %bb.v
  %lpad.thr_comm96 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit102

.loopexit102.loopexit108:                         ; preds = %bb.z, %bb.y, %bb.x
  %lpad.thr_comm.split-lp97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #10
  br label %.loopexit102

bb.ai:                                            ; preds = %bb.ae, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i85.1
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %9, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorImSaImEED2Ev.exit74, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !22
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit74

_ZNSt6vectorImSaImEED2Ev.exit74:                  ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #10
  br label %.body58

.body58:                                          ; preds = %.body88.thread, %.body88, %_ZNSt6vectorImSaImEED2Ev.exit74
  %.pn = phi { ptr, i32 } [ %i.dd, %_ZNSt6vectorImSaImEED2Ev.exit74 ], [ %i.cn, %.body88.thread ], [ %i.ck, %.body88 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dk) #10
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #10
  br label %.loopexit102

.loopexit102:                                     ; preds = %.loopexit102.loopexit108, %.body58, %.thread98
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body58 ], [ %lpad.thr_comm96, %.thread98 ], [ %lpad.thr_comm.split-lp97, %.loopexit102.loopexit108 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.am

bb.ak:                                            ; preds = %bb.u, %bb.b, %bb.a
  tail call void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit72, %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit
  ret void

bb.am:                                            ; preds = %.loopexit102, %.loopexit
  %.pn47.pn.pn = phi { ptr, i32 } [ %.pn47.pn, %.loopexit ], [ %.pn.pn, %.loopexit102 ]
  resume { ptr, i32 } %.pn47.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla11RewriteRuleILNS_15RewriteRuleKindE4EE6_applyERNS_8RewriterERKNS_4NodeE(ptr dead_on_unwind noalias writable sret(%"class.bzla::Node") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.bzla::Node", align 8        ; 7 uses
  tail call fastcc void @_ZN4bzla12_GLOBAL__N_113_rw_and_idem3ERNS_8RewriterERKNS_4NodeEm(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %i.a = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  invoke fastcc void @_ZN4bzla12_GLOBAL__N_113_rw_and_idem3ERNS_8RewriterERKNS_4NodeEm(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.e, %bb.h ], [ %i.d, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.k

bb.j:                                             ; preds = %bb.b, %bb.e
  ret void

bb.k:                                             ; preds = %bb.i, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.c, %bb.f ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #10
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4bzla12_GLOBAL__N_113_rw_and_idem3ERNS_8RewriterERKNS_4NodeEm(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef range(i64 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = xor i64 %2, 1                            ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2)
  %i.c = tail call noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = icmp eq i8 %i.c, 7
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2)
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.a)
  %i.h = tail call noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 1)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.a)
  %i.l = tail call noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.sink = phi ptr [ %i.m, %bb.d ], [ %1, %bb.c ], [ %1, %bb.a ]
  tail call void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sink)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla11RewriteRuleILNS_15RewriteRuleKindE5EE6_applyERNS_8RewriterERKNS_4NodeE(ptr dead_on_unwind noalias writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.bzla::Node", align 8        ; 8 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0), !noalias !31
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1), !noalias !31
  %i.c = tail call noundef zeroext i1 @_ZN4bzla7rewrite5utils14is_inverted_ofERKNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !31
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZN4bzla8Rewriter2nmEv(ptr noundef nonnull align 8 dereferenceable(208) %1), !noalias !31
  tail call void @_ZN4bzla11NodeManager8mk_valueEb(ptr dead_on_unwind writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %i.d, i1 noundef zeroext false)
  br label %_ZN4bzla12_GLOBAL__N_115_rw_and_contra1ERNS_8RewriterERKNS_4NodeEm.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN4bzla12_GLOBAL__N_115_rw_and_contra1ERNS_8RewriterERKNS_4NodeEm.exit

_ZN4bzla12_GLOBAL__N_115_rw_and_contra1ERNS_8RewriterERKNS_4NodeEm.exit: ; preds = %bb.b, %bb.c
  %i.e = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN4bzla12_GLOBAL__N_115_rw_and_contra1ERNS_8RewriterERKNS_4NodeEm.exit
  br i1 %i.e, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
          to label %.noexc unwind label %bb.j, !noalias !32

.noexc:                                           ; preds = %bb.e
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
          to label %.noexc11 unwind label %bb.j, !noalias !32

.noexc11:                                         ; preds = %.noexc
  %i.h = invoke noundef zeroext i1 @_ZN4bzla7rewrite5utils14is_inverted_ofERKNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc12 unwind label %bb.j, !noalias !32

.noexc12:                                         ; preds = %.noexc11
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc12
  %i.i = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZN4bzla8Rewriter2nmEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %.noexc13 unwind label %bb.j, !noalias !32

.noexc13:                                         ; preds = %bb.f
  invoke void @_ZN4bzla11NodeManager8mk_valueEb(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %3, ptr noundef nonnull align 8 dereferenceable(216) %i.i, i1 noundef zeroext false)
          to label %_ZN4bzla12_GLOBAL__N_115_rw_and_contra1ERNS_8RewriterERKNS_4NodeEm.exit16 unwind label %bb.j

bb.g:                                             ; preds = %.noexc12
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN4bzla12_GLOBAL__N_115_rw_and_contra1ERNS_8RewriterERKNS_4NodeEm.exit16 unwind label %bb.j

_ZN4bzla12_GLOBAL__N_115_rw_and_contra1ERNS_8RewriterERKNS_4NodeEm.exit16: ; preds = %.noexc13, %bb.g
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %_ZN4bzla12_GLOBAL__N_115_rw_and_contra1ERNS_8RewriterERKNS_4NodeEm.exit16
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.m

bb.i:                                             ; preds = %_ZN4bzla12_GLOBAL__N_115_rw_and_contra1ERNS_8RewriterERKNS_4NodeEm.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %bb.g, %.noexc13, %bb.f, %.noexc11, %.noexc, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZN4bzla12_GLOBAL__N_115_rw_and_contra1ERNS_8RewriterERKNS_4NodeEm.exit16
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.m, %bb.k ], [ %i.l, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.n

bb.m:                                             ; preds = %bb.d, %bb.h
  ret void

bb.n:                                             ; preds = %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.k, %bb.i ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #10
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla11RewriteRuleILNS_15RewriteRuleKindE6EE6_applyERNS_8RewriterERKNS_4NodeE(ptr dead_on_unwind noalias writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.bzla::Node", align 8        ; 7 uses
  tail call fastcc void @_ZN4bzla12_GLOBAL__N_115_rw_and_contra2ERNS_8RewriterERKNS_4NodeEm(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %i.a = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  invoke fastcc void @_ZN4bzla12_GLOBAL__N_115_rw_and_contra2ERNS_8RewriterERKNS_4NodeEm(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.e, %bb.h ], [ %i.d, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.k

bb.j:                                             ; preds = %bb.b, %bb.e
  ret void

bb.k:                                             ; preds = %bb.i, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.c, %bb.f ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #10
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4bzla12_GLOBAL__N_115_rw_and_contra2ERNS_8RewriterERKNS_4NodeEm(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef range(i64 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = xor i64 %3, 1                            ; 5 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3)
  %i.c = tail call noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = icmp eq i8 %i.c, 7
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.a)
  %i.f = tail call noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = icmp eq i8 %i.f, 7
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.a)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
  %i.l = tail call noundef zeroext i1 @_ZN4bzla7rewrite5utils14is_inverted_ofERKNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br i1 %i.l, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3)
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.a)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 1)
  %i.q = tail call noundef zeroext i1 @_ZN4bzla7rewrite5utils14is_inverted_ofERKNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef 1)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.a)
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef 0)
  %i.v = tail call noundef zeroext i1 @_ZN4bzla7rewrite5utils14is_inverted_ofERKNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef 1)
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.a)
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef 1)
  %i.aa = tail call noundef zeroext i1 @_ZN4bzla7rewrite5utils14is_inverted_ofERKNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.ab = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZN4bzla8Rewriter2nmEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  tail call void @_ZN4bzla11NodeManager8mk_valueEb(ptr dead_on_unwind writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %i.ab, i1 noundef zeroext false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.b, %bb.a
  tail call void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla11RewriteRuleILNS_15RewriteRuleKindE7EE6_applyERNS_8RewriterERKNS_4NodeE(ptr dead_on_unwind noalias writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.bzla::Node", align 8        ; 7 uses
  tail call fastcc void @_ZN4bzla12_GLOBAL__N_115_rw_and_contra3ERNS_8RewriterERKNS_4NodeEm(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %i.a = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  invoke fastcc void @_ZN4bzla12_GLOBAL__N_115_rw_and_contra3ERNS_8RewriterERKNS_4NodeEm(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN4bzla11RewriteRuleILNS_15RewriteRuleKindE56EE6_applyERNS_8RewriterERKNS_4NodeE:bb.a
bb.an:                                            ; preds = %bb.ad, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i111.1
  %i.du = landingpad { ptr, i32 }
          cleanup
  %i.dv = load ptr, ptr %11, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorImSaImEED2Ev.exit82, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !22
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit82

_ZNSt6vectorImSaImEED2Ev.exit82:                  ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #10
  br label %.body51

.body51:                                          ; preds = %bb.ac, %.body114, %_ZNSt6vectorImSaImEED2Ev.exit82
  %.pn = phi { ptr, i32 } [ %i.du, %_ZNSt6vectorImSaImEED2Ev.exit82 ], [ %eh.lpad-body115, %.body114 ], [ %eh.lpad-body115, %bb.ac ]
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eb) #10
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #10
  br label %.loopexit136

.loopexit136:                                     ; preds = %.body51, %bb.am
  %.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.am ], [ %.pn, %.body51 ]
  %.0 = phi i1 [ true, %bb.am ], [ false, %.body51 ]
  %i.ec = load ptr, ptr %10, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i83 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i83, label %_ZNSt6vectorImSaImEED2Ev.exit84, label %bb.ap

bb.ap:                                            ; preds = %.loopexit136
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !22
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eh) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit84

_ZNSt6vectorImSaImEED2Ev.exit84:                  ; preds = %.loopexit136, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #10
  br label %.body46

.body46:                                          ; preds = %bb.u, %.body100, %_ZNSt6vectorImSaImEED2Ev.exit84
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit84 ], [ %eh.lpad-body101, %.body100 ], [ %eh.lpad-body101, %bb.u ]
  %.1 = phi i1 [ %.0, %_ZNSt6vectorImSaImEED2Ev.exit84 ], [ true, %.body100 ], [ true, %bb.u ]
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ei) #10
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #10
  br label %.loopexit135

.loopexit135:                                     ; preds = %.loopexit135.loopexit143, %.body46, %.thread125
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body46 ], [ %lpad.thr_comm123, %.thread125 ], [ %lpad.thr_comm.split-lp124, %.loopexit135.loopexit143 ]
  %.2 = phi i1 [ %.1, %.body46 ], [ true, %.thread125 ], [ true, %.loopexit135.loopexit143 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit135, %bb.al
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.loopexit135 ], [ %i.ds, %bb.al ]
  %.019 = phi ptr [ %i.aa, %.loopexit135 ], [ %4, %bb.al ]
  %.3 = phi i1 [ %.2, %.loopexit135 ], [ true, %bb.al ]
  %i.ej = load ptr, ptr %7, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i85 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorImSaImEED2Ev.exit86, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !22
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ej to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.eo) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit86

_ZNSt6vectorImSaImEED2Ev.exit86:                  ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #10
  br label %.body

.body:                                            ; preds = %bb.j, %.body87, %_ZNSt6vectorImSaImEED2Ev.exit86
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit86 ], [ %eh.lpad-body88, %.body87 ], [ %eh.lpad-body88, %bb.j ] ; 2 uses
  %.120 = phi ptr [ %.019, %_ZNSt6vectorImSaImEED2Ev.exit86 ], [ %4, %.body87 ], [ %4, %bb.j ] ; 2 uses
  %.4 = phi i1 [ %.3, %_ZNSt6vectorImSaImEED2Ev.exit86 ], [ true, %.body87 ], [ true, %bb.j ]
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ep) #10
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.eq = icmp ne ptr %4, %.120
  %or.cond.not = select i1 %.4, i1 %i.eq, i1 false
  br i1 %or.cond.not, label %.preheader, label %.loopexit

.thread129:                                       ; preds = %.thread129.loopexit, %.thread
  %.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %.thread129.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.loopexit

.preheader:                                       ; preds = %.body, %.preheader
  %i.er = phi ptr [ %i.es, %.preheader ], [ %.120, %.body ]
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -8 ; 3 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.es) #10
  %i.et = icmp eq ptr %i.es, %4
  br i1 %i.et, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %.thread129, %.body
  %.pn.pn.pn.pn.pn.pn.pn134 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.ph, %.thread129 ], [ %.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn.pn.pn.pn.pn.pn, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn134
}

declare void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #3

declare noundef zeroext i1 @_ZN4bzla7rewrite5utils14is_inverted_ofERKNS_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4bzla8Rewriter5is_orERKNS_4NodeERS1_S4_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !23}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTSN4bzla4NodeE", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIN4bzla4NodeESaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 0}
!17 = !{!15, !14, i64 16}
!18 = !{!15, !14, i64 8}
!19 = !{!"p1 long", !13, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 0}
!22 = !{!20, !19, i64 16}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"p1 _ZTSN4bzla4node8NodeDataE", !13, i64 0}
!25 = !{!"_ZTSN4bzla4NodeE", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = distinct !{!27, i1 true, !"_ZN4bzla12_GLOBAL__N_115_rw_and_contra1ERNS_8RewriterERKNS_4NodeEm"}
!28 = distinct !{!28, !27, !"_ZN4bzla12_GLOBAL__N_115_rw_and_contra1ERNS_8RewriterERKNS_4NodeEm: argument 0"}
!29 = distinct !{!29, i1 true, !"_ZN4bzla12_GLOBAL__N_115_rw_and_contra1ERNS_8RewriterERKNS_4NodeEm"}
!30 = distinct !{!30, !29, !"_ZN4bzla12_GLOBAL__N_115_rw_and_contra1ERNS_8RewriterERKNS_4NodeEm: argument 0"}
!31 = !{!28}
!32 = !{!30}
end_hunk_1
