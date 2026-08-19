inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 39
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZL20_mi_thread_heap_initv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  %i.cn = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !67 ; 5 uses
  %.not.i.i26.i = icmp ult i64 %i.cn, -8241
  br i1 %.not.i.i26.i, label %bb.bu, label %_Z22_mi_os_good_alloc_sizem.exit.i27.i, !prof !26

bb.bu:                                            ; preds = %bb.bt
  %i.co = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cn)
  %i.cp = icmp samesign ult i64 %i.co, 2
  %i.cq = add nuw i64 %i.cn, 8239                 ; 3 uses
  br i1 %i.cp, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.cr = sub i64 0, %i.cn
  %i.cs = and i64 %i.cq, %i.cr
  br label %_Z22_mi_os_good_alloc_sizem.exit.i27.i

bb.bw:                                            ; preds = %bb.bu
  %i.ct = urem i64 %i.cq, %i.cn
  %i.cu = sub nuw i64 %i.cq, %i.ct
  br label %_Z22_mi_os_good_alloc_sizem.exit.i27.i

_Z22_mi_os_good_alloc_sizem.exit.i27.i:           ; preds = %bb.bw, %bb.bv, %bb.bt
  %.010.i.i28.i = phi i64 [ 8240, %bb.bt ], [ %i.cs, %bb.bv ], [ %i.cu, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i8 0, ptr %i.a, align 1, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i8 0, ptr %i.b, align 1, !tbaa !93
  %i.cv = call fastcc noundef ptr @_ZL16mi_os_prim_allocmmbbPbS_(i64 noundef %.010.i.i28.i, i64 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %.not.i29.i = icmp eq ptr %i.cv, null
  br i1 %.not.i29.i, label %bb.bx, label %_Z12_mi_os_allocmP10mi_memid_s.exit35.i

_Z12_mi_os_allocmP10mi_memid_s.exit35.i:          ; preds = %_Z22_mi_os_good_alloc_sizem.exit.i27.i
  %i.cw = load i8, ptr %i.b, align 1, !tbaa !93, !range !91, !noundef !92
  %i.cx = load i8, ptr %i.a, align 1, !tbaa !93, !range !91, !noundef !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.by

bb.bx:                                            ; preds = %_Z22_mi_os_good_alloc_sizem.exit.i27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  tail call void (i32, ptr, ...) @_Z17_mi_error_messageiPKcz(i32 noundef 12, ptr noundef nonnull @.str.111, i64 noundef 8240)
  br label %bb.bz

bb.by:                                            ; preds = %_Z12_mi_os_allocmP10mi_memid_s.exit35.i, %_Z12_mi_os_allocmP10mi_memid_s.exit.i
  %.sroa.7.0.ph.i = phi i8 [ %i.cm, %_Z12_mi_os_allocmP10mi_memid_s.exit.i ], [ %i.cx, %_Z12_mi_os_allocmP10mi_memid_s.exit35.i ]
  %.sroa.11.0.ph.i = phi i8 [ %i.cl, %_Z12_mi_os_allocmP10mi_memid_s.exit.i ], [ %i.cw, %_Z12_mi_os_allocmP10mi_memid_s.exit35.i ] ; 2 uses
  %.3.ph.i = phi ptr [ %i.ck, %_Z12_mi_os_allocmP10mi_memid_s.exit.i ], [ %i.cv, %_Z12_mi_os_allocmP10mi_memid_s.exit35.i ] ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 8216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !tbaa.struct !182
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 8232
  store i8 %.sroa.7.0.ph.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !93
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 8233
  store i8 1, ptr %.sroa.9.0..sroa_idx.i, align 1, !tbaa !93
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 8234
  store i8 %.sroa.11.0.ph.i, ptr %.sroa.11.0..sroa_idx.i, align 2, !tbaa !93
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 8235
  store i8 0, ptr %.sroa.14.0..sroa_idx.i, align 1
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 8236
  store i32 3, ptr %.sroa.16.0..sroa_idx.i, align 4, !tbaa !137
  %i.cz = trunc nuw i8 %.sroa.11.0.ph.i to i1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.362.i = phi ptr [ %.3.ph.i, %bb.by ], [ null, %bb.bx ]
  %.016.i = phi i1 [ %i.cz, %bb.by ], [ false, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bz, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.117.i = phi i1 [ %.016.i, %bb.bz ], [ false, %bb.bo ], [ false, %bb.bm ], [ false, %bb.bk ], [ false, %bb.bi ], [ false, %bb.bg ], [ false, %bb.be ], [ false, %bb.bc ], [ false, %bb.ba ], [ false, %bb.ay ], [ false, %bb.aw ], [ false, %bb.au ], [ false, %bb.as ], [ false, %bb.aq ], [ false, %bb.ao ], [ false, %bb.am ], [ false, %bb.ak ], [ false, %bb.ai ], [ false, %bb.ag ], [ false, %bb.ae ], [ false, %bb.ac ], [ false, %bb.aa ], [ false, %bb.y ], [ false, %bb.w ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.q ], [ false, %bb.o ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.e ]
  %.4.i = phi ptr [ %.362.i, %bb.bz ], [ %i.cb, %bb.bo ], [ %i.bz, %bb.bm ], [ %i.bx, %bb.bk ], [ %i.bv, %bb.bi ], [ %i.bt, %bb.bg ], [ %i.br, %bb.be ], [ %i.bp, %bb.bc ], [ %i.bn, %bb.ba ], [ %i.bl, %bb.ay ], [ %i.bj, %bb.aw ], [ %i.bh, %bb.au ], [ %i.bf, %bb.as ], [ %i.bd, %bb.aq ], [ %i.bb, %bb.ao ], [ %i.az, %bb.am ], [ %i.ax, %bb.ak ], [ %i.av, %bb.ai ], [ %i.at, %bb.ag ], [ %i.ar, %bb.ae ], [ %i.ap, %bb.ac ], [ %i.an, %bb.aa ], [ %i.al, %bb.y ], [ %i.aj, %bb.w ], [ %i.ah, %bb.u ], [ %i.af, %bb.s ], [ %i.ad, %bb.q ], [ %i.ab, %bb.o ], [ %i.z, %bb.m ], [ %i.x, %bb.k ], [ %i.v, %bb.i ], [ %i.t, %bb.g ], [ %i.r, %bb.e ] ; 14 uses
  %i.da = icmp eq ptr %.4.i, null                 ; 2 uses
  %or.cond.i = select i1 %i.da, i1 true, i1 %.117.i
  br i1 %or.cond.i, label %_ZL21mi_thread_data_zallocv.exit, label %_ZL21mi_thread_data_zallocv.exit.thread

_ZL21mi_thread_data_zallocv.exit.thread:          ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "align"(ptr %.4.i, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8216) %.4.i, i8 0, i64 3080, i1 false)
  br label %bb.ca

_ZL21mi_thread_data_zallocv.exit:                 ; preds = %.loopexit.i
  br i1 %i.da, label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZL21mi_thread_data_zallocv.exit.thread, %_ZL21mi_thread_data_zallocv.exit
  %i.db = getelementptr inbounds nuw i8, ptr %.4.i, i64 3080 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.4.i, i64 8) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5136) %i.db, ptr noundef nonnull readonly align 64 dereferenceable(5136) @_ZL9tld_empty, i64 5136, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %.4.i, i64 3096
  store ptr %.4.i, ptr %i.dc, align 8, !tbaa !215
  %i.dd = getelementptr inbounds nuw i8, ptr %.4.i, i64 3104
  store ptr null, ptr %i.dd, align 8, !tbaa !235
  %i.de = getelementptr inbounds nuw i8, ptr %.4.i, i64 4016
  store ptr @_ZL18mi_subproc_default, ptr %i.de, align 8, !tbaa !255
  %i.df = getelementptr inbounds nuw i8, ptr %.4.i, i64 4032
  %i.dg = getelementptr inbounds nuw i8, ptr %.4.i, i64 4024
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !256
  tail call void @_Z13_mi_heap_initP9mi_heap_sP8mi_tld_sibh(ptr noundef nonnull %.4.i, ptr noundef nonnull %i.db, i32 noundef 0, i1 noundef zeroext false, i8 noundef zeroext 0)
  store ptr %.4.i, ptr %i.e, align 8, !tbaa !37
  %i.dh = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !71 ; 2 uses
  %.not.i.i11 = icmp eq i32 %i.dh, -1
  br i1 %.not.i.i11, label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.di = tail call i32 @pthread_setspecific(i32 noundef %i.dh, ptr noundef nonnull %.4.i) #55 ; 0 uses
  br label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit

