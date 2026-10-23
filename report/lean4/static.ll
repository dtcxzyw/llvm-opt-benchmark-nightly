Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/static?download=true
inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 40
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_Z24_mi_segment_visit_blocksP12mi_segment_sibPFbPK9mi_heap_sPK14mi_heap_area_sPvmS7_ES7_:bb.a
  store i64 %i.s, ptr %i.i, align 8, !tbaa !143
  %i.t = getelementptr inbounds nuw i8, ptr %.01417.us.us, i64 10
  %i.u = load i16, ptr %i.t, align 2, !tbaa !71
  %i.v = zext i16 %i.u to i64
  %i.w = mul i64 %.014.val.us.us, %i.v
  store i64 %i.w, ptr %i.j, align 8, !tbaa !144
  %i.x = getelementptr i8, ptr %.01417.us.us, i64 48
  %.val18.i.i.us.us = load ptr, ptr %i.x, align 8, !tbaa !59
  store ptr %.val18.i.i.us.us, ptr %5, align 8, !tbaa !145
  %i.y = getelementptr inbounds nuw i8, ptr %.01417.us.us, i64 32
  %i.z = load i16, ptr %i.y, align 8, !tbaa !66
  %i.aa = zext i16 %i.z to i64
  store i64 %i.aa, ptr %i.k, align 8, !tbaa !146
  store i64 %.014.val.us.us, ptr %i.l, align 8, !tbaa !147
  store i64 %.014.val.us.us, ptr %i.m, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.us.us, i64 35
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !149
  %i.ad = zext i8 %i.ac to i32
  store i32 %i.ad, ptr %i.n, align 8, !tbaa !150
  %i.ae = call noundef zeroext i1 %3(ptr noundef null, ptr noundef nonnull %5, ptr noundef null, i64 noundef %.014.val.us.us, ptr noundef %4), !inline_history !266
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br i1 %i.ae, label %.critedge.us.us, label %.split._crit_edge

.critedge.us.us:                                  ; preds = %_ZL21mi_segment_visit_pageP9mi_page_sbPFbPK9mi_heap_sPK14mi_heap_area_sPvmS7_ES7_.exit.us.us, %.lr.ph.split.us.split.us
  %i.af = load i32, ptr %.01417.us.us, align 8, !tbaa !140
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [96 x i8], ptr %.01417.us.us, i64 %i.ag ; 2 uses
  %.not36 = icmp ult ptr %i.ah, %i.d
  br i1 %.not36, label %.lr.ph.split.us.split.us, label %.split._crit_edge, !llvm.loop !267

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.critedge.us
  %.01417.us = phi ptr [ %i.bc, %.critedge.us ], [ %i.g, %.lr.ph.split.us ] ; 8 uses
  %i.ai = getelementptr i8, ptr %.01417.us, i64 40
  %.014.val.us = load i64, ptr %i.ai, align 8, !tbaa !62 ; 6 uses
  %.not.us = icmp eq i64 %.014.val.us, 0
  br i1 %.not.us, label %.critedge.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.us, i64 35
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !149
  %i.al = zext i8 %i.ak to i32
  %i.am = icmp eq i32 %1, %i.al
  br i1 %i.am, label %_ZL21mi_segment_visit_pageP9mi_page_sbPFbPK9mi_heap_sPK14mi_heap_area_sPvmS7_ES7_.exit.us, label %.critedge.us

_ZL21mi_segment_visit_pageP9mi_page_sbPFbPK9mi_heap_sPK14mi_heap_area_sPvmS7_ES7_.exit.us: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %i.an = getelementptr inbounds nuw i8, ptr %.01417.us, i64 12
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !141
  %i.ap = zext i16 %i.ao to i64
  %i.aq = mul i64 %.014.val.us, %i.ap
  store i64 %i.aq, ptr %i.i, align 8, !tbaa !143
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417.us, i64 10
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !71
  %i.at = zext i16 %i.as to i64
  %i.au = mul i64 %.014.val.us, %i.at
  store i64 %i.au, ptr %i.j, align 8, !tbaa !144
  %i.av = getelementptr i8, ptr %.01417.us, i64 48
  %.val18.i.i.us = load ptr, ptr %i.av, align 8, !tbaa !59
  store ptr %.val18.i.i.us, ptr %5, align 8, !tbaa !145
  %i.aw = getelementptr inbounds nuw i8, ptr %.01417.us, i64 32
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !66
  %i.ay = zext i16 %i.ax to i64
  store i64 %i.ay, ptr %i.k, align 8, !tbaa !146
  store i64 %.014.val.us, ptr %i.l, align 8, !tbaa !147
  store i64 %.014.val.us, ptr %i.m, align 8, !tbaa !148
  store i32 %1, ptr %i.n, align 8, !tbaa !150
  %i.az = call noundef zeroext i1 %3(ptr noundef null, ptr noundef nonnull %5, ptr noundef null, i64 noundef %.014.val.us, ptr noundef %4), !inline_history !266
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br i1 %i.az, label %.critedge.us, label %.split._crit_edge

.critedge.us:                                     ; preds = %_ZL21mi_segment_visit_pageP9mi_page_sbPFbPK9mi_heap_sPK14mi_heap_area_sPvmS7_ES7_.exit.us, %bb.b, %.lr.ph.split.us.split
  %i.ba = load i32, ptr %.01417.us, align 8, !tbaa !140
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [96 x i8], ptr %.01417.us, i64 %i.bb ; 2 uses
  %.not35 = icmp ult ptr %i.bc, %i.d
  br i1 %.not35, label %.lr.ph.split.us.split, label %.split._crit_edge, !llvm.loop !267

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.h, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.critedge.us26
  %.01417.us21 = phi ptr [ %i.bx, %.critedge.us26 ], [ %i.g, %.lr.ph.split ] ; 9 uses
  %i.bd = getelementptr i8, ptr %.01417.us21, i64 40
  %.014.val.us22 = load i64, ptr %i.bd, align 8, !tbaa !62 ; 6 uses
  %.not.us23 = icmp eq i64 %.014.val.us22, 0
  br i1 %.not.us23, label %.critedge.us26, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %i.be = getelementptr inbounds nuw i8, ptr %.01417.us21, i64 12
  %i.bf = load i16, ptr %i.be, align 4, !tbaa !141
  %i.bg = zext i16 %i.bf to i64
  %i.bh = mul i64 %.014.val.us22, %i.bg
  store i64 %i.bh, ptr %i.i, align 8, !tbaa !143
  %i.bi = getelementptr inbounds nuw i8, ptr %.01417.us21, i64 10
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !71
  %i.bk = zext i16 %i.bj to i64
  %i.bl = mul i64 %.014.val.us22, %i.bk
  store i64 %i.bl, ptr %i.j, align 8, !tbaa !144
  %i.bm = getelementptr i8, ptr %.01417.us21, i64 48
  %.val18.i.i.us24 = load ptr, ptr %i.bm, align 8, !tbaa !59
  store ptr %.val18.i.i.us24, ptr %5, align 8, !tbaa !145
  %i.bn = getelementptr inbounds nuw i8, ptr %.01417.us21, i64 32
  %i.bo = load i16, ptr %i.bn, align 8, !tbaa !66
  %i.bp = zext i16 %i.bo to i64
  store i64 %i.bp, ptr %i.k, align 8, !tbaa !146
  store i64 %.014.val.us22, ptr %i.l, align 8, !tbaa !147
  store i64 %.014.val.us22, ptr %i.m, align 8, !tbaa !148
  %i.bq = getelementptr inbounds nuw i8, ptr %.01417.us21, i64 35
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !149
  %i.bs = zext i8 %i.br to i32
  store i32 %i.bs, ptr %i.n, align 8, !tbaa !150
  %i.bt = call noundef zeroext i1 %3(ptr noundef null, ptr noundef nonnull %5, ptr noundef null, i64 noundef %.014.val.us22, ptr noundef %4), !inline_history !266
  br i1 %i.bt, label %.split.us, label %.split._crit_edge.sink.split

.split.us:                                        ; preds = %bb.c
  %i.bu = call noundef zeroext i1 @_Z26_mi_heap_area_visit_blocksPK14mi_heap_area_sP9mi_page_sPFbPK9mi_heap_sS1_PvmS7_ES7_(ptr noundef nonnull %5, ptr noundef nonnull %.01417.us21, ptr noundef readonly %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br i1 %i.bu, label %.critedge.us26, label %.split._crit_edge

.critedge.us26:                                   ; preds = %.split.us, %.lr.ph.split.split.us
  %i.bv = load i32, ptr %.01417.us21, align 8, !tbaa !140
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [96 x i8], ptr %.01417.us21, i64 %i.bw ; 2 uses
  %.not38 = icmp ult ptr %i.bx, %i.d
  br i1 %.not38, label %.lr.ph.split.split.us, label %.split._crit_edge, !llvm.loop !267

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %.critedge
  %.01417 = phi ptr [ %i.ct, %.critedge ], [ %i.g, %.lr.ph.split ] ; 9 uses
  %i.by = getelementptr i8, ptr %.01417, i64 40
  %.014.val = load i64, ptr %i.by, align 8, !tbaa !62 ; 6 uses
  %.not = icmp eq i64 %.014.val, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.split
  %i.bz = getelementptr inbounds nuw i8, ptr %.01417, i64 35
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !149
  %i.cb = zext i8 %i.ca to i32
  %i.cc = icmp eq i32 %1, %i.cb
  br i1 %i.cc, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %i.cd = getelementptr inbounds nuw i8, ptr %.01417, i64 12
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !141
  %i.cf = zext i16 %i.ce to i64
  %i.cg = mul i64 %.014.val, %i.cf
  store i64 %i.cg, ptr %i.i, align 8, !tbaa !143
  %i.ch = getelementptr inbounds nuw i8, ptr %.01417, i64 10
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !71
  %i.cj = zext i16 %i.ci to i64
  %i.ck = mul i64 %.014.val, %i.cj
  store i64 %i.ck, ptr %i.j, align 8, !tbaa !144
  %i.cl = getelementptr i8, ptr %.01417, i64 48
  %.val18.i.i = load ptr, ptr %i.cl, align 8, !tbaa !59
  store ptr %.val18.i.i, ptr %5, align 8, !tbaa !145
  %i.cm = getelementptr inbounds nuw i8, ptr %.01417, i64 32
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !66
  %i.co = zext i16 %i.cn to i64
  store i64 %i.co, ptr %i.k, align 8, !tbaa !146
  store i64 %.014.val, ptr %i.l, align 8, !tbaa !147
  store i64 %.014.val, ptr %i.m, align 8, !tbaa !148
  store i32 %1, ptr %i.n, align 8, !tbaa !150
  %i.cp = call noundef zeroext i1 %3(ptr noundef null, ptr noundef nonnull %5, ptr noundef null, i64 noundef %.014.val, ptr noundef %4), !inline_history !266
  br i1 %i.cp, label %.split, label %.split._crit_edge.sink.split

.split:                                           ; preds = %bb.e
  %i.cq = call noundef zeroext i1 @_Z26_mi_heap_area_visit_blocksPK14mi_heap_area_sP9mi_page_sPFbPK9mi_heap_sS1_PvmS7_ES7_(ptr noundef nonnull %5, ptr noundef nonnull %.01417, ptr noundef readonly %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br i1 %i.cq, label %.critedge, label %.split._crit_edge

.critedge:                                        ; preds = %.split, %bb.d, %.lr.ph.split.split
  %i.cr = load i32, ptr %.01417, align 8, !tbaa !140
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [96 x i8], ptr %.01417, i64 %i.cs ; 2 uses
  %.not37 = icmp ult ptr %i.ct, %i.d
  br i1 %.not37, label %.lr.ph.split.split, label %.split._crit_edge, !llvm.loop !267

.split._crit_edge.sink.split:                     ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %.split._crit_edge

.split._crit_edge:                                ; preds = %_ZL21mi_segment_visit_pageP9mi_page_sbPFbPK9mi_heap_sPK14mi_heap_area_sPvmS7_ES7_.exit.us, %.critedge.us, %_ZL21mi_segment_visit_pageP9mi_page_sbPFbPK9mi_heap_sPK14mi_heap_area_sPvmS7_ES7_.exit.us.us, %.critedge.us.us, %.critedge, %.split, %.critedge.us26, %.split.us, %.split._crit_edge.sink.split, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %_ZL21mi_segment_visit_pageP9mi_page_sbPFbPK9mi_heap_sPK14mi_heap_area_sPvmS7_ES7_.exit.us.us ], [ false, %.split._crit_edge.sink.split ], [ false, %.split.us ], [ false, %.split ], [ true, %.critedge.us26 ], [ true, %.critedge ], [ true, %.critedge.us.us ], [ false, %_ZL21mi_segment_visit_pageP9mi_page_sbPFbPK9mi_heap_sPK14mi_heap_area_sPvmS7_ES7_.exit.us ], [ true, %.critedge.us ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_Z27_mi_arena_memid_is_suitable10mi_memid_si(ptr nofree noundef readonly byval(%struct.mi_memid_s) align 8 captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !151
  %i.c = icmp eq i32 %i.b, 6
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !69, !range !113, !noundef !114
  %2 = trunc nuw i8 %i.g to i1
  %.not.i = xor i1 %2, true
  %i.h = icmp eq i32 %1, 0
  %or.cond.i = and i1 %i.h, %.not.i
  %i.i = icmp eq i32 %i.e, %1
  %spec.select.i = or i1 %i.i, %or.cond.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %1, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %spec.select.i, %bb.b ], [ %i.j, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_Z31_mi_arena_memid_is_os_allocated10mi_memid_s(ptr nofree noundef readonly byval(%struct.mi_memid_s) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !151
  %i.c = icmp eq i32 %i.b, 3
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z21_mi_arena_meta_zallocmP10mi_memid_s(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.c = add i64 %0, -4097
  %or.cond.i = icmp ult i64 %i.c, -4096
  br i1 %or.cond.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_ZL19mi_arena_static_top monotonic, align 64 ; 2 uses
  %i.e = add i64 %i.d, %0
  %i.f = icmp ugt i64 %i.e, 4096
  br i1 %i.f, label %.thread18, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %0, 15                   ; 3 uses
  %i.h = add i64 %i.d, %i.g
  %i.i = icmp ugt i64 %i.h, 4096
  br i1 %i.i, label %.thread18, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = atomicrmw add ptr @_ZL19mi_arena_static_top, i64 %i.g acq_rel, align 8 ; 3 uses
  %i.k = add i64 %i.j, %i.g                       ; 2 uses
  %i.l = icmp ugt i64 %i.k, 4096
  br i1 %i.l, label %bb.e, label %_ZL22mi_arena_static_zallocmmP10mi_memid_s.exit

bb.e:                                             ; preds = %bb.d
  %i.m = cmpxchg ptr @_ZL19mi_arena_static_top, i64 %i.k, i64 %i.j acq_rel acquire, align 8 ; 0 uses
  br label %.thread18

_ZL22mi_arena_static_zallocmmP10mi_memid_s.exit:  ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1, i8 0, i64 20, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 2, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !152
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 1, ptr %i.n, align 2, !tbaa !153
  %i.o = add i64 %i.j, 15
  %i.p = and i64 %i.o, -16
  %i.q = getelementptr inbounds nuw i8, ptr @_ZL15mi_arena_static, i64 %i.p ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.q, i8 0, i64 %0, i1 false)
  br label %_Z12_mi_os_allocmP10mi_memid_s.exit.thread

.thread18:                                        ; preds = %bb.e, %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %0, 0
  br i1 %i.r, label %_Z12_mi_os_allocmP10mi_memid_s.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = icmp ult i64 %0, 524288
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread18, %bb.g
  %i.t = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !95
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.u = icmp ult i64 %0, 2097152
  br i1 %i.u, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = icmp ult i64 %0, 8388608
  br i1 %i.v, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = icmp ult i64 %0, 33554432
  %..i.i = select i1 %i.w, i64 1048576, i64 4194304
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0.i.i = phi i64 [ %i.t, %bb.h ], [ 262144, %bb.j ], [ 65536, %bb.i ], [ %..i.i, %bb.k ] ; 5 uses
  %i.x = xor i64 %.0.i.i, -1
  %.not.i.i = icmp ult i64 %0, %i.x
  br i1 %.not.i.i, label %bb.m, label %_Z22_mi_os_good_alloc_sizem.exit.i, !prof !68

bb.m:                                             ; preds = %bb.l
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i)
  %i.z = icmp samesign ult i64 %i.y, 2
  %i.aa = add i64 %0, -1
  %i.ab = add i64 %i.aa, %.0.i.i                  ; 3 uses
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = sub i64 0, %.0.i.i
  %i.ad = and i64 %i.ab, %i.ac
  br label %_Z22_mi_os_good_alloc_sizem.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ae = urem i64 %i.ab, %.0.i.i
  %i.af = sub nuw i64 %i.ab, %i.ae
  br label %_Z22_mi_os_good_alloc_sizem.exit.i

_Z22_mi_os_good_alloc_sizem.exit.i:               ; preds = %bb.o, %bb.n, %bb.l
  %.010.i.i = phi i64 [ %0, %bb.l ], [ %i.ad, %bb.n ], [ %i.af, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i8 0, ptr %i.a, align 1, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i8 0, ptr %i.b, align 1, !tbaa !115
  %i.ag = call fastcc noundef ptr @_ZL16mi_os_prim_allocmmbbPbS_(i64 noundef %.010.i.i, i64 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %i.a, ptr noundef %i.b) ; 5 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_Z12_mi_os_allocmP10mi_memid_s.exit.thread20, label %bb.p

_Z12_mi_os_allocmP10mi_memid_s.exit.thread20:     ; preds = %_Z22_mi_os_good_alloc_sizem.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_Z12_mi_os_allocmP10mi_memid_s.exit.thread

bb.p:                                             ; preds = %_Z22_mi_os_good_alloc_sizem.exit.i
  %i.ah = load i8, ptr %i.b, align 1, !tbaa !115, !range !113, !noundef !114 ; 2 uses
  %i.ai = load i8, ptr %i.a, align 1, !tbaa !115, !range !113, !noundef !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.ai, ptr %.sroa.4.0..sroa_idx.i15, align 8, !tbaa !115
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !115
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  store i8 %i.ah, ptr %.sroa.6.0..sroa_idx.i, align 2, !tbaa !115
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 3, ptr %.sroa.78.0..sroa_idx.i, align 4, !tbaa !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  %i.aj = trunc nuw i8 %i.ah to i1
  br i1 %i.aj, label %_Z12_mi_os_allocmP10mi_memid_s.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ag, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ag, i8 0, i64 %0, i1 false)
  store i8 1, ptr %.sroa.6.0..sroa_idx.i, align 2, !tbaa !153
  br label %_Z12_mi_os_allocmP10mi_memid_s.exit.thread

_Z12_mi_os_allocmP10mi_memid_s.exit.thread:       ; preds = %bb.f, %_Z12_mi_os_allocmP10mi_memid_s.exit.thread20, %_ZL22mi_arena_static_zallocmmP10mi_memid_s.exit, %bb.p, %bb.q
  %.0 = phi ptr [ null, %_Z12_mi_os_allocmP10mi_memid_s.exit.thread20 ], [ %i.q, %_ZL22mi_arena_static_zallocmmP10mi_memid_s.exit ], [ %i.ag, %bb.q ], [ %i.ag, %bb.p ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z12_mi_os_allocmP10mi_memid_s(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.c = icmp eq i64 %0, 0
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 524288
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !95
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ult i64 %0, 2097152
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ult i64 %0, 8388608
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ult i64 %0, 33554432
  %..i = select i1 %i.h, i64 1048576, i64 4194304
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.c ], [ 262144, %bb.e ], [ 65536, %bb.d ], [ %..i, %bb.f ] ; 5 uses
  %i.i = xor i64 %.0.i, -1
  %.not.i = icmp ult i64 %0, %i.i
  br i1 %.not.i, label %bb.h, label %_Z22_mi_os_good_alloc_sizem.exit, !prof !68
end_hunk_0
begin_hunk_1_@_Z23_mi_arena_alloc_alignedmmmbbiP10mi_memid_s:bb.a
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 136), align 8, !tbaa !135
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.r, label %mi_option_get.exit25.i, !prof !61

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 128)), !inline_history !138
  %.pre.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 128), align 16, !tbaa !137
  br label %mi_option_get.exit25.i

