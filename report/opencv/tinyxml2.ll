Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tinyxml2?download=true
inline.NumInlined: 373
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2cv8tinyxml27XMLNode9ParseDeepEPcPNS0_7StrPairE:.preheader
  %i.eb = icmp eq ptr %i.ea, null
  %or.cond127 = select i1 %.not.i.i54.jt3, i1 true, i1 %i.eb
  br i1 %or.cond127, label %.critedge.sink.split.sink.split, label %.critedge.sink.split.sink.split.sink.split

bb.an:                                            ; preds = %_ZN2cv8tinyxml27XMLNode14InsertEndChildEPS1_.exit.jt0
  %i.ec = load ptr, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.ec) #22
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %_ZN2cv8tinyxml27XMLNode14InsertEndChildEPS1_.exit.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not = icmp eq ptr %.229.jt0, null
  br i1 %.not, label %.critedge, label %.lr.ph

bb.aq:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.w, %bb.aa, %bb.q, %bb.f
  %.pn51 = phi { ptr, i32 } [ %i.ba, %bb.q ], [ %i.cp, %bb.aa ], [ %i.z, %bb.f ], [ %i.bl, %bb.w ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ee = load i32, ptr %3, align 8, !tbaa !8
  %i.ef = and i32 %i.ee, 512
  %.not.i.i55 = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i55, label %_ZN2cv8tinyxml27StrPairD2Ev.exit56, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eg = load ptr, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %_ZN2cv8tinyxml27StrPairD2Ev.exit56, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZdaPv(ptr noundef nonnull %i.eg) #22
  br label %_ZN2cv8tinyxml27StrPairD2Ev.exit56

_ZN2cv8tinyxml27StrPairD2Ev.exit56:               ; preds = %bb.aq, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn51

.critedge.sink.split.sink.split.sink.split:       ; preds = %_ZN2cv8tinyxml27XMLNode14InsertEndChildEPS1_.exit.jt3, %_ZN2cv8tinyxml27XMLNode14InsertEndChildEPS1_.exit.jt1
  %.sink = phi ptr [ %i.du, %_ZN2cv8tinyxml27XMLNode14InsertEndChildEPS1_.exit.jt1 ], [ %i.ea, %_ZN2cv8tinyxml27XMLNode14InsertEndChildEPS1_.exit.jt3 ]
  %.3.ph.ph.ph = phi ptr [ %i.p, %_ZN2cv8tinyxml27XMLNode14InsertEndChildEPS1_.exit.jt1 ], [ null, %_ZN2cv8tinyxml27XMLNode14InsertEndChildEPS1_.exit.jt3 ]
  call void @_ZdaPv(ptr noundef nonnull %.sink) #22
  br label %.critedge.sink.split.sink.split

.critedge.sink.split.sink.split:                  ; preds = %.critedge.sink.split.sink.split.sink.split, %_ZN2cv8tinyxml27XMLNode14InsertEndChildEPS1_.exit.jt3, %_ZN2cv8tinyxml27XMLNode14InsertEndChildEPS1_.exit.jt1
  %.3.ph.ph = phi ptr [ %i.p, %_ZN2cv8tinyxml27XMLNode14InsertEndChildEPS1_.exit.jt1 ], [ null, %_ZN2cv8tinyxml27XMLNode14InsertEndChildEPS1_.exit.jt3 ], [ %.3.ph.ph.ph, %.critedge.sink.split.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.a, %.critedge.sink.split.sink.split
  %.3.ph = phi ptr [ %.3.ph.ph, %.critedge.sink.split.sink.split ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.critedge

.critedge:                                        ; preds = %bb.ap, %.lr.ph, %.preheader, %.critedge.sink.split
  %.3 = phi ptr [ %.3.ph, %.critedge.sink.split ], [ null, %.preheader ], [ null, %.lr.ph ], [ null, %bb.ap ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2cv8tinyxml211XMLDocument8SetErrorENS0_8XMLErrorEPKcS4_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(640) initializes((92, 96), (104, 120)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %1, ptr %i.a, align 4, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %2, ptr %i.b, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %3, ptr %i.c, align 8, !tbaa !115
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2cv8tinyxml27XMLText9ParseDeepEPcPNS0_7StrPairE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(89) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i8, ptr %i.a, align 8, !tbaa !42, !range !116, !noundef !117
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !14      ; 2 uses
  %.not19.i = icmp eq i8 %i.e, 0
  br i1 %.not19.i, label %_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.tail.thread
  %i.f = phi i8 [ %i.s, %.tail.thread ], [ %i.e, %bb.b ]
  %.01620.i = phi ptr [ %i.r, %.tail.thread ], [ %1, %bb.b ] ; 5 uses
  %i.g = icmp eq i8 %i.f, 93
  br i1 %i.g, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.01620.i, i64 1
  %i.i = load i8, ptr %i.h, align 1
  %.not41 = icmp eq i8 %i.i, 93
  br i1 %.not41, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.j = getelementptr inbounds nuw i8, ptr %.01620.i, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 62
  br i1 %i.l, label %bb.c, label %.tail.thread

bb.c:                                             ; preds = %.tail
  %i.m = load i32, ptr %i.d, align 8, !tbaa !8
  %i.n = and i32 %i.m, 512
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #22
  br label %_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit

.tail.thread:                                     ; preds = %sub_1, %.tail, %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01620.i, i64 1 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14    ; 2 uses
  %.not.i = icmp eq i8 %i.s, 0
  br i1 %.not.i, label %_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit.thread, label %.lr.ph.i, !llvm.loop !15

_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit:    ; preds = %bb.c, %bb.d, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.t, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.01620.i, ptr %i.u, align 8, !tbaa !13
  store i32 258, ptr %i.d, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %.01620.i, i64 3
  br label %bb.l

_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit.thread: ; preds = %.tail.thread, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 92
  store i32 11, ptr %i.y, align 4, !tbaa !104
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  store ptr %1, ptr %i.z, align 8, !tbaa !114
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  store ptr null, ptr %i.aa, align 8, !tbaa !115
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !33 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 89
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !118, !range !116, !noundef !117
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = select i1 %i.af, i32 3, i32 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !119
  %i.aj = icmp eq i32 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = load i8, ptr %1, align 1, !tbaa !14     ; 2 uses
  %.not19.i23 = icmp eq i8 %i.al, 0
  br i1 %.not19.i23, label %.thread, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %bb.f, %bb.j
  %lhsc = phi i8 [ %i.at, %bb.j ], [ %i.al, %bb.f ]
  %.01620.i25 = phi ptr [ %i.as, %bb.j ], [ %1, %bb.f ] ; 4 uses
  %i.am = icmp eq i8 %lhsc, 60
  br i1 %i.am, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.lr.ph.i24
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !8
  %i.ao = and i32 %i.an, 512
  %.not.i.i.i28 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i28, label %_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit30, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !12 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit30, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.aq) #22
  br label %_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit30

bb.j:                                             ; preds = %.lr.ph.i24
  %i.as = getelementptr inbounds nuw i8, ptr %.01620.i25, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !14  ; 2 uses
  %.not.i26 = icmp eq i8 %i.at, 0
  br i1 %.not.i26, label %.thread, label %.lr.ph.i24, !llvm.loop !15

_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit30:  ; preds = %bb.g, %bb.h, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.au, align 8, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.01620.i25, ptr %i.av, align 8, !tbaa !13
  %i.aw = select i1 %i.aj, i32 260, i32 256
  %i.ax = or disjoint i32 %i.aw, %i.ag
  store i32 %i.ax, ptr %i.ak, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01620.i25, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !14
  %.not18 = icmp eq i8 %i.az, 0
  br i1 %.not18, label %bb.k, label %bb.l

.thread:                                          ; preds = %bb.j, %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 92
  store i32 10, ptr %i.ba, align 4, !tbaa !104
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  store ptr %1, ptr %i.bb, align 8, !tbaa !114
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  store ptr null, ptr %i.bc, align 8, !tbaa !115
  br label %bb.k

bb.k:                                             ; preds = %.thread, %_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit30
  br label %bb.l

bb.l:                                             ; preds = %_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit, %_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit.thread, %_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit30, %bb.k
  %.1 = phi ptr [ %.01620.i25, %_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit30 ], [ null, %bb.k ], [ null, %_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit.thread ], [ %i.v, %_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZNK2cv8tinyxml27XMLText12ShallowCloneEPNS0_11XMLDocumentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(89) %0, ptr noundef %1) unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %.0 = select i1 %.not, ptr %i.b, ptr %1         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = tail call noundef ptr @_ZN2cv8tinyxml27StrPair6GetStrEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 384 ; 2 uses
  %i.f = tail call noundef ptr @_ZN2cv8tinyxml28MemPoolTILi96EE5AllocEv(ptr noundef nonnull align 8 dereferenceable(128) %i.e), !inline_history !120 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.0, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN2cv8tinyxml27XMLTextE, i64 16), ptr %i.f, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  store i8 0, ptr %i.l, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr %i.e, ptr %i.m, align 8, !tbaa !41
  store i32 0, ptr %i.i, align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.n = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) #25, !inline_history !120 ; 2 uses
  %i.o = add i64 %i.n, 1                          ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #26, !inline_history !120 ; 3 uses
  store ptr %i.p, ptr %i.j, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %i.d, i64 %i.o, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.q, ptr %i.r, align 8, !tbaa !13
  store i32 512, ptr %i.i, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load i8, ptr %i.s, align 8, !tbaa !42, !range !116, !noundef !117
  store i8 %i.t, ptr %i.l, align 8, !tbaa !42
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN2cv8tinyxml211XMLDocument7NewTextEPKc(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 {
_ZN2cv8tinyxml27XMLNode8SetValueEPKcb.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.b = tail call noundef ptr @_ZN2cv8tinyxml28MemPoolTILi96EE5AllocEv(ptr noundef nonnull align 8 dereferenceable(128) %i.a) ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN2cv8tinyxml27XMLTextE, i64 16), ptr %i.b, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i8 0, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.a, ptr %i.i, align 8, !tbaa !41
  store i32 0, ptr %i.e, align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.j = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #25 ; 2 uses
  %i.k = add i64 %i.j, 1                          ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #26 ; 3 uses
  store ptr %i.l, ptr %i.f, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %i.k, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.m, ptr %i.n, align 8, !tbaa !13
  store i32 512, ptr %i.e, align 8, !tbaa !8
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK2cv8tinyxml27XMLText12ShallowEqualEPKNS0_7XMLNodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(89) %0, ptr noundef %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZN2cv8tinyxml27XMLUtil11StringEqualEPKcS3_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = tail call noundef ptr @_ZN2cv8tinyxml27StrPair6GetStrEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = tail call noundef ptr @_ZN2cv8tinyxml27StrPair6GetStrEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) ; 3 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %_ZN2cv8tinyxml27XMLUtil11StringEqualEPKcS3_i.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.n = load i8, ptr %i.j, align 1, !tbaa !14    ; 2 uses
  %.not26.i = icmp eq i8 %i.n, 0
  br i1 %.not26.i, label %.critedge.i.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %i.o = phi i8 [ %i.v, %bb.c ], [ %i.n, %.preheader.i ]
  %.029.i = phi i32 [ %i.u, %bb.c ], [ 0, %.preheader.i ] ; 3 uses
  %.01628.i = phi ptr [ %i.t, %bb.c ], [ %i.l, %.preheader.i ] ; 2 uses
  %.01727.i = phi ptr [ %i.s, %bb.c ], [ %i.j, %.preheader.i ]
  %i.p = load i8, ptr %.01628.i, align 1, !tbaa !14
  %i.q = icmp eq i8 %i.o, %i.p
  %i.r = icmp ne i32 %.029.i, 2147483647
  %or.cond23.i = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond23.i, label %bb.c, label %.critedge.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.01727.i, i64 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01628.i, i64 1 ; 2 uses
  %i.u = add nuw nsw i32 %.029.i, 1               ; 2 uses
  %i.v = load i8, ptr %i.s, align 1, !tbaa !14    ; 2 uses
  %.not.i = icmp eq i8 %i.v, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !32

.critedge.i:                                      ; preds = %bb.c
  %i.w = icmp eq i32 %i.u, 2147483647
  br i1 %i.w, label %_ZN2cv8tinyxml27XMLUtil11StringEqualEPKcS3_i.exit, label %.critedge.i.thread

.critedge.thread.i:                               ; preds = %.lr.ph.i
  %i.x = icmp eq i32 %.029.i, 2147483647
  br i1 %i.x, label %_ZN2cv8tinyxml27XMLUtil11StringEqualEPKcS3_i.exit, label %.thread.i

.critedge.i.thread:                               ; preds = %.preheader.i, %.critedge.i
  %.016.lcssa.i5 = phi ptr [ %i.t, %.critedge.i ], [ %i.l, %.preheader.i ]
  %i.y = load i8, ptr %.016.lcssa.i5, align 1, !tbaa !14
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %_ZN2cv8tinyxml27XMLUtil11StringEqualEPKcS3_i.exit, label %.thread.i

.thread.i:                                        ; preds = %.critedge.i.thread, %.critedge.thread.i
  br label %_ZN2cv8tinyxml27XMLUtil11StringEqualEPKcS3_i.exit

_ZN2cv8tinyxml27XMLUtil11StringEqualEPKcS3_i.exit: ; preds = %.thread.i, %.critedge.i.thread, %.critedge.thread.i, %.critedge.i, %bb.b, %bb.a
  %i.aa = phi i1 [ false, %bb.a ], [ false, %.thread.i ], [ true, %bb.b ], [ true, %.critedge.i.thread ], [ true, %.critedge.i ], [ true, %.critedge.thread.i ]
  ret i1 %i.aa
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK2cv8tinyxml27XMLText6AcceptEPNS0_10XMLVisitorE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(89) %0)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2cv8tinyxml210XMLCommentC2EPNS0_11XMLDocumentE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) initializes((0, 28), (32, 88)) %0, ptr noundef %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN2cv8tinyxml210XMLCommentE, i64 16), ptr %0, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2cv8tinyxml210XMLCommentD0Ev(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2cv8tinyxml27XMLNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #22
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2cv8tinyxml210XMLComment9ParseDeepEPcPNS0_7StrPairE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !14      ; 2 uses
  %.not19.i = icmp eq i8 %i.b, 0
  br i1 %.not19.i, label %_ZN2cv8tinyxml27StrPair9ParseTextEPcPKci.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.tail.thread
  %i.c = phi i8 [ %i.p, %.tail.thread ], [ %i.b, %bb.a ]
  %.01620.i = phi ptr [ %i.o, %.tail.thread ], [ %1, %bb.a ] ; 5 uses
  %i.d = icmp eq i8 %i.c, 45
  br i1 %i.d, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.01620.i, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %.not10 = icmp eq i8 %i.f, 45
  br i1 %.not10, label %.tail, label %.tail.thread

end_hunk_0
