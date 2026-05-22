inline.NumInlined: 729
inline.NumDeleted: 337
begin_hunk_0_@_ZN6apache6thrift9transport14TFileTransport16swapEventBuffersEPKNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEE:bb.a
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !101  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !151
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.a, %bb.h
  %i.y = phi ptr [ %i.f, %bb.a ], [ %i.u, %bb.h ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !100
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !101
  store ptr %i.y, ptr %i.z, align 8, !tbaa !100
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke void @_ZNK6apache6thrift11concurrency7Monitor6notifyEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %.critedge unwind label %bb.b

.critedge:                                        ; preds = %bb.d, %.thread, %bb.h
  %.013 = phi i1 [ false, %bb.h ], [ true, %.thread ], [ false, %bb.d ]
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN6apache6thrift11concurrency5GuardD2Ev.exit10 unwind label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #35
  unreachable

_ZN6apache6thrift11concurrency5GuardD2Ev.exit10:  ; preds = %.critedge
  ret i1 %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN6apache6thrift9transport20TFileTransportBuffer7isEmptyEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !151
  %i.c = icmp eq i32 %i.b, 0
  ret i1 %i.c
}

declare noundef i32 @_ZNK6apache6thrift11concurrency7Monitor11waitForTimeERKNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6apache6thrift9transport14TFileTransport12writerThreadEv(ptr noundef nonnull align 8 dereferenceable(305) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::chrono::time_point", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca [26 x i8], align 16               ; 9 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca [26 x i8], align 16               ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca [26 x i8], align 16               ; 5 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca [26 x i8], align 16               ; 5 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca [26 x i8], align 16               ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 12 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !51
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6apache6thrift9transport14TFileTransport11openLogFileEv(ptr noundef nonnull align 8 dereferenceable(305) %0)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #30 ; 0 uses
  %i.p = tail call ptr @__errno_location() #32
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  invoke void @_ZN6apache6thrift7TOutput6perrorEPKci(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6apache6thrift12GlobalOutputE, ptr noundef nonnull @.str.10, i32 noundef %i.q)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bk unwind label %bb.bl

bb.e:                                             ; preds = %bb.c
  store i32 0, ptr %i.k, align 8, !tbaa !51
  tail call void @__cxa_end_catch()
  br label %bb.q

bb.f:                                             ; preds = %bb.a, %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(305) %0)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !165
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !56
  %i.aa = add nsw i64 %i.z, %i.x                  ; 2 uses
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !56
  %i.ab = load i32, ptr %i.k, align 8, !tbaa !51
  %i.ac = tail call i32 @ftruncate(i32 noundef %i.ab, i64 noundef %i.aa) #30
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 1, ptr %i.af, align 1, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.ag, align 4, !tbaa !14
  store i32 0, ptr %i.v, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.ah, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.ai, align 4, !tbaa !17
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 3 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZN6apache6thrift9transport9readState14resetAllValuesEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !63 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZN6apache6thrift9transport9eventInfoD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ak) #31
  br label %_ZN6apache6thrift9transport9eventInfoD2Ev.exit.i

_ZN6apache6thrift9transport9eventInfoD2Ev.exit.i: ; preds = %bb.j, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 16) #31
  br label %_ZN6apache6thrift9transport9readState14resetAllValuesEv.exit

_ZN6apache6thrift9transport9readState14resetAllValuesEv.exit: ; preds = %bb.h, %_ZN6apache6thrift9transport9eventInfoD2Ev.exit.i
  store ptr null, ptr %i.ae, align 8, !tbaa !18
  br label %bb.q