mi_option_get.exit25.i:                           ; preds = %bb.r, %bb.q
  %i.aq = phi i64 [ %i.ak, %bb.q ], [ %.pre.i, %bb.r ]
  %i.ar = icmp eq i64 %i.aq, 1
  br label %_ZL16mi_arena_reservembPi.exit

_ZL16mi_arena_reservembPi.exit:                   ; preds = %bb.p, %mi_option_get.exit25.i
  %.0.i55 = phi i1 [ %i.an, %bb.p ], [ %i.ar, %mi_option_get.exit25.i ]
  %i.as = call i32 @mi_reserve_os_memory_ex(i64 noundef %.2.i, i1 noundef zeroext %.0.i55, i1 noundef zeroext %4, i1 noundef zeroext false, ptr noundef nonnull %i.b) #50
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.s, label %.thread64

bb.s:                                             ; preds = %_ZL16mi_arena_reservembPi.exit
  %i.au = load i32, ptr %i.b, align 4, !tbaa !97
  %i.av = call fastcc noundef ptr @_ZL24mi_arena_try_alloc_at_idibimmbbiP10mi_memid_s(i32 noundef %i.au, i1 noundef zeroext true, i32 noundef %.0.i, i64 noundef %0, i1 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef 0, ptr noundef nonnull %6) ; 2 uses
  %.not52 = icmp eq ptr %i.av, null
  br i1 %.not52, label %.thread64, label %bb.t

.thread64:                                        ; preds = %_ZL16mi_arena_reservembPi.exit, %bb.s, %bb.g, %bb.h, %mi_option_get_size.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  br label %.thread

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  br label %_Z30_mi_os_alloc_aligned_at_offsetmmmbbP10mi_memid_s.exit

.thread:                                          ; preds = %bb.f, %.thread64, %bb.d, %mi_option_is_enabled.exit
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 552), align 8, !tbaa !135
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.u, label %mi_option_is_enabled.exit57, !prof !61

bb.u:                                             ; preds = %.thread
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 544)), !inline_history !136
  br label %mi_option_is_enabled.exit57

mi_option_is_enabled.exit57:                      ; preds = %.thread, %bb.u
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 544), align 16, !tbaa !137
  %i.az = icmp eq i64 %i.ay, 0
  %.not53 = icmp eq i32 %5, 0
  %or.cond67 = and i1 %.not53, %i.az
  br i1 %or.cond67, label %bb.w, label %bb.v

bb.v:                                             ; preds = %mi_option_is_enabled.exit57
  %i.ba = tail call ptr @__errno_location() #54
  store i32 12, ptr %i.ba, align 4, !tbaa !97
  br label %_Z30_mi_os_alloc_aligned_at_offsetmmmbbP10mi_memid_s.exit

bb.w:                                             ; preds = %mi_option_is_enabled.exit57
  %.not54 = icmp eq i64 %2, 0
  br i1 %.not54, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bb = icmp ugt i64 %2, 33554432
  br i1 %i.bb, label %_Z30_mi_os_alloc_aligned_at_offsetmmmbbP10mi_memid_s.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bc = add i64 %1, -1
  %i.bd = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.be = icmp samesign ult i64 %i.bd, 2
  %i.bf = add i64 %i.bc, %2                       ; 3 uses
  br i1 %i.be, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bg = sub i64 0, %1
  %i.bh = and i64 %i.bf, %i.bg
  br label %_ZL12_mi_align_upmm.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.bi = urem i64 %i.bf, %1
  %i.bj = sub nuw i64 %i.bf, %i.bi
  br label %_ZL12_mi_align_upmm.exit.i

_ZL12_mi_align_upmm.exit.i:                       ; preds = %bb.aa, %bb.z
  %.0.i.i = phi i64 [ %i.bh, %bb.z ], [ %i.bj, %bb.aa ]
  %i.bk = sub i64 %.0.i.i, %2                     ; 5 uses
  %i.bl = add i64 %i.bk, %0
  %i.bm = call noundef ptr @_Z20_mi_os_alloc_alignedmmbbP10mi_memid_s(i64 noundef %i.bl, i64 noundef %1, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull %6) ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_Z30_mi_os_alloc_aligned_at_offsetmmmbbP10mi_memid_s.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZL12_mi_align_upmm.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk ; 2 uses
  %i.bp = load i64, ptr @_ZL16mi_os_mem_config, align 8
  %i.bq = icmp ugt i64 %i.bk, %i.bp
  %or.cond.i = select i1 %3, i1 %i.bq, i1 false
  br i1 %or.cond.i, label %bb.ac, label %_Z30_mi_os_alloc_aligned_at_offsetmmmbbP10mi_memid_s.exit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.br = call fastcc noundef zeroext i1 @_ZL17mi_os_decommit_exPvmPbm(ptr noundef nonnull %i.bm, i64 noundef %i.bk, ptr noundef %i.a, i64 noundef %i.bk) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_Z30_mi_os_alloc_aligned_at_offsetmmmbbP10mi_memid_s.exit

bb.ad:                                            ; preds = %bb.w
  %i.bs = call noundef ptr @_Z20_mi_os_alloc_alignedmmbbP10mi_memid_s(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull %6)
  br label %_Z30_mi_os_alloc_aligned_at_offsetmmmbbP10mi_memid_s.exit

_Z30_mi_os_alloc_aligned_at_offsetmmmbbP10mi_memid_s.exit: ; preds = %bb.e, %bb.ac, %bb.ab, %_ZL12_mi_align_upmm.exit.i, %bb.x, %bb.t, %bb.ad, %bb.v
  %.3 = phi ptr [ null, %bb.v ], [ %i.bo, %bb.ac ], [ %i.bs, %bb.ad ], [ %i.av, %bb.t ], [ null, %bb.x ], [ %i.bo, %bb.ab ], [ null, %_ZL12_mi_align_upmm.exit.i ], [ %i.l, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef ptr @_ZL18mi_arena_try_allocimmbbiP10mi_memid_s(i32 noundef %0, i64 noundef range(i64 16777216, 0) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #11 {
bb.a:
  %i.a = load atomic i64, ptr @_ZL14mi_arena_count monotonic, align 64 ; 4 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.thread, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.preheader71, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp slt i32 %4, 1
  %i.d = add nsw i32 %4, -1
  %i.e = select i1 %i.c, i32 132, i32 %i.d
  %i.f = zext nneg i32 %i.e to i64
  %i.g = icmp ugt i64 %i.a, %i.f
  br i1 %i.g, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc noundef ptr @_ZL24mi_arena_try_alloc_at_idibimmbbiP10mi_memid_s(i32 noundef %4, i1 noundef zeroext true, i32 noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4, ptr noundef %5) ; 2 uses
  %.not67 = icmp eq ptr %i.h, null
  br i1 %.not67, label %.loopexit, label %.thread

bb.e:                                             ; preds = %.preheader71
  %i.i = add nuw i64 %.05074, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %i.a
  br i1 %exitcond.not, label %bb.f, label %.preheader71, !llvm.loop !268

.preheader71:                                     ; preds = %bb.b, %bb.e
  %.05074 = phi i64 [ %i.i, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %i.j = trunc i64 %.05074 to i32
  %i.k = add nsw i32 %i.j, 1
  %i.l = tail call fastcc noundef ptr @_ZL24mi_arena_try_alloc_at_idibimmbbiP10mi_memid_s(i32 noundef %i.k, i1 noundef zeroext true, i32 noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef 0, ptr noundef %5) ; 2 uses
  %.not63 = icmp eq ptr %i.l, null
  br i1 %.not63, label %bb.e, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.m = icmp sgt i32 %0, -1
  br i1 %i.m, label %.preheader, label %.loopexit

bb.g:                                             ; preds = %.preheader
  %i.n = add nuw i64 %.075, 1                     ; 2 uses
  %exitcond80.not = icmp eq i64 %i.n, %i.a
  br i1 %exitcond80.not, label %.loopexit, label %.preheader, !llvm.loop !269

.preheader:                                       ; preds = %bb.f, %bb.g
  %.075 = phi i64 [ %i.n, %bb.g ], [ 0, %bb.f ]   ; 2 uses
  %i.o = trunc i64 %.075 to i32
  %i.p = add nsw i32 %i.o, 1
  %i.q = tail call fastcc noundef ptr @_ZL24mi_arena_try_alloc_at_idibimmbbiP10mi_memid_s(i32 noundef %i.p, i1 noundef zeroext false, i32 noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef 0, ptr noundef %5) ; 2 uses
  %.not65 = icmp eq ptr %i.q, null
  br i1 %.not65, label %bb.g, label %.thread

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.c, %bb.d
  br label %.thread

.thread:                                          ; preds = %.preheader71, %.preheader, %bb.a, %bb.d, %.loopexit
  %.7 = phi ptr [ null, %bb.a ], [ null, %.loopexit ], [ %i.h, %bb.d ], [ %i.q, %.preheader ], [ %i.l, %.preheader71 ]
  ret ptr %.7
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL24mi_arena_try_alloc_at_idibimmbbiP10mi_memid_s(i32 noundef %0, i1 noundef zeroext %1, i32 noundef %2, i64 noundef range(i64 16777216, 0) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) unnamed_addr #6 {
bb.a:
  %i.a = add i64 %3, 33554431
  %i.b = lshr i64 %i.a, 25
  %i.c = icmp slt i32 %0, 1
  %i.d = add nsw i32 %0, -1
  %i.e = select i1 %i.c, i32 132, i32 %i.d
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZL9mi_arenas, i64 %i.f
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread28, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 93
  %i.k = load i8, ptr %i.j, align 1, !tbaa !156, !range !113, !noundef !114
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.thread28, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = load i32, ptr %i.h, align 8, !tbaa !157
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.o = load i8, ptr %i.n, align 4, !tbaa !158, !range !113, !noundef !114
  %8 = trunc nuw i8 %i.o to i1
  %.not.i = xor i1 %8, true
  %i.p = icmp eq i32 %6, 0                        ; 2 uses
  %or.cond.i = and i1 %i.p, %.not.i
  %i.q = icmp eq i32 %i.m, %6
  %spec.select.i = or i1 %i.q, %or.cond.i
  br i1 %spec.select.i, label %bb.e, label %.thread28

bb.e:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.r = icmp slt i32 %2, 0
  br i1 %i.r, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.t = load i32, ptr %i.s, align 8, !tbaa !159  ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  %i.v = icmp eq i32 %i.t, %2
  %spec.select = or i1 %i.u, %i.v                 ; 2 uses
  br i1 %1, label %bb.h, label %bb.i

.thread:                                          ; preds = %bb.f
  br i1 %1, label %.critedge, label %.thread28

bb.h:                                             ; preds = %bb.g
  br i1 %spec.select, label %.critedge, label %.thread28

bb.i:                                             ; preds = %bb.g
  br i1 %spec.select, label %.thread28, label %.critedge

.critedge:                                        ; preds = %.thread, %bb.h, %bb.i, %bb.e
  %i.w = tail call fastcc noundef ptr @_ZL21mi_arena_try_alloc_atP10mi_arena_smmbP10mi_memid_s(ptr noundef %i.h, i64 noundef %i.b, i1 noundef zeroext %4, ptr noundef %7)
  br label %.thread28

.thread28:                                        ; preds = %.thread, %bb.h, %bb.i, %bb.d, %bb.c, %bb.a, %.critedge
  %.1 = phi ptr [ null, %bb.a ], [ %i.w, %.critedge ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.i ], [ null, %bb.h ], [ null, %.thread ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z30_mi_os_alloc_aligned_at_offsetmmmbbP10mi_memid_s(i64 noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr nofree noundef captures(none) initializes((0, 24)) %5) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.b = icmp ugt i64 %2, 33554432
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef ptr @_Z20_mi_os_alloc_alignedmmbbP10mi_memid_s(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull %5)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.e = add i64 %1, -1
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.g = icmp samesign ult i64 %i.f, 2
  %i.h = add i64 %i.e, %2                         ; 3 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = sub i64 0, %1
  %i.j = and i64 %i.h, %i.i
  br label %_ZL12_mi_align_upmm.exit

bb.f:                                             ; preds = %bb.d
  %i.k = urem i64 %i.h, %1
  %i.l = sub nuw i64 %i.h, %i.k
  br label %_ZL12_mi_align_upmm.exit

_ZL12_mi_align_upmm.exit:                         ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.j, %bb.e ], [ %i.l, %bb.f ]
  %i.m = sub i64 %.0.i, %2                        ; 5 uses
  %i.n = add i64 %i.m, %0
  %i.o = tail call noundef ptr @_Z20_mi_os_alloc_alignedmmbbP10mi_memid_s(i64 noundef %i.n, i64 noundef %1, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull %5) ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZL12_mi_align_upmm.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 2 uses
  %i.r = load i64, ptr @_ZL16mi_os_mem_config, align 8
  %i.s = icmp ugt i64 %i.m, %i.r
  %or.cond = select i1 %3, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.t = call fastcc noundef zeroext i1 @_ZL17mi_os_decommit_exPvmPbm(ptr noundef nonnull %i.o, i64 noundef %i.m, ptr noundef %i.a, i64 noundef %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.i

bb.i:                                             ; preds = %_ZL12_mi_align_upmm.exit, %bb.h, %bb.g, %bb.a, %bb.c
  %.1 = phi ptr [ null, %bb.a ], [ %i.d, %bb.c ], [ null, %_ZL12_mi_align_upmm.exit ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z20_mi_os_alloc_alignedmmbbP10mi_memid_s(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr nofree noundef captures(none) initializes((0, 24)) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.c = icmp eq i64 %0, 0
  br i1 %i.c, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 524288
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !95
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ult i64 %0, 2097152
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ult i64 %0, 8388608
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ult i64 %0, 33554432
  %..i = select i1 %i.h, i64 1048576, i64 4194304
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.c ], [ 262144, %bb.e ], [ 65536, %bb.d ], [ %..i, %bb.f ] ; 5 uses
  %i.i = xor i64 %.0.i, -1
  %.not.i = icmp ult i64 %0, %i.i
  br i1 %.not.i, label %bb.h, label %_Z22_mi_os_good_alloc_sizem.exit, !prof !68

bb.h:                                             ; preds = %bb.g
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i)
  %i.k = icmp samesign ult i64 %i.j, 2
  %i.l = add i64 %0, -1
  %i.m = add i64 %i.l, %.0.i                      ; 3 uses
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = sub i64 0, %.0.i
  %i.o = and i64 %i.m, %i.n
  br label %_Z22_mi_os_good_alloc_sizem.exit

bb.j:                                             ; preds = %bb.h
  %i.p = urem i64 %i.m, %.0.i
  %i.q = sub nuw i64 %i.m, %i.p
  br label %_Z22_mi_os_good_alloc_sizem.exit

_Z22_mi_os_good_alloc_sizem.exit:                 ; preds = %bb.g, %bb.i, %bb.j
  %.010.i = phi i64 [ %0, %bb.g ], [ %i.o, %bb.i ], [ %i.q, %bb.j ]
  %i.r = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !95 ; 8 uses
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.r)
  %i.t = icmp samesign ult i64 %i.s, 2            ; 2 uses
  %i.u = add i64 %1, -1
  %i.v = add i64 %i.u, %i.r                       ; 3 uses
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_Z22_mi_os_good_alloc_sizem.exit
  %i.w = sub i64 0, %i.r
  %i.x = and i64 %i.v, %i.w
  br label %_ZL12_mi_align_upmm.exit

bb.l:                                             ; preds = %_Z22_mi_os_good_alloc_sizem.exit
  %i.y = urem i64 %i.v, %i.r
  %i.z = sub nuw i64 %i.v, %i.y
  br label %_ZL12_mi_align_upmm.exit

_ZL12_mi_align_upmm.exit:                         ; preds = %bb.k, %bb.l
  %.0.i17 = phi i64 [ %i.x, %bb.k ], [ %i.z, %bb.l ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i8 0, ptr %i.a, align 1, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i8 0, ptr %i.b, align 1, !tbaa !115
  %spec.select.i = and i1 %2, %3
  %.not.i18 = icmp uge i64 %.0.i17, %i.r
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i17)
  %i.ab = icmp samesign ult i64 %i.aa, 2
  %or.cond.i = select i1 %.not.i18, i1 %i.ab, i1 false
  br i1 %or.cond.i, label %bb.m, label %_ZL24mi_os_prim_alloc_alignedmmbbPbS_PPv.exit.thread

bb.m:                                             ; preds = %_ZL12_mi_align_upmm.exit
  %i.ac = add i64 %i.r, -1
  %i.ad = add i64 %i.ac, %.010.i                  ; 3 uses
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ae = sub i64 0, %i.r
  %i.af = and i64 %i.ad, %i.ae
  br label %_ZL12_mi_align_upmm.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ag = urem i64 %i.ad, %i.r
  %i.ah = sub nuw i64 %i.ad, %i.ag
  br label %_ZL12_mi_align_upmm.exit.i

_ZL12_mi_align_upmm.exit.i:                       ; preds = %bb.o, %bb.n
  %.0.i.i = phi i64 [ %i.af, %bb.n ], [ %i.ah, %bb.o ] ; 15 uses
end_hunk_1
begin_hunk_2_@_ZL28mi_bitmap_is_claimedx_acrossPSt6atomicImEmmmPbPm:bb.a
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.s = load atomic i64, ptr %i.r monotonic, align 8
  %i.t = and i64 %i.s, %.069                      ; 3 uses
  %.not = icmp eq i64 %i.t, %.069                 ; 2 uses
  %switch.tableidx = add i64 %i.t, 1              ; 3 uses
  %i.u = icmp ult i64 %switch.tableidx, 3
  br i1 %i.u, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %_ZL21mi_bitmap_mask_acrossmmmPmS_S_.exit
  %i.v = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %i.t)
  br label %_ZL11mi_popcountm.exit

switch.lookup:                                    ; preds = %_ZL21mi_bitmap_mask_acrossmmmPmS_S_.exit
  %switch.cast = trunc nuw i64 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 65537, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL28mi_bitmap_is_claimedx_acrossPSt6atomicImEmmmPbPm, i64 %switch.tableidx
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZL11mi_popcountm.exit

_ZL11mi_popcountm.exit:                           ; preds = %switch.lookup, %bb.e
  %.029 = phi i8 [ %switch.masked, %switch.lookup ], [ 1, %bb.e ] ; 2 uses
  %.028 = phi i64 [ %switch.ext, %switch.lookup ], [ %i.v, %bb.e ] ; 2 uses
  %.071 = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.not4472 = icmp eq i64 %.0.i, 0
  br i1 %.not4472, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL11mi_popcountm.exit, %bb.g
  %.in = phi i64 [ %i.w, %bb.g ], [ %.0.i, %_ZL11mi_popcountm.exit ]
  %.076 = phi ptr [ %.0, %bb.g ], [ %.071, %_ZL11mi_popcountm.exit ] ; 2 uses
  %.175 = phi i64 [ %.2, %bb.g ], [ %.028, %_ZL11mi_popcountm.exit ] ; 2 uses
  %.13074 = phi i8 [ %.231, %bb.g ], [ %.029, %_ZL11mi_popcountm.exit ]
  %.13473 = phi i1 [ %spec.select52, %bb.g ], [ %.not, %_ZL11mi_popcountm.exit ]
  %i.w = add nsw i64 %.in, -1                     ; 2 uses
  %i.x = load atomic i64, ptr %.076 monotonic, align 8
  %i.y = and i64 %i.x, %.068                      ; 4 uses
  %.not50 = icmp eq i64 %i.y, %.068
  %spec.select52 = select i1 %.not50, i1 %.13473, i1 false ; 2 uses
  switch i64 %i.y, label %bb.f [
    i64 0, label %bb.g
    i64 1, label %_ZL11mi_popcountm.exit58
    i64 -1, label %_ZL11mi_popcountm.exit58.fold.split
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.z = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %i.y)
  br label %_ZL11mi_popcountm.exit58

_ZL11mi_popcountm.exit58.fold.split:              ; preds = %.lr.ph
  br label %_ZL11mi_popcountm.exit58

_ZL11mi_popcountm.exit58:                         ; preds = %.lr.ph, %_ZL11mi_popcountm.exit58.fold.split, %bb.f
  %.0.i57 = phi i64 [ %i.z, %bb.f ], [ %i.y, %.lr.ph ], [ 64, %_ZL11mi_popcountm.exit58.fold.split ]
  %i.aa = add i64 %.0.i57, %.175
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZL11mi_popcountm.exit58
  %.231 = phi i8 [ 1, %_ZL11mi_popcountm.exit58 ], [ %.13074, %.lr.ph ] ; 2 uses
  %.2 = phi i64 [ %i.aa, %_ZL11mi_popcountm.exit58 ], [ %.175, %.lr.ph ] ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.076, i64 8 ; 2 uses
  %.not44 = icmp eq i64 %i.w, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.g, %_ZL11mi_popcountm.exit
  %.134.lcssa = phi i1 [ %.not, %_ZL11mi_popcountm.exit ], [ %spec.select52, %bb.g ] ; 2 uses
  %.130.lcssa = phi i8 [ %.029, %_ZL11mi_popcountm.exit ], [ %.231, %bb.g ] ; 2 uses
  %.1.lcssa = phi i64 [ %.028, %_ZL11mi_popcountm.exit ], [ %.2, %bb.g ] ; 3 uses
  %.0.lcssa = phi ptr [ %.071, %_ZL11mi_popcountm.exit ], [ %.0, %bb.g ]
  %.not45 = icmp eq i64 %storemerge.i, 0
  br i1 %.not45, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ab = load atomic i64, ptr %.0.lcssa monotonic, align 8
  %i.ac = and i64 %i.ab, %storemerge.i            ; 4 uses
  %.not46 = icmp eq i64 %i.ac, %storemerge.i
  %spec.select53 = select i1 %.not46, i1 %.134.lcssa, i1 false ; 2 uses
  switch i64 %i.ac, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_ZL11mi_popcountm.exit61
  ]

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %i.ac)
  br label %_ZL11mi_popcountm.exit61

