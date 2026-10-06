Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/rewrites_core?download=true
inline.NumInlined: 1283
inline.NumDeleted: 268
loop-unroll.NumCompletelyUnrolled: 274
loop-unroll.NumUnrolled: 274
begin_hunk_0_@_ZN4bzla11RewriteRuleILNS_15RewriteRuleKindE293EE6_applyERNS_8RewriterERKNS_4NodeE:bb.a
  br i1 %.not.i.i1.i78, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit80, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i77
  %i.cx = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.da) #20
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit80

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit80:     ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i77, %bb.ad
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

.loopexit124.thread:                              ; preds = %bb.a, %bb.b
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.sink.split

bb.ae:                                            ; preds = %bb.i, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit125

bb.af:                                            ; preds = %bb.p, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i97.1
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit126

bb.ag:                                            ; preds = %bb.w, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i111
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %11, align 8, !tbaa !19   ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorImSaImEED2Ev.exit82, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !20
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dk) #20
  br label %_ZNSt6vectorImSaImEED2Ev.exit82

_ZNSt6vectorImSaImEED2Ev.exit82:                  ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #16
  br label %.body51

.body51:                                          ; preds = %bb.v, %.body114, %_ZNSt6vectorImSaImEED2Ev.exit82
  %.pn = phi { ptr, i32 } [ %i.de, %_ZNSt6vectorImSaImEED2Ev.exit82 ], [ %eh.lpad-body115, %.body114 ], [ %eh.lpad-body115, %bb.v ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #16
  br label %.loopexit126

.loopexit126:                                     ; preds = %.body51, %bb.af
  %.pn.pn = phi { ptr, i32 } [ %i.dd, %bb.af ], [ %.pn, %.body51 ]
  %i.dl = load ptr, ptr %10, align 8, !tbaa !19   ; 3 uses
  %.not.i.i.i83 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i83, label %_ZNSt6vectorImSaImEED2Ev.exit84, label %bb.ai

bb.ai:                                            ; preds = %.loopexit126
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !20
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dq) #20
  br label %_ZNSt6vectorImSaImEED2Ev.exit84

_ZNSt6vectorImSaImEED2Ev.exit84:                  ; preds = %.loopexit126, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #16
  br label %.body46

.body46:                                          ; preds = %bb.o, %.body100, %_ZNSt6vectorImSaImEED2Ev.exit84
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit84 ], [ %eh.lpad-body101, %.body100 ], [ %eh.lpad-body101, %bb.o ]
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dr) #16
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #16
  br label %.loopexit125

.loopexit125:                                     ; preds = %.body46, %bb.ae
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.ae ], [ %.pn.pn.pn, %.body46 ] ; 2 uses
  %.019 = phi i1 [ true, %bb.ae ], [ false, %.body46 ]
  %i.ds = load ptr, ptr %9, align 8, !tbaa !19    ; 3 uses
  %.not.i.i.i85 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i85, label %.loopexit124, label %bb.aj

bb.aj:                                            ; preds = %.loopexit125
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !20
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #20
  br label %.loopexit124

.loopexit124.thread163:                           ; preds = %.body87, %bb.h
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #16
  br label %.preheader.preheader.sink.split

.loopexit124:                                     ; preds = %bb.aj, %.loopexit125
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #16
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br i1 %.019, label %.preheader.preheader, label %.loopexit