bb.k:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.l:                                             ; preds = %bb.g
  %i.am = tail call ptr @__errno_location() #32
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  invoke void @_ZN6apache6thrift7TOutput6perrorEPKci(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6apache6thrift12GlobalOutputE, ptr noundef nonnull @.str.11, i32 noundef %i.an)
          to label %bb.q unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.pn = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.ao, %bb.m ]
  %.050 = extractvalue { ptr, i32 } %.pn, 0
  %i.ap = tail call ptr @__cxa_begin_catch(ptr %.050) #30 ; 0 uses
  %i.aq = tail call ptr @__errno_location() #32
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  invoke void @_ZN6apache6thrift7TOutput6perrorEPKci(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6apache6thrift12GlobalOutputE, ptr noundef nonnull @.str.12, i32 noundef %i.ar)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_end_catch()
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bk unwind label %bb.bl

bb.q:                                             ; preds = %bb.e, %_ZN6apache6thrift9transport9readState14resetAllValuesEv.exit, %bb.l, %bb.o
  %.1 = phi i8 [ 1, %bb.e ], [ 0, %_ZN6apache6thrift9transport9readState14resetAllValuesEv.exit ], [ 1, %bb.o ], [ 1, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.at = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #30
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !3
  %i.aw = zext i32 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.aw, 1000
  %i.ay = add nsw i64 %i.ax, %i.at
  store i64 %i.ay, ptr %1, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 10 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %.backedge141

.backedge141:                                     ; preds = %.backedge141.backedge, %bb.q
  %.060 = phi i32 [ 0, %bb.q ], [ %.060.be, %.backedge141.backedge ] ; 2 uses
  %.2 = phi i8 [ %.1, %bb.q ], [ %.2.be, %.backedge141.backedge ] ; 3 uses
  %i.bq = load atomic i8, ptr %i.az seq_cst, align 8, !range !54, !noundef !55
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.r, label %bb.x

bb.r:                                             ; preds = %.backedge141
  %i.bs = trunc nuw i8 %.2 to i1
  br i1 %i.bs, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !101
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !151
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bx = load ptr, ptr %i.bb, align 8, !tbaa !100
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !151
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cb = load i32, ptr %i.k, align 8, !tbaa !51
  %i.cc = call i32 @fsync(i32 noundef %i.cb)      ; 0 uses
  %i.cd = load i32, ptr %i.k, align 8, !tbaa !51
  %i.ce = call i32 @close(i32 noundef %i.cd)
  %i.cf = icmp eq i32 %i.ce, -1
  br i1 %i.cf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cg = tail call ptr @__errno_location() #32
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  call void @_ZN6apache6thrift7TOutput6perrorEPKci(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6apache6thrift12GlobalOutputE, ptr noundef nonnull @.str.13, i32 noundef %i.ch)
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  store i32 0, ptr %i.k, align 8, !tbaa !51
  br label %.loopexit

bb.x:                                             ; preds = %bb.s, %bb.t, %.backedge141
  %i.ci = call noundef zeroext i1 @_ZN6apache6thrift9transport14TFileTransport16swapEventBuffersEPKNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(305) %0, ptr noundef nonnull %1)
  br i1 %i.ci, label %.preheader139, label %bb.av

.preheader139:                                    ; preds = %bb.x, %.preheader139.backedge
  %.161 = phi i32 [ %.161.be, %.preheader139.backedge ], [ %.060, %bb.x ] ; 2 uses
  %.3 = phi i8 [ %.3.be, %.preheader139.backedge ], [ %.2, %bb.x ] ; 2 uses
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !100 ; 9 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !159
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.preheader139
  store i32 1, ptr %i.cj, align 8, !tbaa !159
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.preheader139
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !166 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !151 ; 3 uses
  %i.cq = icmp ult i32 %i.cn, %i.cp
  br i1 %i.cq, label %_ZN6apache6thrift9transport20TFileTransportBuffer7getNextEv.exit, label %bb.aq

_ZN6apache6thrift9transport20TFileTransportBuffer7getNextEv.exit: ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !163
  %i.ct = add nuw i32 %i.cn, 1
  store i32 %i.ct, ptr %i.cm, align 8, !tbaa !166
  %i.cu = zext i32 %i.cn to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !148 ; 4 uses
  %.not81 = icmp eq ptr %i.cw, null
  br i1 %.not81, label %.lr.ph.i, label %.preheader