_ZL11mi_popcountm.exit61:                         ; preds = %bb.h, %bb.i
  %.0.i60 = phi i64 [ %i.ad, %bb.i ], [ %i.ac, %bb.h ]
  %i.ae = add i64 %.0.i60, %.1.lcssa
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %_ZL11mi_popcountm.exit61, %._crit_edge
  %.4 = phi i1 [ %spec.select53, %_ZL11mi_popcountm.exit61 ], [ %spec.select53, %bb.h ], [ %.134.lcssa, %._crit_edge ]
  %.332 = phi i8 [ 1, %_ZL11mi_popcountm.exit61 ], [ %.130.lcssa, %bb.h ], [ %.130.lcssa, %._crit_edge ]
  %.3 = phi i64 [ %i.ae, %_ZL11mi_popcountm.exit61 ], [ %.1.lcssa, %bb.h ], [ %.1.lcssa, %._crit_edge ]
  %.not48 = icmp eq ptr %3, null
  br i1 %.not48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 %.332, ptr %3, align 1, !tbaa !115
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not49 = icmp eq ptr %4, null
  br i1 %.not49, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %.3, ptr %4, align 8, !tbaa !98
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_Z32_mi_bitmap_is_any_claimed_acrossPSt6atomicImEmmm(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.b = call fastcc noundef zeroext i1 @_ZL28mi_bitmap_is_claimedx_acrossPSt6atomicImEmmmPbPm(ptr noundef %0, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %i.a, ptr noundef null) ; 0 uses
  %i.c = load i8, ptr %i.a, align 1, !tbaa !115, !range !113, !noundef !114
  %i.d = trunc nuw i8 %i.c to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z24_mi_heap_collect_abandonP9mi_heap_s(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  tail call fastcc void @_ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e(ptr noundef %0, i32 noundef 2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e(ptr noundef %0, i32 noundef range(i32 0, 3) %1) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.mi_arena_field_cursor_s, align 8 ; 14 uses
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond45 = and i1 %i.a, %i.b
  br i1 %or.cond45, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %1, 0                        ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !177    ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !184
  %i.f = add i64 %i.e, 1                          ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !184
  %i.g = load volatile ptr, ptr @_ZL13deferred_free, align 8, !tbaa !96
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_Z17_mi_deferred_freeP9mi_heap_sb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !185, !range !113, !noundef !114
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_Z17_mi_deferred_freeP9mi_heap_sb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.h, align 8, !tbaa !185
  %i.k = load volatile ptr, ptr @_ZL13deferred_free, align 8, !tbaa !96
  %i.l = load atomic ptr, ptr @_ZL12deferred_arg.0 monotonic, align 8
  tail call void %i.k(i1 noundef zeroext %i.c, i64 noundef %i.f, ptr noundef %i.l), !inline_history !303
  %i.m = load ptr, ptr %0, align 8, !tbaa !177    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !185
  br label %_Z17_mi_deferred_freeP9mi_heap_sb.exit

_Z17_mi_deferred_freeP9mi_heap_sb.exit:           ; preds = %bb.b, %bb.c, %bb.d
  %i.o = phi ptr [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %i.m, %bb.d ] ; 3 uses
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 16), align 16, !tbaa !186 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %.pre = tail call ptr @llvm.thread.pointer.p0()
  %.pre52 = ptrtoint ptr %.pre to i64             ; 2 uses
  %i.r = icmp eq i64 %i.p, %.pre52
  %or.cond80 = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond80, label %_Z18_mi_is_main_threadv.exit.thread, label %.thread

.thread:                                          ; preds = %_Z17_mi_deferred_freeP9mi_heap_sb.exit
  %i.s = icmp eq i32 %1, 1
  br label %.critedge

_Z18_mi_is_main_threadv.exit.thread:              ; preds = %_Z17_mi_deferred_freeP9mi_heap_sb.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !186
  %i.v = icmp eq i64 %i.u, %.pre52                ; 2 uses
  %i.w = icmp eq i32 %1, 1                        ; 2 uses
  %or.cond = select i1 %i.w, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_Z18_mi_is_main_threadv.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !187
  %i.z = icmp eq ptr %i.y, %0
  br i1 %i.z, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !188, !range !113, !noundef !114
  %3 = trunc nuw i8 %i.ab to i1
  br i1 %3, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 936
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !189 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %i.af, align 8, !tbaa !117
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !118
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 1, ptr %i.ah, align 8, !tbaa !119
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 41 ; 2 uses
  store i8 0, ptr %i.ai, align 1, !tbaa !120
  %i.aj = load atomic i64, ptr %i.ae monotonic, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load atomic i64, ptr %i.ak monotonic, align 8 ; 3 uses
  %i.am = load atomic i64, ptr @_ZL14mi_arena_count monotonic, align 64 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !126 ; 3 uses
  %.not33.i = icmp eq i32 %i.ao, 0
  br i1 %.not33.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = icmp slt i32 %i.ao, 1
  %i.aq = add nsw i32 %i.ao, -1
  %i.ar = select i1 %i.ap, i32 132, i32 %i.aq
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !127
  %i.au = add nuw nsw i64 %i.as, 1
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.au, ptr %i.av, align 8, !tbaa !128
  br label %_Z27_mi_arena_field_cursor_initP9mi_heap_sP12mi_subproc_sbP23mi_arena_field_cursor_s.exit

.thread.i:                                        ; preds = %bb.g
  %i.aw = icmp ugt i64 %i.aj, %i.al
  %i.ax = icmp ne i64 %i.am, 0
  %or.cond34.i = and i1 %i.aw, %i.ax
  br i1 %or.cond34.i, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.thread.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.pre.i.i.i = load i32, ptr %i.az, align 8, !tbaa !129
  br label %bb.j

bb.j:                                             ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i.i, %bb.i
  %i.bb = phi i32 [ %i.bt, %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i.i ], [ %.pre.i.i.i, %bb.i ] ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 1
  br i1 %i.bc, label %bb.k, label %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZL12chacha_blockP15mi_random_cxt_s(ptr noundef nonnull %i.ay)
  store i32 16, ptr %i.az, align 8, !tbaa !129
  br label %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i.i

_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i.i:  ; preds = %bb.k, %bb.j
  %i.bd = phi i32 [ 16, %bb.k ], [ %i.bb, %bb.j ]
  %i.be = sub nsw i32 16, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !97
  store i32 0, ptr %i.bg, align 4, !tbaa !97
  %i.bi = load i32, ptr %i.az, align 8, !tbaa !129 ; 2 uses
  %i.bj = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bj, ptr %i.az, align 8, !tbaa !129
  %i.bk = zext i32 %i.bh to i64
  %i.bl = shl nuw i64 %i.bk, 32
  %i.bm = icmp slt i32 %i.bi, 2
  br i1 %i.bm, label %bb.l, label %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i.i

bb.l:                                             ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i.i
  tail call fastcc void @_ZL12chacha_blockP15mi_random_cxt_s(ptr noundef nonnull %i.ay)
  store i32 16, ptr %i.az, align 8, !tbaa !129
  br label %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i.i

_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i.i: ; preds = %bb.l, %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i.i
  %i.bn = phi i32 [ 16, %bb.l ], [ %i.bj, %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i.i ]
  %i.bo = sub nsw i32 16, %i.bn
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !97
  store i32 0, ptr %i.bq, align 4, !tbaa !97
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !129
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bt, ptr %i.az, align 8, !tbaa !129
  %i.bu = zext i32 %i.br to i64
  %i.bv = or disjoint i64 %i.bl, %i.bu            ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.j, label %bb.m, !llvm.loop !7

bb.m:                                             ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i.i
  %i.bx = urem i64 %i.bv, %i.am
  %i.by = shl i64 %i.bx, 32
  %i.bz = ashr exact i64 %i.by, 32                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !127
  %i.cb = add i64 %i.bz, %i.am
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !128
  br label %_Z27_mi_arena_field_cursor_initP9mi_heap_sP12mi_subproc_sbP23mi_arena_field_cursor_s.exit

bb.n:                                             ; preds = %.thread.i
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  br label %_Z27_mi_arena_field_cursor_initP9mi_heap_sP12mi_subproc_sbP23mi_arena_field_cursor_s.exit

_Z27_mi_arena_field_cursor_initP9mi_heap_sP12mi_subproc_sbP23mi_arena_field_cursor_s.exit: ; preds = %bb.h, %bb.m, %bb.n
  %storemerge.i = phi i64 [ 0, %bb.h ], [ %i.al, %bb.n ], [ %i.al, %bb.m ]
  store i64 %storemerge.i, ptr %2, align 8, !tbaa !130
  %i.ce = call noundef ptr @_Z38_mi_arena_segment_clear_abandoned_nextP23mi_arena_field_cursor_s(ptr noundef nonnull %2) ; 2 uses
  %.not5.i = icmp eq ptr %i.ce, null
  br i1 %.not5.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_Z27_mi_arena_field_cursor_initP9mi_heap_sP12mi_subproc_sbP23mi_arena_field_cursor_s.exit, %.lr.ph.i
  %i.cf = phi ptr [ %i.ch, %.lr.ph.i ], [ %i.ce, %_Z27_mi_arena_field_cursor_initP9mi_heap_sP12mi_subproc_sbP23mi_arena_field_cursor_s.exit ]
  %i.cg = tail call fastcc noundef ptr @_ZL18mi_segment_reclaimP12mi_segment_sP9mi_heap_smPbP17mi_segments_tld_s(ptr noundef nonnull %i.cf, ptr noundef nonnull %0, i64 noundef 0, ptr noundef null, ptr noundef nonnull %i.ac) ; 0 uses
  %i.ch = call noundef ptr @_Z38_mi_arena_segment_clear_abandoned_nextP23mi_arena_field_cursor_s(ptr noundef nonnull %2) ; 2 uses
  %.not.i23 = icmp eq ptr %i.ch, null
  br i1 %.not.i23, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_Z27_mi_arena_field_cursor_initP9mi_heap_sP12mi_subproc_sbP23mi_arena_field_cursor_s.exit
  %i.ci = load i8, ptr %i.ai, align 1, !tbaa !120, !range !113, !noundef !114
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.o, label %_Z25_mi_abandoned_reclaim_allP9mi_heap_sP17mi_segments_tld_s.exit

bb.o:                                             ; preds = %._crit_edge.i
  %i.ck = load ptr, ptr %i.ag, align 8, !tbaa !118
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cl) #50 ; 0 uses
  br label %_Z25_mi_abandoned_reclaim_allP9mi_heap_sP17mi_segments_tld_s.exit

_Z25_mi_abandoned_reclaim_allP9mi_heap_sP17mi_segments_tld_s.exit: ; preds = %._crit_edge.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %.critedge

.critedge:                                        ; preds = %.thread, %_Z18_mi_is_main_threadv.exit.thread, %_Z25_mi_abandoned_reclaim_allP9mi_heap_sP17mi_segments_tld_s.exit
  %i.cn = phi i1 [ %i.s, %.thread ], [ true, %_Z25_mi_abandoned_reclaim_allP9mi_heap_sP17mi_segments_tld_s.exit ], [ %i.w, %_Z18_mi_is_main_threadv.exit.thread ] ; 3 uses
  %i.co = phi i1 [ false, %.thread ], [ true, %_Z25_mi_abandoned_reclaim_allP9mi_heap_sP17mi_segments_tld_s.exit ], [ %i.v, %_Z18_mi_is_main_threadv.exit.thread ] ; 3 uses
  %i.cp = icmp eq i32 %1, 2
  br i1 %i.cp, label %bb.p, label %.critedge.thread

bb.p:                                             ; preds = %.critedge
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !190
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %.critedge.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1280
  br label %bb.q

bb.q:                                             ; preds = %.critedge.i, %.preheader.i
  %.02229.i = phi i64 [ 0, %.preheader.i ], [ %i.db, %.critedge.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %.02229.i
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !191 ; 2 uses
  %.not.i2446 = icmp eq ptr %i.cv, null
  br i1 %.not.i2446, label %.critedge.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %_ZL31mi_heap_page_never_delayed_freeP9mi_heap_sP15mi_page_queue_sP9mi_page_sPvS5_.exit
  %.0.i47 = phi ptr [ %i.cx, %_ZL31mi_heap_page_never_delayed_freeP9mi_heap_sP15mi_page_queue_sP9mi_page_sPvS5_.exit ], [ %i.cv, %bb.q ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i47, i64 72
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !192 ; 2 uses
  %i.cy = tail call noundef zeroext i1 @_Z29_mi_page_try_use_delayed_freeP9mi_page_s12mi_delayed_eb(ptr noundef nonnull %.0.i47, i32 noundef 3, i1 noundef zeroext false)
  br i1 %i.cy, label %_ZL31mi_heap_page_never_delayed_freeP9mi_heap_sP15mi_page_queue_sP9mi_page_sPvS5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %i.cz = tail call noundef i32 @sched_yield() #50 ; 0 uses
  %i.da = tail call noundef zeroext i1 @_Z29_mi_page_try_use_delayed_freeP9mi_page_s12mi_delayed_eb(ptr noundef nonnull %.0.i47, i32 noundef 3, i1 noundef zeroext false)
  br i1 %i.da, label %_ZL31mi_heap_page_never_delayed_freeP9mi_heap_sP15mi_page_queue_sP9mi_page_sPvS5_.exit, label %.lr.ph.i.i, !llvm.loop !17

_ZL31mi_heap_page_never_delayed_freeP9mi_heap_sP15mi_page_queue_sP9mi_page_sPvS5_.exit: ; preds = %.lr.ph.i.i, %.lr.ph
  %.not.i24 = icmp eq ptr %i.cx, null
  br i1 %.not.i24, label %.critedge.i, label %.lr.ph, !llvm.loop !18

.critedge.i:                                      ; preds = %_ZL31mi_heap_page_never_delayed_freeP9mi_heap_sP15mi_page_queue_sP9mi_page_sPvS5_.exit, %bb.q
  %i.db = add nuw nsw i64 %.02229.i, 1            ; 2 uses
  %exitcond.i = icmp eq i64 %i.db, 75
  br i1 %exitcond.i, label %.critedge.thread, label %bb.q, !llvm.loop !19

.critedge.thread:                                 ; preds = %.critedge.i, %bb.f, %bb.e, %.critedge, %bb.p
  %i.dc = phi i1 [ false, %bb.f ], [ false, %.critedge ], [ true, %bb.p ], [ false, %bb.e ], [ true, %.critedge.i ]
  %i.dd = phi i1 [ true, %bb.f ], [ %i.co, %.critedge ], [ %i.co, %bb.p ], [ true, %bb.e ], [ %i.co, %.critedge.i ]
  %i.de = phi i1 [ true, %bb.f ], [ %i.cn, %.critedge ], [ %i.cn, %bb.p ], [ true, %bb.e ], [ %i.cn, %.critedge.i ] ; 4 uses
  tail call void @_Z25_mi_heap_delayed_free_allP9mi_heap_s(ptr noundef nonnull %0)
  tail call void @_Z24_mi_heap_collect_retiredP9mi_heap_sb(ptr noundef nonnull %0, i1 noundef zeroext %i.c)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !190
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %_ZL19mi_heap_visit_pagesP9mi_heap_sPFbS0_P15mi_page_queue_sP9mi_page_sPvS5_ES5_S5_.exit32, label %.preheader.i25

.preheader.i25:                                   ; preds = %.critedge.thread
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  br i1 %i.de, label %.preheader.i25.split.us, label %.preheader.i25.split

.preheader.i25.split.us:                          ; preds = %.preheader.i25, %.critedge.i30.us
  %.02229.i26.us = phi i64 [ %i.ek, %.critedge.i30.us ], [ 0, %.preheader.i25 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %.02229.i26.us ; 2 uses
end_hunk_2
begin_hunk_3_@_Z13_mi_heap_initP9mi_heap_sP8mi_tld_sibh:bb.a
  %i.ba = shl nuw i64 %i.az, 32
  %i.bb = icmp slt i32 %i.ax, 2
  br i1 %i.bb, label %bb.j, label %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i28

bb.j:                                             ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i27
  tail call fastcc void @_ZL12chacha_blockP15mi_random_cxt_s(ptr noundef nonnull %i.p)
  store i32 16, ptr %i.q, align 8, !tbaa !129
  br label %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i28

_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i28: ; preds = %bb.j, %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i27
  %i.bc = phi i32 [ 16, %bb.j ], [ %i.ay, %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i27 ]
  %i.bd = sub nsw i32 16, %i.bc
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !97
  store i32 0, ptr %i.bf, align 4, !tbaa !97
  %i.bh = load i32, ptr %i.q, align 8, !tbaa !129
  %i.bi = add nsw i32 %i.bh, -1                   ; 3 uses
  store i32 %i.bi, ptr %i.q, align 8, !tbaa !129
  %i.bj = zext i32 %i.bg to i64
  %i.bk = or disjoint i64 %i.ba, %i.bj            ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.h, label %_Z20_mi_heap_random_nextP9mi_heap_s.exit29, !llvm.loop !7

_Z20_mi_heap_random_nextP9mi_heap_s.exit29:       ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i28
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !98
  br label %bb.k

bb.k:                                             ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i32, %_Z20_mi_heap_random_nextP9mi_heap_s.exit29
  %i.bn = phi i32 [ %i.cf, %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i32 ], [ %i.bi, %_Z20_mi_heap_random_nextP9mi_heap_s.exit29 ] ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 1
  br i1 %i.bo, label %bb.l, label %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i31

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_ZL12chacha_blockP15mi_random_cxt_s(ptr noundef nonnull %i.p)
  store i32 16, ptr %i.q, align 8, !tbaa !129
  br label %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i31

_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i31:  ; preds = %bb.l, %bb.k
  %i.bp = phi i32 [ 16, %bb.l ], [ %i.bn, %bb.k ]
  %i.bq = sub nsw i32 16, %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !97
  store i32 0, ptr %i.bs, align 4, !tbaa !97
  %i.bu = load i32, ptr %i.q, align 8, !tbaa !129 ; 2 uses
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !129
  %i.bw = zext i32 %i.bt to i64
  %i.bx = shl nuw i64 %i.bw, 32
  %i.by = icmp slt i32 %i.bu, 2
  br i1 %i.by, label %bb.m, label %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i32

bb.m:                                             ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i31
  tail call fastcc void @_ZL12chacha_blockP15mi_random_cxt_s(ptr noundef nonnull %i.p)
  store i32 16, ptr %i.q, align 8, !tbaa !129
  br label %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i32

_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i32: ; preds = %bb.m, %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i31
  %i.bz = phi i32 [ 16, %bb.m ], [ %i.bv, %_ZL13chacha_next32P15mi_random_cxt_s.exit.i.i31 ]
  %i.ca = sub nsw i32 16, %i.bz
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !97
  store i32 0, ptr %i.cc, align 4, !tbaa !97
  %i.ce = load i32, ptr %i.q, align 8, !tbaa !129
  %i.cf = add nsw i32 %i.ce, -1                   ; 2 uses
  store i32 %i.cf, ptr %i.q, align 8, !tbaa !129
  %i.cg = zext i32 %i.cd to i64
  %i.ch = or disjoint i64 %i.bx, %i.cg            ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.k, label %_Z20_mi_heap_random_nextP9mi_heap_s.exit33, !llvm.loop !7

_Z20_mi_heap_random_nextP9mi_heap_s.exit33:       ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit3.i.i32
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ch, ptr %i.cj, align 8, !tbaa !98
  %i.ck = load ptr, ptr %0, align 8, !tbaa !177
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !200
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !201
  store ptr %0, ptr %i.cl, align 8, !tbaa !200
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z15_mi_random_initP15mi_random_cxt_s(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  tail call fastcc void @_ZL17mi_random_init_exP15mi_random_cxt_sb(ptr noundef %0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Z16_mi_random_splitP15mi_random_cxt_sS0_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #22 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(136) %1, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull readonly align 1 dereferenceable(64) %0, i64 48, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 0, ptr %i.b, align 4, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.a, ptr %i.c, align 4
  tail call fastcc void @_ZL12chacha_blockP15mi_random_cxt_s(ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_Z21_mi_heap_guarded_initP9mi_heap_s(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @mi_heap_new_ex(i32 noundef %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @mi_process_init() #50, !inline_history !197
  %i.a = invoke fastcc noundef zeroext i1 @_ZL20_mi_thread_heap_initv()
          to label %bb.b unwind label %bb.d, !inline_history !197

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %mi_heap_get_backing.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 192), i64 1 monotonic, align 8 ; 3 uses
  %i.c = add nsw i64 %i.b, 1
  %i.d = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 184) monotonic, align 8 ; 2 uses
  %.old3.i.i.i.not.i.i = icmp sgt i64 %i.d, %i.b
  br i1 %.old3.i.i.i.not.i.i, label %.loopexit.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.c, %.preheader.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %i.g, %.preheader.i.i.i.i.i ], [ %i.d, %bb.c ]
  %i.e = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 184), i64 %.0.i.i.i.i.i, i64 %i.c release monotonic, align 8 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = icmp sgt i64 %i.g, %i.b
  %or.cond.not.i.i.i.i.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond.not.i.i.i.i.i, label %.loopexit.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !8

.loopexit.i.i:                                    ; preds = %.preheader.i.i.i.i.i, %bb.c
  %i.i = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 176), i64 1 monotonic, align 8 ; 0 uses
  %i.j = atomicrmw add ptr @_ZL12thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_heap_get_backing.exit

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #51, !inline_history !197
  unreachable

mi_heap_get_backing.exit:                         ; preds = %bb.b, %.loopexit.i.i
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !177
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !187  ; 2 uses
  %i.r = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %i.q, i64 noundef 3080, i1 noundef zeroext false, i64 noundef 0) #50 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %mi_heap_get_backing.exit
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !177
  %i.u = trunc i32 %0 to i8
  tail call void @_Z13_mi_heap_initP9mi_heap_sP8mi_tld_sibh(ptr noundef nonnull %i.r, ptr noundef %i.t, i32 noundef %2, i1 noundef zeroext %1, i8 noundef zeroext %i.u)
  br label %bb.f

bb.f:                                             ; preds = %mi_heap_get_backing.exit, %bb.e
  ret ptr %i.r
}

; Function Attrs: mustprogress uwtable
define noundef ptr @mi_heap_new_in_arena(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @mi_heap_new_ex(i32 noundef 0, i1 noundef zeroext false, i32 noundef %0)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef ptr @mi_heap_new() local_unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @mi_heap_new_ex(i32 noundef 0, i1 noundef zeroext true, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_Z26_mi_heap_memid_is_suitableP9mi_heap_s10mi_memid_s(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly byval(%struct.mi_memid_s) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.31.0.copyload = load i32, ptr %.sroa.31.0..sroa_idx, align 4, !tbaa !152
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !126  ; 3 uses
  %i.c = icmp eq i32 %.sroa.31.0.copyload, 6
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.1.0.copyload = load i32, ptr %.sroa.1.0..sroa_idx, align 8
  %2 = trunc nuw i8 %.sroa.2.0.copyload to i1
  %.not.i.i = xor i1 %2, true
  %i.d = icmp eq i32 %i.b, 0
  %or.cond.i.i = and i1 %i.d, %.not.i.i
  %i.e = icmp eq i32 %.sroa.1.0.copyload, %i.b
  %spec.select.i.i = or i1 %i.e, %or.cond.i.i
  br label %_Z27_mi_arena_memid_is_suitable10mi_memid_si.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.b, 0
  br label %_Z27_mi_arena_memid_is_suitable10mi_memid_si.exit

_Z27_mi_arena_memid_is_suitable10mi_memid_si.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i1 [ %spec.select.i.i, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 1, 0) i64 @_Z15_mi_random_nextP15mi_random_cxt_s(ptr nofree noundef captures(none) %0) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !129
  br label %bb.b

bb.b:                                             ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit3, %bb.a
  %i.c = phi i32 [ %i.u, %_ZL13chacha_next32P15mi_random_cxt_s.exit3 ], [ %.pre, %bb.a ] ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZL13chacha_next32P15mi_random_cxt_s.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL12chacha_blockP15mi_random_cxt_s(ptr noundef nonnull %0)
  store i32 16, ptr %i.a, align 4, !tbaa !129
  br label %_ZL13chacha_next32P15mi_random_cxt_s.exit

_ZL13chacha_next32P15mi_random_cxt_s.exit:        ; preds = %bb.b, %bb.c
  %i.e = phi i32 [ 16, %bb.c ], [ %i.c, %bb.b ]
  %i.f = sub nsw i32 16, %i.e
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !97
  store i32 0, ptr %i.h, align 4, !tbaa !97
  %i.j = load i32, ptr %i.a, align 4, !tbaa !129  ; 2 uses
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !129
  %i.l = zext i32 %i.i to i64
  %i.m = shl nuw i64 %i.l, 32
  %i.n = icmp slt i32 %i.j, 2
  br i1 %i.n, label %bb.d, label %_ZL13chacha_next32P15mi_random_cxt_s.exit3

bb.d:                                             ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit
  tail call fastcc void @_ZL12chacha_blockP15mi_random_cxt_s(ptr noundef nonnull %0)
  store i32 16, ptr %i.a, align 4, !tbaa !129
  br label %_ZL13chacha_next32P15mi_random_cxt_s.exit3

_ZL13chacha_next32P15mi_random_cxt_s.exit3:       ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit, %bb.d
  %i.o = phi i32 [ 16, %bb.d ], [ %i.k, %_ZL13chacha_next32P15mi_random_cxt_s.exit ]
  %i.p = sub nsw i32 16, %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !97
  store i32 0, ptr %i.r, align 4, !tbaa !97
  %i.t = load i32, ptr %i.a, align 4, !tbaa !129
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.a, align 4, !tbaa !129
  %i.v = zext i32 %i.s to i64
  %i.w = or disjoint i64 %i.m, %i.v               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.e, !llvm.loop !7

bb.e:                                             ; preds = %_ZL13chacha_next32P15mi_random_cxt_s.exit3
  ret i64 %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_Z15_mi_heap_by_tagP9mi_heap_sh(ptr nofree noundef readonly captures(ret: address, provenance) %0, i8 noundef zeroext %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.b = load i8, ptr %i.a, align 1, !tbaa !198
  %i.c = icmp eq i8 %i.b, %1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !177
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.01014 = load ptr, ptr %i.e, align 8, !tbaa !76 ; 2 uses
  %.not15 = icmp eq ptr %.01014, null
  br i1 %.not15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.01016 = phi ptr [ %.010, %bb.c ], [ %.01014, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01016, i64 241
  %i.g = load i8, ptr %i.f, align 1, !tbaa !198
  %i.h = icmp eq i8 %i.g, %1
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.01016, i64 232
  %.010 = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %.not = icmp eq ptr %.010, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !21

.loopexit:                                        ; preds = %bb.c, %.lr.ph, %bb.b, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ %.01016, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z22_mi_heap_destroy_pagesP9mi_heap_s(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZL19mi_heap_visit_pagesP9mi_heap_sPFbS0_P15mi_page_queue_sP9mi_page_sPvS5_ES5_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load i64, ptr %i.b, align 8, !tbaa !190
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZL19mi_heap_visit_pagesP9mi_heap_sPFbS0_P15mi_page_queue_sP9mi_page_sPvS5_ES5_S5_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1280
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %.preheader.i
  %.02229.i = phi i64 [ 0, %.preheader.i ], [ %i.bi, %.critedge.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.02229.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !191  ; 2 uses
  %.not.i8 = icmp eq ptr %i.g, null
  br i1 %.not.i8, label %.critedge.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZL21_mi_heap_page_destroyP9mi_heap_sP15mi_page_queue_sP9mi_page_sPvS5_.exit
  %.0.i9 = phi ptr [ %i.i, %_ZL21_mi_heap_page_destroyP9mi_heap_sP15mi_page_queue_sP9mi_page_sPvS5_.exit ], [ %i.g, %bb.c ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i9, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !192  ; 2 uses
  %i.j = tail call noundef zeroext i1 @_Z29_mi_page_try_use_delayed_freeP9mi_page_s12mi_delayed_eb(ptr noundef nonnull %.0.i9, i32 noundef 3, i1 noundef zeroext false)
  br i1 %i.j, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i9, i64 56 ; 10 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.4.i, %.lr.ph.i.i.preheader
  %i.l = tail call noundef i32 @sched_yield() #50 ; 0 uses
  br label %.critedge.i2

.critedge.i2:                                     ; preds = %bb.h, %.lr.ph.i.i
  %i.m = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 3
  switch i32 %i.o, label %bb.h [
    i32 1, label %.critedge.outer.1.i
    i32 3, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i
  ], !prof !202

.critedge.outer.1.i:                              ; preds = %.critedge.i2
  %i.p = tail call noundef i32 @sched_yield() #50 ; 0 uses
  br label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.d, %.critedge.outer.1.i
  %i.q = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 3
  switch i32 %i.s, label %bb.d [
    i32 1, label %.critedge.outer.2.i
    i32 3, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i
  ], !prof !202

.critedge.outer.2.i:                              ; preds = %.critedge.1.i
  %i.t = tail call noundef i32 @sched_yield() #50 ; 0 uses
  br label %.critedge.2.i

bb.d:                                             ; preds = %.critedge.1.i
  %i.u = or i64 %i.q, 3
  %i.v = cmpxchg weak ptr %i.k, i64 %i.q, i64 %i.u release monotonic, align 8
  %i.w = extractvalue { i64, i1 } %i.v, 1
  br i1 %i.w, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i, label %.critedge.1.i, !llvm.loop !2

.critedge.2.i:                                    ; preds = %bb.e, %.critedge.outer.2.i
  %i.x = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.y, 3
  switch i32 %i.z, label %bb.e [
    i32 1, label %.critedge.outer.3.i
    i32 3, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i
  ], !prof !202

.critedge.outer.3.i:                              ; preds = %.critedge.2.i
  %i.aa = tail call noundef i32 @sched_yield() #50 ; 0 uses
  br label %.critedge.3.i

bb.e:                                             ; preds = %.critedge.2.i
  %i.ab = or i64 %i.x, 3
  %i.ac = cmpxchg weak ptr %i.k, i64 %i.x, i64 %i.ab release monotonic, align 8
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit.i, label %.critedge.2.i, !llvm.loop !2

.critedge.3.i:                                    ; preds = %bb.f, %.critedge.outer.3.i
  %i.ae = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.af, 3
  switch i32 %i.ag, label %bb.f [
    i32 1, label %.critedge.outer.4.i
end_hunk_3
begin_hunk_4_@_Z9_mi_fputsPFvPKcPvES1_S0_S0_:bb.a

bb.g:                                             ; preds = %bb.f
  tail call void %0(ptr noundef nonnull %2, ptr noundef %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void %0(ptr noundef %3, ptr noundef %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z25_mi_random_reinit_if_weakP15mi_random_cxt_s(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i8, ptr %i.a, align 4, !tbaa !206, !range !113, !noundef !114
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL17mi_random_init_exP15mi_random_cxt_sb(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z11_mi_os_initv() local_unnamed_addr #6 {
bb.a:
  tail call void @_Z17_mi_prim_mem_initP18mi_os_mem_config_s(ptr noundef nonnull @_ZL16mi_os_mem_config)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @mi_stats_reset() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  tail call void @mi_process_init() #50, !inline_history !28
  %i.a = invoke fastcc noundef zeroext i1 @_ZL20_mi_thread_heap_initv()
          to label %bb.b unwind label %bb.d, !inline_history !28

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 192), i64 1 monotonic, align 8 ; 3 uses
  %i.c = add nsw i64 %i.b, 1
  %i.d = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 184) monotonic, align 8 ; 2 uses
  %.old3.i.i.i.not.i = icmp sgt i64 %i.d, %i.b
  br i1 %.old3.i.i.i.not.i, label %.loopexit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.c, %.preheader.i.i.i.i
  %.0.i.i.i.i = phi i64 [ %i.g, %.preheader.i.i.i.i ], [ %i.d, %bb.c ]
  %i.e = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 184), i64 %.0.i.i.i.i, i64 %i.c release monotonic, align 8 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = icmp sgt i64 %i.g, %i.b
  %or.cond.not.i.i.i.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond.not.i.i.i.i, label %.loopexit.i, label %.preheader.i.i.i.i, !llvm.loop !8

.loopexit.i:                                      ; preds = %.preheader.i.i.i.i, %bb.c
  %i.i = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 176), i64 1 monotonic, align 8 ; 0 uses
  %i.j = atomicrmw add ptr @_ZL12thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #51, !inline_history !28
  unreachable

bb.e:                                             ; preds = %.loopexit.i, %bb.b
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !177
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 952 ; 2 uses
  %.not = icmp eq ptr %i.p, @_mi_stats_main
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4184) %i.p, i8 0, i64 4184, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(4184) @_mi_stats_main, i8 0, i64 4184, i1 false)
  %i.q = load i64, ptr @_ZL16mi_process_start, align 8, !tbaa !98
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr @_ZL13mi_clock_diff, align 8, !tbaa !98
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  %i.u = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #50 ; 0 uses
  %i.v = load i64, ptr %2, align 8, !tbaa !169
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !170
  %.neg.i = sdiv i64 %i.x, -1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  %i.y = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #50 ; 0 uses
  %i.z = load i64, ptr %1, align 8, !tbaa !169
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !170
  %i.ac = sdiv i64 %i.ab, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  %reass.add.i = sub i64 %i.z, %i.v
  %reass.mul.i = mul i64 %reass.add.i, 1000
  %.neg2.i = add nsw i64 %i.ac, %.neg.i
  %i.ad = add i64 %.neg2.i, %reass.mul.i
  store i64 %i.ad, ptr @_ZL13mi_clock_diff, align 8, !tbaa !98
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #50
  %i.ae = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #50 ; 0 uses
  %i.af = load i64, ptr %0, align 8, !tbaa !169
  %i.ag = mul nsw i64 %i.af, 1000
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !170
  %i.aj = sdiv i64 %i.ai, 1000000
  %i.ak = add nsw i64 %i.aj, %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #50
  store i64 %i.ak, ptr @_ZL16mi_process_start, align 8, !tbaa !98
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define i64 @mi_option_get_clamp(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %or.cond.i = icmp ugt i32 %0, 36
  br i1 %or.cond.i, label %mi_option_get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr inbounds nuw [32 x i8], ptr @_ZL7options, i64 %i.a ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !135
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull %i.b), !inline_history !138
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load i64, ptr %i.b, align 16, !tbaa !137
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %bb.a, %bb.d
  %.0.i = phi i64 [ %i.f, %bb.d ], [ 0, %bb.a ]   ; 2 uses
  %i.g = icmp slt i64 %.0.i, %1
  %i.h = tail call i64 @llvm.smin.i64(i64 %.0.i, i64 %2)
  %i.i = select i1 %i.g, i64 %1, i64 %i.h
  ret i64 %i.i
}

; Function Attrs: mustprogress uwtable
define i64 @mi_option_get(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %or.cond = icmp ugt i32 %0, 36
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr inbounds nuw [32 x i8], ptr @_ZL7options, i64 %i.a ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !135
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load i64, ptr %i.b, align 16, !tbaa !137
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i64 [ %i.f, %bb.d ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z16_mi_process_donev() local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_mi_process_is_initialized, align 1, !tbaa !115, !range !113, !noundef !114
  %0 = trunc nuw i8 %i.a to i1
  %.not = xor i1 %0, true
  %.b = load i1, ptr @_ZZ16_mi_process_donevE12process_done, align 1
  %or.cond = select i1 %.not, i1 true, i1 %.b
  br i1 %or.cond, label %bb.bp, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @_ZZ16_mi_process_donevE12process_done, align 1
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 3 uses
  %i.d = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !97 ; 2 uses
  %.not.i = icmp eq i32 %i.d, -1
  br i1 %.not.i, label %_Z30_mi_prim_thread_done_auto_donev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @pthread_key_delete(i32 noundef %i.d) #50 ; 0 uses
  br label %_Z30_mi_prim_thread_done_auto_donev.exit

_Z30_mi_prim_thread_done_auto_donev.exit:         ; preds = %bb.b, %bb.c
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 712), align 8, !tbaa !135
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %mi_option_is_enabled.exit, !prof !61

bb.d:                                             ; preds = %_Z30_mi_prim_thread_done_auto_donev.exit
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 704)), !inline_history !136
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %_Z30_mi_prim_thread_done_auto_donev.exit, %bb.d
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 704), align 16, !tbaa !137
  %.not7 = icmp eq i64 %i.h, 0
  br i1 %.not7, label %_Z30_mi_segment_map_unsafe_destroyv.exit, label %bb.e

bb.e:                                             ; preds = %mi_option_is_enabled.exit
  invoke fastcc void @_ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e(ptr noundef %i.c, i32 noundef 1)
          to label %mi_heap_collect.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #51
  unreachable

mi_heap_collect.exit:                             ; preds = %bb.e
  %i.k = icmp eq ptr %i.c, null
  br i1 %i.k, label %_Z27_mi_heap_unsafe_destroy_allP9mi_heap_s.exit, label %bb.g

bb.g:                                             ; preds = %mi_heap_collect.exit
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !177
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !200  ; 2 uses
  %.not10.i = icmp eq ptr %i.n, null
  br i1 %.not10.i, label %_Z27_mi_heap_unsafe_destroy_allP9mi_heap_s.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %mi_heap_destroy.exit.i
  %.011.i = phi ptr [ %i.p, %mi_heap_destroy.exit.i ], [ %i.n, %bb.g ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.011.i, i64 232
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !201  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.011.i, i64 240
  %i.r = load i8, ptr %i.q, align 8, !tbaa !188, !range !113, !noundef !114
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.i
  %.not9.i = icmp eq ptr %.011.i, @_mi_heap_empty
  br i1 %.not9.i, label %mi_heap_destroy.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Z22_mi_heap_destroy_pagesP9mi_heap_s(ptr noundef nonnull %.011.i)
  tail call fastcc void @_ZL12mi_heap_freeP9mi_heap_s(ptr noundef nonnull %.011.i)
  br label %mi_heap_destroy.exit.i

bb.j:                                             ; preds = %.lr.ph.i
  tail call void @_Z22_mi_heap_destroy_pagesP9mi_heap_s(ptr noundef nonnull %.011.i)
  br label %mi_heap_destroy.exit.i

mi_heap_destroy.exit.i:                           ; preds = %bb.j, %bb.i, %bb.h
  %.not.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i3, label %_Z27_mi_heap_unsafe_destroy_allP9mi_heap_s.exit, label %.lr.ph.i, !llvm.loop !25

_Z27_mi_heap_unsafe_destroy_allP9mi_heap_s.exit:  ; preds = %mi_heap_destroy.exit.i, %mi_heap_collect.exit, %bb.g
  tail call void @_Z28_mi_arena_unsafe_destroy_allv()
  %i.t = atomicrmw xchg ptr @_ZL14mi_segment_map, ptr null monotonic, align 8 ; 3 uses
  %.not.i4 = icmp eq ptr %i.t, null
  br i1 %.not.i4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_Z27_mi_heap_unsafe_destroy_allP9mi_heap_s.exit
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.t, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.t)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_Z27_mi_heap_unsafe_destroy_allP9mi_heap_s.exit
  %i.u = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14mi_segment_map, i64 8), ptr null monotonic, align 8 ; 3 uses
  %.not.i4.1 = icmp eq ptr %i.u, null
  br i1 %.not.i4.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.u, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.u)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.v = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14mi_segment_map, i64 16), ptr null monotonic, align 8 ; 3 uses
  %.not.i4.2 = icmp eq ptr %i.v, null
  br i1 %.not.i4.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.v, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.v)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.w = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14mi_segment_map, i64 24), ptr null monotonic, align 8 ; 3 uses
  %.not.i4.3 = icmp eq ptr %i.w, null
  br i1 %.not.i4.3, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.w, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.w)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.x = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14mi_segment_map, i64 32), ptr null monotonic, align 8 ; 3 uses
  %.not.i4.4 = icmp eq ptr %i.x, null
  br i1 %.not.i4.4, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.x, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.x)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.y = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14mi_segment_map, i64 40), ptr null monotonic, align 8 ; 3 uses
  %.not.i4.5 = icmp eq ptr %i.y, null
  br i1 %.not.i4.5, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.y, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.y)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.z = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14mi_segment_map, i64 48), ptr null monotonic, align 8 ; 3 uses
  %.not.i4.6 = icmp eq ptr %i.z, null
  br i1 %.not.i4.6, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.z, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.z)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.aa = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14mi_segment_map, i64 56), ptr null monotonic, align 8 ; 3 uses
  %.not.i4.7 = icmp eq ptr %i.aa, null
  br i1 %.not.i4.7, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.aa, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.aa)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ab = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14mi_segment_map, i64 64), ptr null monotonic, align 8 ; 3 uses
  %.not.i4.8 = icmp eq ptr %i.ab, null
  br i1 %.not.i4.8, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.ab, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.ab)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ac = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14mi_segment_map, i64 72), ptr null monotonic, align 8 ; 3 uses
  %.not.i4.9 = icmp eq ptr %i.ac, null
  br i1 %.not.i4.9, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.ac, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.ac)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ad = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14mi_segment_map, i64 80), ptr null monotonic, align 8 ; 3 uses
  %.not.i4.10 = icmp eq ptr %i.ad, null
  br i1 %.not.i4.10, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.ad, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.ad)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ae = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14mi_segment_map, i64 88), ptr null monotonic, align 8 ; 3 uses
  %.not.i4.11 = icmp eq ptr %i.ae, null
  br i1 %.not.i4.11, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.ae, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.ae)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.af = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14mi_segment_map, i64 96), ptr null monotonic, align 8 ; 3 uses
  %.not.i4.12 = icmp eq ptr %i.af, null
  br i1 %.not.i4.12, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.af, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.af)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ag = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14mi_segment_map, i64 104), ptr null monotonic, align 8 ; 3 uses
  %.not.i4.13 = icmp eq ptr %i.ag, null
  br i1 %.not.i4.13, label %bb.al, label %bb.ak
