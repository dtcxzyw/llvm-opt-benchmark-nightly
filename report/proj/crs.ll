Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/crs?download=true
inline.NumInlined: 8471
inline.NumDeleted: 2697
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK5osgeo4proj3crs3CRS9isDynamicEb:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.bd, %bb.o ], [ %i.bn, %bb.p ]
  %i.bo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bo, label %bb.q, label %_ZNSt12__shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !137

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #39
  br label %_ZNSt12__shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.k, %_ZNK5osgeo4proj3crs11VerticalCRS5datumEv.exit
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bp, align 8, !tbaa !135
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !136
  %i.bu = load ptr, ptr %i.as, align 8, !tbaa !110
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #39, !inline_history !12
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !110
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #39, !inline_history !12
  br label %_ZNSt12__shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i46 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i46, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47

bb.w:                                             ; preds = %bb.u
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i48 = phi i32 [ %i.bs, %bb.v ], [ %i.cc, %bb.w ]
  %i.cd = icmp eq i32 %.0.i.i.i.i48, 1
  br i1 %i.cd, label %bb.x, label %_ZNSt12__shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !137

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #39
  br label %_ZNSt12__shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47, %bb.t, %bb.r, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m, %.critedge36, %.critedge31.thread
  %not. = phi i1 [ false, %.critedge31.thread ], [ true, %bb.q ], [ true, %.critedge36 ], [ true, %bb.m ], [ true, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ false, %bb.r ], [ false, %bb.t ], [ false, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47 ], [ false, %bb.x ]
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !128 ; 8 uses
  %.not.i.i50 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i50, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.ch = load atomic i64, ptr %i.cg acquire, align 8 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 4294967297
  %i.cj = trunc i64 %i.ch to i32                  ; 2 uses
  br i1 %i.ci, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.cg, align 8, !tbaa !135
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.ck, align 4, !tbaa !136
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !110
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #39, !inline_history !13
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !110
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #39, !inline_history !13
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i51 = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i51, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cs = add nsw i32 %i.cj, -1
  store i32 %i.cs, ptr %i.cg, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52

bb.ac:                                            ; preds = %bb.aa
  %i.ct = atomicrmw volatile add ptr %i.cg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i53 = phi i32 [ %i.cj, %bb.ab ], [ %i.ct, %bb.ac ]
  %i.cu = icmp eq i32 %.0.i.i.i.i53, 1
  br i1 %i.cu, label %bb.ad, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !137

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #39
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br label %.critedge31.thread61

.critedge31.thread61:                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44, %_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.critedge31
  %.8 = phi i1 [ true, %.critedge31 ], [ %not., %_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  ret i1 %.8
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZNK5osgeo4proj3crs3CRS21extractGeodeticCRSRawEv(ptr nofree noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.dropbox::oxygen::nn.265", align 8 ; 6 uses
  %i.a = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs11GeodeticCRSE, i64 -1) #39 ; 2 uses
  %.not57 = icmp eq ptr %i.a, null
  br i1 %.not57, label %.lr.ph59, label %.thread

.lr.ph59:                                         ; preds = %bb.a, %tailrecurse.backedge
  %.tr58 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 6 uses
  %i.b = load ptr, ptr %.tr58, align 8, !tbaa !110 ; 3 uses
  %.not43 = icmp eq ptr %i.b, getelementptr inbounds nuw inrange(-72, 48) (i8, ptr @_ZTVN5osgeo4proj3crs12ProjectedCRSE, i64 208)
  br i1 %.not43, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph59
  %i.c = getelementptr inbounds i8, ptr %.tr58, i64 -8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !239  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !110
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.b, %bb.f
  %.tr.be = phi ptr [ %i.i, %bb.b ], [ %i.v, %bb.f ] ; 2 uses
  %i.j = tail call ptr @__dynamic_cast(ptr nonnull %.tr.be, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs11GeodeticCRSE, i64 -1) #39 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.lr.ph59, label %.thread

bb.c:                                             ; preds = %.lr.ph59
  %.not44 = icmp eq ptr %i.b, getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5osgeo4proj3crs11CompoundCRSE, i64 16)
  br i1 %.not44, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.tr58, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !241  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !243  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !243  ; 2 uses
  %.not4555 = icmp eq ptr %i.m, %i.o
  br i1 %.not4555, label %.loopexit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.039.056, i64 16 ; 2 uses
  %.not45 = icmp eq ptr %i.p, %i.o
  br i1 %.not45, label %.loopexit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.039.056 = phi ptr [ %i.p, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.039.056, align 8, !tbaa !158
  %i.r = tail call noundef ptr @_ZNK5osgeo4proj3crs3CRS21extractGeodeticCRSRawEv(ptr noundef nonnull align 8 dereferenceable(64) %i.q) ; 2 uses
  %.not33 = icmp eq ptr %i.r, null
  br i1 %.not33, label %bb.e, label %.thread

.loopexit.loopexit:                               ; preds = %bb.e
  %.pre = load ptr, ptr %.tr58, align 8, !tbaa !110
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %bb.c
  %i.s = phi ptr [ %.pre, %.loopexit.loopexit ], [ getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5osgeo4proj3crs11CompoundCRSE, i64 16), %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  %.not46 = icmp eq ptr %i.s, getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5osgeo4proj3crs8BoundCRSE, i64 16)
  br i1 %.not46, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.t = getelementptr inbounds nuw i8, ptr %.tr58, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !245
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !158
  br label %tailrecurse.backedge

