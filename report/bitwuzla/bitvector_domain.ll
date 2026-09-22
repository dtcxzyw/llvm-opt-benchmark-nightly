Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/bitvector_domain?download=true
inline.NumInlined: 329
inline.NumDeleted: 135
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4bzla15BitVectorDomainC2Em:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.b, align 8, !tbaa !13
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #15
  resume { ptr, i32 } %i.c
}

declare void @_ZN4bzla9BitVector7mk_zeroEm(ptr dead_on_unwind writable sret(%"class.bzla::BitVector") align 8, i64 noundef) local_unnamed_addr #1

declare void @_ZN4bzla9BitVector7mk_onesEm(ptr dead_on_unwind writable sret(%"class.bzla::BitVector") align 8, i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla15BitVectorDomainC2ERKNS_9BitVectorES3_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4bzla9BitVectorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_ZN4bzla9BitVectorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !13
  %i.c = invoke noundef zeroext i1 @_ZNK4bzla9BitVector7is_zeroEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = invoke noundef zeroext i1 @_ZNK4bzla9BitVector7is_onesEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.e = xor i1 %i.d, true
  %i.f = zext i1 %i.e to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.g = phi i8 [ 1, %bb.c ], [ %i.f, %bb.e ]
  store i8 %i.g, ptr %i.b, align 8, !tbaa !13
  ret void

bb.g:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.i, %bb.h ], [ %i.h, %bb.g ]
  tail call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #15
  resume { ptr, i32 } %.pn
}

declare void @_ZN4bzla9BitVectorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4bzla9BitVector7is_zeroEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4bzla9BitVector7is_onesEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla15BitVectorDomainC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.bzla::BitVector", align 8   ; 6 uses
  %5 = alloca %"class.bzla::BitVector", align 8   ; 6 uses
  tail call void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !19
  %i.h = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 %i.f, ptr %i.b, align 8, !tbaa !21
  %i.i = icmp ugt i64 %i.f, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.t     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.j, ptr %2, align 8, !tbaa !20
  %i.k = load i64, ptr %i.b, align 8, !tbaa !21
  store i64 %i.k, ptr %i.g, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.h, align 1, !tbaa !22
  store i8 %i.m, ptr %i.l, align 1, !tbaa !22
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.h, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.n = load i64, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !18
  %i.p = load ptr, ptr %2, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !19
  %i.s = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.t, ptr %i.a, align 8, !tbaa !21
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i19, label %._crit_edge.i.i18

.noexc.i19:                                       ; preds = %bb.e
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc20 unwind label %bb.u   ; 2 uses

.noexc20:                                         ; preds = %.noexc.i19
  store ptr %i.v, ptr %3, align 8, !tbaa !20
  %i.w = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.w, ptr %i.r, align 8, !tbaa !22
  br label %._crit_edge.i.i18