.preheader:                                       ; preds = %_ZN6apache6thrift9transport20TFileTransportBuffer7getNextEv.exit
  %i.cx = trunc nuw i8 %.3 to i1
  br i1 %i.cx, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.cy = call i64 @time(ptr noundef nonnull %i.a) #30 ; 0 uses
  %i.cz = call ptr @ctime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #30 ; 0 uses
  store i8 0, ptr %i.bc, align 8, !tbaa !50
  %i.da = load ptr, ptr @stderr, align 8, !tbaa !115
  %i.db = load i32, ptr %i.bd, align 8, !tbaa !43
  %i.dc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.da, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 378, ptr noundef nonnull %i.b, i32 noundef %i.db) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.dd = load i32, ptr %i.bd, align 8, !tbaa !43
  %i.de = call i32 @usleep(i32 noundef %i.dd)     ; 0 uses
  %i.df = load atomic i8, ptr %i.az seq_cst, align 8, !range !54, !noundef !55
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %.loopexit, label %.lr.ph290

.lr.ph290:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.dh = load i32, ptr %i.k, align 8, !tbaa !51
  %.not90 = icmp eq i32 %i.dh, 0
  br i1 %.not90, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph290
  %i.di = call i32 @close(i32 noundef 0)          ; 0 uses
  store i32 0, ptr %i.k, align 8, !tbaa !51
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph290
  invoke void @_ZN6apache6thrift9transport14TFileTransport11openLogFileEv(ptr noundef nonnull align 8 dereferenceable(305) %0)
          to label %bb.ac unwind label %.lr.ph

bb.ac:                                            ; preds = %bb.ab
  %i.dj = load ptr, ptr %0, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8
  invoke void %i.dl(ptr noundef nonnull align 8 dereferenceable(305) %0)
          to label %._crit_edge.loopexit unwind label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab, %bb.ac
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  %i.do = call ptr @__cxa_begin_catch(ptr %i.dn) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.dp = call i64 @time(ptr noundef nonnull %i.e) #30 ; 0 uses
  %i.dq = call ptr @ctime_r(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #30 ; 0 uses
  store i8 0, ptr %i.be, align 8, !tbaa !50
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !115
  %i.ds = load ptr, ptr %i.bf, align 8, !tbaa !47
  %i.dt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef 397, ptr noundef nonnull %i.f, ptr noundef %i.ds) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @__cxa_end_catch()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.du = call i64 @time(ptr noundef nonnull %i.a) #30 ; 0 uses
  %i.dv = call ptr @ctime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #30 ; 0 uses
  store i8 0, ptr %i.bc, align 8, !tbaa !50
  %i.dw = load ptr, ptr @stderr, align 8, !tbaa !115
  %i.dx = load i32, ptr %i.bd, align 8, !tbaa !43
  %i.dy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dw, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 378, ptr noundef nonnull %i.b, i32 noundef %i.dx) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.dz = load i32, ptr %i.bd, align 8, !tbaa !43
  %i.ea = call i32 @usleep(i32 noundef %i.dz)     ; 0 uses
  %i.eb = load atomic i8, ptr %i.az seq_cst, align 8, !range !54, !noundef !55
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %.loopexit, label %.lr.ph290, !llvm.loop !167

._crit_edge.loopexit:                             ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.ed = call i64 @time(ptr noundef nonnull %i.c) #30 ; 0 uses
  %i.ee = call ptr @ctime_r(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #30 ; 0 uses
  store i8 0, ptr %i.bg, align 8, !tbaa !50
  %i.ef = load ptr, ptr @stderr, align 8, !tbaa !115
  %i.eg = load ptr, ptr %i.bf, align 8, !tbaa !47
  %i.eh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ef, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.d, ptr noundef %i.eg) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.262.lcssa = phi i32 [ %.161, %.preheader ], [ 0, %._crit_edge.loopexit ] ; 7 uses
  %i.ei = load i32, ptr %i.bh, align 8, !tbaa !147 ; 2 uses
  %.not82 = icmp ne i32 %i.ei, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !149 ; 6 uses
  %i.ej = icmp ugt i32 %.pre, %i.ei
  %or.cond260 = select i1 %.not82, i1 %i.ej, i1 false
  br i1 %or.cond260, label %bb.ad, label %._crit_edge._crit_edge