bb.g:                                             ; preds = %.loopexit
  %.not47 = icmp eq ptr %i.s, getelementptr inbounds nuw inrange(-72, 48) (i8, ptr @_ZTVN5osgeo4proj3crs19DerivedProjectedCRSE, i64 152)
  br i1 %.not47, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.w = getelementptr inbounds i8, ptr %.tr58, i64 -16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !112, !noalias !768 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !127, !noalias !769, !nonnull !226, !noundef !226 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !128, !noalias !769 ; 11 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5osgeo4proj3crs19DerivedProjectedCRS7baseCRSEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129, !noalias !769
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !130, !noalias !769
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !130, !noalias !769
  br label %_ZNK5osgeo4proj3crs19DerivedProjectedCRS7baseCRSEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = atomicrmw volatile add ptr %i.ac, i32 1 acq_rel, align 4, !noalias !769 ; 0 uses
  br label %_ZNK5osgeo4proj3crs19DerivedProjectedCRS7baseCRSEv.exit

_ZNK5osgeo4proj3crs19DerivedProjectedCRS7baseCRSEv.exit: ; preds = %bb.h, %bb.j, %bb.k
  store ptr %i.z, ptr %1, align 8, !tbaa !248, !alias.scope !768
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ab, ptr %i.ah, align 8, !tbaa !128, !alias.scope !768
  %i.ai = invoke noundef ptr @_ZNK5osgeo4proj3crs3CRS21extractGeodeticCRSRawEv(ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %_ZNK5osgeo4proj3crs19DerivedProjectedCRS7baseCRSEv.exit
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.aj, align 8, !tbaa !135
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !136
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !110
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #39, !inline_history !14
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !110
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #39, !inline_history !14
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.am, %bb.p ], [ %i.aw, %bb.q ]
  %i.ax = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ax, label %bb.r, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev.exit, !prof !137

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39
  br label %.thread

bb.s:                                             ; preds = %_ZNK5osgeo4proj3crs19DerivedProjectedCRS7baseCRSEv.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39
  resume { ptr, i32 } %i.ay

.thread:                                          ; preds = %tailrecurse.backedge, %.lr.ph, %bb.a, %bb.g, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev.exit
  %.7 = phi ptr [ %i.r, %.lr.ph ], [ %i.ai, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev.exit ], [ null, %bb.g ], [ %i.a, %bb.a ], [ %i.j, %tailrecurse.backedge ]
  ret ptr %.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs11GeodeticCRS5datumEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !228
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !149  ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !150
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs9SingleCRS13datumEnsembleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5osgeo4proj3crs3CRS18extractVerticalCRSEv(ptr dead_on_unwind noalias nofree writable sret(%"class.std::shared_ptr.212") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 6 uses
  %i.a = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs11VerticalCRSE, i64 -1) #39
  %.not33 = icmp eq ptr %i.a, null
  br i1 %.not33, label %.lr.ph35, label %tailrecurse._crit_edge