_Z27_mi_heap_set_default_directP9mi_heap_s.exit:  ; preds = %bb.cb, %bb.ca, %bb.c, %_Z18_mi_is_main_threadv.exit.thread, %_ZL21mi_thread_data_zallocv.exit, %bb.a
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @mi_thread_done() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_Z15_mi_thread_doneP9mi_heap_s(ptr noundef null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #56
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z15_mi_thread_doneP9mi_heap_s(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]    ; 3 uses
  %.not7 = icmp eq ptr %.0, @_mi_heap_empty
  br i1 %.not7, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = atomicrmw sub ptr @_ZL12thread_count, i64 1 monotonic, align 8 ; 0 uses
  %i.f = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 192), i64 1 monotonic, align 8
  %i.g = add nsw i64 %i.f, -1                     ; 3 uses
  %i.h = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 184) monotonic, align 8 ; 2 uses
  %.old3.i.i.i = icmp slt i64 %i.h, %i.g
  br i1 %.old3.i.i.i, label %.preheader.i.i.i, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader.i.i.i
  %.0.i.i.i = phi i64 [ %i.k, %.preheader.i.i.i ], [ %i.h, %bb.d ]
  %i.i = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 184), i64 %.0.i.i.i, i64 %i.g release monotonic, align 8 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %i.l = icmp sge i64 %i.k, %i.g
  %or.cond.not.i.i.i = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond.not.i.i.i, label %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit, label %.preheader.i.i.i, !llvm.loop !147