bb.ad:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.ek = call i64 @time(ptr noundef nonnull %i.g) #30 ; 0 uses
  %i.el = call ptr @ctime_r(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #30 ; 0 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !50
  %i.em = load ptr, ptr @stderr, align 8, !tbaa !115
  %i.en = load i32, ptr %.phi.trans.insert, align 8, !tbaa !149
  %i.eo = load i32, ptr %i.bh, align 8, !tbaa !147
  %i.ep = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.em, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef 405, ptr noundef nonnull %i.h, i32 noundef %i.en, i32 noundef %i.eo) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %.preheader139.backedge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 3 uses
  %.not83 = icmp eq i32 %.pre, 0
  br i1 %.not83, label %.preheader139.backedge, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge._crit_edge
  %i.er = load i32, ptr %i.bj, align 8, !tbaa !169 ; 3 uses
  %.not84 = icmp eq i32 %i.er, 0
  br i1 %.not84, label %.thread118.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.es = icmp ugt i32 %.pre, %i.er
  br i1 %i.es, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  %i.et = call i64 @time(ptr noundef nonnull %i.i) #30 ; 0 uses
  %i.eu = call ptr @ctime_r(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #30 ; 0 uses
  store i8 0, ptr %i.bl, align 8, !tbaa !50
  %i.ev = load ptr, ptr @stderr, align 8, !tbaa !115
  %i.ew = load i32, ptr %i.eq, align 8, !tbaa !149
  %i.ex = load i32, ptr %i.bj, align 8, !tbaa !169
  %i.ey = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5, i32 noundef 415, ptr noundef nonnull %i.j, i32 noundef %i.ew, i32 noundef %i.ex) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br label %.preheader139.backedge

bb.ah:                                            ; preds = %bb.af
  %i.ez = load i64, ptr %i.bk, align 8, !tbaa !56 ; 2 uses
  %i.fa = zext i32 %i.er to i64                   ; 2 uses
  %i.fb = sdiv i64 %i.ez, %i.fa
  %i.fc = zext i32 %.pre to i64
  %i.fd = add nsw i64 %i.fc, -1
  %i.fe = add i64 %i.fd, %i.ez
  %i.ff = sdiv i64 %i.fe, %i.fa
  %.not85 = icmp eq i64 %i.fb, %i.ff
  br i1 %.not85, label %.thread118.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fg = load i32, ptr %i.k, align 8, !tbaa !51
  %i.fh = call i64 @lseek(i32 noundef %i.fg, i64 noundef 0, i32 noundef 1) #30 ; 3 uses
  store i64 %i.fh, ptr %i.bk, align 8, !tbaa !56
  %i.fi = load i32, ptr %i.bj, align 8, !tbaa !169
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %i.fk = sdiv i64 %i.fh, %i.fj
  %i.fl = add nsw i64 %i.fk, 1
  %i.fm = mul nsw i64 %i.fl, %i.fj
  %i.fn = sub nsw i64 %i.fm, %i.fh                ; 2 uses
  %i.fo = trunc i64 %i.fn to i32
  %sext = shl i64 %i.fn, 32
  %i.fp = ashr exact i64 %sext, 32                ; 4 uses
  %i.fq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fp) #34 ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fq, i8 0, i64 %i.fp, i1 false)
  %i.fr = load i32, ptr %i.k, align 8, !tbaa !51
  %i.fs = invoke i64 @write(i32 noundef %i.fr, ptr noundef nonnull %i.fq, i64 noundef %i.fp)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %.not88 = icmp eq i64 %i.fs, -1
  br i1 %.not88, label %bb.ak, label %.thread118