.lr.ph35:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.g

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr28.lcssa = phi ptr [ %1, %bb.a ], [ %i.ap, %tailrecurse ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @_ZNK5osgeo4proj4util10BaseObject16shared_from_thisEv(ptr dead_on_unwind nonnull writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %.tr28.lcssa)
  call void @llvm.experimental.noalias.scope.decl(metadata !772)
  %i.c = load ptr, ptr %2, align 8, !tbaa !143, !noalias !772 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNSt10shared_ptrIN5osgeo4proj3crs11VerticalCRSEEC2INS1_4util10BaseObjectEEERKS_IT_EPS3_.exit.i, label %bb.b

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.e = call ptr @__dynamic_cast(ptr nonnull %i.c, ptr nonnull @_ZTIN5osgeo4proj4util10BaseObjectE, ptr nonnull @_ZTIN5osgeo4proj3crs11VerticalCRSE, i64 -1) #39, !noalias !772 ; 2 uses
  %.not.not.i = icmp eq ptr %i.e, null
  br i1 %.not.not.i, label %_ZNSt10shared_ptrIN5osgeo4proj3crs11VerticalCRSEEC2INS1_4util10BaseObjectEEERKS_IT_EPS3_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %0, align 8, !tbaa !234, !alias.scope !772
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128, !noalias !772 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !128, !alias.scope !772
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS1_4util10BaseObjectEESt10shared_ptrIT_ERKS6_IT0_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129, !noalias !772
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.i, align 4, !tbaa !130, !noalias !772
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !130, !noalias !772
  br label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS1_4util10BaseObjectEESt10shared_ptrIT_ERKS6_IT0_E.exit

bb.f:                                             ; preds = %bb.d
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4, !noalias !772 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS1_4util10BaseObjectEESt10shared_ptrIT_ERKS6_IT0_E.exit

_ZNSt10shared_ptrIN5osgeo4proj3crs11VerticalCRSEEC2INS1_4util10BaseObjectEEERKS_IT_EPS3_.exit.i: ; preds = %bb.b, %tailrecurse._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !772
  br label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS1_4util10BaseObjectEESt10shared_ptrIT_ERKS6_IT0_E.exit

_ZSt20dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS1_4util10BaseObjectEESt10shared_ptrIT_ERKS6_IT0_E.exit: ; preds = %bb.c, %bb.e, %bb.f, %_ZNSt10shared_ptrIN5osgeo4proj3crs11VerticalCRSEEC2INS1_4util10BaseObjectEEERKS_IT_EPS3_.exit.i
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br label %.critedge

bb.g:                                             ; preds = %.lr.ph35, %tailrecurse
  %.tr2834 = phi ptr [ %1, %.lr.ph35 ], [ %i.ap, %tailrecurse ] ; 4 uses
  %i.n = load ptr, ptr %.tr2834, align 8, !tbaa !110 ; 2 uses
  %.not24 = icmp eq ptr %i.n, getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5osgeo4proj3crs11CompoundCRSE, i64 16)
  br i1 %.not24, label %bb.h, label %.critedge19

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.tr2834, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !241  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !243  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !243  ; 2 uses
  %.not2531 = icmp eq ptr %i.q, %i.s
  br i1 %.not2531, label %.critedge19, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.021.032 = phi ptr [ %i.al, %_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.q, %bb.h ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.021.032, align 8, !tbaa !158
  tail call void @_ZNK5osgeo4proj3crs3CRS18extractVerticalCRSEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.212") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %i.t)
  %i.u = load ptr, ptr %0, align 8, !tbaa !234
  %.not26 = icmp eq ptr %i.u, null
  br i1 %.not26, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !128  ; 8 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11VerticalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.l
end_hunk_0
begin_hunk_1_@_ZN5osgeo4proj3crs18DerivedGeodeticCRS6createERKNS0_4util11PropertyMapERKN7dropbox6oxygen2nnISt10shared_ptrINS1_11GeodeticCRSEEEERKNS9_ISA_INS0_9operation10ConversionEEEERKNS9_ISA_INS0_2cs11CartesianCSEEEE:bb.a
  ret void

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pn9 = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.s, %bb.i ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs18DerivedGeodeticCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #39
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj3crs18DerivedGeodeticCRS6createERKNS0_4util11PropertyMapERKN7dropbox6oxygen2nnISt10shared_ptrINS1_11GeodeticCRSEEEERKNS9_ISA_INS0_9operation10ConversionEEEERKNS9_ISA_INS0_2cs11SphericalCSEEEE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.802") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.803", align 8 ; 6 uses
  %6 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1617)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !1617
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #40, !noalias !1617 ; 4 uses
  invoke void @_ZN5osgeo4proj3crs18DerivedGeodeticCRSC1ERKN7dropbox6oxygen2nnISt10shared_ptrINS1_11GeodeticCRSEEEERKNS5_IS6_INS0_9operation10ConversionEEEERKNS5_IS6_INS0_2cs11SphericalCSEEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN5osgeo4proj3crs18DerivedGeodeticCRS14nn_make_sharedIS2_JRKN7dropbox6oxygen2nnISt10shared_ptrINS1_11GeodeticCRSEEEERKNS6_IS7_INS0_9operation10ConversionEEEERKNS6_IS7_INS0_2cs11SphericalCSEEEEEEENS6_IS7_IT_EEEDpOT0_.exit unwind label %bb.b, !noalias !1617