._crit_edge.i.i18:                                ; preds = %.noexc20, %bb.e
  %i.x = phi ptr [ %i.v, %.noexc20 ], [ %i.r, %bb.e ] ; 2 uses
  switch i64 %i.t, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i18
  %i.y = load i8, ptr %i.s, align 1, !tbaa !22
  store i8 %i.y, ptr %i.x, align 1, !tbaa !22
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.s, i64 %i.t, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i18
  %i.z = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !18
  %i.ab = load ptr, ptr %3, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ad = load ptr, ptr %2, align 8, !tbaa !20    ; 44 uses
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !18  ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %.not6.i = icmp samesign eq i64 %i.ae, 0
  br i1 %.not6.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check47 = icmp ult i64 %i.ae, 32
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.ae, 24
  %n.vec = and i64 %i.ae, -32                     ; 4 uses
  %i.ah = getelementptr i8, ptr %i.ad, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue141, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue141 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %index ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep48 = getelementptr i8, ptr %i.ai, i64 1
  %i.aj = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep49 = getelementptr i8, ptr %i.aj, i64 2
  %i.ak = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep50 = getelementptr i8, ptr %i.ak, i64 3
  %i.al = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep51 = getelementptr i8, ptr %i.al, i64 4
  %i.am = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep52 = getelementptr i8, ptr %i.am, i64 5
  %i.an = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep53 = getelementptr i8, ptr %i.an, i64 6
  %i.ao = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep54 = getelementptr i8, ptr %i.ao, i64 7
  %i.ap = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep55 = getelementptr i8, ptr %i.ap, i64 8
  %i.aq = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep56 = getelementptr i8, ptr %i.aq, i64 9
  %i.ar = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep57 = getelementptr i8, ptr %i.ar, i64 10
  %i.as = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep58 = getelementptr i8, ptr %i.as, i64 11
  %i.at = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep59 = getelementptr i8, ptr %i.at, i64 12
  %i.au = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep60 = getelementptr i8, ptr %i.au, i64 13
  %i.av = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep61 = getelementptr i8, ptr %i.av, i64 14
  %i.aw = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep62 = getelementptr i8, ptr %i.aw, i64 15
  %i.ax = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep63 = getelementptr i8, ptr %i.ax, i64 16
  %i.ay = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep64 = getelementptr i8, ptr %i.ay, i64 17
  %i.az = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep65 = getelementptr i8, ptr %i.az, i64 18
  %i.ba = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep66 = getelementptr i8, ptr %i.ba, i64 19
  %i.bb = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep67 = getelementptr i8, ptr %i.bb, i64 20
  %i.bc = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep68 = getelementptr i8, ptr %i.bc, i64 21
  %i.bd = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep69 = getelementptr i8, ptr %i.bd, i64 22
  %i.be = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep70 = getelementptr i8, ptr %i.be, i64 23
  %i.bf = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep71 = getelementptr i8, ptr %i.bf, i64 24
  %i.bg = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep72 = getelementptr i8, ptr %i.bg, i64 25
  %i.bh = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep73 = getelementptr i8, ptr %i.bh, i64 26
  %i.bi = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep74 = getelementptr i8, ptr %i.bi, i64 27
  %i.bj = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep75 = getelementptr i8, ptr %i.bj, i64 28
  %i.bk = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep76 = getelementptr i8, ptr %i.bk, i64 29
  %i.bl = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep77 = getelementptr i8, ptr %i.bl, i64 30
  %i.bm = getelementptr i8, ptr %i.ad, i64 %index
  %next.gep78 = getelementptr i8, ptr %i.bm, i64 31
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !22
  %wide.load79 = load <16 x i8>, ptr %i.bn, align 1, !tbaa !22
  %i.bo = icmp eq <16 x i8> %wide.load, splat (i8 120) ; 16 uses
  %i.bp = icmp eq <16 x i8> %wide.load79, splat (i8 120) ; 16 uses
  %i.bq = extractelement <16 x i1> %i.bo, i64 0
  br i1 %i.bq, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 48, ptr %next.gep, align 1, !tbaa !22
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.br = extractelement <16 x i1> %i.bo, i64 1
  br i1 %i.br, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue
  store i8 48, ptr %next.gep48, align 1, !tbaa !22
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue
  %i.bs = extractelement <16 x i1> %i.bo, i64 2
  br i1 %i.bs, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  store i8 48, ptr %next.gep49, align 1, !tbaa !22
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.bt = extractelement <16 x i1> %i.bo, i64 3
  br i1 %i.bt, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  store i8 48, ptr %next.gep50, align 1, !tbaa !22
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.bu = extractelement <16 x i1> %i.bo, i64 4
  br i1 %i.bu, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  store i8 48, ptr %next.gep51, align 1, !tbaa !22
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %i.bv = extractelement <16 x i1> %i.bo, i64 5
  br i1 %i.bv, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  store i8 48, ptr %next.gep52, align 1, !tbaa !22
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.bw = extractelement <16 x i1> %i.bo, i64 6
  br i1 %i.bw, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  store i8 48, ptr %next.gep53, align 1, !tbaa !22
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %i.bx = extractelement <16 x i1> %i.bo, i64 7
  br i1 %i.bx, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  store i8 48, ptr %next.gep54, align 1, !tbaa !22
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %i.by = extractelement <16 x i1> %i.bo, i64 8
  br i1 %i.by, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  store i8 48, ptr %next.gep55, align 1, !tbaa !22
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %i.bz = extractelement <16 x i1> %i.bo, i64 9
  br i1 %i.bz, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  store i8 48, ptr %next.gep56, align 1, !tbaa !22
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %i.ca = extractelement <16 x i1> %i.bo, i64 10
  br i1 %i.ca, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  store i8 48, ptr %next.gep57, align 1, !tbaa !22
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.cb = extractelement <16 x i1> %i.bo, i64 11
  br i1 %i.cb, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  store i8 48, ptr %next.gep58, align 1, !tbaa !22
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.cc = extractelement <16 x i1> %i.bo, i64 12
  br i1 %i.cc, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  store i8 48, ptr %next.gep59, align 1, !tbaa !22
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.cd = extractelement <16 x i1> %i.bo, i64 13
  br i1 %i.cd, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  store i8 48, ptr %next.gep60, align 1, !tbaa !22
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.ce = extractelement <16 x i1> %i.bo, i64 14
  br i1 %i.ce, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  store i8 48, ptr %next.gep61, align 1, !tbaa !22
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.cf = extractelement <16 x i1> %i.bo, i64 15
  br i1 %i.cf, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  store i8 48, ptr %next.gep62, align 1, !tbaa !22
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.cg = extractelement <16 x i1> %i.bp, i64 0
  br i1 %i.cg, label %pred.store.if110, label %pred.store.continue111