_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit:    ; preds = %.preheader.i.i.i, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !214  ; 2 uses
  %i.o = tail call ptr @llvm.thread.pointer.p0()
  %i.p = ptrtoint ptr %i.o to i64
  %.not = icmp eq i64 %i.n, %i.p
  br i1 %.not, label %bb.e, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit

bb.e:                                             ; preds = %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 16), align 16, !tbaa !214 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_Z18_mi_is_main_threadv.exit.thread.i, label %_Z18_mi_is_main_threadv.exit.i

_Z18_mi_is_main_threadv.exit.i:                   ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, %i.n
  %cond.fr.i = freeze i1 %i.s
  br i1 %cond.fr.i, label %_Z18_mi_is_main_threadv.exit.thread.i, label %bb.f

_Z18_mi_is_main_threadv.exit.thread.i:            ; preds = %_Z18_mi_is_main_threadv.exit.i, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %_Z18_mi_is_main_threadv.exit.thread.i, %_Z18_mi_is_main_threadv.exit.i
  %i.t = phi ptr [ @_mi_heap_main, %_Z18_mi_is_main_threadv.exit.thread.i ], [ @_mi_heap_empty, %_Z18_mi_is_main_threadv.exit.i ] ; 2 uses
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  store ptr %i.t, ptr %i.u, align 8, !tbaa !37
  %i.v = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !71 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.v, -1
  br i1 %.not.i.i.i, label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 @pthread_setspecific(i32 noundef %i.v, ptr noundef nonnull %i.t) #55, !inline_history !261 ; 0 uses
  br label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit.i

_Z27_mi_heap_set_default_directP9mi_heap_s.exit.i: ; preds = %bb.g, %bb.f
  %i.x = load ptr, ptr %.0, align 8, !tbaa !204
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !215  ; 41 uses
  %i.aa = icmp ne ptr %i.z, null
  %i.ab = icmp ne ptr %i.z, @_mi_heap_empty
  %i.ac = and i1 %i.aa, %i.ab
  br i1 %i.ac, label %bb.h, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit

bb.h:                                             ; preds = %_Z27_mi_heap_set_default_directP9mi_heap_s.exit.i
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !204
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !235 ; 2 uses
  %.not22.i = icmp eq ptr %i.af, null
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.j
  %.023.i = phi ptr [ %i.ah, %bb.j ], [ %i.af, %bb.h ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.023.i, i64 232
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !236 ; 2 uses
  %.not19.i = icmp eq ptr %.023.i, %i.z
  br i1 %.not19.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  tail call void @mi_heap_delete(ptr noundef nonnull %.023.i), !inline_history !261
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !262

._crit_edge.i:                                    ; preds = %bb.j, %bb.h
  %.not18.i = icmp eq ptr %i.z, @_mi_heap_main
  br i1 %.not18.i, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  tail call fastcc void @_ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e(ptr noundef nonnull %i.z, i32 noundef 2), !inline_history !263
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !204
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 952
  tail call fastcc void @_ZL19mi_stats_merge_fromP10mi_stats_s(ptr noundef nonnull %i.aj), !inline_history !261
  %i.ak = load atomic ptr, ptr @_ZL8td_cache monotonic, align 16
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.l, label %.critedge.i.i

bb.l:                                             ; preds = %bb.k
  %i.am = cmpxchg weak ptr @_ZL8td_cache, ptr null, ptr %i.z acq_rel acquire, align 8
  %i.an = extractvalue { ptr, i1 } %i.am, 1
  br i1 %i.an, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.l, %bb.k
  %i.ao = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 8) monotonic, align 8
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.m, label %.critedge.1.i.i

bb.m:                                             ; preds = %.critedge.i.i
  %i.aq = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 8), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.ar = extractvalue { ptr, i1 } %i.aq, 1
  br i1 %i.ar, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.1.i.i

.critedge.1.i.i:                                  ; preds = %bb.m, %.critedge.i.i
  %i.as = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 16) monotonic, align 16
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.n, label %.critedge.2.i.i

bb.n:                                             ; preds = %.critedge.1.i.i
  %i.au = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 16), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.av = extractvalue { ptr, i1 } %i.au, 1
  br i1 %i.av, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.2.i.i

.critedge.2.i.i:                                  ; preds = %bb.n, %.critedge.1.i.i
  %i.aw = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 24) monotonic, align 8
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.o, label %.critedge.3.i.i

bb.o:                                             ; preds = %.critedge.2.i.i
  %i.ay = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 24), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.az = extractvalue { ptr, i1 } %i.ay, 1
  br i1 %i.az, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.3.i.i

.critedge.3.i.i:                                  ; preds = %bb.o, %.critedge.2.i.i
  %i.ba = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 32) monotonic, align 16
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.p, label %.critedge.4.i.i

bb.p:                                             ; preds = %.critedge.3.i.i
  %i.bc = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 32), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.bd = extractvalue { ptr, i1 } %i.bc, 1
  br i1 %i.bd, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.4.i.i

.critedge.4.i.i:                                  ; preds = %bb.p, %.critedge.3.i.i
  %i.be = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 40) monotonic, align 8
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.q, label %.critedge.5.i.i

bb.q:                                             ; preds = %.critedge.4.i.i
  %i.bg = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 40), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.bh = extractvalue { ptr, i1 } %i.bg, 1
  br i1 %i.bh, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.5.i.i

.critedge.5.i.i:                                  ; preds = %bb.q, %.critedge.4.i.i
  %i.bi = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 48) monotonic, align 16
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.r, label %.critedge.6.i.i

bb.r:                                             ; preds = %.critedge.5.i.i
  %i.bk = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 48), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.bl = extractvalue { ptr, i1 } %i.bk, 1
  br i1 %i.bl, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.6.i.i

.critedge.6.i.i:                                  ; preds = %bb.r, %.critedge.5.i.i
  %i.bm = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 56) monotonic, align 8
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.s, label %.critedge.7.i.i

bb.s:                                             ; preds = %.critedge.6.i.i
  %i.bo = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 56), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.bp = extractvalue { ptr, i1 } %i.bo, 1
  br i1 %i.bp, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.7.i.i

.critedge.7.i.i:                                  ; preds = %bb.s, %.critedge.6.i.i
  %i.bq = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 64) monotonic, align 16
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.t, label %.critedge.8.i.i

bb.t:                                             ; preds = %.critedge.7.i.i
  %i.bs = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 64), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.bt = extractvalue { ptr, i1 } %i.bs, 1
  br i1 %i.bt, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.8.i.i