common.resume:                                    ; preds = %bb.k, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn9, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #38, !noalias !1617
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !1617
  br label %common.resume

_ZN5osgeo4proj3crs18DerivedGeodeticCRS14nn_make_sharedIS2_JRKN7dropbox6oxygen2nnISt10shared_ptrINS1_11GeodeticCRSEEEERKNS6_IS7_INS0_9operation10ConversionEEEERKNS6_IS7_INS0_2cs11SphericalCSEEEEEEENS6_IS7_IT_EEEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %5, align 8, !tbaa !513, !noalias !1617
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN5osgeo4proj3crs18DerivedGeodeticCRSEEET_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.a), !noalias !1617, !inline_history !87
  %i.d = load ptr, ptr %5, align 8, !tbaa !513, !noalias !1617 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !513, !alias.scope !1617
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !128, !noalias !1617 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !128, !alias.scope !1617
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !1617
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.g = icmp eq ptr %i.d, null
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.g, ptr null, ptr %i.h
  store ptr %spec.select.i.i.i.i, ptr %6, align 8, !tbaa !143
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.f, ptr %i.i, align 8, !tbaa !128
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs18DerivedGeodeticCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5osgeo4proj3crs18DerivedGeodeticCRS14nn_make_sharedIS2_JRKN7dropbox6oxygen2nnISt10shared_ptrINS1_11GeodeticCRSEEEERKNS6_IS7_INS0_9operation10ConversionEEEERKNS6_IS7_INS0_2cs11SphericalCSEEEEEEENS6_IS7_IT_EEEDpOT0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.j, align 4, !tbaa !130
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !130
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs18DerivedGeodeticCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

bb.e:                                             ; preds = %bb.c
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs18DerivedGeodeticCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs18DerivedGeodeticCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit: ; preds = %bb.e, %bb.d, %_ZN5osgeo4proj3crs18DerivedGeodeticCRS14nn_make_sharedIS2_JRKN7dropbox6oxygen2nnISt10shared_ptrINS1_11GeodeticCRSEEEERKNS6_IS7_INS0_9operation10ConversionEEEERKNS6_IS7_INS0_2cs11SphericalCSEEEEEEENS6_IS7_IT_EEEDpOT0_.exit
  invoke void @_ZN5osgeo4proj4util10BaseObject10assignSelfERKNS1_15BaseObjectNNPtrE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs18DerivedGeodeticCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  %i.o = load ptr, ptr %0, align 8, !tbaa !513    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  invoke void @_ZN5osgeo4proj3crs3CRS13setPropertiesERKNS0_4util11PropertyMapE(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  invoke void @_ZN5osgeo4proj3crs10DerivedCRS24setDerivingConversionCRSEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs18DerivedGeodeticCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  ret void

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pn9 = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.s, %bb.i ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs18DerivedGeodeticCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #39
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5osgeo4proj3crs18DerivedGeodeticCRS12_exportToWKTEPNS0_2io12WKTFormatterE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.dropbox::oxygen::nn.245", align 8 ; 8 uses
  %3 = alloca %"class.dropbox::oxygen::nn.245", align 8 ; 6 uses
  %4 = alloca %"class.std::shared_ptr.185", align 8 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.93", align 8 ; 7 uses
  %i.a = tail call noundef i32 @_ZNK5osgeo4proj2io12WKTFormatter7versionEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5osgeo4proj2io19FormattingException5ThrowEPKc(ptr noundef nonnull @.str.128) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #42 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !160
  %i.h = icmp ne ptr %i.e, %i.g
  tail call void @_ZN5osgeo4proj2io12WKTFormatter9startNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants7GEODCRSB5cxx11E, i1 noundef zeroext %i.h)
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #42
  tail call void @_ZN5osgeo4proj2io12WKTFormatter15addQuotedStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !112, !noalias !1626 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !127, !noalias !1627 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZNK5osgeo4proj3crs18DerivedGeodeticCRS7baseCRSEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.l, ptr nonnull @_ZTIN5osgeo4proj3crs9SingleCRSE, ptr nonnull @_ZTIN5osgeo4proj3crs11GeodeticCRSE, i64 -1) #39, !noalias !1627 ; 4 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNK5osgeo4proj3crs18DerivedGeodeticCRS7baseCRSEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128, !noalias !1627 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5osgeo4proj3crs18DerivedGeodeticCRS7baseCRSEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129, !noalias !1627
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.q, align 4, !tbaa !130, !noalias !1627
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !130, !noalias !1627
  br label %_ZNK5osgeo4proj3crs18DerivedGeodeticCRS7baseCRSEv.exit