end_hunk_4
begin_hunk_5_@_ZL18mi_segment_abandonP12mi_segment_sP17mi_segments_tld_s:bb.a
  br i1 %i.x, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit._crit_edge.i
  store ptr %.pre.i, ptr %i.s, align 8, !tbaa !227
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit._crit_edge.i
  %.not19.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not19.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.pre.i, i64 80
  store ptr %i.u, ptr %i.y, align 8, !tbaa !216
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !228
  %i.ab = icmp eq ptr %.022, %i.aa
  br i1 %i.ab, label %bb.h, label %_ZL33mi_segment_span_remove_from_queueP9mi_page_sP17mi_segments_tld_s.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !216
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !228
  br label %_ZL33mi_segment_span_remove_from_queueP9mi_page_sP17mi_segments_tld_s.exit

_ZL33mi_segment_span_remove_from_queueP9mi_page_sP17mi_segments_tld_s.exit: ; preds = %bb.g, %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i, i8 0, i64 16, i1 false)
  br label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %_ZL33mi_segment_span_remove_from_queueP9mi_page_sP17mi_segments_tld_s.exit
  %i.ad = getelementptr inbounds nuw [96 x i8], ptr %.022, i64 %i.h ; 2 uses
  %i.ae = icmp ult ptr %i.ad, %i.d
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !360