.critedge.8.i.i:                                  ; preds = %bb.t, %.critedge.7.i.i
  %i.bu = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 72) monotonic, align 8
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.u, label %.critedge.9.i.i

bb.u:                                             ; preds = %.critedge.8.i.i
  %i.bw = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 72), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.bx = extractvalue { ptr, i1 } %i.bw, 1
  br i1 %i.bx, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.9.i.i

.critedge.9.i.i:                                  ; preds = %bb.u, %.critedge.8.i.i
  %i.by = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 80) monotonic, align 16
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.v, label %.critedge.10.i.i

bb.v:                                             ; preds = %.critedge.9.i.i
  %i.ca = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 80), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.cb = extractvalue { ptr, i1 } %i.ca, 1
  br i1 %i.cb, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.10.i.i

.critedge.10.i.i:                                 ; preds = %bb.v, %.critedge.9.i.i
  %i.cc = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 88) monotonic, align 8
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.w, label %.critedge.11.i.i

bb.w:                                             ; preds = %.critedge.10.i.i
  %i.ce = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 88), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.cf = extractvalue { ptr, i1 } %i.ce, 1
  br i1 %i.cf, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.11.i.i

.critedge.11.i.i:                                 ; preds = %bb.w, %.critedge.10.i.i
  %i.cg = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 96) monotonic, align 16
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.x, label %.critedge.12.i.i

bb.x:                                             ; preds = %.critedge.11.i.i
  %i.ci = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 96), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.cj = extractvalue { ptr, i1 } %i.ci, 1
  br i1 %i.cj, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.12.i.i

.critedge.12.i.i:                                 ; preds = %bb.x, %.critedge.11.i.i
  %i.ck = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 104) monotonic, align 8
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.y, label %.critedge.13.i.i

bb.y:                                             ; preds = %.critedge.12.i.i
  %i.cm = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 104), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.cn = extractvalue { ptr, i1 } %i.cm, 1
  br i1 %i.cn, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.13.i.i

.critedge.13.i.i:                                 ; preds = %bb.y, %.critedge.12.i.i
  %i.co = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 112) monotonic, align 16
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.z, label %.critedge.14.i.i

bb.z:                                             ; preds = %.critedge.13.i.i
  %i.cq = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 112), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.cr = extractvalue { ptr, i1 } %i.cq, 1
  br i1 %i.cr, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.14.i.i

.critedge.14.i.i:                                 ; preds = %bb.z, %.critedge.13.i.i
  %i.cs = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 120) monotonic, align 8
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.aa, label %.critedge.15.i.i

bb.aa:                                            ; preds = %.critedge.14.i.i
  %i.cu = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 120), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.cv = extractvalue { ptr, i1 } %i.cu, 1
  br i1 %i.cv, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.15.i.i

.critedge.15.i.i:                                 ; preds = %bb.aa, %.critedge.14.i.i
  %i.cw = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 128) monotonic, align 16
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.ab, label %.critedge.16.i.i

bb.ab:                                            ; preds = %.critedge.15.i.i
  %i.cy = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 128), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.cz = extractvalue { ptr, i1 } %i.cy, 1
  br i1 %i.cz, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.16.i.i

.critedge.16.i.i:                                 ; preds = %bb.ab, %.critedge.15.i.i
  %i.da = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 136) monotonic, align 8
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.ac, label %.critedge.17.i.i

bb.ac:                                            ; preds = %.critedge.16.i.i
  %i.dc = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 136), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.dd = extractvalue { ptr, i1 } %i.dc, 1
  br i1 %i.dd, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.17.i.i

.critedge.17.i.i:                                 ; preds = %bb.ac, %.critedge.16.i.i
  %i.de = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 144) monotonic, align 16
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.ad, label %.critedge.18.i.i

bb.ad:                                            ; preds = %.critedge.17.i.i
  %i.dg = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 144), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.dh = extractvalue { ptr, i1 } %i.dg, 1
  br i1 %i.dh, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.18.i.i

.critedge.18.i.i:                                 ; preds = %bb.ad, %.critedge.17.i.i
  %i.di = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 152) monotonic, align 8
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.ae, label %.critedge.19.i.i