bb.ak:                                            ; preds = %bb.aj
  %i.ft = tail call ptr @__errno_location() #32
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3
  invoke void @_ZN6apache6thrift7TOutput6perrorEPKci(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6apache6thrift12GlobalOutputE, ptr noundef nonnull @.str.18, i32 noundef %i.fu)
          to label %bb.an unwind label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost12scoped_arrayIhED2Ev.exit97

bb.am:                                            ; preds = %bb.ak
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost12scoped_arrayIhED2Ev.exit97

_ZN5boost12scoped_arrayIhED2Ev.exit97:            ; preds = %bb.am, %bb.al
  %.pn86 = phi { ptr, i32 } [ %i.fw, %bb.am ], [ %i.fv, %bb.al ]
  call void @_ZdaPv(ptr noundef nonnull %i.fq) #31
  br label %_ZN6apache6thrift11concurrency5GuardD2Ev.exit105

bb.an:                                            ; preds = %bb.ak
  call void @_ZdaPv(ptr noundef nonnull %i.fq) #31
  br label %.preheader139.backedge

.thread118:                                       ; preds = %bb.aj
  %i.fx = add i32 %.262.lcssa, %i.fo              ; 2 uses
  %i.fy = load i64, ptr %i.bk, align 8, !tbaa !56
  %i.fz = add nsw i64 %i.fy, %i.fp
  store i64 %i.fz, ptr %i.bk, align 8, !tbaa !56
  call void @_ZdaPv(ptr noundef nonnull %i.fq) #31
  %.pr.pre = load i32, ptr %i.eq, align 8, !tbaa !149 ; 2 uses
  %.not89 = icmp eq i32 %.pr.pre, 0
  br i1 %.not89, label %.preheader139.backedge, label %.thread118.thread

.preheader139.backedge:                           ; preds = %.thread118, %bb.ap, %._crit_edge._crit_edge, %bb.ad, %bb.ag, %bb.ao, %bb.an
  %.161.be = phi i32 [ %.262.lcssa, %._crit_edge._crit_edge ], [ %.262.lcssa, %bb.an ], [ %.262.lcssa, %bb.ad ], [ %.262.lcssa, %bb.ag ], [ %.767.ph225, %bb.ao ], [ %i.gi, %bb.ap ], [ %i.fx, %.thread118 ]
  %.3.be = phi i8 [ 0, %._crit_edge._crit_edge ], [ 1, %bb.an ], [ 0, %bb.ad ], [ 0, %bb.ag ], [ 1, %bb.ao ], [ 0, %bb.ap ], [ 0, %.thread118 ]
  br label %.preheader139, !llvm.loop !170

.thread118.thread:                                ; preds = %bb.ah, %bb.ae, %.thread118
  %.767.ph225 = phi i32 [ %i.fx, %.thread118 ], [ %.262.lcssa, %bb.ae ], [ %.262.lcssa, %bb.ah ] ; 2 uses
  %.pr224 = phi i32 [ %.pr.pre, %.thread118 ], [ %.pre, %bb.ae ], [ %.pre, %bb.ah ]
  %i.ga = load i32, ptr %i.k, align 8, !tbaa !51
  %i.gb = load ptr, ptr %i.cw, align 8, !tbaa !63
  %i.gc = zext i32 %.pr224 to i64
  %i.gd = call i64 @write(i32 noundef %i.ga, ptr noundef %i.gb, i64 noundef %i.gc)
  %i.ge = icmp eq i64 %i.gd, -1
  br i1 %i.ge, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread118.thread
  %i.gf = tail call ptr @__errno_location() #32
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !3
  call void @_ZN6apache6thrift7TOutput6perrorEPKci(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6apache6thrift12GlobalOutputE, ptr noundef nonnull @.str.19, i32 noundef %i.gg)
  br label %.preheader139.backedge

bb.ap:                                            ; preds = %.thread118.thread
  %i.gh = load i32, ptr %i.eq, align 8, !tbaa !149 ; 2 uses
  %i.gi = add i32 %i.gh, %.767.ph225
  %i.gj = zext i32 %i.gh to i64
  %i.gk = load i64, ptr %i.bk, align 8, !tbaa !56
  %i.gl = add nsw i64 %i.gk, %i.gj
  store i64 %i.gl, ptr %i.bk, align 8, !tbaa !56
  br label %.preheader139.backedge