.preheader.preheader.sink.split:                  ; preds = %.loopexit124.thread, %.loopexit124.thread163
  %.pn.pn.pn.pn.pn.pn162.ph = phi { ptr, i32 } [ %eh.lpad-body88, %.loopexit124.thread163 ], [ %i.db, %.loopexit124.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.preheader.sink.split, %.loopexit124
  %.pn.pn.pn.pn.pn.pn162 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.loopexit124 ], [ %.pn.pn.pn.pn.pn.pn162.ph, %.preheader.preheader.sink.split ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #16
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.loopexit124
  %.pn.pn.pn.pn.pn.pn161 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn162, %.preheader.preheader ], [ %.pn.pn.pn.pn, %.loopexit124 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn161
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4bzla12_GLOBAL__N_124_rw_eq_special_push_onesERNS_8RewriterERKNS_4NodeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %5 = alloca %"class.bzla::BitVector", align 8   ; 7 uses
  %6 = alloca %"class.std::vector.44", align 8    ; 14 uses
  %7 = alloca %"class.std::vector.58", align 8    ; 18 uses
  %8 = alloca %"class.std::unordered_set.63", align 8 ; 14 uses
  %9 = alloca %"class.std::reference_wrapper", align 8 ; 6 uses
  %10 = alloca %"class.std::vector.44", align 8   ; 12 uses
  %11 = alloca [2 x %"class.bzla::Node"], align 8 ; 11 uses
  %12 = alloca %"class.std::vector.49", align 8   ; 8 uses
  %13 = alloca %"class.std::vector.44", align 8   ; 13 uses
  %14 = alloca [2 x %"class.bzla::Node"], align 8 ; 11 uses
  %15 = alloca %"class.std::vector.49", align 8   ; 9 uses
  %16 = alloca %"class.std::vector.44", align 8   ; 12 uses
  %17 = alloca [2 x %"class.bzla::Node"], align 8 ; 11 uses
  %18 = alloca %"class.std::vector.49", align 8   ; 8 uses
  %i.a = tail call noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.b = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZN4bzla8Rewriter2nmEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4Node4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.d = tail call noundef i64 @_ZNK4bzla4Type7bv_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @_ZN4bzla9BitVector7mk_onesEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::BitVector") align 8 %5, i64 noundef %i.d)
  invoke void @_ZN4bzla11NodeManager8mk_valueERKNS_9BitVectorE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(216) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i8 %i.a, 26
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store ptr %i.f, ptr %8, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 1, ptr %i.g, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br i1 %i.e, label %bb.c, label %.thread253

.thread253:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
          to label %bb.d unwind label %bb.q       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !45 ; 2 uses
  %.phi.trans.insert211 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.pre212 = load ptr, ptr %.phi.trans.insert211, align 8, !tbaa !46 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, %.pre212
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = ptrtoint ptr %i.m to i64
  store i64 %i.p, ptr %.pre, align 8
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.n, align 8, !tbaa !45
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit

bb.f:                                             ; preds = %.thread253, %bb.d
  %i.s = phi ptr [ %i.l, %.thread253 ], [ %i.o, %bb.d ] ; 3 uses
  %i.t = phi ptr [ %i.k, %.thread253 ], [ %i.n, %bb.d ] ; 2 uses
  %i.u = phi ptr [ %2, %.thread253 ], [ %i.m, %bb.d ]
  %i.v = phi ptr [ null, %.thread253 ], [ %.pre212, %bb.d ] ; 3 uses
  %i.w = load ptr, ptr %7, align 8, !tbaa !47     ; 5 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.g, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #17
          to label %.noexc58 unwind label %bb.q   ; 5 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  %i.aj = ptrtoint ptr %i.u to i64
  store i64 %i.aj, ptr %i.ai, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.w, %i.v
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc58, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ah, %.noexc58 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %.noexc58 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !78, !noalias !77
  store i64 %i.ak, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !77, !noalias !78
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %i.v
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !73

_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc58
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ah, %.noexc58 ], [ %i.am, %.lr.ph.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  %i.ao = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aq) #20
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.ah, ptr %7, align 8, !tbaa !47
  store ptr %i.an, ptr %i.t, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.ar, ptr %i.s, align 8, !tbaa !46
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.e
  %i.as = phi ptr [ %i.s, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.o, %bb.e ]
  %i.at = phi ptr [ %i.t, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.n, %bb.e ] ; 3 uses
  %i.au = phi ptr [ %i.an, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.r, %bb.e ]
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.aj, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit
  %i.bc = phi ptr [ %i.dr, %bb.aj ], [ %i.au, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit ]
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !49 ; 5 uses
  store ptr %i.bd, ptr %i.at, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store ptr %i.be, ptr %9, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %8, ptr %3, align 8, !tbaa !80
  %i.bf = invoke { ptr, i8 } @_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb1EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %.fca.1.extract = extractvalue { ptr, i8 } %i.bf, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.bg = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.bg, label %bb.k, label %bb.aj

bb.k:                                             ; preds = %bb.j
  %i.bh = invoke noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.bi = icmp eq i8 %i.bh, 14
  br i1 %i.bi, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !81
  %i.bk = invoke noundef ptr @_ZNK4bzla4Node5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.bl = invoke noundef ptr @_ZNK4bzla4Node3endEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr %7, align 8, !tbaa !81    ; 2 uses
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %i.bp
  invoke void @_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE15_M_range_insertIPS3_EEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.bq, ptr noundef %i.bk, ptr noundef %i.bl)
          to label %bb.aj unwind label %bb.t

bb.p:                                             ; preds = %bb.a
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.br

bb.q:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.g, %bb.c
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.r:                                             ; preds = %bb.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.bp

bb.s:                                             ; preds = %bb.k
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.t:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.u:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.v unwind label %.thread

.thread:                                          ; preds = %bb.u
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit169

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.w unwind label %.loopexit169.loopexit198

bb.w:                                             ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.bx = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #17
          to label %.noexc121 unwind label %bb.aa ; 6 uses

.noexc121:                                        ; preds = %bb.w
  store ptr %i.bx, ptr %10, align 8, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.by, ptr %i.aw, align 8, !tbaa !15
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread255

.thread255:                                       ; preds = %.noexc121
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  %i.cb = call ptr @__cxa_begin_catch(ptr %i.ca) #16 ; 0 uses
  br label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc121
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %i.av)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
end_hunk_0