end_hunk_0
begin_hunk_1_@_ZN4bzla15BitVectorDomainC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %i.cq = extractelement <16 x i1> %i.bp, i64 10
  br i1 %i.cq, label %pred.store.if130, label %pred.store.continue131

pred.store.if130:                                 ; preds = %pred.store.continue129
  store i8 48, ptr %next.gep73, align 1, !tbaa !22
  br label %pred.store.continue131

pred.store.continue131:                           ; preds = %pred.store.if130, %pred.store.continue129
  %i.cr = extractelement <16 x i1> %i.bp, i64 11
  br i1 %i.cr, label %pred.store.if132, label %pred.store.continue133

pred.store.if132:                                 ; preds = %pred.store.continue131
  store i8 48, ptr %next.gep74, align 1, !tbaa !22
  br label %pred.store.continue133

pred.store.continue133:                           ; preds = %pred.store.if132, %pred.store.continue131
  %i.cs = extractelement <16 x i1> %i.bp, i64 12
  br i1 %i.cs, label %pred.store.if134, label %pred.store.continue135

pred.store.if134:                                 ; preds = %pred.store.continue133
  store i8 48, ptr %next.gep75, align 1, !tbaa !22
  br label %pred.store.continue135

pred.store.continue135:                           ; preds = %pred.store.if134, %pred.store.continue133
  %i.ct = extractelement <16 x i1> %i.bp, i64 13
  br i1 %i.ct, label %pred.store.if136, label %pred.store.continue137

pred.store.if136:                                 ; preds = %pred.store.continue135
  store i8 48, ptr %next.gep76, align 1, !tbaa !22
  br label %pred.store.continue137

pred.store.continue137:                           ; preds = %pred.store.if136, %pred.store.continue135
  %i.cu = extractelement <16 x i1> %i.bp, i64 14
  br i1 %i.cu, label %pred.store.if138, label %pred.store.continue139

pred.store.if138:                                 ; preds = %pred.store.continue137
  store i8 48, ptr %next.gep77, align 1, !tbaa !22
  br label %pred.store.continue139

pred.store.continue139:                           ; preds = %pred.store.if138, %pred.store.continue137
  %i.cv = extractelement <16 x i1> %i.bp, i64 15
  br i1 %i.cv, label %pred.store.if140, label %pred.store.continue141

pred.store.if140:                                 ; preds = %pred.store.continue139
  store i8 48, ptr %next.gep78, align 1, !tbaa !22
  br label %pred.store.continue141