bb.ae:                                            ; preds = %.critedge.18.i.i
  %i.dk = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 152), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.dl = extractvalue { ptr, i1 } %i.dk, 1
  br i1 %i.dl, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.19.i.i

.critedge.19.i.i:                                 ; preds = %bb.ae, %.critedge.18.i.i
  %i.dm = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 160) monotonic, align 16
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.af, label %.critedge.20.i.i

bb.af:                                            ; preds = %.critedge.19.i.i
  %i.do = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 160), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.dp = extractvalue { ptr, i1 } %i.do, 1
  br i1 %i.dp, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.20.i.i

.critedge.20.i.i:                                 ; preds = %bb.af, %.critedge.19.i.i
  %i.dq = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 168) monotonic, align 8
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.ag, label %.critedge.21.i.i

bb.ag:                                            ; preds = %.critedge.20.i.i
  %i.ds = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 168), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.dt = extractvalue { ptr, i1 } %i.ds, 1
  br i1 %i.dt, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.21.i.i

.critedge.21.i.i:                                 ; preds = %bb.ag, %.critedge.20.i.i
  %i.du = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 176) monotonic, align 16
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ah, label %.critedge.22.i.i

bb.ah:                                            ; preds = %.critedge.21.i.i
  %i.dw = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 176), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.dx = extractvalue { ptr, i1 } %i.dw, 1
  br i1 %i.dx, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.22.i.i

.critedge.22.i.i:                                 ; preds = %bb.ah, %.critedge.21.i.i
  %i.dy = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 184) monotonic, align 8
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.ai, label %.critedge.23.i.i

bb.ai:                                            ; preds = %.critedge.22.i.i
  %i.ea = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 184), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.eb = extractvalue { ptr, i1 } %i.ea, 1
  br i1 %i.eb, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.23.i.i

.critedge.23.i.i:                                 ; preds = %bb.ai, %.critedge.22.i.i
  %i.ec = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 192) monotonic, align 16
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.aj, label %.critedge.24.i.i

bb.aj:                                            ; preds = %.critedge.23.i.i
  %i.ee = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 192), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.ef = extractvalue { ptr, i1 } %i.ee, 1
  br i1 %i.ef, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.24.i.i

.critedge.24.i.i:                                 ; preds = %bb.aj, %.critedge.23.i.i
  %i.eg = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 200) monotonic, align 8
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.ak, label %.critedge.25.i.i

bb.ak:                                            ; preds = %.critedge.24.i.i
  %i.ei = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 200), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.ej = extractvalue { ptr, i1 } %i.ei, 1
  br i1 %i.ej, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.25.i.i

.critedge.25.i.i:                                 ; preds = %bb.ak, %.critedge.24.i.i
  %i.ek = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 208) monotonic, align 16
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.al, label %.critedge.26.i.i

bb.al:                                            ; preds = %.critedge.25.i.i
  %i.em = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 208), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.en = extractvalue { ptr, i1 } %i.em, 1
  br i1 %i.en, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.26.i.i

.critedge.26.i.i:                                 ; preds = %bb.al, %.critedge.25.i.i
  %i.eo = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 216) monotonic, align 8
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.am, label %.critedge.27.i.i

bb.am:                                            ; preds = %.critedge.26.i.i
  %i.eq = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 216), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.er = extractvalue { ptr, i1 } %i.eq, 1
  br i1 %i.er, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.27.i.i

.critedge.27.i.i:                                 ; preds = %bb.am, %.critedge.26.i.i
  %i.es = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 224) monotonic, align 16
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.an, label %.critedge.28.i.i

bb.an:                                            ; preds = %.critedge.27.i.i
  %i.eu = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 224), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.ev = extractvalue { ptr, i1 } %i.eu, 1
  br i1 %i.ev, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.28.i.i

.critedge.28.i.i:                                 ; preds = %bb.an, %.critedge.27.i.i
  %i.ew = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 232) monotonic, align 8
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.ao, label %.critedge.29.i.i

bb.ao:                                            ; preds = %.critedge.28.i.i
  %i.ey = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 232), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.ez = extractvalue { ptr, i1 } %i.ey, 1
  br i1 %i.ez, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.29.i.i