._crit_edge:                                      ; preds = %.lr.ph._crit_edge, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !105
  %.not = icmp eq i32 %i.ag, 6
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %._crit_edge
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 392), align 8, !tbaa !135
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %mi_option_is_enabled.exit, !prof !61

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 384)), !inline_history !136
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %bb.i, %bb.j
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 384), align 16, !tbaa !137
  %i.ak = icmp ne i64 %i.aj, 0
  br label %bb.k

bb.k:                                             ; preds = %mi_option_is_enabled.exit, %._crit_edge
  %i.al = phi i1 [ true, %._crit_edge ], [ %i.ak, %mi_option_is_enabled.exit ]
  tail call fastcc void @_ZL20mi_segment_try_purgeP12mi_segment_sb(ptr noundef nonnull %0, i1 noundef zeroext %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 912
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !195 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 400 ; 5 uses
  %i.ap = icmp uge ptr %i.ao, @_mi_stats_main
  %i.aq = icmp ult ptr %i.ao, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 4184)
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 416 ; 3 uses
  br i1 %i.ar, label %bb.l, label %bb.m, !prof !61

bb.l:                                             ; preds = %bb.k
  %i.at = atomicrmw add ptr %i.as, i64 1 monotonic, align 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 408 ; 2 uses
  %i.av = add nsw i64 %i.at, 1
  %i.aw = load atomic i64, ptr %i.au monotonic, align 8 ; 2 uses
  %.old3.i.i.i.not = icmp sgt i64 %i.aw, %i.at
  br i1 %.old3.i.i.i.not, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.l, %.preheader.i.i.i
  %.0.i.i.i = phi i64 [ %i.az, %.preheader.i.i.i ], [ %i.aw, %bb.l ]
  %i.ax = cmpxchg weak ptr %i.au, i64 %.0.i.i.i, i64 %i.av release monotonic, align 8 ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 1
  %i.az = extractvalue { i64, i1 } %i.ax, 0       ; 2 uses
  %i.ba = icmp sgt i64 %i.az, %i.at
  %or.cond.not.i.i.i = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond.not.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, label %.preheader.i.i.i, !llvm.loop !8

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i:       ; preds = %.preheader.i.i.i, %bb.l
  %i.bb = atomicrmw add ptr %i.ao, i64 1 monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.m:                                             ; preds = %bb.k
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !165 ; 2 uses
  %i.bd = add nsw i64 %i.bc, 1                    ; 2 uses
  store i64 %i.bd, ptr %i.as, align 8, !tbaa !165
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 408 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !166
  %.not21 = icmp slt i64 %i.bc, %i.bf
  br i1 %.not21, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !166
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bg = load i64, ptr %i.ao, align 8, !tbaa !167
  %i.bh = add nsw i64 %i.bg, 1
  store i64 %i.bh, ptr %i.ao, align 8, !tbaa !167
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

_Z17_mi_stat_increaseP15mi_stat_count_sm.exit:    ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, %bb.o
  %i.bi = getelementptr i8, ptr %0, i64 248
  %.val = load i64, ptr %i.bi, align 8, !tbaa !229
  %.neg = mul i64 %.val, -65536
  tail call fastcc void @_ZL22mi_segments_track_sizelP17mi_segments_tld_s(i64 noundef %.neg, ptr noundef nonnull %1)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store atomic i64 0, ptr %i.bj seq_cst, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 1, ptr %i.bk, align 8, !tbaa !232
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !230, !range !113, !noundef !114
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !231
  %i.bq = add i64 %i.bp, -1
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !231
  store i8 0, ptr %i.bl, align 8, !tbaa !230
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit
  store atomic i64 0, ptr %i.bj release, align 8
  %i.br = load i32, ptr %i.af, align 4, !tbaa !105
  %.not.i = icmp eq i32 %i.br, 6
  br i1 %.not.i, label %bb.s, label %bb.r, !prof !68

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @_ZL34mi_arena_segment_os_mark_abandonedP12mi_segment_s(ptr noundef nonnull %0)
  br label %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit

bb.s:                                             ; preds = %bb.q
  %.sroa.09.0.copyload.i = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %i.bs = icmp slt i32 %.sroa.2.0.copyload.i, 1
  %i.bt = add nsw i32 %.sroa.2.0.copyload.i, -1
  %i.bu = select i1 %i.bs, i32 132, i32 %i.bt
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @_ZL9mi_arenas, i64 %i.bv
  %i.bx = load atomic ptr, ptr %i.bw acquire, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !107
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 176
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !106
  %i.cc = lshr i64 %.sroa.09.0.copyload.i, 6
  %i.cd = and i64 %.sroa.09.0.copyload.i, 63
  %i.ce = shl nuw i64 1, %i.cd                    ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cc
  %i.cg = atomicrmw or ptr %i.cf, i64 %i.ce acq_rel, align 8
  %.pre.i.i = and i64 %i.cg, %i.ce
  %i.ch = icmp eq i64 %.pre.i.i, 0
  br i1 %i.ch, label %bb.t, label %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit

bb.t:                                             ; preds = %bb.s
  %i.ci = atomicrmw add ptr %i.bz, i64 1 monotonic, align 8 ; 0 uses
  br label %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit

_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit: ; preds = %bb.r, %bb.s, %bb.t
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z27_mi_segment_attempt_reclaimP9mi_heap_sP12mi_segment_s(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit.thread23

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107
  %i.e = load ptr, ptr %0, align 8, !tbaa !177    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 936
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !204
  %.not17 = icmp eq ptr %i.d, %i.g
  br i1 %.not17, label %bb.c, label %_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit.thread23

bb.c:                                             ; preds = %bb.b
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.1.0.copyload = load i32, ptr %.sroa.1.0..sroa_idx, align 8 ; 3 uses
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.321.0.copyload = load i32, ptr %.sroa.321.0..sroa_idx, align 4, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !126  ; 3 uses
  %i.j = icmp eq i32 %.sroa.321.0.copyload, 6     ; 2 uses
  br i1 %i.j, label %.split, label %_Z26_mi_heap_memid_is_suitableP9mi_heap_s10mi_memid_s.exit

.split:                                           ; preds = %bb.c
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 4
  %2 = trunc nuw i8 %.sroa.2.0.copyload to i1
  %.not.i.i.i = xor i1 %2, true
  %i.k = icmp eq i32 %i.i, 0
  %or.cond.i.i.i = and i1 %i.k, %.not.i.i.i
  %i.l = icmp eq i32 %.sroa.1.0.copyload, %i.i
  %spec.select.i.i.i = or i1 %i.l, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %bb.d, label %_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit.thread23

_Z26_mi_heap_memid_is_suitableP9mi_heap_s10mi_memid_s.exit: ; preds = %bb.c
  %i.m = icmp eq i32 %i.i, 0
  br i1 %i.m, label %bb.d, label %_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit.thread23

bb.d:                                             ; preds = %.split, %_Z26_mi_heap_memid_is_suitableP9mi_heap_s10mi_memid_s.exit
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 1120), align 16, !tbaa !137 ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 896
  %i.q = load i64, ptr %i.p, align 8, !tbaa !361
  %.not18 = icmp ugt i64 %i.n, %i.q
  br i1 %.not18, label %bb.f, label %_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit.thread23

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.j, label %bb.g, label %_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 928
  %i.s = load i64, ptr %i.r, align 8, !tbaa !362
  %i.t = shl i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 896
  %i.v = load i64, ptr %i.u, align 8, !tbaa !361
  %i.w = icmp ugt i64 %i.t, %i.v
  br i1 %i.w, label %_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit.thread23, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.010.0.copyload.i = load i64, ptr %1, align 8 ; 2 uses
  %i.x = icmp slt i32 %.sroa.1.0.copyload, 1
  %i.y = add nsw i32 %.sroa.1.0.copyload, -1
  %i.z = select i1 %i.x, i32 132, i32 %i.y
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @_ZL9mi_arenas, i64 %i.aa
  %i.ac = load atomic ptr, ptr %i.ab acquire, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !106
  %i.af = and i64 %.sroa.010.0.copyload.i, 63
  %i.ag = shl nuw i64 1, %i.af                    ; 2 uses
  %i.ah = lshr i64 %.sroa.010.0.copyload.i, 6
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = xor i64 %i.ag, -1
  %i.ak = atomicrmw and ptr %i.ai, i64 %i.aj acq_rel, align 8
  %i.al = and i64 %i.ak, %i.ag
  %.not12.i = icmp eq i64 %i.al, 0
  br i1 %.not12.i, label %_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit.thread23, label %_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit.thread

_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit.thread: ; preds = %bb.h
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !107
  %i.an = atomicrmw add ptr %i.am, i64 -1 monotonic, align 8 ; 0 uses
  %i.ao = tail call ptr @llvm.thread.pointer.p0()
  %i.ap = ptrtoint ptr %i.ao to i64
  store atomic i64 %i.ap, ptr %i.a release, align 8
  br label %bb.i

_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit: ; preds = %bb.f
  %i.aq = tail call fastcc noundef zeroext i1 @_ZL35mi_arena_segment_os_clear_abandonedP12mi_segment_sb(ptr noundef nonnull %1, i1 noundef zeroext true)
  br i1 %i.aq, label %bb.i, label %_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit.thread23

bb.i:                                             ; preds = %_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit.thread, %_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !177
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = tail call fastcc noundef ptr @_ZL18mi_segment_reclaimP12mi_segment_sP9mi_heap_smPbP17mi_segments_tld_s(ptr noundef nonnull %1, ptr noundef nonnull %0, i64 noundef 0, ptr noundef null, ptr noundef nonnull %i.as)
  %i.au = icmp ne ptr %i.at, null
  br label %_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit.thread23

_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit.thread23: ; preds = %bb.h, %.split, %bb.i, %bb.e, %bb.g, %_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit, %_Z26_mi_heap_memid_is_suitableP9mi_heap_s10mi_memid_s.exit, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %_Z26_mi_heap_memid_is_suitableP9mi_heap_s10mi_memid_s.exit ], [ false, %bb.g ], [ false, %bb.e ], [ %i.au, %bb.i ], [ false, %_Z33_mi_arena_segment_clear_abandonedP12mi_segment_s.exit ], [ false, %.split ], [ false, %bb.h ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL18mi_segment_reclaimP12mi_segment_sP9mi_heap_smPbP17mi_segments_tld_s(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, 16777217) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address) %4) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %3, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !115
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.c = tail call ptr @llvm.thread.pointer.p0()
  %i.d = ptrtoint ptr %i.c to i64
  store atomic i64 %i.d, ptr %i.b release, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.e, align 8, !tbaa !232
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 1, ptr %i.f, align 8, !tbaa !230
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 896 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !231
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !231
  %i.j = getelementptr i8, ptr %0, i64 248
  %.val52 = load i64, ptr %i.j, align 8, !tbaa !229
  %i.k = shl i64 %.val52, 16
  tail call fastcc void @_ZL22mi_segments_track_sizelP17mi_segments_tld_s(i64 noundef %i.k, ptr noundef %4)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 912 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !195  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 400 ; 2 uses
  %i.o = icmp uge ptr %i.n, @_mi_stats_main
  %i.p = icmp ult ptr %i.n, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 4184)
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 416 ; 3 uses
  br i1 %i.q, label %bb.d, label %bb.e, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.s = atomicrmw add ptr %i.r, i64 -1 monotonic, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 408 ; 2 uses
  %i.u = add nsw i64 %i.s, -1                     ; 3 uses
  %i.v = load atomic i64, ptr %i.t monotonic, align 8 ; 2 uses
  %.old3.i.i.i = icmp slt i64 %i.v, %i.u
  br i1 %.old3.i.i.i, label %.preheader.i.i.i, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader.i.i.i
  %.0.i.i.i = phi i64 [ %i.y, %.preheader.i.i.i ], [ %i.v, %bb.d ]
  %i.w = cmpxchg weak ptr %i.t, i64 %.0.i.i.i, i64 %i.u release monotonic, align 8 ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 2 uses
  %i.z = icmp sge i64 %i.y, %i.u
  %or.cond.not.i.i.i = select i1 %i.x, i1 true, i1 %i.z
  br i1 %or.cond.not.i.i.i, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit, label %.preheader.i.i.i, !llvm.loop !8

bb.e:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !165
  %i.ab = add nsw i64 %i.aa, -1                   ; 3 uses
  store i64 %i.ab, ptr %i.r, align 8, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 408 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !166
  %i.ae = icmp sgt i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.f, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit

bb.f:                                             ; preds = %bb.e
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !166
  br label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit

_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit:    ; preds = %.preheader.i.i.i, %bb.e, %bb.f, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !139 ; 2 uses
  %i.ai = getelementptr inbounds nuw [96 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load i32, ptr %i.af, align 8, !tbaa !140
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = icmp samesign ugt i64 %i.ah, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit
  %i.am = getelementptr inbounds nuw [96 x i8], ptr %i.af, i64 %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 241
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.ag
  %.04685 = phi ptr [ %i.am, %.lr.ph ], [ %i.gg, %bb.ag ] ; 20 uses
  %i.ap = getelementptr i8, ptr %.04685, i64 40   ; 3 uses
  %.046.val = load i64, ptr %i.ap, align 8, !tbaa !62
  %.not = icmp eq i64 %.046.val, 0
  br i1 %.not, label %bb.af, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !195 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 152 ; 2 uses
  %i.as = icmp uge ptr %i.ar, @_mi_stats_main
  %i.at = icmp ult ptr %i.ar, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 4184)
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 168 ; 3 uses
  br i1 %i.au, label %bb.i, label %bb.j, !prof !61

bb.i:                                             ; preds = %bb.h
  %i.aw = atomicrmw add ptr %i.av, i64 -1 monotonic, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 160 ; 2 uses
  %i.ay = add nsw i64 %i.aw, -1                   ; 3 uses
  %i.az = load atomic i64, ptr %i.ax monotonic, align 8 ; 2 uses
  %.old3.i.i.i54 = icmp slt i64 %i.az, %i.ay
  br i1 %.old3.i.i.i54, label %.preheader.i.i.i56, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit59

