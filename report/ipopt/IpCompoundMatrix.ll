Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpCompoundMatrix?download=true
inline.NumInlined: 1065
inline.NumDeleted: 526
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK5Ipopt14CompoundMatrix9PrintImplERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_:bb.a
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit49
  %i.cz = load i64, ptr %i.w, align 8, !tbaa !243
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  resume { ptr, i32 } %i.co

bb.n:                                             ; preds = %_ZNK5Ipopt14CompoundMatrix9ConstCompEii.exit
  %i.db = load ptr, ptr %6, align 8, !tbaa !235
  %i.dc = load ptr, ptr %1, align 8, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8
  call void (ptr, i32, i32, i32, ptr, ...) %i.de(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, i32 noundef %5, ptr noundef nonnull @.str.4, ptr noundef %i.db)
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load ptr, ptr %i.h, align 8, !tbaa !27  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !41
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next, %i.di
  br i1 %i.dj, label %bb.b, label %._crit_edge, !llvm.loop !249
}

declare noundef i32 @_ZN5Ipopt8SnprintfEPclPKcz(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt19CompoundMatrixSpaceC2Eiiii(ptr noundef nonnull align 8 dereferenceable(129) initializes((0, 29), (32, 80)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.59", align 8    ; 13 uses
  %6 = alloca %"class.std::vector.64", align 8    ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %3, ptr %i.b, align 4, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %4, ptr %i.c, align 8, !tbaa !173
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt19CompoundMatrixSpaceE, i64 16), ptr %0, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  store i32 %1, ptr %i.d, align 4, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 %2, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.f, align 4, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.j = sext i32 %1 to i64                       ; 2 uses
  %i.k = icmp slt i32 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  br i1 %i.k, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i.i, label %.loopexit53, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.l = shl nuw nsw i64 %i.j, 2                  ; 3 uses
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #21
          to label %.noexc19 unwind label %bb.o   ; 4 uses

.noexc19:                                         ; preds = %bb.c
  store ptr %i.m, ptr %i.i, align 8, !tbaa !251
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.n, ptr %i.o, align 8, !tbaa !252
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.m, i8 -1, i64 %i.l, i1 false), !tbaa !253
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  br label %.loopexit53

.loopexit53:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc19
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.p, %.noexc19 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.q, align 8, !tbaa !254
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.s = sext i32 %2 to i64                       ; 2 uses
  %i.t = icmp slt i32 %2, 0
  br i1 %i.t, label %bb.d, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i20

bb.d:                                             ; preds = %.loopexit53
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc27 unwind label %bb.p

.noexc27:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i20: ; preds = %.loopexit53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not.i.i.i.i21 = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i21, label %.loopexit52, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i20
  %i.u = shl nuw nsw i64 %i.s, 2                  ; 3 uses
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #21
          to label %.noexc28 unwind label %bb.p   ; 4 uses

.noexc28:                                         ; preds = %bb.e
  store ptr %i.v, ptr %i.r, align 8, !tbaa !251
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.w, ptr %i.x, align 8, !tbaa !252
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 -1, i64 %i.u, i1 false), !tbaa !253
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  br label %.loopexit52

.loopexit52:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i20, %.noexc28
  %.0.i.i.i.i.i.i.i25 = phi ptr [ %i.y, %.noexc28 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i20 ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.0.i.i.i.i.i.i.i25, ptr %i.z, align 8, !tbaa !254
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.aa, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ab = load i32, ptr %i.e, align 8, !tbaa !41  ; 3 uses
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = icmp slt i32 %i.ab, 0
  br i1 %i.ad, label %bb.f, label %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

bb.f:                                             ; preds = %.loopexit52
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc31 unwind label %bb.q

.noexc31:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %.loopexit52
  store i64 0, ptr %5, align 8
  %.not.i.i.i.i30 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i30, label %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EEC2EmRKS5_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.ae = shl nuw nsw i64 %i.ac, 3                ; 3 uses
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #21
          to label %.noexc32 unwind label %bb.q   ; 4 uses

.noexc32:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.af, ptr %5, align 8, !tbaa !109
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ac
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.af, i8 0, i64 %i.ae, i1 false), !tbaa !12
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.af, i64 %i.ae
  %.pre = load i32, ptr %i.e, align 8, !tbaa !41
  br label %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EEC2EmRKS5_.exit.thread.i