bb.h:                                             ; preds = %bb.f
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4, !noalias !1627 ; 0 uses
  br label %_ZNK5osgeo4proj3crs18DerivedGeodeticCRS7baseCRSEv.exit

_ZNK5osgeo4proj3crs18DerivedGeodeticCRS7baseCRSEv.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.g, %bb.h
  %i.v = phi ptr [ %i.n, %bb.g ], [ %i.n, %bb.e ], [ %i.n, %bb.h ], [ null, %bb.d ], [ null, %bb.c ] ; 3 uses
  %.sroa.6.0.i = phi ptr [ %i.p, %bb.g ], [ null, %bb.e ], [ %i.p, %bb.h ], [ null, %bb.d ], [ null, %bb.c ]
  store ptr %i.v, ptr %2, align 8, !tbaa !239, !alias.scope !1626
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %.sroa.6.0.i, ptr %i.w, align 8, !tbaa !128, !alias.scope !1626
  %i.x = invoke noundef zeroext i1 @_ZNK5osgeo4proj2io12WKTFormatter15use2019KeywordsEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZNK5osgeo4proj3crs18DerivedGeodeticCRS7baseCRSEv.exit
  %i.y = icmp ne ptr %i.v, null
  %or.cond.not = and i1 %i.y, %i.x
  br i1 %or.cond.not, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @__dynamic_cast(ptr nonnull %i.v, ptr nonnull @_ZTIN5osgeo4proj3crs11GeodeticCRSE, ptr nonnull @_ZTIN5osgeo4proj3crs13GeographicCRSE, i64 0) #39
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.critedge, label %bb.l

bb.k:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEED2Ev.exit, %_ZNK5osgeo4proj3crs18DerivedGeodeticCRS7baseCRSEv.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.critedge:                                        ; preds = %bb.j, %bb.i
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %.critedge
  %i.ac = phi ptr [ @_ZN5osgeo4proj2io12WKTConstants11BASEGEODCRSB5cxx11E, %.critedge ], [ @_ZN5osgeo4proj2io12WKTConstants11BASEGEOGCRSB5cxx11E, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1628)
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !112, !noalias !1628 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !127, !noalias !1629, !nonnull !226, !noundef !226
  %i.af = tail call ptr @__dynamic_cast(ptr nonnull %i.ae, ptr nonnull @_ZTIN5osgeo4proj3crs9SingleCRSE, ptr nonnull @_ZTIN5osgeo4proj3crs11GeodeticCRSE, i64 -1) #39, !noalias !1629 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !128, !noalias !1629 ; 11 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i32, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129, !noalias !1629
  %.not.i.i.i.i.i.i33 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i33, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !130, !noalias !1629
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !130, !noalias !1629
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4, !noalias !1629 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  store ptr %i.af, ptr %3, align 8, !tbaa !239, !alias.scope !1628
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ah, ptr %i.an, align 8, !tbaa !128, !alias.scope !1628
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !110
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.af, i64 %i.aq
  %i.as = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common16IdentifiedObject11identifiersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ar) #42 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !160
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !160
  %i.aw = icmp ne ptr %i.at, %i.av
  invoke void @_ZN5osgeo4proj2io12WKTFormatter9startNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i1 noundef zeroext %i.aw)
          to label %bb.q unwind label %bb.ac

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ax, align 8, !tbaa !135
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !136
  %i.bc = load ptr, ptr %i.ah, align 8, !tbaa !110
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #39, !inline_history !42
  %i.bf = load ptr, ptr %i.ah, align 8, !tbaa !110
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #39, !inline_history !42
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i = phi i32 [ %i.ba, %bb.u ], [ %i.bk, %bb.v ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.w, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEED2Ev.exit, !prof !137

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEED2Ev.exit: ; preds = %bb.q, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.bm = load ptr, ptr %2, align 8, !tbaa !239   ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !110
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %i.bp
  %i.br = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.bq) #42
  invoke void @_ZN5osgeo4proj2io12WKTFormatter15addQuotedStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.br)
          to label %bb.x unwind label %bb.k