bb.aq:                                            ; preds = %bb.z
  %.not.i98 = icmp eq i32 %i.cp, 0
  br i1 %.not.i98, label %_ZN6apache6thrift9transport20TFileTransportBuffer5resetEv.exit.thread, label %.lr.ph.i

_ZN6apache6thrift9transport20TFileTransportBuffer5resetEv.exit.thread: ; preds = %bb.aq
  store i32 0, ptr %i.cj, align 8, !tbaa !159
  br label %.sink.split

.lr.ph.i:                                         ; preds = %_ZN6apache6thrift9transport20TFileTransportBuffer7getNextEv.exit, %bb.aq
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  br label %bb.ar

bb.ar:                                            ; preds = %bb.au, %.lr.ph.i
  %i.go = phi i32 [ %i.cp, %.lr.ph.i ], [ %i.gu, %bb.au ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.au ] ; 2 uses
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !163
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.i
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !148 ; 3 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !63 ; 2 uses
  %.not.i.i99 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i99, label %_ZN6apache6thrift9transport9eventInfoD2Ev.exit.i100, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZdaPv(ptr noundef nonnull %i.gt) #31
  br label %_ZN6apache6thrift9transport9eventInfoD2Ev.exit.i100

_ZN6apache6thrift9transport9eventInfoD2Ev.exit.i100: ; preds = %bb.at, %bb.as
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef 16) #31
  %.pre.i = load i32, ptr %i.gm, align 4, !tbaa !151
  br label %bb.au

bb.au:                                            ; preds = %_ZN6apache6thrift9transport9eventInfoD2Ev.exit.i100, %bb.ar
  %i.gu = phi i32 [ %i.go, %bb.ar ], [ %.pre.i, %_ZN6apache6thrift9transport9eventInfoD2Ev.exit.i100 ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gv = zext i32 %i.gu to i64
  %i.gw = icmp samesign ult i64 %indvars.iv.next.i, %i.gv
  br i1 %i.gw, label %bb.ar, label %_ZN6apache6thrift9transport20TFileTransportBuffer5resetEv.exit, !llvm.loop !171

_ZN6apache6thrift9transport20TFileTransportBuffer5resetEv.exit: ; preds = %bb.au
  store i32 0, ptr %i.cj, align 8, !tbaa !159
  store i32 0, ptr %i.gm, align 4, !tbaa !151
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN6apache6thrift9transport20TFileTransportBuffer5resetEv.exit.thread, %_ZN6apache6thrift9transport20TFileTransportBuffer5resetEv.exit
  store i32 0, ptr %i.cm, align 8, !tbaa !166
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %bb.x
  %.1070 = phi i32 [ %.060, %bb.x ], [ %.161, %.sink.split ] ; 5 uses
  %.11 = phi i8 [ %.2, %bb.x ], [ %.3, %.sink.split ]
  %i.gx = trunc nuw i8 %.11 to i1
  br i1 %i.gx, label %.backedge141.backedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gy = load ptr, ptr %i.bm, align 8, !tbaa !7
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(24) %i.bm), !inline_history !150
  %i.hb = load atomic i8, ptr %i.bn seq_cst, align 8, !range !54, !noundef !55
  %i.hc = trunc nuw i8 %i.hb to i1                ; 2 uses
  br i1 %i.hc, label %bb.ax, label %2

bb.ax:                                            ; preds = %bb.aw
  %i.hd = load ptr, ptr %i.ba, align 8, !tbaa !101
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !151
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %2, label %bb.ay, !llvm.loop !172

2:                                                ; preds = %bb.ax, %bb.aw
  br label %bb.ay