.critedge.29.i.i:                                 ; preds = %bb.ao, %.critedge.28.i.i
  %i.fa = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 240) monotonic, align 16
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.ap, label %.critedge.30.i.i

bb.ap:                                            ; preds = %.critedge.29.i.i
  %i.fc = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 240), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.fd = extractvalue { ptr, i1 } %i.fc, 1
  br i1 %i.fd, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.30.i.i

.critedge.30.i.i:                                 ; preds = %bb.ap, %.critedge.29.i.i
  %i.fe = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 248) monotonic, align 8
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.aq, label %.critedge.31.i.i

bb.aq:                                            ; preds = %.critedge.30.i.i
  %i.fg = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_ZL8td_cache, i64 248), ptr null, ptr %i.z acq_rel acquire, align 8
  %i.fh = extractvalue { ptr, i1 } %i.fg, 1
  br i1 %i.fh, label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit, label %.critedge.31.i.i

.critedge.31.i.i:                                 ; preds = %bb.aq, %.critedge.30.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.z, i64 8216
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.z, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.fi), !inline_history !261
  br label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit

.critedge.i:                                      ; preds = %._crit_edge.i
  %i.fj = load ptr, ptr @_mi_heap_main, align 64, !tbaa !204
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 952
  tail call fastcc void @_ZL19mi_stats_merge_fromP10mi_stats_s(ptr noundef nonnull %i.fk), !inline_history !261
  br label %_ZL20_mi_thread_heap_doneP9mi_heap_s.exit

_ZL20_mi_thread_heap_doneP9mi_heap_s.exit:        ; preds = %.critedge.i, %.critedge.31.i.i, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %_Z27_mi_heap_set_default_directP9mi_heap_s.exit.i, %_Z17_mi_stat_decreaseP15mi_stat_count_sm.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #29

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_Z38_mi_prim_thread_associate_default_heapP9mi_heap_s(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !71 ; 2 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_setspecific(i32 noundef %i.a, ptr noundef %0) #55 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @mi_thread_set_in_threadpool() local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_Z14_mi_preloadingv() local_unnamed_addr #30 {
bb.a:
  %.b = load i1, ptr @_ZL13os_preloading, align 1
  %not..b = xor i1 %.b, true
  ret i1 %not..b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @mi_is_redirected() local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_Z17_mi_is_redirectedv() local_unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z16_mi_process_loadv() local_unnamed_addr #6 {
bb.a:
  tail call fastcc void @_ZL17mi_heap_main_initv()
  store i1 true, ptr @_ZL13os_preloading, align 1
  tail call void @_Z16_mi_options_initv()
  %.b.i = load i1, ptr @_ZZL33mi_process_setup_auto_thread_donevE15tls_initialized, align 1
  br i1 %.b.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @_ZZL33mi_process_setup_auto_thread_donevE15tls_initialized, align 1
  %i.a = tail call i32 @pthread_key_create(ptr noundef nonnull @_mi_heap_default_key, ptr noundef nonnull @_ZL15mi_pthread_donePv) #55, !inline_history !257 ; 0 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  store ptr @_mi_heap_main, ptr %i.b, align 8, !tbaa !37
  %i.c = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !71 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, -1
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @pthread_setspecific(i32 noundef %i.c, ptr noundef nonnull @_mi_heap_main) #55, !inline_history !258 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @mi_process_init() #55
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 188), align 4, !tbaa !264, !range !91, !noundef !92
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %_Z25_mi_random_reinit_if_weakP15mi_random_cxt_s.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZL17mi_random_init_exP15mi_random_cxt_sb(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 56), i1 noundef zeroext false)
  br label %_Z25_mi_random_reinit_if_weakP15mi_random_cxt_s.exit