_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EEC2EmRKS5_.exit.thread.i: ; preds = %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i, %.noexc32
  %i.ah = phi i32 [ %.pre, %.noexc32 ], [ 0, %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ] ; 4 uses
  %.sink.i = phi ptr [ %i.ag, %.noexc32 ], [ null, %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc32 ], [ null, %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.aj, align 8, !tbaa !255
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ak = sext i32 %i.ah to i64                   ; 2 uses
  store ptr null, ptr %6, align 8, !tbaa !257
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.al, align 8, !tbaa !260
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.am, align 8, !tbaa !257
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !260
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !261
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EEC2EmRKS5_.exit.thread.i
  %i.ap = add nsw i64 %i.ak, 63                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = and i64 %i.aq, 2305843009213693944
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #21
          to label %bb.h unwind label %bb.i       ; 5 uses

bb.h:                                             ; preds = %bb.g
  %i.at = lshr i64 %i.ap, 6                       ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !261
  store ptr %i.as, ptr %6, align 8
  store i32 0, ptr %i.al, align 8
  %i.av = sdiv i32 %i.ah, 64
  %.sext = sext i32 %i.av to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.as, i64 %.sext
  %i.ax = and i64 %i.ak, -9223372036854775745
  %i.ay = icmp ugt i64 %i.ax, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ay, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.aw, i64 %storemerge.idx.i.i.i.i.i
  %i.az = and i32 %i.ah, 63
  store ptr %storemerge.i.i.i.i.i, ptr %i.am, align 8
  store i32 %i.az, ptr %i.an, align 8
  %.idx.i = shl nuw nsw i64 %i.at, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.as, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

bb.i:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %6, align 8, !tbaa !257   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %i.ao, align 8, !tbaa !261 ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bh
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bf) #22
  br label %.body

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.h, %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EEC2EmRKS5_.exit.thread.i
  %i.bj = phi ptr [ %i.as, %bb.h ], [ null, %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EEC2EmRKS5_.exit.thread.i ]
  %i.bk = load i32, ptr %i.d, align 4, !tbaa !74
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.r

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIS_IbSaIbEESaIS1_EE9push_backERKS1_.exit
  %.pre55 = load ptr, ptr %6, align 8, !tbaa !257
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.bq = phi ptr [ %.pre55, %._crit_edge.loopexit ], [ %i.bj, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ] ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i33, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.br = load ptr, ptr %i.ao, align 8, !tbaa !261 ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 2 uses
  %i.bv = ashr exact i64 %i.bu, 3
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bw
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.bu) #22
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %._crit_edge, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.by = load ptr, ptr %5, align 8, !tbaa !109   ; 3 uses
  %i.bz = load ptr, ptr %i.ai, align 8, !tbaa !256 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.by, %i.bz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ci, %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i ], [ %i.by, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 2 uses
  %i.ca = load ptr, ptr %.05.i.i.i, align 8, !tbaa !12 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !8
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !8
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.m, label %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !10
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(20) %i.ca) #19, !inline_history !264
  br label %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i: ; preds = %bb.m, %bb.l, %.lr.ph.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.ci, %i.bz
  br i1 %.not.i.i.i34, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !265

_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !109
  br label %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.cj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.by, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exit.i
  %i.ck = load ptr, ptr %i.aj, align 8, !tbaa !255
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cn) #22
  br label %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEES4_EvT_S6_RSaIT0_E.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.o:                                             ; preds = %bb.c, %bb.b
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit46