bb.ay:                                            ; preds = %2, %bb.ax
  %cond = phi i1 [ true, %2 ], [ false, %bb.ax ]
  %.156 = phi i1 [ %i.hc, %2 ], [ false, %bb.ax ] ; 2 uses
  %i.hh = load ptr, ptr %i.bm, align 8, !tbaa !7
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  %i.hj = load ptr, ptr %i.hi, align 8
  invoke void %i.hj(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_ZN6apache6thrift11concurrency5GuardD2Ev.exit unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hk = landingpad { ptr, i32 }
          catch ptr null
  %i.hl = extractvalue { ptr, i32 } %i.hk, 0
  call void @__clang_call_terminate(ptr %i.hl) #35
  unreachable

_ZN6apache6thrift11concurrency5GuardD2Ev.exit:    ; preds = %bb.ay
  br i1 %cond, label %bb.ba, label %.backedge141.backedge

.backedge141.backedge:                            ; preds = %_ZN6apache6thrift11concurrency5GuardD2Ev.exit, %bb.bb, %bb.bd, %bb.be, %bb.bg, %bb.av
  %.060.be = phi i32 [ %.1070, %bb.av ], [ %.1070, %_ZN6apache6thrift11concurrency5GuardD2Ev.exit ], [ %.1070, %bb.bb ], [ 0, %bb.be ], [ 0, %bb.bd ], [ 0, %bb.bg ]
  %.2.be = phi i8 [ 1, %bb.av ], [ 0, %_ZN6apache6thrift11concurrency5GuardD2Ev.exit ], [ 0, %bb.bb ], [ 0, %bb.be ], [ 0, %bb.bd ], [ 0, %bb.bg ]
  br label %.backedge141, !llvm.loop !172

bb.ba:                                            ; preds = %_ZN6apache6thrift11concurrency5GuardD2Ev.exit
  %i.hm = load i32, ptr %i.bo, align 4
  %i.hn = icmp ugt i32 %.1070, %i.hm
  %or.cond = select i1 %.156, i1 true, i1 %i.hn
  br i1 %or.cond, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ho = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #30
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !49
  %i.hp = icmp slt i64 %.sroa.0.0.copyload.i.i.i, %i.ho
  br i1 %i.hp, label %bb.bc, label %.backedge141.backedge

bb.bc:                                            ; preds = %bb.bb
  %.not91 = icmp eq i32 %.1070, 0
  br i1 %.not91, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hq = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #30
  %i.hr = load i32, ptr %i.au, align 8, !tbaa !3
  %i.hs = zext i32 %i.hr to i64
  %i.ht = mul nuw nsw i64 %i.hs, 1000
  %i.hu = add nsw i64 %i.ht, %i.hq
  store i64 %i.hu, ptr %1, align 8, !tbaa !49
  br label %.backedge141.backedge

bb.be:                                            ; preds = %bb.ba, %bb.bc
  %i.hv = load i32, ptr %i.k, align 8, !tbaa !51
  %i.hw = call i32 @fsync(i32 noundef %i.hv)      ; 0 uses
  %i.hx = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #30
  %i.hy = load i32, ptr %i.au, align 8, !tbaa !3
  %i.hz = zext i32 %i.hy to i64
  %i.ia = mul nuw nsw i64 %i.hz, 1000
  %i.ib = add nsw i64 %i.ia, %i.hx
  store i64 %i.ib, ptr %1, align 8, !tbaa !49
  br i1 %.156, label %bb.bf, label %.backedge141.backedge

bb.bf:                                            ; preds = %bb.be
  %i.ic = load ptr, ptr %i.bm, align 8, !tbaa !7
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(24) %i.bm), !inline_history !150
  store atomic i8 0, ptr %i.bn seq_cst, align 8
  invoke void @_ZNK6apache6thrift11concurrency7Monitor9notifyAllEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.if = load ptr, ptr %i.bm, align 8, !tbaa !7
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  %i.ih = load ptr, ptr %i.ig, align 8
  invoke void %i.ih(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.backedge141.backedge unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #35
  unreachable

bb.bi:                                            ; preds = %bb.bf
  %i.ik = landingpad { ptr, i32 }
          cleanup
  %i.il = load ptr, ptr %i.bm, align 8, !tbaa !7
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 40
  %i.in = load ptr, ptr %i.im, align 8
  invoke void %i.in(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_ZN6apache6thrift11concurrency5GuardD2Ev.exit105 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.io = landingpad { ptr, i32 }
          catch ptr null
  %i.ip = extractvalue { ptr, i32 } %i.io, 0
  call void @__clang_call_terminate(ptr %i.ip) #35
  unreachable

.loopexit:                                        ; preds = %bb.r, %.lr.ph.preheader, %.lr.ph, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

_ZN6apache6thrift11concurrency5GuardD2Ev.exit105: ; preds = %bb.bi, %_ZN5boost12scoped_arrayIhED2Ev.exit97
  %.pn92 = phi { ptr, i32 } [ %.pn86, %_ZN5boost12scoped_arrayIhED2Ev.exit97 ], [ %i.ik, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.bk

bb.bk:                                            ; preds = %bb.p, %bb.d, %_ZN6apache6thrift11concurrency5GuardD2Ev.exit105
  %.pn92.pn = phi { ptr, i32 } [ %.pn92, %_ZN6apache6thrift11concurrency5GuardD2Ev.exit105 ], [ %i.as, %bb.p ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %.pn92.pn

bb.bl:                                            ; preds = %bb.p, %bb.d
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  tail call void @__clang_call_terminate(ptr %i.ir) #35
  unreachable
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6apache6thrift9transport9readState14resetAllValuesEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 1, ptr %i.a, align 1, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.b, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !17
  %i.f = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN6apache6thrift9transport9eventInfoD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #31
  br label %_ZN6apache6thrift9transport9eventInfoD2Ev.exit

_ZN6apache6thrift9transport9eventInfoD2Ev.exit:   ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 16) #31
  br label %bb.d

bb.d:                                             ; preds = %_ZN6apache6thrift9transport9eventInfoD2Ev.exit, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define i64 @_ZN6apache6thrift9transport14TFileTransport16getNextFlushTimeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(305) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3
  %i.d = zext i32 %i.c to i64
  %i.e = mul nuw nsw i64 %i.d, 1000
  %i.f = add nsw i64 %i.e, %i.a
  ret i64 %i.f
}

declare i32 @fsync(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN6apache6thrift9transport20TFileTransportBuffer7getNextEv(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !159
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8, !tbaa !159
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !166  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !151
  %i.g = icmp ult i32 %i.d, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !163
  %i.j = add nuw i32 %i.d, 1
  store i32 %i.j, ptr %i.c, align 8, !tbaa !166
  %i.k = zext i32 %i.d to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !148
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.m, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

declare i32 @usleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6apache6thrift9transport20TFileTransportBuffer5resetEv(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !151  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  store i32 0, ptr %0, align 8, !tbaa !159
  store i32 0, ptr %i.a, align 4, !tbaa !151
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !166
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.k, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !163
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !148  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN6apache6thrift9transport9eventInfoD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #31
  br label %_ZN6apache6thrift9transport9eventInfoD2Ev.exit

_ZN6apache6thrift9transport9eventInfoD2Ev.exit:   ; preds = %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 16) #31
  %.pre = load i32, ptr %i.a, align 4, !tbaa !151
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN6apache6thrift9transport9eventInfoD2Ev.exit
  %i.k = phi i32 [ %i.e, %bb.b ], [ %.pre, %_ZN6apache6thrift9transport9eventInfoD2Ev.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge, !llvm.loop !171
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #3

declare void @_ZNK6apache6thrift11concurrency7Monitor9notifyAllEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6apache6thrift9transport14TFileTransport5flushEv(ptr noundef nonnull align 8 dereferenceable(305) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::chrono::duration.57", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.g = load i32, ptr %i.f, align 4, !tbaa !70
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.h, ptr %i.i, align 8, !tbaa !78
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %i.j, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97
  %.not = icmp eq ptr %i.l, null
end_hunk_0