_Z25_mi_random_reinit_if_weakP15mi_random_cxt_s.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z16_mi_options_initv() local_unnamed_addr #6 {
bb.a:
  %i.a = atomicrmw add ptr @_ZL7out_len, i64 1 acq_rel, align 8
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.a, i64 16384)
  %i.b = getelementptr inbounds nuw i8, ptr @_ZL7out_buf, i64 %spec.store.select.i.i ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !27
  %i.c = load i8, ptr @_ZL7out_buf, align 16, !tbaa !27
  %.not3.i.i = icmp eq i8 %i.c, 0
  br i1 %.not3.i.i, label %_ZL20mi_add_stderr_outputv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !265
  %i.e = tail call i32 @fputs(ptr noundef nonnull readonly @_ZL7out_buf, ptr noundef %i.d) #60 ; 0 uses
  br label %_ZL20mi_add_stderr_outputv.exit

_ZL20mi_add_stderr_outputv.exit:                  ; preds = %bb.a, %bb.b
  store i8 10, ptr %i.b, align 1, !tbaa !27
  store volatile ptr @_ZL17mi_out_buf_stderrPKcPv, ptr @_ZL14mi_out_default, align 8, !tbaa !69
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 8), align 8, !tbaa !111
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %mi_option_get.exit5, !prof !19

bb.c:                                             ; preds = %mi_option_get.exit5.36
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 608)), !inline_history !121
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %mi_option_get.exit5.36, %bb.c
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 608), align 16, !tbaa !116
  store i64 %i.h, ptr @_ZL18mi_max_error_count, align 8, !tbaa !74
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 648), align 8, !tbaa !111
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %mi_option_get.exit4, !prof !19

bb.d:                                             ; preds = %mi_option_get.exit
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 640)), !inline_history !121
  br label %mi_option_get.exit4

mi_option_get.exit4:                              ; preds = %mi_option_get.exit, %bb.d
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 640), align 16, !tbaa !116
  store i64 %i.k, ptr @_ZL20mi_max_warning_count, align 8, !tbaa !74
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 72), align 8, !tbaa !111
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %mi_option_is_enabled.exit, !prof !19

bb.e:                                             ; preds = %mi_option_get.exit4
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 64)), !inline_history !115
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %mi_option_get.exit4, %bb.e
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 64), align 16, !tbaa !116
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.ar, label %bb.aq

bb.f:                                             ; preds = %_ZL20mi_add_stderr_outputv.exit
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull @_ZL7options), !inline_history !121
  br label %mi_option_get.exit5

mi_option_get.exit5:                              ; preds = %_ZL20mi_add_stderr_outputv.exit, %bb.f
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 40), align 8, !tbaa !111
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %mi_option_get.exit5.1, !prof !19

bb.g:                                             ; preds = %mi_option_get.exit5
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 32)), !inline_history !121
  br label %mi_option_get.exit5.1

mi_option_get.exit5.1:                            ; preds = %bb.g, %mi_option_get.exit5
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 72), align 8, !tbaa !111
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %mi_option_get.exit5.2, !prof !19

bb.h:                                             ; preds = %mi_option_get.exit5.1
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 64)), !inline_history !121
  br label %mi_option_get.exit5.2

mi_option_get.exit5.2:                            ; preds = %bb.h, %mi_option_get.exit5.1
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 104), align 8, !tbaa !111
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %mi_option_get.exit5.3, !prof !19

bb.i:                                             ; preds = %mi_option_get.exit5.2
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 96)), !inline_history !121
  br label %mi_option_get.exit5.3

mi_option_get.exit5.3:                            ; preds = %bb.i, %mi_option_get.exit5.2
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 136), align 8, !tbaa !111
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %mi_option_get.exit5.4, !prof !19

bb.j:                                             ; preds = %mi_option_get.exit5.3
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 128)), !inline_history !121
  br label %mi_option_get.exit5.4

mi_option_get.exit5.4:                            ; preds = %bb.j, %mi_option_get.exit5.3
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 168), align 8, !tbaa !111
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.k, label %mi_option_get.exit5.5, !prof !19

bb.k:                                             ; preds = %mi_option_get.exit5.4
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 160)), !inline_history !121
  br label %mi_option_get.exit5.5

mi_option_get.exit5.5:                            ; preds = %bb.k, %mi_option_get.exit5.4
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 200), align 8, !tbaa !111
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.l, label %mi_option_get.exit5.6, !prof !19

bb.l:                                             ; preds = %mi_option_get.exit5.5
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 192)), !inline_history !121
  br label %mi_option_get.exit5.6

end_hunk_0