pred.store.continue141:                           ; preds = %pred.store.if140, %pred.store.continue139
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %pred.store.continue141
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !65

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec142 = and i64 %i.ae, -8                   ; 3 uses
  %i.cx = getelementptr i8, ptr %i.ad, i64 %n.vec142
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue168, %vec.epilog.ph
  %index143 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next169, %pred.store.continue168 ] ; 9 uses
  %next.gep144 = getelementptr i8, ptr %i.ad, i64 %index143 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.ad, i64 %index143
  %next.gep145 = getelementptr i8, ptr %i.cy, i64 1
  %i.cz = getelementptr i8, ptr %i.ad, i64 %index143
  %next.gep146 = getelementptr i8, ptr %i.cz, i64 2
  %i.da = getelementptr i8, ptr %i.ad, i64 %index143
  %next.gep147 = getelementptr i8, ptr %i.da, i64 3
  %i.db = getelementptr i8, ptr %i.ad, i64 %index143
  %next.gep148 = getelementptr i8, ptr %i.db, i64 4
  %i.dc = getelementptr i8, ptr %i.ad, i64 %index143
  %next.gep149 = getelementptr i8, ptr %i.dc, i64 5
  %i.dd = getelementptr i8, ptr %i.ad, i64 %index143
  %next.gep150 = getelementptr i8, ptr %i.dd, i64 6
  %i.de = getelementptr i8, ptr %i.ad, i64 %index143
  %next.gep151 = getelementptr i8, ptr %i.de, i64 7
  %wide.load152 = load <8 x i8>, ptr %next.gep144, align 1, !tbaa !22
  %i.df = icmp eq <8 x i8> %wide.load152, splat (i8 120) ; 8 uses
  %i.dg = extractelement <8 x i1> %i.df, i64 0
  br i1 %i.dg, label %pred.store.if153, label %pred.store.continue154

pred.store.if153:                                 ; preds = %vec.epilog.vector.body
  store i8 48, ptr %next.gep144, align 1, !tbaa !22
  br label %pred.store.continue154

pred.store.continue154:                           ; preds = %pred.store.if153, %vec.epilog.vector.body
  %i.dh = extractelement <8 x i1> %i.df, i64 1
  br i1 %i.dh, label %pred.store.if155, label %pred.store.continue156

pred.store.if155:                                 ; preds = %pred.store.continue154
  store i8 48, ptr %next.gep145, align 1, !tbaa !22
  br label %pred.store.continue156

pred.store.continue156:                           ; preds = %pred.store.if155, %pred.store.continue154
  %i.di = extractelement <8 x i1> %i.df, i64 2
  br i1 %i.di, label %pred.store.if157, label %pred.store.continue158

pred.store.if157:                                 ; preds = %pred.store.continue156
  store i8 48, ptr %next.gep146, align 1, !tbaa !22
  br label %pred.store.continue158

pred.store.continue158:                           ; preds = %pred.store.if157, %pred.store.continue156
  %i.dj = extractelement <8 x i1> %i.df, i64 3
  br i1 %i.dj, label %pred.store.if159, label %pred.store.continue160

pred.store.if159:                                 ; preds = %pred.store.continue158
  store i8 48, ptr %next.gep147, align 1, !tbaa !22
  br label %pred.store.continue160

pred.store.continue160:                           ; preds = %pred.store.if159, %pred.store.continue158
  %i.dk = extractelement <8 x i1> %i.df, i64 4
  br i1 %i.dk, label %pred.store.if161, label %pred.store.continue162

pred.store.if161:                                 ; preds = %pred.store.continue160
  store i8 48, ptr %next.gep148, align 1, !tbaa !22
  br label %pred.store.continue162

pred.store.continue162:                           ; preds = %pred.store.if161, %pred.store.continue160
  %i.dl = extractelement <8 x i1> %i.df, i64 5
  br i1 %i.dl, label %pred.store.if163, label %pred.store.continue164

pred.store.if163:                                 ; preds = %pred.store.continue162
  store i8 48, ptr %next.gep149, align 1, !tbaa !22
  br label %pred.store.continue164

pred.store.continue164:                           ; preds = %pred.store.if163, %pred.store.continue162
  %i.dm = extractelement <8 x i1> %i.df, i64 6
  br i1 %i.dm, label %pred.store.if165, label %pred.store.continue166

pred.store.if165:                                 ; preds = %pred.store.continue164
  store i8 48, ptr %next.gep150, align 1, !tbaa !22
  br label %pred.store.continue166