bb.p:                                             ; preds = %bb.e, %bb.d
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.q:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.f
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.r:                                             ; preds = %.lr.ph, %_ZNSt6vectorIS_IbSaIbEESaIS1_EE9push_backERKS1_.exit
  %.054 = phi i32 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt6vectorIS_IbSaIbEESaIS1_EE9push_backERKS1_.exit ]
  %i.cr = load ptr, ptr %i.bm, align 8, !tbaa !266 ; 6 uses
  %i.cs = load ptr, ptr %i.bn, align 8, !tbaa !267
  %.not.i = icmp eq ptr %i.cr, %i.cs
  br i1 %.not.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = load ptr, ptr %i.ai, align 8, !tbaa !256 ; 2 uses
  %i.cu = load ptr, ptr %5, align 8, !tbaa !109   ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i.i.i.i.i, label %.noexc37, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = icmp ugt i64 %i.cx, 9223372036854775800
  br i1 %i.cy, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !82

.noexc.i.i.i:                                     ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #21
          to label %.noexc37 unwind label %.loopexit

.noexc37:                                         ; preds = %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.s
  %i.da = phi ptr [ null, %bb.s ], [ %i.cz, %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.da, ptr %i.cr, align 8, !tbaa !109
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  store ptr %i.da, ptr %i.db, align 8, !tbaa !256
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cx
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !255
  %i.de = load ptr, ptr %5, align 8, !tbaa !268   ; 2 uses
  %i.df = load ptr, ptr %i.ai, align 8, !tbaa !268 ; 2 uses
  %.not11.i.i.i.i.i.i = icmp eq ptr %i.de, %i.df
  br i1 %.not11.i.i.i.i.i.i, label %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EEC2ERKS6_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc37, %bb.v
  %.013.i.i.i.i.i.i = phi ptr [ %i.dl, %bb.v ], [ %i.da, %.noexc37 ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.dk, %bb.v ], [ %i.de, %.noexc37 ] ; 2 uses
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !12
  %i.dg = load ptr, ptr %.sroa.08.012.i.i.i.i.i.i, align 8, !tbaa !12 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !8
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 8, !tbaa !8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.i.i
  store ptr %i.dg, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !12
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i35 = icmp eq ptr %i.dk, %i.df
  br i1 %.not.i.i.i.i.i.i35, label %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EEC2ERKS6_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !269

_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EEC2ERKS6_.exit.i: ; preds = %bb.v, %.noexc37
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.da, %.noexc37 ], [ %i.dl, %bb.v ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.db, align 8, !tbaa !256
  %i.dm = load ptr, ptr %i.bm, align 8, !tbaa !266
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store ptr %i.dn, ptr %i.bm, align 8, !tbaa !266
  br label %_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE9push_backERKS6_.exit

end_hunk_0
begin_hunk_1_@_ZN5Ipopt19CompoundMatrixSpaceD2Ev:bb.a
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #22
  br label %_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EED2Ev.exit

_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt19CompoundMatrixSpaceD0Ev(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN5Ipopt19CompoundMatrixSpaceD2Ev(ptr noundef nonnull align 8 dead_on_return(129) dereferenceable(129) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK5Ipopt19CompoundMatrixSpace7MakeNewEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK5Ipopt19CompoundMatrixSpace21MakeNewCompoundMatrixEv(ptr noundef nonnull align 8 dereferenceable(129) %0)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt12TaggedObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt12TaggedObjectD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #22
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn16_N5Ipopt12TaggedObjectD1Ev(ptr noundef %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn16_N5Ipopt12TaggedObjectD0Ev(ptr noundef %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef 56) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt7SubjectE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !295  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !295
  %.not13 = icmp eq ptr %i.b, %i.d
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !296
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !297
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #22
  br label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.o
  %.sroa.02.014 = phi ptr [ %i.bl, %bb.o ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.02.014, align 8, !tbaa !298 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !300  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !300  ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = ashr i64 %i.r, 5                         ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph
  %i.u = and i64 %i.r, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.m, i64 %i.u ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %i.ah, %bb.g ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i ], [ %i.ag, %bb.g ] ; 9 uses
  %i.v = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !302
  %i.w = icmp eq ptr %i.v, %0
  br i1 %i.w, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !302
  %i.z = icmp eq ptr %i.y, %0
  br i1 %i.z, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !302
  %i.ac = icmp eq ptr %i.ab, %0
  br i1 %i.ac, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !302
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit30, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.ah = add nsw i64 %.052.i.i.i.i, -1
  %i.ai = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.ai, label %bb.c, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !304

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.g
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.p, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %.lr.ph
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.r, %.lr.ph ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.m, %.lr.ph ] ; 5 uses
  %i.aj = ashr exact i64 %.pre-phi61.i.i.i.i, 3
  switch i64 %i.aj, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ak = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !302
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.am, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.an = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !302
  %i.ao = icmp eq ptr %i.an, %0
  br i1 %i.ao, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %bb.j, %._crit_edge.i.i.i.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.ap, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !302
  %i.ar = icmp eq ptr %i.aq, %0
  %spec.select.i.i.i.i = select i1 %i.ar, ptr %.sroa.032.2.i.i.i.i, ptr %i.o
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit28: ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit30: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i: ; preds = %bb.c, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit28, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit30, %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.h, %._crit_edge.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %i.o, %._crit_edge.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.h ], [ %i.au, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit30 ], [ %i.as, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.at, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit28 ], [ %.sroa.032.051.i.i.i.i, %bb.c ]
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef 1, ptr noundef nonnull %0)
          to label %.noexc unwind label %bb.p, !inline_history !305

.noexc:                                           ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i
  %1 = load ptr, ptr %i.l, align 8, !tbaa !300    ; 2 uses
  %2 = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i to i64
  %i.ay = ptrtoint ptr %1 to i64
  %i.az = sub i64 %2, %i.ay
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %i.az ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load ptr, ptr %i.n, align 8, !tbaa !300 ; 5 uses
  %.not.i.i.i1 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i1, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = icmp sgt i64 %i.bf, 8
  br i1 %i.bg, label %bb.l, label %bb.m, !prof !306

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ba, ptr nonnull align 8 %i.bb, i64 %i.bf, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !307
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp eq i64 %i.bf, 8
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !302
  store ptr %i.bi, ptr %i.ba, align 8, !tbaa !302
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.noexc
  %i.bj = phi ptr [ %i.bc, %bb.n ], [ %i.bc, %bb.m ], [ %.pre.i.i.i, %bb.l ], [ %i.bc, %.noexc ]
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8
  store ptr %i.bk, ptr %i.n, align 8, !tbaa !307
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !295
  %.not = icmp eq ptr %i.bl, %i.bm
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !309

bb.p:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #23
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt7SubjectD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !92     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 3 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !67     ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775800
  br i1 %i.x, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_6MatrixEEEE8allocateEmPKv.exit.i.i.i.i, !prof !82

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_6MatrixEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #21
          to label %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_6MatrixEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge unwind label %bb.h

_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_6MatrixEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge: ; preds = %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_6MatrixEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !83
  %.pre45 = load ptr, ptr %i.r, align 8, !tbaa !83
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_6MatrixEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge, %_ZNKSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.s, %_ZNKSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %.pre45, %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_6MatrixEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ] ; 2 uses
  %i.aa = phi ptr [ %i.t, %_ZNKSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %.pre, %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_6MatrixEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ] ; 2 uses
  %i.ab = phi ptr [ null, %_ZNKSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.y, %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_6MatrixEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ] ; 5 uses
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !72
  %.not11.i.i.i.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not11.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc26, %bb.e
  %.013.i.i.i.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ab, %.noexc26 ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.aj, %bb.e ], [ %i.aa, %.noexc26 ] ; 2 uses
  store ptr null, ptr %.013.i.i.i.i.i, align 8, !tbaa !70
  %i.af = load ptr, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !8
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  store ptr %i.af, ptr %.013.i.i.i.i.i, align 8, !tbaa !70
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.z
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !84