.preheader.i.i.i56:                               ; preds = %bb.i, %.preheader.i.i.i56
  %.0.i.i.i57 = phi i64 [ %i.bc, %.preheader.i.i.i56 ], [ %i.az, %bb.i ]
  %i.ba = cmpxchg weak ptr %i.ax, i64 %.0.i.i.i57, i64 %i.ay release monotonic, align 8 ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 1
  %i.bc = extractvalue { i64, i1 } %i.ba, 0       ; 2 uses
  %i.bd = icmp sge i64 %i.bc, %i.ay
  %or.cond.not.i.i.i58 = select i1 %i.bb, i1 true, i1 %i.bd
  br i1 %or.cond.not.i.i.i58, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit59, label %.preheader.i.i.i56, !llvm.loop !8

bb.j:                                             ; preds = %bb.h
  %i.be = load i64, ptr %i.av, align 8, !tbaa !165
  %i.bf = add nsw i64 %i.be, -1                   ; 3 uses
  store i64 %i.bf, ptr %i.av, align 8, !tbaa !165
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 160 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !166
  %i.bi = icmp sgt i64 %i.bf, %i.bh
  br i1 %i.bi, label %bb.k, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit59
end_hunk_5
begin_hunk_6_@_Z22_mi_segment_page_allocP9mi_heap_smmP17mi_segments_tld_s:bb.a
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.i = icmp ult i64 %1, 16777217
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = tail call fastcc noundef ptr @_ZL22mi_segments_page_allocP9mi_heap_s14mi_page_kind_emmP17mi_segments_tld_s(ptr noundef %0, i64 noundef %1, i64 noundef %1, ptr noundef %3)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !126
  %i.m = tail call fastcc noundef ptr @_ZL26mi_segment_huge_page_allocmmiP17mi_segments_tld_s(i64 noundef %1, i64 noundef %2, i32 noundef %i.l, ptr noundef %3)
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.h, %bb.i, %bb.f, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ %i.h, %bb.f ], [ %i.j, %bb.h ], [ %i.m, %bb.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL26mi_segment_huge_page_allocmmiP17mi_segments_tld_s(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef captures(address) %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store ptr null, ptr %i.a, align 8, !tbaa !77
  %i.b = call fastcc noundef ptr @_ZL16mi_segment_allocmmiP17mi_segments_tld_sPP9mi_page_s(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %i.a) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.d, i64 40       ; 2 uses
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !62 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 96
  %i.l = load i32, ptr %i.d, align 8, !tbaa !140
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 16                 ; 2 uses
  %i.o = shl i64 %i.k, 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o ; 2 uses
  %i.q = add i64 %.val.i, -1
  %or.cond.i.i = icmp ult i64 %i.q, 65536
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = urem i64 %i.r, %.val.i
  %i.t = sub nsw i64 %.val.i, %i.s                ; 3 uses
  %i.u = icmp uge i64 %i.t, %.val.i
  %i.v = add nuw nsw i64 %i.t, %.val.i
  %.not.i.i = icmp ult i64 %i.n, %i.v
  %or.cond35.i.i = select i1 %i.u, i1 true, i1 %.not.i.i
  %.0.i.i = select i1 %or.cond35.i.i, i64 0, i64 %i.t
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i.i = phi i64 [ %.0.i.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.w = icmp ugt i64 %.val.i, 7
  br i1 %i.w, label %bb.e, label %_Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPm.exit

bb.e:                                             ; preds = %bb.d
  %i.x = icmp ult i64 %.val.i, 65
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = mul nuw nsw i64 %.val.i, 3
  %i.z = add nuw nsw i64 %.1.i.i, %i.y
  br label %_Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPm.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %.val.i, 513
  %i.ab = select i1 %i.aa, i64 %.val.i, i64 0
  %spec.select.i.i = add nuw nsw i64 %.1.i.i, %i.ab
  br label %_Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPm.exit

_Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPm.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.2.i.i = phi i64 [ %i.z, %bb.f ], [ %.1.i.i, %bb.d ], [ %spec.select.i.i, %bb.g ]
  %i.ac = add nsw i64 %.2.i.i, 15
  %i.ad = and i64 %i.ac, -16                      ; 2 uses
  %i.ae = sub i64 %i.n, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ad ; 2 uses
  store i64 %i.ae, ptr %i.f, align 8, !tbaa !62
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPm.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !223, !range !113, !noundef !114
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = add i64 %1, -1
  %i.al = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.am = icmp samesign ult i64 %i.al, 2
  %i.an = add i64 %i.ak, %i.aj                    ; 3 uses
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = sub i64 0, %1
  %i.ap = and i64 %i.an, %i.ao
  br label %_ZL12_mi_align_upmm.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = urem i64 %i.an, %1
  %i.ar = sub nuw i64 %i.an, %i.aq
  br label %_ZL12_mi_align_upmm.exit

_ZL12_mi_align_upmm.exit:                         ; preds = %bb.j, %bb.k
  %.0.i = phi i64 [ %i.ap, %bb.j ], [ %i.ar, %bb.k ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %.0.i, %i.at
  %i.av = tail call noundef zeroext i1 @_Z12_mi_os_resetPvm(ptr noundef nonnull %i.as, i64 noundef %i.au) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %_Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPm.exit, %bb.h, %_ZL12_mi_align_upmm.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.d, %_ZL12_mi_align_upmm.exit ], [ %i.d, %bb.h ], [ %i.d, %_Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL22mi_segments_page_allocP9mi_heap_s14mi_page_kind_emmP17mi_segments_tld_s(ptr noundef %0, i64 noundef range(i64 0, 16777217) %1, i64 noundef range(i64 0, 16777217) %2, ptr nofree noundef captures(address) %3) unnamed_addr #6 {
bb.a:
  %4 = alloca %struct.mi_arena_field_cursor_s, align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = icmp samesign ugt i64 %1, 524288         ; 2 uses
  %.neg = select i1 %i.b, i64 -524288, i64 -65536
  %i.c = select i1 %i.b, i64 524287, i64 65535
  %i.d = add nuw nsw i64 %i.c, %1
  %i.e = and i64 %i.d, %.neg                      ; 2 uses
  %i.f = lshr exact i64 %i.e, 16                  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !126  ; 2 uses
  %i.i = icmp samesign ult i64 %i.e, 589824
  br i1 %i.i, label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.thread.i, label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i

_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.thread.i: ; preds = %bb.a
  %spec.store.select128.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, 281474976710656) %i.f, i64 1)
  br label %.preheader.lr.ph.i

_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i: ; preds = %bb.a
  %i.j = add nsw i64 %i.f, -1                     ; 2 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true) ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = sub nuw nsw i64 61, %i.k
  %i.n = lshr i64 %i.j, %i.m
  %i.o = and i64 %i.n, 3
  %i.p = or disjoint i64 %i.o, %i.l
  %i.q = xor i64 %i.p, 252
  %i.r = add nsw i64 %i.q, -4                     ; 2 uses
  %.not85.i = icmp ugt i64 %i.r, 35
  br i1 %.not85.i, label %.loopexit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.thread.i
  %spec.store.select131.i = phi i64 [ %spec.store.select128.i, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.thread.i ], [ %i.f, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i ] ; 7 uses
  %.1.i.i.i130.i = phi i64 [ %i.f, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.thread.i ], [ %i.r, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i ]
  %.idx.i = mul nuw nsw i64 %.1.i.i.i130.i, 24    ; 3 uses
  %.033.ptr84.i = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i ; 2 uses
  %i.s = icmp eq i32 %i.h, 0
  br i1 %i.s, label %.preheader.us.i, label %.preheader.i

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.i, %._crit_edge.split.us.us.i
  %.033.ptr87.us.i = phi ptr [ %.033.ptr.us.i, %._crit_edge.split.us.us.i ], [ %.033.ptr84.i, %.preheader.lr.ph.i ] ; 3 uses
  %.033.idx86.us.i = phi i64 [ %.033.add.us.i, %._crit_edge.split.us.us.i ], [ %.idx.i, %.preheader.lr.ph.i ] ; 2 uses
  %.03259.us.i = load ptr, ptr %.033.ptr87.us.i, align 8, !tbaa !77 ; 4 uses
  %.not3760.us.i = icmp eq ptr %.03259.us.i, null
  br i1 %.not3760.us.i, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.preheader.us.i, %bb.c
  %.03261.us.us.i = phi ptr [ %.032.us.us.i, %bb.c ], [ %.03259.us.i, %.preheader.us.i ] ; 5 uses
  %i.t = load i32, ptr %.03261.us.us.i, align 8, !tbaa !140 ; 3 uses
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %.not38.us.us.i = icmp samesign ugt i64 %spec.store.select131.i, %i.u
  br i1 %.not38.us.us.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.us.i
  %i.v = ptrtoint ptr %.03261.us.us.i to i64      ; 3 uses
  %i.w = add i64 %i.v, -1                         ; 3 uses
  %i.x = and i64 %i.w, -33554432
  %i.y = inttoptr i64 %i.x to ptr                 ; 5 uses
  %.sroa.342.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %.sroa.342.0.copyload.us.us.i = load i32, ptr %.sroa.342.0..sroa_idx.us.us.i, align 4, !tbaa !152
  %i.z = icmp eq i32 %.sroa.342.0.copyload.us.us.i, 6
  br i1 %i.z, label %.split.us.us.i, label %.split63.us.i

.split.us.us.i:                                   ; preds = %bb.b
  %.sroa.2.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.2.0.copyload.us.us.i = load i8, ptr %.sroa.2.0..sroa_idx.us.us.i, align 4
  %.sroa.1.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.1.0.copyload.us.us.i = load i32, ptr %.sroa.1.0..sroa_idx.us.us.i, align 8
  %5 = trunc nuw i8 %.sroa.2.0.copyload.us.us.i to i1
  %6 = icmp ne i32 %.sroa.1.0.copyload.us.us.i, 0
  %spec.select.i.i.us.us.not.i = and i1 %6, %5
  br i1 %spec.select.i.i.us.us.not.i, label %bb.c, label %.split63.us.i

bb.c:                                             ; preds = %.split.us.us.i, %.lr.ph.us.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.03261.us.us.i, i64 72
  %.032.us.us.i = load ptr, ptr %i.aa, align 8, !tbaa !77 ; 2 uses
  %.not37.us.us.i = icmp eq ptr %.032.us.us.i, null
  br i1 %.not37.us.us.i, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i, !llvm.loop !369

._crit_edge.split.us.us.i:                        ; preds = %bb.c, %.preheader.us.i
  %.033.add.us.i = add nuw nsw i64 %.033.idx86.us.i, 24 ; 2 uses
  %.033.ptr.us.i = getelementptr inbounds nuw i8, ptr %3, i64 %.033.add.us.i
  %.not.us.i = icmp samesign ugt i64 %.033.idx86.us.i, 816
  br i1 %.not.us.i, label %.loopexit, label %.preheader.us.i, !llvm.loop !370

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge.split.i
  %.033.ptr87.i = phi ptr [ %.033.ptr.i, %._crit_edge.split.i ], [ %.033.ptr84.i, %.preheader.lr.ph.i ] ; 2 uses
  %.033.idx86.i = phi i64 [ %.033.add.i, %._crit_edge.split.i ], [ %.idx.i, %.preheader.lr.ph.i ] ; 2 uses
  %.03259.i = load ptr, ptr %.033.ptr87.i, align 8, !tbaa !77 ; 3 uses
  %.not3760.i = icmp eq ptr %.03259.i, null
  br i1 %.not3760.i, label %._crit_edge.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_Z27_mi_arena_memid_is_suitable10mi_memid_si.exit.i
  %.03261.i = phi ptr [ %.032.i, %_Z27_mi_arena_memid_is_suitable10mi_memid_si.exit.i ], [ %.03259.i, %.preheader.i ] ; 4 uses
  %i.ab = load i32, ptr %.03261.i, align 8, !tbaa !140 ; 2 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %.not38.i = icmp samesign ugt i64 %spec.store.select131.i, %i.ac
  br i1 %.not38.i, label %_Z27_mi_arena_memid_is_suitable10mi_memid_si.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ad = ptrtoint ptr %.03261.i to i64           ; 2 uses
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  %i.af = and i64 %i.ae, -33554432
  %i.ag = inttoptr i64 %i.af to ptr               ; 3 uses
  %.sroa.342.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %.sroa.342.0.copyload.i = load i32, ptr %.sroa.342.0..sroa_idx.i, align 4, !tbaa !152
  %i.ah = icmp eq i32 %.sroa.342.0.copyload.i, 6
  br i1 %i.ah, label %.split.i, label %_Z27_mi_arena_memid_is_suitable10mi_memid_si.exit.i

.split.i:                                         ; preds = %bb.d
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.1.0.copyload.i = load i32, ptr %.sroa.1.0..sroa_idx.i, align 8
  %i.ai = icmp eq i32 %.sroa.1.0.copyload.i, %i.h
  br i1 %i.ai, label %.split63.us.i, label %_Z27_mi_arena_memid_is_suitable10mi_memid_si.exit.i

.split63.us.i:                                    ; preds = %.split.i, %.split.us.us.i, %bb.b
  %i.aj = phi i32 [ %i.t, %.split.us.us.i ], [ %i.t, %bb.b ], [ %i.ab, %.split.i ]
  %i.ak = phi ptr [ %.03259.us.i, %.split.us.us.i ], [ %.03259.us.i, %bb.b ], [ %.03259.i, %.split.i ]
  %.us-phi.i = phi i64 [ %i.w, %.split.us.us.i ], [ %i.w, %bb.b ], [ %i.ae, %.split.i ]
  %.us-phi64.i = phi ptr [ %i.y, %.split.us.us.i ], [ %i.y, %bb.b ], [ %i.ag, %.split.i ] ; 4 uses
  %.us-phi65.i = phi ptr [ %.033.ptr87.us.i, %.split.us.us.i ], [ %.033.ptr87.us.i, %bb.b ], [ %.033.ptr87.i, %.split.i ] ; 2 uses
  %.us-phi66.i = phi i64 [ %i.v, %.split.us.us.i ], [ %i.v, %bb.b ], [ %i.ad, %.split.i ] ; 2 uses
  %.us-phi68.i = phi i64 [ %i.u, %.split.us.us.i ], [ %i.u, %bb.b ], [ %i.ac, %.split.i ] ; 3 uses
  %.us-phi69.i = phi ptr [ %.03261.us.us.i, %.split.us.us.i ], [ %.03261.us.us.i, %bb.b ], [ %.03261.i, %.split.i ] ; 7 uses
  %i.al = icmp slt i64 %.us-phi.i, 33554432
  %i.am = select i1 %i.al, ptr null, ptr %.us-phi64.i ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.us-phi69.i, i64 80 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !216 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.us-phi69.i, i64 72 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !192 ; 4 uses
  br i1 %.not.i.i, label %.split63.us._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %.split63.us.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  store ptr %.pre.i, ptr %i.ap, align 8, !tbaa !192
  br label %.split63.us._crit_edge.i

.split63.us._crit_edge.i:                         ; preds = %bb.e, %.split63.us.i
  %i.aq = icmp eq ptr %.us-phi69.i, %i.ak
  br i1 %i.aq, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %.split63.us._crit_edge.i
  store ptr %.pre.i, ptr %.us-phi65.i, align 8, !tbaa !227
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %.split63.us._crit_edge.i
  %.not19.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not19.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre.i, i64 80
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !216
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.us-phi65.i, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !228
  %i.au = icmp eq ptr %.us-phi69.i, %i.at
  br i1 %i.au, label %bb.i, label %_ZL20mi_span_queue_deleteP15mi_span_queue_sP9mi_page_s.exit.i

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !216
  store ptr %i.av, ptr %i.as, align 8, !tbaa !228
  br label %_ZL20mi_span_queue_deleteP15mi_span_queue_sP9mi_page_s.exit.i

_ZL20mi_span_queue_deleteP15mi_span_queue_sP9mi_page_s.exit.i: ; preds = %bb.i, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %.us-phi69.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.aw, align 8, !tbaa !62
  %i.ax = icmp samesign ult i64 %spec.store.select131.i, %.us-phi68.i
  br i1 %i.ax, label %bb.j, label %_ZL20mi_span_queue_deleteP15mi_span_queue_sP9mi_page_s.exit._crit_edge.i

_ZL20mi_span_queue_deleteP15mi_span_queue_sP9mi_page_s.exit._crit_edge.i: ; preds = %_ZL20mi_span_queue_deleteP15mi_span_queue_sP9mi_page_s.exit.i
  %i.ay = zext i32 %i.aj to i64
  br label %bb.t

bb.j:                                             ; preds = %_ZL20mi_span_queue_deleteP15mi_span_queue_sP9mi_page_s.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 288 ; 3 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %.us-phi66.i, %i.ba
  %i.bc = sub nuw nsw i64 %.us-phi68.i, %spec.store.select131.i ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.us-phi64.i, i64 264
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !225
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 280
  %i.bh = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = icmp samesign ult i64 %i.bc, 9
  br i1 %i.bj, label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = add nsw i64 %i.bc, -1                   ; 2 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 true) ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 2
  %i.bn = sub nuw nsw i64 61, %i.bl
  %i.bo = lshr i64 %i.bk, %i.bn
  %i.bp = and i64 %i.bo, 3
  %i.bq = or disjoint i64 %i.bp, %i.bm
  %i.br = xor i64 %i.bq, 252
  %i.bs = add nsw i64 %i.br, -4
  br label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i.i.i

_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.1.i.i.i.i.i.i = phi i64 [ %i.bc, %bb.l ], [ %i.bs, %bb.m ]
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.1.i.i.i.i.i.i
  br label %bb.n

bb.n:                                             ; preds = %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i.i.i, %bb.k, %bb.j
  %i.bu = phi ptr [ %i.bt, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i.i.i ], [ null, %bb.k ], [ null, %bb.j ] ; 4 uses
  %i.bv = getelementptr i8, ptr %i.az, i64 %i.bb  ; 2 uses
  %i.bw = getelementptr [96 x i8], ptr %i.bv, i64 %spec.store.select131.i ; 8 uses
  %i.bx = trunc nuw i64 %i.bc to i32              ; 2 uses
  store i32 %i.bx, ptr %i.bw, align 8, !tbaa !140
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 0, ptr %i.by, align 4, !tbaa !67
  %i.bz = icmp samesign ugt i64 %i.bc, 1
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr [96 x i8], ptr %i.bv, i64 %.us-phi68.i
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -96 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.us-phi64.i, i64 272
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !139
  %i.ce = getelementptr inbounds nuw [96 x i8], ptr %i.az, i64 %i.cd ; 2 uses
  %i.cf = icmp ugt ptr %i.cb, %i.ce
  %spec.select.i.i41.i = select i1 %i.cf, ptr %i.ce, ptr %i.cb ; 3 uses
  store i32 0, ptr %spec.select.i.i41.i, align 8, !tbaa !140
  %i.cg = mul i32 %i.bx, 96
  %i.ch = add i32 %i.cg, -96
  %i.ci = getelementptr inbounds nuw i8, ptr %spec.select.i.i41.i, i64 4
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !67
  %i.cj = getelementptr inbounds nuw i8, ptr %spec.select.i.i41.i, i64 40
  store i64 0, ptr %i.cj, align 8, !tbaa !62
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not.i.i40.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i40.i, label %_ZL22mi_segment_slice_splitP12mi_segment_sP9mi_page_smP17mi_segments_tld_s.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  store ptr null, ptr %i.ck, align 8, !tbaa !216
  %i.cl = load ptr, ptr %i.bu, align 8, !tbaa !227 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !192
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !227
  %.not.i31.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i31.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  store ptr %i.bw, ptr %i.cn, align 8, !tbaa !216
  br label %_ZL22mi_segment_slice_splitP12mi_segment_sP9mi_page_smP17mi_segments_tld_s.exit.i

bb.s:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bw, ptr %i.co, align 8, !tbaa !228
  br label %_ZL22mi_segment_slice_splitP12mi_segment_sP9mi_page_smP17mi_segments_tld_s.exit.i