bb.x:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !228 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !231 ; 3 uses
  store ptr %i.bv, ptr %4, align 8, !tbaa !231
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !128 ; 3 uses
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !128
  %.not.i.i.i37 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i37, label %_ZNSt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEC2ERKS4_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i38 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i38, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !130
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !130
  br label %_ZNSt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEC2ERKS4_.exit

bb.aa:                                            ; preds = %bb.y
  %i.cd = atomicrmw volatile add ptr %i.bz, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !231
  br label %_ZNSt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEC2ERKS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEC2ERKS4_.exit: ; preds = %bb.x, %bb.z, %bb.aa
  %i.ce = phi ptr [ %i.bv, %bb.x ], [ %i.bv, %bb.z ], [ %.pre, %bb.aa ] ; 3 uses
  %.not = icmp eq ptr %i.ce, null
  br i1 %.not, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEC2ERKS4_.exit
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !110
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(72) %i.ce, ptr noundef nonnull %1)
          to label %bb.aq unwind label %bb.ad

bb.ac:                                            ; preds = %bb.p
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %bb.bw

bb.ad:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ay, %bb.aw, %bb.au, %_ZNK5osgeo4proj3crs11GeodeticCRS13primeMeridianEv.exit, %bb.ab
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ae:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !116 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !167 ; 3 uses
  store ptr %i.cn, ptr %5, align 8, !tbaa !167
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !128 ; 3 uses
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !128
  %.not.i.i.i39 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i39, label %_ZNSt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEC2ERKS4_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 3 uses
  %i.cs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i40 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i.i40, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !130
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !130
  br label %_ZNSt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEC2ERKS4_.exit

bb.ah:                                            ; preds = %bb.af
  %i.cv = atomicrmw volatile add ptr %i.cr, i32 1 acq_rel, align 4 ; 0 uses
  %.pre52 = load ptr, ptr %5, align 8, !tbaa !167
  br label %_ZNSt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEC2ERKS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEC2ERKS4_.exit: ; preds = %bb.ae, %bb.ag, %bb.ah
  %i.cw = phi ptr [ %i.cn, %bb.ae ], [ %i.cn, %bb.ag ], [ %.pre52, %bb.ah ]
  invoke void @_ZNK5osgeo4proj5datum13DatumEnsemble12_exportToWKTEPNS0_2io12WKTFormatterE(ptr noundef nonnull align 8 dereferenceable(64) %i.cw, ptr noundef nonnull %1)
          to label %bb.ai unwind label %bb.ap

bb.ai:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj5datum13DatumEnsembleEEC2ERKS4_.exit
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !128 ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIN5osgeo4proj5datum13DatumEnsembleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 4 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 4294967297
  %i.db = trunc i64 %i.cz to i32                  ; 2 uses
  br i1 %i.da, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.cy, align 8, !tbaa !135
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 0, ptr %i.dc, align 4, !tbaa !136
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !110
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  tail call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #39, !inline_history !4
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !110
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  tail call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #39, !inline_history !4
  br label %_ZNSt12__shared_ptrIN5osgeo4proj5datum13DatumEnsembleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.dj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i42 = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i.i42, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dk = add nsw i32 %i.db, -1
  store i32 %i.dk, ptr %i.cy, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.dl = atomicrmw volatile add ptr %i.cy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i = phi i32 [ %i.db, %bb.am ], [ %i.dl, %bb.an ]
  %i.dm = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dm, label %bb.ao, label %_ZNSt12__shared_ptrIN5osgeo4proj5datum13DatumEnsembleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !137

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #39
  br label %_ZNSt12__shared_ptrIN5osgeo4proj5datum13DatumEnsembleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj5datum13DatumEnsembleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ai, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.aq

end_hunk_1