.loopexit:                                        ; preds = %bb.e, %.noexc26
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ab, %.noexc26 ], [ %i.ak, %bb.e ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !73
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.p, %.loopexit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.c, %.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.al = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !83, !alias.scope !313, !noalias !310
  store <2 x ptr> %i.al, ptr %.012.i.i.i, align 8, !tbaa !83, !alias.scope !310, !noalias !313
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !72, !alias.scope !313, !noalias !310
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !72, !alias.scope !310, !noalias !313
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !313, !noalias !310
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_:bb.a
  %i.t = load ptr, ptr %2, align 8, !tbaa !109    ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775800
  br i1 %i.x, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEE8allocateEmPKv.exit.i.i.i.i, !prof !82

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #21
          to label %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge unwind label %bb.h

_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge: ; preds = %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !268
  %.pre45 = load ptr, ptr %i.r, align 8, !tbaa !268
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge, %_ZNKSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.s, %_ZNKSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %.pre45, %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ] ; 2 uses
  %i.aa = phi ptr [ %i.t, %_ZNKSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %.pre, %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ] ; 2 uses
  %i.ab = phi ptr [ null, %_ZNKSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.y, %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ] ; 5 uses
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !109
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !256
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !255
  %.not11.i.i.i.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not11.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc26, %bb.e
  %.013.i.i.i.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ab, %.noexc26 ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.aj, %bb.e ], [ %i.aa, %.noexc26 ] ; 2 uses
  store ptr null, ptr %.013.i.i.i.i.i, align 8, !tbaa !12
  %i.af = load ptr, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !12 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !8
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  store ptr %i.af, ptr %.013.i.i.i.i.i, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.z
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !269