_ZL22mi_segment_slice_splitP12mi_segment_sP9mi_page_smP17mi_segments_tld_s.exit.i: ; preds = %bb.s, %bb.r, %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i64 0, ptr %i.cp, align 8, !tbaa !62
  %i.cq = trunc nuw nsw i64 %spec.store.select131.i to i32
  store i32 %i.cq, ptr %.us-phi69.i, align 8, !tbaa !140
  br label %bb.t

bb.t:                                             ; preds = %_ZL22mi_segment_slice_splitP12mi_segment_sP9mi_page_smP17mi_segments_tld_s.exit.i, %_ZL20mi_span_queue_deleteP15mi_span_queue_sP9mi_page_s.exit._crit_edge.i
  %i.cr = phi i64 [ %spec.store.select131.i, %_ZL22mi_segment_slice_splitP12mi_segment_sP9mi_page_smP17mi_segments_tld_s.exit.i ], [ %i.ay, %_ZL20mi_span_queue_deleteP15mi_span_queue_sP9mi_page_s.exit._crit_edge.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.am, i64 288
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %.us-phi66.i, %i.ct
  %i.cv = sdiv exact i64 %i.cu, 96
  %i.cw = tail call fastcc noundef ptr @_ZL24mi_segment_span_allocateP12mi_segment_smm(ptr noundef nonnull %.us-phi64.i, i64 noundef %i.cv, i64 noundef %i.cr) ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.u, label %_ZL34mi_segments_page_find_and_allocatemiP17mi_segments_tld_s.exit

bb.u:                                             ; preds = %bb.t
  %i.cy = tail call fastcc noundef ptr @_ZL29mi_segment_span_free_coalesceP9mi_page_sP17mi_segments_tld_s(ptr noundef nonnull %.us-phi69.i, ptr noundef %3) ; 0 uses
  br label %.loopexit

_Z27_mi_arena_memid_is_suitable10mi_memid_si.exit.i: ; preds = %.split.i, %bb.d, %.lr.ph.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.03261.i, i64 72
  %.032.i = load ptr, ptr %i.cz, align 8, !tbaa !77 ; 2 uses
  %.not37.i = icmp eq ptr %.032.i, null
  br i1 %.not37.i, label %._crit_edge.split.i, label %.lr.ph.i, !llvm.loop !369

._crit_edge.split.i:                              ; preds = %_Z27_mi_arena_memid_is_suitable10mi_memid_si.exit.i, %.preheader.i
  %.033.add.i = add nuw nsw i64 %.033.idx86.i, 24 ; 2 uses
  %.033.ptr.i = getelementptr inbounds nuw i8, ptr %3, i64 %.033.add.i
  %.not.i = icmp samesign ugt i64 %.033.idx86.i, 816
  br i1 %.not.i, label %.loopexit, label %.preheader.i, !llvm.loop !370

.loopexit:                                        ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %bb.u, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i
  %i.da = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 1128), align 8, !tbaa !135
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.v, label %mi_option_get_clamp.exit.i.i.i, !prof !61

bb.v:                                             ; preds = %.loopexit
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 1120)), !inline_history !138
  br label %mi_option_get_clamp.exit.i.i.i

mi_option_get_clamp.exit.i.i.i:                   ; preds = %bb.v, %.loopexit
  %i.dc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 1120), align 16, !tbaa !137 ; 2 uses
  %i.dd = tail call i64 @llvm.smax.i64(i64 %i.dc, i64 0)
  %i.de = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 1024) ; 2 uses
  %i.df = icmp slt i64 %i.dc, 1
  br i1 %i.df, label %_ZL23mi_segments_try_abandonP9mi_heap_sP17mi_segments_tld_s.exit.i, label %_ZL30segment_count_is_within_targetP17mi_segments_tld_sPm.exit.i.i

_ZL30segment_count_is_within_targetP17mi_segments_tld_sPm.exit.i.i: ; preds = %mi_option_get_clamp.exit.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 864
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !233
  %i.di = icmp ult i64 %i.dh, %i.de
  br i1 %i.di, label %_ZL23mi_segments_try_abandonP9mi_heap_sP17mi_segments_tld_s.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZL30segment_count_is_within_targetP17mi_segments_tld_sPm.exit.i.i
  tail call fastcc void @_ZL33mi_segments_try_abandon_to_targetP9mi_heap_smP17mi_segments_tld_s(ptr noundef readonly %0, i64 noundef %i.de, ptr noundef nonnull %3)
  br label %_ZL23mi_segments_try_abandonP9mi_heap_sP17mi_segments_tld_s.exit.i

_ZL23mi_segments_try_abandonP9mi_heap_sP17mi_segments_tld_s.exit.i: ; preds = %bb.w, %_ZL30segment_count_is_within_targetP17mi_segments_tld_sPm.exit.i.i, %mi_option_get_clamp.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i8 0, ptr %i.a, align 1, !tbaa !115
  %i.dj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 680), align 8, !tbaa !135
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.x, label %mi_option_get_clamp.exit.i.i11.i, !prof !61

bb.x:                                             ; preds = %_ZL23mi_segments_try_abandonP9mi_heap_sP17mi_segments_tld_s.exit.i
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 672)), !inline_history !138
  br label %mi_option_get_clamp.exit.i.i11.i

mi_option_get_clamp.exit.i.i11.i:                 ; preds = %bb.x, %_ZL23mi_segments_try_abandonP9mi_heap_sP17mi_segments_tld_s.exit.i
  %i.dl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 672), align 16, !tbaa !137 ; 2 uses
  %i.dm = tail call i64 @llvm.smax.i64(i64 %i.dl, i64 0)
  %i.dn = tail call i64 @llvm.umin.i64(i64 %i.dm, i64 100) ; 2 uses
  %i.do = icmp slt i64 %i.dl, 1
  br i1 %i.do, label %_ZL27mi_segment_reclaim_or_allocP9mi_heap_smmP17mi_segments_tld_s.exit, label %bb.y

bb.y:                                             ; preds = %mi_option_get_clamp.exit.i.i11.i
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 904
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !189 ; 2 uses
  %i.dr = load atomic i64, ptr %i.dq monotonic, align 8 ; 5 uses
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %_ZL27mi_segment_reclaim_or_allocP9mi_heap_smmP17mi_segments_tld_s.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = icmp ugt i64 %i.dr, 10000
  br i1 %i.dt, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.du = udiv i64 %i.dr, 100
  %i.dv = mul nuw i64 %i.du, %i.dn
  br label %_ZL28mi_segment_get_reclaim_triesP17mi_segments_tld_s.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.dw = mul nuw nsw i64 %i.dr, %i.dn
  %.lhs.trunc.i.i.i = trunc nuw nsw i64 %i.dw to i32
  %i.dx = udiv i32 %.lhs.trunc.i.i.i, 100
  %.zext.i.i.i = zext nneg i32 %i.dx to i64
  br label %_ZL28mi_segment_get_reclaim_triesP17mi_segments_tld_s.exit.i.i

_ZL28mi_segment_get_reclaim_triesP17mi_segments_tld_s.exit.i.i: ; preds = %bb.ab, %bb.aa
  %i.dy = phi i64 [ %i.dv, %bb.aa ], [ %.zext.i.i.i, %bb.ab ] ; 2 uses
  %i.dz = tail call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.ea = tail call i64 @llvm.umin.i64(i64 %i.dz, i64 1024)
  %i.eb = icmp ult i64 %i.dy, 8
  %i.ec = icmp ugt i64 %i.dr, 8
  %or.cond.i.i.i = and i1 %i.ec, %i.eb
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i64 8, i64 %i.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  call void @_Z27_mi_arena_field_cursor_initP9mi_heap_sP12mi_subproc_sbP23mi_arena_field_cursor_s(ptr noundef %0, ptr noundef nonnull %i.dq, i1 noundef zeroext false, ptr noundef nonnull %4)
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 864
  br label %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i.outer

_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i.outer: ; preds = %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i.outer.backedge, %_ZL28mi_segment_get_reclaim_triesP17mi_segments_tld_s.exit.i.i
  %.039.i.i.ph = phi i64 [ %spec.store.select.i.i.i, %_ZL28mi_segment_get_reclaim_triesP17mi_segments_tld_s.exit.i.i ], [ %i.fb, %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i.outer.backedge ] ; 3 uses
  %i.ee = icmp sgt i64 %.039.i.i.ph, 0            ; 2 uses
  br label %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i

_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i: ; preds = %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i.backedge, %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i.outer
  %i.ef = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 1128), align 8, !tbaa !135
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.ac, label %mi_option_get_clamp.exit.i45.i.i, !prof !61

bb.ac:                                            ; preds = %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 1120)), !inline_history !138
  br label %mi_option_get_clamp.exit.i45.i.i

mi_option_get_clamp.exit.i45.i.i:                 ; preds = %bb.ac, %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i
  %i.eh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 1120), align 16, !tbaa !137 ; 2 uses
  %i.ei = icmp slt i64 %i.eh, 1
  br i1 %i.ei, label %_ZL30segment_count_is_within_targetP17mi_segments_tld_sPm.exit.thread.i.i, label %_ZL30segment_count_is_within_targetP17mi_segments_tld_sPm.exit.i12.i

_ZL30segment_count_is_within_targetP17mi_segments_tld_sPm.exit.i12.i: ; preds = %mi_option_get_clamp.exit.i45.i.i
  %i.ej = tail call i64 @llvm.umin.i64(i64 %i.eh, i64 1024)
  %i.ek = load i64, ptr %i.ed, align 8, !tbaa !233
  %i.el = icmp ult i64 %i.ek, %i.ej
  %.not = xor i1 %i.el, true
  %.not75 = xor i1 %i.ee, true
  %brmerge = select i1 %.not, i1 true, i1 %.not75
  br i1 %brmerge, label %.critedge.i.i, label %bb.ad

_ZL30segment_count_is_within_targetP17mi_segments_tld_sPm.exit.thread.i.i: ; preds = %mi_option_get_clamp.exit.i45.i.i
  br i1 %i.ee, label %bb.ad, label %.critedge.i.i

bb.ad:                                            ; preds = %_ZL30segment_count_is_within_targetP17mi_segments_tld_sPm.exit.i12.i, %_ZL30segment_count_is_within_targetP17mi_segments_tld_sPm.exit.thread.i.i
  %i.em = call noundef ptr @_Z38_mi_arena_segment_clear_abandoned_nextP23mi_arena_field_cursor_s(ptr noundef nonnull %4) ; 15 uses
  %.not.i.i21 = icmp eq ptr %i.em, null
  br i1 %.not.i.i21, label %.critedge.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 208 ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !232
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !232
  %.sroa.1.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %.sroa.348.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 20 ; 2 uses
  %.sroa.348.0.copyload.i.i = load i32, ptr %.sroa.348.0..sroa_idx.i.i, align 4, !tbaa !152
  %i.eq = load i32, ptr %i.g, align 8, !tbaa !126 ; 3 uses
  %i.er = icmp eq i32 %.sroa.348.0.copyload.i.i, 6
  br i1 %i.er, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 4
  %.sroa.1.0.copyload.i.i = load i32, ptr %.sroa.1.0..sroa_idx.i.i, align 8
  %7 = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  %.not.i.i.i.i.i = xor i1 %7, true
  %i.es = icmp eq i32 %i.eq, 0
  %or.cond.i.i.i.i.i = and i1 %i.es, %.not.i.i.i.i.i
  %i.et = icmp eq i32 %.sroa.1.0.copyload.i.i, %i.eq
  %spec.select.i.i.i.i.i = or i1 %i.et, %or.cond.i.i.i.i.i
  br label %_Z26_mi_heap_memid_is_suitableP9mi_heap_s10mi_memid_s.exit.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.eu = icmp eq i32 %i.eq, 0
  br label %_Z26_mi_heap_memid_is_suitableP9mi_heap_s10mi_memid_s.exit.i.i

_Z26_mi_heap_memid_is_suitableP9mi_heap_s10mi_memid_s.exit.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i = phi i1 [ %spec.select.i.i.i.i.i, %bb.af ], [ %i.eu, %bb.ag ] ; 2 uses
  %i.ev = tail call fastcc noundef zeroext i1 @_ZL21mi_segment_check_freeP12mi_segment_smmP17mi_segments_tld_s(ptr noundef %i.em, i64 noundef range(i64 0, 281474976710656) %i.f, i64 noundef range(i64 0, 16777217) %2, ptr noundef %3)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 216
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !193
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_Z26_mi_heap_memid_is_suitableP9mi_heap_s10mi_memid_s.exit.i.i
  %i.ez = add nsw i64 %.039.i.i.ph, -1
  %i.fa = tail call fastcc noundef ptr @_ZL18mi_segment_reclaimP12mi_segment_sP9mi_heap_smPbP17mi_segments_tld_s(ptr noundef nonnull %i.em, ptr noundef nonnull %0, i64 noundef 0, ptr noundef null, ptr noundef %3) ; 0 uses
  br label %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i.outer.backedge

_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i.outer.backedge: ; preds = %bb.ah, %bb.ak
  %i.fb = phi i64 [ %i.ez, %bb.ah ], [ %i.fg, %bb.ak ]
  br label %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i.outer

bb.ai:                                            ; preds = %_Z26_mi_heap_memid_is_suitableP9mi_heap_s10mi_memid_s.exit.i.i
  %or.cond.i.i = and i1 %.0.i.i.i.i, %i.ev
  br i1 %or.cond.i.i, label %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.thread.i.i, label %bb.aj

_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.thread.i.i: ; preds = %bb.ai
  %i.fc = call fastcc noundef ptr @_ZL18mi_segment_reclaimP12mi_segment_sP9mi_heap_smPbP17mi_segments_tld_s(ptr noundef nonnull %i.em, ptr noundef nonnull %0, i64 noundef range(i64 0, 16777217) %2, ptr noundef nonnull %i.a, ptr noundef %3)
  %i.fd = icmp eq ptr %i.fc, null
  br label %.critedge.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.fe = load i64, ptr %i.en, align 8, !tbaa !232
  %i.ff = icmp ugt i64 %i.fe, 3
  %or.cond3.i.i = and i1 %.0.i.i.i.i, %i.ff
  br i1 %or.cond3.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fg = add nsw i64 %.039.i.i.ph, -1
  %i.fh = tail call fastcc noundef ptr @_ZL18mi_segment_reclaimP12mi_segment_sP9mi_heap_smPbP17mi_segments_tld_s(ptr noundef nonnull %i.em, ptr noundef nonnull %0, i64 noundef 0, ptr noundef null, ptr noundef %3) ; 0 uses
  br label %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i.outer.backedge

bb.al:                                            ; preds = %bb.aj
  tail call fastcc void @_ZL20mi_segment_try_purgeP12mi_segment_sb(ptr noundef nonnull %i.em, i1 noundef zeroext false)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.em, i64 280
  store atomic i64 0, ptr %i.fi release, align 8
  %i.fj = load i32, ptr %.sroa.348.0..sroa_idx.i.i, align 4, !tbaa !105
  %.not.i.i.i = icmp eq i32 %i.fj, 6
  br i1 %.not.i.i.i, label %bb.an, label %bb.am, !prof !68

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @_ZL34mi_arena_segment_os_mark_abandonedP12mi_segment_s(ptr noundef nonnull %i.em)
  br label %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i.backedge

bb.an:                                            ; preds = %bb.al
  %.sroa.09.0.copyload.i.i.i = load i64, ptr %i.em, align 8 ; 2 uses
  %.sroa.2.0.copyload.i47.i.i = load i32, ptr %.sroa.1.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.fk = icmp slt i32 %.sroa.2.0.copyload.i47.i.i, 1
  %i.fl = add nsw i32 %.sroa.2.0.copyload.i47.i.i, -1
  %i.fm = select i1 %i.fk, i32 132, i32 %i.fl
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr @_ZL9mi_arenas, i64 %i.fn
  %i.fp = load atomic ptr, ptr %i.fo acquire, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !107
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 176
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !106
  %i.fu = lshr i64 %.sroa.09.0.copyload.i.i.i, 6
  %i.fv = and i64 %.sroa.09.0.copyload.i.i.i, 63
  %i.fw = shl nuw i64 1, %i.fv                    ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fu
  %i.fy = atomicrmw or ptr %i.fx, i64 %i.fw acq_rel, align 8
  %.pre.i.i.i.i = and i64 %i.fy, %i.fw
  %i.fz = icmp eq i64 %.pre.i.i.i.i, 0
  br i1 %i.fz, label %bb.ao, label %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i.backedge

bb.ao:                                            ; preds = %bb.an
  %i.ga = atomicrmw add ptr %i.fr, i64 1 monotonic, align 8 ; 0 uses
  br label %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i.backedge

_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i.backedge: ; preds = %bb.ao, %bb.an, %bb.am
  br label %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.i.i

.critedge.i.i:                                    ; preds = %bb.ad, %_ZL30segment_count_is_within_targetP17mi_segments_tld_sPm.exit.thread.i.i, %_ZL30segment_count_is_within_targetP17mi_segments_tld_sPm.exit.i12.i, %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.thread.i.i
  %.2.i.i = phi i1 [ %i.fd, %_Z32_mi_arena_segment_mark_abandonedP12mi_segment_s.exit.thread.i.i ], [ true, %_ZL30segment_count_is_within_targetP17mi_segments_tld_sPm.exit.i12.i ], [ true, %_ZL30segment_count_is_within_targetP17mi_segments_tld_sPm.exit.thread.i.i ], [ true, %bb.ad ]
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 41
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !120, !range !113, !noundef !114
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.ap, label %_ZL22mi_segment_try_reclaimP9mi_heap_smmPbP17mi_segments_tld_s.exit.i

bb.ap:                                            ; preds = %.critedge.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !118
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %i.gh = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.gg) #50 ; 0 uses
  br label %_ZL22mi_segment_try_reclaimP9mi_heap_smmPbP17mi_segments_tld_s.exit.i

_ZL22mi_segment_try_reclaimP9mi_heap_smmPbP17mi_segments_tld_s.exit.i: ; preds = %bb.ap, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  %.pre.i19 = load i8, ptr %i.a, align 1, !tbaa !115, !range !113
  %i.gi = trunc nuw i8 %.pre.i19 to i1
  br i1 %i.gi, label %_ZL27mi_segment_reclaim_or_allocP9mi_heap_smmP17mi_segments_tld_s.exit.thread, label %bb.aq

_ZL27mi_segment_reclaim_or_allocP9mi_heap_smmP17mi_segments_tld_s.exit.thread: ; preds = %_ZL22mi_segment_try_reclaimP9mi_heap_smmPbP17mi_segments_tld_s.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.as

bb.aq:                                            ; preds = %_ZL22mi_segment_try_reclaimP9mi_heap_smmPbP17mi_segments_tld_s.exit.i
  br i1 %.2.i.i, label %_ZL27mi_segment_reclaim_or_allocP9mi_heap_smmP17mi_segments_tld_s.exit, label %_ZL27mi_segment_reclaim_or_allocP9mi_heap_smmP17mi_segments_tld_s.exit.thread24

_ZL27mi_segment_reclaim_or_allocP9mi_heap_smmP17mi_segments_tld_s.exit.thread24: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.ar