pred.store.continue166:                           ; preds = %pred.store.if165, %pred.store.continue164
  %i.dn = extractelement <8 x i1> %i.df, i64 7
  br i1 %i.dn, label %pred.store.if167, label %pred.store.continue168

pred.store.if167:                                 ; preds = %pred.store.continue166
  store i8 48, ptr %next.gep151, align 1, !tbaa !22
  br label %pred.store.continue168

pred.store.continue168:                           ; preds = %pred.store.if167, %pred.store.continue166
  %index.next169 = add nuw i64 %index143, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next169, %n.vec142
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !60

vec.epilog.middle.block:                          ; preds = %pred.store.continue168
  %cmp.n170 = icmp eq i64 %i.ae, %n.vec142
  br i1 %cmp.n170, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.02.07.i.ph = phi ptr [ %i.ad, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.j
  %.sroa.02.07.i = phi ptr [ %i.dr, %bb.j ], [ %.sroa.02.07.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.dp = load i8, ptr %.sroa.02.07.i, align 1, !tbaa !22
  %i.dq = icmp eq i8 %i.dp, 120
  br i1 %i.dq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  store i8 48, ptr %.sroa.02.07.i, align 1, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.dr, %i.af
  br i1 %.not.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %.lr.ph.i, !llvm.loop !61

_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit: ; preds = %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h
  %i.ds = load ptr, ptr %3, align 8, !tbaa !20    ; 44 uses
  %i.dt = load i64, ptr %i.aa, align 8, !tbaa !18 ; 9 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dt
  %.not6.i22 = icmp samesign eq i64 %i.dt, 0
  br i1 %.not6.i22, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit26, label %iter.check281

iter.check281:                                    ; preds = %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit
  %min.iters.check172 = icmp ult i64 %i.dt, 8
  br i1 %min.iters.check172, label %.lr.ph.i23.preheader, label %vector.main.loop.iter.check173

vector.main.loop.iter.check173:                   ; preds = %iter.check281
  %min.iters.check174 = icmp ult i64 %i.dt, 32
  br i1 %min.iters.check174, label %vec.epilog.ph285, label %vector.ph175

vector.ph175:                                     ; preds = %vector.main.loop.iter.check173
  %i.dv = and i64 %i.dt, 24
  %n.vec176 = and i64 %i.dt, -32                  ; 4 uses
  %i.dw = getelementptr i8, ptr %i.ds, i64 %n.vec176
  br label %vector.body177

vector.body177:                                   ; preds = %pred.store.continue276, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next277, %pred.store.continue276 ] ; 33 uses
  %next.gep179 = getelementptr i8, ptr %i.ds, i64 %index178 ; 3 uses
  %i.dx = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep180 = getelementptr i8, ptr %i.dx, i64 1
  %i.dy = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep181 = getelementptr i8, ptr %i.dy, i64 2
  %i.dz = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep182 = getelementptr i8, ptr %i.dz, i64 3
  %i.ea = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep183 = getelementptr i8, ptr %i.ea, i64 4
  %i.eb = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep184 = getelementptr i8, ptr %i.eb, i64 5
  %i.ec = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep185 = getelementptr i8, ptr %i.ec, i64 6
  %i.ed = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep186 = getelementptr i8, ptr %i.ed, i64 7
  %i.ee = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep187 = getelementptr i8, ptr %i.ee, i64 8
  %i.ef = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep188 = getelementptr i8, ptr %i.ef, i64 9
  %i.eg = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep189 = getelementptr i8, ptr %i.eg, i64 10
  %i.eh = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep190 = getelementptr i8, ptr %i.eh, i64 11
  %i.ei = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep191 = getelementptr i8, ptr %i.ei, i64 12
  %i.ej = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep192 = getelementptr i8, ptr %i.ej, i64 13
  %i.ek = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep193 = getelementptr i8, ptr %i.ek, i64 14
  %i.el = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep194 = getelementptr i8, ptr %i.el, i64 15
  %i.em = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep195 = getelementptr i8, ptr %i.em, i64 16
  %i.en = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep196 = getelementptr i8, ptr %i.en, i64 17
  %i.eo = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep197 = getelementptr i8, ptr %i.eo, i64 18
  %i.ep = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep198 = getelementptr i8, ptr %i.ep, i64 19
  %i.eq = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep199 = getelementptr i8, ptr %i.eq, i64 20
  %i.er = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep200 = getelementptr i8, ptr %i.er, i64 21
  %i.es = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep201 = getelementptr i8, ptr %i.es, i64 22
  %i.et = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep202 = getelementptr i8, ptr %i.et, i64 23
  %i.eu = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep203 = getelementptr i8, ptr %i.eu, i64 24
  %i.ev = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep204 = getelementptr i8, ptr %i.ev, i64 25
  %i.ew = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep205 = getelementptr i8, ptr %i.ew, i64 26
  %i.ex = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep206 = getelementptr i8, ptr %i.ex, i64 27
  %i.ey = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep207 = getelementptr i8, ptr %i.ey, i64 28
  %i.ez = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep208 = getelementptr i8, ptr %i.ez, i64 29
  %i.fa = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep209 = getelementptr i8, ptr %i.fa, i64 30
  %i.fb = getelementptr i8, ptr %i.ds, i64 %index178
  %next.gep210 = getelementptr i8, ptr %i.fb, i64 31
  %i.fc = getelementptr i8, ptr %next.gep179, i64 16
  %wide.load211 = load <16 x i8>, ptr %next.gep179, align 1, !tbaa !22
  %wide.load212 = load <16 x i8>, ptr %i.fc, align 1, !tbaa !22
  %i.fd = icmp eq <16 x i8> %wide.load211, splat (i8 120) ; 16 uses
  %i.fe = icmp eq <16 x i8> %wide.load212, splat (i8 120) ; 16 uses
  %i.ff = extractelement <16 x i1> %i.fd, i64 0
  br i1 %i.ff, label %pred.store.if213, label %pred.store.continue214

pred.store.if213:                                 ; preds = %vector.body177
  store i8 49, ptr %next.gep179, align 1, !tbaa !22
  br label %pred.store.continue214

pred.store.continue214:                           ; preds = %pred.store.if213, %vector.body177
  %i.fg = extractelement <16 x i1> %i.fd, i64 1
  br i1 %i.fg, label %pred.store.if215, label %pred.store.continue216

pred.store.if215:                                 ; preds = %pred.store.continue214
  store i8 49, ptr %next.gep180, align 1, !tbaa !22
  br label %pred.store.continue216

pred.store.continue216:                           ; preds = %pred.store.if215, %pred.store.continue214
  %i.fh = extractelement <16 x i1> %i.fd, i64 2
  br i1 %i.fh, label %pred.store.if217, label %pred.store.continue218

pred.store.if217:                                 ; preds = %pred.store.continue216
  store i8 49, ptr %next.gep181, align 1, !tbaa !22
  br label %pred.store.continue218

pred.store.continue218:                           ; preds = %pred.store.if217, %pred.store.continue216
  %i.fi = extractelement <16 x i1> %i.fd, i64 3
  br i1 %i.fi, label %pred.store.if219, label %pred.store.continue220

pred.store.if219:                                 ; preds = %pred.store.continue218
  store i8 49, ptr %next.gep182, align 1, !tbaa !22
  br label %pred.store.continue220

pred.store.continue220:                           ; preds = %pred.store.if219, %pred.store.continue218
  %i.fj = extractelement <16 x i1> %i.fd, i64 4
  br i1 %i.fj, label %pred.store.if221, label %pred.store.continue222

pred.store.if221:                                 ; preds = %pred.store.continue220
  store i8 49, ptr %next.gep183, align 1, !tbaa !22
  br label %pred.store.continue222

pred.store.continue222:                           ; preds = %pred.store.if221, %pred.store.continue220
  %i.fk = extractelement <16 x i1> %i.fd, i64 5
  br i1 %i.fk, label %pred.store.if223, label %pred.store.continue224

pred.store.if223:                                 ; preds = %pred.store.continue222
  store i8 49, ptr %next.gep184, align 1, !tbaa !22
  br label %pred.store.continue224

pred.store.continue224:                           ; preds = %pred.store.if223, %pred.store.continue222
  %i.fl = extractelement <16 x i1> %i.fd, i64 6
  br i1 %i.fl, label %pred.store.if225, label %pred.store.continue226

pred.store.if225:                                 ; preds = %pred.store.continue224
  store i8 49, ptr %next.gep185, align 1, !tbaa !22
  br label %pred.store.continue226

pred.store.continue226:                           ; preds = %pred.store.if225, %pred.store.continue224
  %i.fm = extractelement <16 x i1> %i.fd, i64 7
  br i1 %i.fm, label %pred.store.if227, label %pred.store.continue228

pred.store.if227:                                 ; preds = %pred.store.continue226
  store i8 49, ptr %next.gep186, align 1, !tbaa !22
  br label %pred.store.continue228

pred.store.continue228:                           ; preds = %pred.store.if227, %pred.store.continue226
  %i.fn = extractelement <16 x i1> %i.fd, i64 8
  br i1 %i.fn, label %pred.store.if229, label %pred.store.continue230

pred.store.if229:                                 ; preds = %pred.store.continue228
  store i8 49, ptr %next.gep187, align 1, !tbaa !22
  br label %pred.store.continue230

pred.store.continue230:                           ; preds = %pred.store.if229, %pred.store.continue228
  %i.fo = extractelement <16 x i1> %i.fd, i64 9
  br i1 %i.fo, label %pred.store.if231, label %pred.store.continue232

pred.store.if231:                                 ; preds = %pred.store.continue230
  store i8 49, ptr %next.gep188, align 1, !tbaa !22
  br label %pred.store.continue232

pred.store.continue232:                           ; preds = %pred.store.if231, %pred.store.continue230
  %i.fp = extractelement <16 x i1> %i.fd, i64 10
  br i1 %i.fp, label %pred.store.if233, label %pred.store.continue234

pred.store.if233:                                 ; preds = %pred.store.continue232
  store i8 49, ptr %next.gep189, align 1, !tbaa !22
  br label %pred.store.continue234

pred.store.continue234:                           ; preds = %pred.store.if233, %pred.store.continue232
  %i.fq = extractelement <16 x i1> %i.fd, i64 11
  br i1 %i.fq, label %pred.store.if235, label %pred.store.continue236

pred.store.if235:                                 ; preds = %pred.store.continue234
  store i8 49, ptr %next.gep190, align 1, !tbaa !22
  br label %pred.store.continue236

pred.store.continue236:                           ; preds = %pred.store.if235, %pred.store.continue234
  %i.fr = extractelement <16 x i1> %i.fd, i64 12
  br i1 %i.fr, label %pred.store.if237, label %pred.store.continue238

pred.store.if237:                                 ; preds = %pred.store.continue236
  store i8 49, ptr %next.gep191, align 1, !tbaa !22
  br label %pred.store.continue238

pred.store.continue238:                           ; preds = %pred.store.if237, %pred.store.continue236
  %i.fs = extractelement <16 x i1> %i.fd, i64 13
  br i1 %i.fs, label %pred.store.if239, label %pred.store.continue240

pred.store.if239:                                 ; preds = %pred.store.continue238
  store i8 49, ptr %next.gep192, align 1, !tbaa !22
  br label %pred.store.continue240

pred.store.continue240:                           ; preds = %pred.store.if239, %pred.store.continue238
  %i.ft = extractelement <16 x i1> %i.fd, i64 14
  br i1 %i.ft, label %pred.store.if241, label %pred.store.continue242

pred.store.if241:                                 ; preds = %pred.store.continue240
  store i8 49, ptr %next.gep193, align 1, !tbaa !22
  br label %pred.store.continue242

pred.store.continue242:                           ; preds = %pred.store.if241, %pred.store.continue240
  %i.fu = extractelement <16 x i1> %i.fd, i64 15
  br i1 %i.fu, label %pred.store.if243, label %pred.store.continue244

pred.store.if243:                                 ; preds = %pred.store.continue242
  store i8 49, ptr %next.gep194, align 1, !tbaa !22
  br label %pred.store.continue244

pred.store.continue244:                           ; preds = %pred.store.if243, %pred.store.continue242
  %i.fv = extractelement <16 x i1> %i.fe, i64 0
  br i1 %i.fv, label %pred.store.if245, label %pred.store.continue246

end_hunk_1