.loopexit:                                        ; preds = %bb.e, %.noexc26
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ab, %.noexc26 ], [ %i.ak, %bb.e ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !256
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.p, %.loopexit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.c, %.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.al = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !268, !alias.scope !335, !noalias !332
  store <2 x ptr> %i.al, ptr %.012.i.i.i, align 8, !tbaa !268, !alias.scope !332, !noalias !335
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !255, !alias.scope !335, !noalias !332
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !255, !alias.scope !332, !noalias !335
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !335, !noalias !332
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !337

_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.aq, %.lr.ph.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.ax, %.lr.ph.i.i.i28 ], [ %i.ar, %_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 3 uses
  %.0911.i.i.i30 = phi ptr [ %i.aw, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.as = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !tbaa !268, !alias.scope !341, !noalias !338
  store <2 x ptr> %i.as, ptr %.012.i.i.i29, align 8, !tbaa !268, !alias.scope !338, !noalias !341
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !255, !alias.scope !341, !noalias !338
  store ptr %i.av, ptr %i.at, align 8, !tbaa !255, !alias.scope !338, !noalias !341
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i30, i8 0, i64 24, i1 false), !alias.scope !341, !noalias !338
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.aw, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !337

_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ar, %_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.ax, %.lr.ph.i.i.i28 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit33
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !267
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bb) #22
  br label %_ZNSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit33, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !105
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !266
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bc, ptr %i.ay, align 8, !tbaa !267
  ret void

bb.g:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  %i.bg = tail call ptr @__cxa_begin_catch(ptr %i.bf) #19 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #22
  invoke void @__cxa_rethrow() #20
          to label %bb.k unwind label %bb.g

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.bd

bb.j:                                             ; preds = %bb.g
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #23
  unreachable

bb.k:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IbSaIbEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !270  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !274    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IbSaIbEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNKSt6vectorIS_IbSaIbEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIS_IbSaIbEESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 40, i1 false), !alias.scope !346
  store ptr null, ptr %.0911.i.i.i, align 8, !alias.scope !348, !noalias !343
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !348, !noalias !343
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  store ptr null, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !348, !noalias !343
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !348, !noalias !343
  %.sroa.72.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  store ptr null, ptr %.sroa.72.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !348, !noalias !343
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !349