_ZL27mi_segment_reclaim_or_allocP9mi_heap_smmP17mi_segments_tld_s.exit: ; preds = %mi_option_get_clamp.exit.i.i11.i, %bb.y, %bb.aq
  %i.gj = load i32, ptr %i.g, align 8, !tbaa !126
  %i.gk = call fastcc noundef ptr @_ZL16mi_segment_allocmmiP17mi_segments_tld_sPP9mi_page_s(i64 noundef 0, i64 noundef 0, i32 noundef %i.gj, ptr noundef %3, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZL27mi_segment_reclaim_or_allocP9mi_heap_smmP17mi_segments_tld_s.exit.thread24, %_ZL27mi_segment_reclaim_or_allocP9mi_heap_smmP17mi_segments_tld_s.exit
  %i.gm = call fastcc noundef ptr @_ZL22mi_segments_page_allocP9mi_heap_s14mi_page_kind_emmP17mi_segments_tld_s(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3)
  br label %bb.as

_ZL34mi_segments_page_find_and_allocatemiP17mi_segments_tld_s.exit: ; preds = %bb.t
  %i.gn = ptrtoint ptr %i.cw to i64
  %i.go = add i64 %i.gn, -1                       ; 2 uses
  %i.gp = and i64 %i.go, -33554432
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = icmp slt i64 %i.go, 33554432
  %i.gs = select i1 %i.gr, ptr null, ptr %i.gq
  tail call fastcc void @_ZL20mi_segment_try_purgeP12mi_segment_sb(ptr noundef %i.gs, i1 noundef zeroext false)
  br label %bb.as

bb.as:                                            ; preds = %_ZL27mi_segment_reclaim_or_allocP9mi_heap_smmP17mi_segments_tld_s.exit.thread, %_ZL27mi_segment_reclaim_or_allocP9mi_heap_smmP17mi_segments_tld_s.exit, %_ZL34mi_segments_page_find_and_allocatemiP17mi_segments_tld_s.exit, %bb.ar
  %.0 = phi ptr [ %i.cw, %_ZL34mi_segments_page_find_and_allocatemiP17mi_segments_tld_s.exit ], [ %i.gm, %bb.ar ], [ null, %_ZL27mi_segment_reclaim_or_allocP9mi_heap_smmP17mi_segments_tld_s.exit ], [ null, %_ZL27mi_segment_reclaim_or_allocP9mi_heap_smmP17mi_segments_tld_s.exit.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z28_mi_segment_map_allocated_atPK12mi_segment_s(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.mi_memid_s, align 8         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !105
  %i.c = icmp eq i32 %i.b, 6
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = icmp ugt ptr %0, inttoptr (i64 52776558133247 to ptr)
  br i1 %i.e, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = udiv i64 %i.d, 2164663517184
  %.in.in = urem i64 %i.d, 2164663517184          ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZL14mi_segment_map, i64 %i.f ; 2 uses
  %i.h = load atomic ptr, ptr %i.g monotonic, align 8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.j = call noundef ptr @_Z12_mi_os_allocmP10mi_memid_s(i64 noundef 8088, ptr noundef nonnull %1) ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.l = cmpxchg ptr %i.g, ptr null, ptr %i.j release monotonic, align 8 ; 2 uses
  %i.m = extractvalue { ptr, i1 } %i.l, 1
  br i1 %i.m, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit

_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread: ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %.loopexit

_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit: ; preds = %bb.e
  %i.n = extractvalue { ptr, i1 } %i.l, 0
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.j, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %1)
  br label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15

_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15: ; preds = %bb.e, %bb.c, %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit
  %.325.i17 = phi ptr [ %i.n, %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.o = lshr i64 %.in.in, 31
  %.in = lshr i64 %.in.in, 25
  %i.p = and i64 %.in, 63
  %i.q = getelementptr inbounds nuw i8, ptr %.325.i17, i64 24
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o ; 3 uses
  %i.s = load atomic i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.t = shl nuw i64 1, %i.p                      ; 2 uses
  %i.u = or i64 %i.s, %i.t
  %i.v = cmpxchg weak ptr %i.r, i64 %i.s, i64 %i.u release monotonic, align 8 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZL22mi_segments_track_sizelP17mi_segments_tld_s:bb.a

bb.l:                                             ; preds = %bb.k, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !395
  %i.at = add i64 %i.as, %0                       ; 3 uses
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !395
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !396
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %i.at, ptr %i.au, align 8, !tbaa !396
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL16mi_segment_allocmmiP17mi_segments_tld_sPP9mi_page_s(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef captures(address) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #6 {
bb.a:
  %5 = alloca %struct.mi_memid_s, align 8         ; 6 uses
  %6 = alloca %struct.mi_memid_s, align 8         ; 9 uses
  %7 = alloca %struct.mi_commit_mask_s, align 8   ; 10 uses
  %i.a = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !95 ; 4 uses
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.a)
  %i.c = icmp samesign ult i64 %i.b, 2
  %i.d = add i64 %i.a, 49535                      ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = sub i64 0, %i.a
  %i.f = and i64 %i.d, %i.e
  br label %_ZL27mi_segment_calculate_slicesmPm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = urem i64 %i.d, %i.a
  %i.h = sub nuw i64 %i.d, %i.g
  br label %_ZL27mi_segment_calculate_slicesmPm.exit

_ZL27mi_segment_calculate_slicesmPm.exit:         ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.i = add i64 %.0.i.i, 65535                   ; 3 uses
  %i.j = icmp ne i64 %0, 0                        ; 3 uses
  %i.k = or i64 %i.i, 65535
  %i.l = add i64 %i.k, %0
  %i.m = lshr i64 %i.l, 16
  %i.n = select i1 %i.j, i64 %i.m, i64 512
  %i.o = load atomic i64, ptr @_ZL12thread_count monotonic, align 8
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %.thread

bb.d:                                             ; preds = %_ZL27mi_segment_calculate_slicesmPm.exit
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 872
  %i.r = load i64, ptr %i.q, align 8, !tbaa !248
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 456), align 8, !tbaa !135
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.f, !prof !61

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 448)), !inline_history !138
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 448), align 16, !tbaa !137
  %i.v = icmp ult i64 %i.r, %i.u
  br i1 %i.v, label %bb.h, label %.thread

.thread:                                          ; preds = %_ZL27mi_segment_calculate_slicesmPm.exit, %bb.f
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 104), align 8, !tbaa !135
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %mi_option_is_enabled.exit, !prof !61

bb.g:                                             ; preds = %.thread
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 96)), !inline_history !136
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %.thread, %bb.g
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 96), align 16, !tbaa !137
  %i.z = or i64 %0, %i.y
  %i.aa = icmp ne i64 %i.z, 0
  br label %bb.h

bb.h:                                             ; preds = %mi_option_is_enabled.exit, %bb.f
  %not..i = phi i1 [ false, %bb.f ], [ true, %mi_option_is_enabled.exit ]
  %i.ab = phi i1 [ %i.j, %bb.f ], [ %i.aa, %mi_option_is_enabled.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = and i64 %i.i, -65536
  %i.ad = add i64 %.0.i.i, 33554431
  %i.ae = and i64 %i.ad, -33554432                ; 2 uses
  %i.af = sub i64 %i.ae, %i.ac
  %i.ag = add i64 %i.af, %0                       ; 2 uses
  %i.ah = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !95 ; 4 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ah)
  %i.aj = icmp samesign ult i64 %i.ai, 2
  %i.ak = add i64 %i.ah, 49535                    ; 3 uses
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = sub i64 0, %i.ah
  %i.am = and i64 %i.ak, %i.al
  br label %_ZL27mi_segment_calculate_slicesmPm.exit.i

bb.k:                                             ; preds = %bb.i
  %i.an = urem i64 %i.ak, %i.ah
  %i.ao = sub nuw i64 %i.ak, %i.an
  br label %_ZL27mi_segment_calculate_slicesmPm.exit.i

_ZL27mi_segment_calculate_slicesmPm.exit.i:       ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i64 [ %i.am, %bb.j ], [ %i.ao, %bb.k ]
  %i.ap = add i64 %.0.i.i.i, 65535                ; 2 uses
  %i.aq = icmp eq i64 %i.ag, 0
  %i.ar = or i64 %i.ap, 65535
  %i.as = add i64 %i.ar, %i.ag
  %i.at = lshr i64 %i.as, 16
  %i.au = select i1 %i.aq, i64 512, i64 %i.at
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %_ZL27mi_segment_calculate_slicesmPm.exit.i
  %.053.in = phi i64 [ %i.ap, %_ZL27mi_segment_calculate_slicesmPm.exit.i ], [ %i.i, %bb.h ] ; 6 uses
  %.0 = phi i64 [ %i.au, %_ZL27mi_segment_calculate_slicesmPm.exit.i ], [ %i.n, %bb.h ] ; 5 uses
  %.043.i = phi i64 [ %i.ae, %_ZL27mi_segment_calculate_slicesmPm.exit.i ], [ 0, %bb.h ]
  %.042.i = phi i64 [ %1, %_ZL27mi_segment_calculate_slicesmPm.exit.i ], [ 33554432, %bb.h ]
  %.053 = lshr i64 %.053.in, 16                   ; 9 uses
  %i.av = shl nuw i64 %.0, 16                     ; 4 uses
  %i.aw = call noundef ptr @_Z23_mi_arena_alloc_alignedmmmbbiP10mi_memid_s(i64 noundef %i.av, i64 noundef %.042.i, i64 noundef %.043.i, i1 noundef zeroext %i.ab, i1 noundef zeroext %not..i, i32 noundef %2, ptr noundef nonnull %6) ; 28 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit.thread, label %bb.l

_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit.thread: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ar

bb.l:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.az = load i8, ptr %i.ay, align 1, !range !113, !noundef !114
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 -1, i64 64, i1 false), !tbaa !98
  br label %.critedge.i

bb.n:                                             ; preds = %bb.l
  switch i64 %.053, label %.lr.ph.i.i [
    i64 512, label %bb.o
    i64 0, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 -1, i64 64, i1 false), !tbaa !98
  br label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false), !tbaa !98
  br label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bb, i8 0, i64 56, i1 false), !tbaa !98
  %i.bc = tail call i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %.053, i64 64) ; 2 uses
  %i.bd = icmp ugt i64 %.053.in, 4194303
  %notmask.peel.i.i = shl nsw i64 -1, %i.bc
  %i.be = xor i64 %notmask.peel.i.i, -1
  %i.bf = select i1 %i.bd, i64 -1, i64 %i.be
  store i64 %i.bf, ptr %7, align 8, !tbaa !98
  %i.bg = sub nuw nsw i64 %.053, %i.bc            ; 2 uses
  %.not.peel.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.peel.i.i, label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.lr.ph.i.i, %.peel.next.i.i
  %.02127.in.i.i = phi i64 [ %.02127.i.i, %.peel.next.i.i ], [ 0, %.lr.ph.i.i ]
  %.02226.i.i = phi i64 [ %i.bm, %.peel.next.i.i ], [ %i.bg, %.lr.ph.i.i ] ; 3 uses
  %.02127.i.i = add i64 %.02127.in.i.i, 1         ; 2 uses
  %i.bh = tail call i64 @llvm.umin.i64(i64 %.02226.i.i, i64 64) ; 2 uses
  %i.bi = icmp ugt i64 %.02226.i.i, 63
  %notmask.i.i = shl nsw i64 -1, %i.bh
  %i.bj = xor i64 %notmask.i.i, -1
  %i.bk = select i1 %i.bi, i64 -1, i64 %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.02127.i.i
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !98
  %i.bm = sub nuw nsw i64 %.02226.i.i, %i.bh      ; 2 uses
  %.not.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i, label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i, label %.peel.next.i.i, !llvm.loop !41

_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i: ; preds = %.peel.next.i.i, %.lr.ph.i.i, %bb.p, %bb.o
  %i.bn = and i64 %.053.in, -65536                ; 2 uses
  %i.bo = tail call noundef zeroext i1 @_Z16_mi_os_commit_exPvmPbm(ptr noundef nonnull %i.aw, i64 noundef %i.bn, ptr noundef null, i64 noundef %i.bn)
  br i1 %i.bo, label %.critedge.i, label %_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit

.critedge.i:                                      ; preds = %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bq = load i8, ptr %i.bp, align 8, !range !113, !noundef !114 ; 2 uses
  %8 = trunc nuw i8 %i.bq to i1
  %9 = xor i8 %i.bq, 1
  %10 = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 %9, ptr %10, align 8, !tbaa !223
  br i1 %8, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.critedge.i
  %i.br = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !135
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.r, label %mi_option_get.exit.i, !prof !61

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480)), !inline_history !138
  br label %mi_option_get.exit.i

mi_option_get.exit.i:                             ; preds = %bb.r, %bb.q
  %i.bt = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480), align 16, !tbaa !137
  %i.bu = icmp sgt i64 %i.bt, -1
  %i.bv = zext i1 %i.bu to i8
  br label %bb.s

bb.s:                                             ; preds = %mi_option_get.exit.i, %.critedge.i
  %i.bw = phi i8 [ 0, %.critedge.i ], [ %i.bv, %mi_option_get.exit.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 25
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !219
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i64 %i.av, ptr %i.by, align 8, !tbaa !397
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 904
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !189
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !107
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cc, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false), !tbaa.struct !221
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cd, i8 0, i64 72, i1 false)
  tail call fastcc void @_ZL22mi_segments_track_sizelP17mi_segments_tld_s(i64 noundef %i.av, ptr noundef %3)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !105
  %i.cg = icmp eq i32 %i.cf, 6
  br i1 %i.cg, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ch = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ci = icmp ugt ptr %i.aw, inttoptr (i64 52776558133247 to ptr)
  br i1 %i.ci, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = udiv i64 %i.ch, 2164663517184
  %.in.in.i.i = urem i64 %i.ch, 2164663517184     ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr @_ZL14mi_segment_map, i64 %i.cj ; 2 uses
  %i.cl = load atomic ptr, ptr %i.ck monotonic, align 8 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.v, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i, !prof !61

bb.v:                                             ; preds = %bb.u
  %i.cn = call noundef ptr @_Z12_mi_os_allocmP10mi_memid_s(i64 noundef 8088, ptr noundef nonnull %5) ; 5 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.cp = cmpxchg ptr %i.ck, ptr null, ptr %i.cn release monotonic, align 8 ; 2 uses
  %i.cq = extractvalue { ptr, i1 } %i.cp, 1
  br i1 %i.cq, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.i.i

_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread.i.i: ; preds = %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.i.i: ; preds = %bb.w
  %i.cr = extractvalue { ptr, i1 } %i.cp, 0
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.cn, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %5)
  br label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i

_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i: ; preds = %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.i.i, %bb.w, %bb.u
  %.325.i17.i.i = phi ptr [ %i.cr, %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.i.i ], [ %i.cn, %bb.w ], [ %i.cl, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.cs = lshr i64 %.in.in.i.i, 31
  %.in.i.i = lshr i64 %.in.in.i.i, 25
  %i.ct = and i64 %.in.i.i, 63
  %i.cu = getelementptr inbounds nuw i8, ptr %.325.i17.i.i, i64 24
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cs ; 3 uses
  %i.cw = load atomic i64, ptr %i.cv monotonic, align 8 ; 2 uses
  %i.cx = shl nuw i64 1, %i.ct                    ; 2 uses
  %i.cy = or i64 %i.cw, %i.cx
  %i.cz = cmpxchg weak ptr %i.cv, i64 %i.cw, i64 %i.cy release monotonic, align 8 ; 2 uses
  %i.da = extractvalue { i64, i1 } %i.cz, 1
  br i1 %i.da, label %.loopexit, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i

_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i: ; preds = %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i
  %i.db = phi { i64, i1 } [ %i.de, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i ], [ %i.cz, %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i ]
  %i.dc = extractvalue { i64, i1 } %i.db, 0       ; 2 uses
  %i.dd = or i64 %i.dc, %i.cx
  %i.de = cmpxchg weak ptr %i.cv, i64 %i.dc, i64 %i.dd release monotonic, align 8 ; 2 uses
  %i.df = extractvalue { i64, i1 } %i.de, 1
  br i1 %i.df, label %.loopexit, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i, !llvm.loop !39

_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit: ; preds = %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i
  tail call void @_Z14_mi_arena_freePvmm10mi_memid_s(ptr noundef nonnull %i.aw, i64 noundef %i.av, i64 noundef 0, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ar

.loopexit:                                        ; preds = %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i, %bb.s, %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread.i.i, %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  %i.dh = load i8, ptr %i.dg, align 2, !tbaa !398, !range !113, !noundef !114
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %i.dj = mul nuw nsw i64 %.0, 96
  %i.dk = add nuw nsw i64 %i.dj, 200
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aw, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dl, i8 0, i64 %i.dk, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.loopexit
  %i.dm = tail call i64 @llvm.umin.i64(i64 %.0, i64 512)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aw, i64 248
  store i64 %.0, ptr %i.dn, align 8, !tbaa !229
  %i.do = getelementptr inbounds nuw i8, ptr %i.aw, i64 256
  store i64 %.053, ptr %i.do, align 8, !tbaa !247
  %i.dp = tail call ptr @llvm.thread.pointer.p0()
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aw, i64 280 ; 2 uses
  store atomic i64 %i.dq, ptr %i.dr seq_cst, align 8
  %i.ds = ptrtoint ptr %i.aw to i64
  %i.dt = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 32), align 32, !tbaa !199
  %i.du = xor i64 %i.dt, %i.ds
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aw, i64 224
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !203
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aw, i64 272 ; 2 uses
  store i64 %i.dm, ptr %i.dw, align 8, !tbaa !139
  %i.dx = zext i1 %i.j to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aw, i64 264 ; 2 uses
  store i32 %i.dx, ptr %i.dy, align 8, !tbaa !225
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 912
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !195 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 128 ; 5 uses
  %i.ec = and i64 %.053.in, -65536                ; 6 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ee = icmp uge ptr %i.eb, @_mi_stats_main
  %i.ef = icmp ult ptr %i.eb, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 4184)
  %i.eg = select i1 %i.ee, i1 %i.ef, i1 false
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 144 ; 3 uses
  br i1 %i.eg, label %bb.aa, label %bb.ac, !prof !61

bb.aa:                                            ; preds = %bb.z
  %i.ei = atomicrmw add ptr %i.eh, i64 %i.ec monotonic, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 136 ; 2 uses
  %i.ek = add nsw i64 %i.ei, %i.ec                ; 3 uses
  %i.el = load atomic i64, ptr %i.ej monotonic, align 8 ; 2 uses
  %.old3.i.i.i = icmp slt i64 %i.el, %i.ek
  br i1 %.old3.i.i.i, label %.preheader.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.aa, %.preheader.i.i.i
  %.0.i.i.i42 = phi i64 [ %i.eo, %.preheader.i.i.i ], [ %i.el, %bb.aa ]
  %i.em = cmpxchg weak ptr %i.ej, i64 %.0.i.i.i42, i64 %i.ek release monotonic, align 8 ; 2 uses
  %i.en = extractvalue { i64, i1 } %i.em, 1
  %i.eo = extractvalue { i64, i1 } %i.em, 0       ; 2 uses
  %i.ep = icmp sge i64 %i.eo, %i.ek
  %or.cond.not.i.i.i = select i1 %i.en, i1 true, i1 %i.ep
  br i1 %or.cond.not.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, label %.preheader.i.i.i, !llvm.loop !8

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i:       ; preds = %.preheader.i.i.i, %bb.aa
  %i.eq = icmp sgt i64 %.053.in, 65535
  br i1 %i.eq, label %bb.ab, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.ab:                                            ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i
  %i.er = atomicrmw add ptr %i.eb, i64 %i.ec monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.ac:                                            ; preds = %bb.z
  %i.es = load i64, ptr %i.eh, align 8, !tbaa !165
  %i.et = add nsw i64 %i.es, %i.ec                ; 3 uses
  store i64 %i.et, ptr %i.eh, align 8, !tbaa !165
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ea, i64 136 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !166
  %i.ew = icmp sgt i64 %i.et, %i.ev
  br i1 %i.ew, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !166
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ex = icmp sgt i64 %.053.in, 65535
  br i1 %i.ex, label %bb.af, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.af:                                            ; preds = %bb.ae
  %i.ey = load i64, ptr %i.eb, align 8, !tbaa !167
  %i.ez = add nsw i64 %i.ey, %i.ec
  store i64 %i.ez, ptr %i.eb, align 8, !tbaa !167
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

_Z17_mi_stat_increaseP15mi_stat_count_sm.exit:    ; preds = %bb.y, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, %bb.ab, %bb.ae, %bb.af
  %i.fa = tail call fastcc noundef ptr @_ZL24mi_segment_span_allocateP12mi_segment_smm(ptr noundef nonnull %i.aw, i64 noundef 0, i64 noundef %.053)
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.ar, label %bb.ag
end_hunk_7