_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.v, %.lr.ph.i.i.i27 ], [ %i.t, %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.u, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i29, i64 40, i1 false), !alias.scope !353
  store ptr null, ptr %.0911.i.i.i29, align 8, !alias.scope !355, !noalias !350
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i30 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i30, align 8, !alias.scope !355, !noalias !350
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  store ptr null, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i31, align 8, !alias.scope !355, !noalias !350
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i32, align 8, !alias.scope !355, !noalias !350
  %.sroa.72.0..sroa_idx.i.i.i.i.i.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32
  store ptr null, ptr %.sroa.72.0..sroa_idx.i.i.i.i.i.i.i.i.i33, align 8, !alias.scope !355, !noalias !350
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !349

_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.t, %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i27 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !271
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #22
  br label %_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !274
  store ptr %.0.lcssa.i.i.i35, ptr %i.a, align 8, !tbaa !270
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !271
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIS_IbSaIbEESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #19 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #22
  invoke void @__cxa_rethrow() #20
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #23
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !257
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !260
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !257
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !260
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !261
  %i.e = load ptr, ptr %1, align 8, !tbaa !257    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !257  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !260  ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = shl nsw i64 %i.l, 3
  %i.n = zext i32 %i.i to i64                     ; 2 uses
  %i.o = add nsw i64 %i.m, %i.n                   ; 5 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = add i64 %i.o, 63                         ; 2 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 2305843009213693944
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #21
          to label %.noexc unwind label %bb.h     ; 4 uses

.noexc:                                           ; preds = %bb.b
  %i.t = lshr i64 %i.p, 6
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  store ptr %i.u, ptr %i.d, align 8, !tbaa !261
  store ptr %i.s, ptr %0, align 8
  store i32 0, ptr %i.a, align 8
  %i.v = sdiv i64 %i.o, 64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v
  %i.x = and i64 %i.o, -9223372036854775745
  %i.y = icmp ugt i64 %i.x, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.y, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.w, i64 %storemerge.idx.i.i.i.i
  %i.z = trunc i64 %i.o to i32
  %i.aa = and i32 %i.z, 63
  store ptr %storemerge.i.i.i.i, ptr %i.b, align 8
  store i32 %i.aa, ptr %i.c, align 8
  br label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit

_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit:       ; preds = %.noexc, %bb.a
  %i.ab = phi ptr [ %i.s, %.noexc ], [ null, %bb.a ] ; 3 uses
  %i.ac = icmp sgt i64 %i.l, 8
  br i1 %i.ac, label %bb.c, label %bb.d, !prof !306

bb.c:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ab, ptr align 8 %i.e, i64 %i.l, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.d:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit
  %i.ad = icmp eq i64 %i.l, 8
  br i1 %i.ad, label %bb.e, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !242
  store i64 %i.ae, ptr %i.ab, align 8, !tbaa !242
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.e, %bb.d, %bb.c
  %.not.i28 = icmp eq i32 %i.i, 0
  br i1 %.not.i28, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.l
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.av, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.af, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ag = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !242
  %i.aj = and i64 %i.ai, %i.ah
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aj, 0
  %i.ak = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.al = shl nuw i64 1, %i.ak                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.am = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !242
  %i.an = or i64 %i.am, %i.al
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ao = xor i64 %i.al, -1
  %i.ap = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !242
  %i.aq = and i64 %i.ap, %i.ao
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.g, %bb.f
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.g ], [ %i.an, %bb.f ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !242
  %i.ar = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.as = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.as, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i = select i1 %i.as, i32 0, i32 %i.ar
  %i.at = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.au = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.au, i32 0, i32 %i.at
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.au, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i
  %i.av = add nsw i64 %.020.i.i.i.i.i.i, -1
  %i.aw = icmp sgt i64 %.020.i.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i, label %.loopexit, !llvm.loop !356

.loopexit:                                        ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  ret void

bb.h:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %0, align 8, !tbaa !257   ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !261 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.be
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bc) #22
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.ax
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"_ZTSN5Ipopt16ReferencedObjectE", !5, i64 8}
!10 = !{!11, !11, i64 0}
!11 = !{!"vtable pointer", !7, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_11MatrixSpaceEEE", !14, i64 0}
!14 = !{!"p1 _ZTSN5Ipopt11MatrixSpaceE", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!17, !5, i64 64}
!17 = !{!"_ZTSN5Ipopt6MatrixE", !18, i64 0, !13, i64 56, !5, i64 64, !26, i64 68}
!18 = !{!"_ZTSN5Ipopt12TaggedObjectE", !9, i64 0, !19, i64 16, !5, i64 48, !5, i64 52}
!19 = !{!"_ZTSN5Ipopt7SubjectE", !20, i64 8}
!20 = !{!"_ZTSSt6vectorIPN5Ipopt8ObserverESaIS2_EE", !21, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseIPN5Ipopt8ObserverESaIS2_EE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIPN5Ipopt8ObserverESaIS2_EE12_Vector_implE", !23, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIPN5Ipopt8ObserverESaIS2_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!24 = !{!"p2 _ZTSN5Ipopt8ObserverE", !25, i64 0}
!25 = !{!"any p2 pointer", !15, i64 0}
!26 = !{!"bool", !6, i64 0}
!27 = !{!28, !39, i64 120}
!28 = !{!"_ZTSN5Ipopt14CompoundMatrixE", !17, i64 0, !29, i64 72, !34, i64 96, !39, i64 120, !26, i64 128}
!29 = !{!"_ZTSSt6vectorIS_IN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EESaIS5_EE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrINS1_6MatrixEEESaIS4_EESaIS6_EE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrINS1_6MatrixEEESaIS4_EESaIS6_EE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrINS1_6MatrixEEESaIS4_EESaIS6_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"p1 _ZTSSt6vectorIN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EE", !15, i64 0}
!34 = !{!"_ZTSSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EESaIS6_EE", !35, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrIKNS1_6MatrixEEESaIS5_EESaIS7_EE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrIKNS1_6MatrixEEESaIS5_EESaIS7_EE12_Vector_implE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrIKNS1_6MatrixEEESaIS5_EESaIS7_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!38 = !{!"p1 _ZTSSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EE", !15, i64 0}
!39 = !{!"p1 _ZTSN5Ipopt19CompoundMatrixSpaceE", !15, i64 0}
!40 = !{!28, !26, i64 128}
!41 = !{!42, !5, i64 24}
!42 = !{!"_ZTSN5Ipopt19CompoundMatrixSpaceE", !43, i64 0, !5, i64 20, !5, i64 24, !26, i64 28, !44, i64 32, !49, i64 56, !54, i64 80, !54, i64 104, !26, i64 128}
!43 = !{!"_ZTSN5Ipopt11MatrixSpaceE", !9, i64 0, !5, i64 12, !5, i64 16}
!44 = !{!"_ZTSSt6vectorIS_IN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EESaIS6_EE", !45, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EESaIS7_EE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EESaIS7_EE12_Vector_implE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN5Ipopt8SmartPtrIKNS1_11MatrixSpaceEEESaIS5_EESaIS7_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!48 = !{!"p1 _ZTSSt6vectorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EE", !15, i64 0}
!49 = !{!"_ZTSSt6vectorIS_IbSaIbEESaIS1_EE", !50, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!53 = !{!"p1 _ZTSSt6vectorIbSaIbEE", !15, i64 0}
!54 = !{!"_ZTSSt6vectorIiSaIiEE", !55, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!58 = !{!"p1 int", !15, i64 0}
!59 = !{!60, !61, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN5Ipopt8SmartPtrINS0_6MatrixEEESaIS3_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!61 = !{!"p1 _ZTSN5Ipopt8SmartPtrINS_6MatrixEEE", !15, i64 0}
end_hunk_2
