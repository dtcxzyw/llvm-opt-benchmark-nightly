Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/zero_copy_stream?download=true
inline.NumInlined: 207
inline.NumDeleted: 134
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6google8protobuf2io19ZeroCopyInputStream8ReadCordEPN4absl12lts_202505124CordEi:bb.a

bb.h:                                             ; preds = %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit.thread, %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit
  %i.am = phi i64 [ %i.ah, %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit.thread ], [ %i.ak, %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit ]
  %i.an = phi i8 [ 1, %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit.thread ], [ %i.ai, %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit ]
  %i.ao = ashr i8 %i.an, 1
  %i.ap = sext i8 %i.ao to i64                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %i.as = sub nsw i64 15, %i.ap
  br label %bb.j

bb.i:                                             ; preds = %_ZN4absl12lts_202505124Cord15GetAppendBufferEmm.exit
  %i.at = load ptr, ptr %3, align 8, !tbaa !18    ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !25  ; 3 uses
  %i.az = zext i8 %i.ay to i32
  %i.ba = icmp ult i8 %i.ay, 67                   ; 2 uses
  %i.bb = icmp ult i8 %i.ay, -69                  ; 2 uses
  %..i.i.i.i.i.i = select i1 %i.bb, i32 6, i32 12
  %.sink6.i.i.i.i.i.i22 = select i1 %i.ba, i32 3, i32 %..i.i.i.i.i.i
  %i.bc = shl nuw nsw i32 %i.az, %.sink6.i.i.i.i.i.i22
  %i.bd = select i1 %i.bb, i32 -3725, i32 -753677
  %i.be = select i1 %i.ba, i32 -29, i32 %i.bd
  %narrow.i.i.i.i.i = add nsw i32 %i.bc, %i.be
  %i.bf = sext i32 %narrow.i.i.i.i.i to i64
  %i.bg = sub i64 %i.bf, %i.au
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bh = phi i64 [ %i.am, %bb.h ], [ %i.ak, %bb.i ]
  %.pn6.i.i = phi ptr [ %i.ar, %bb.h ], [ %i.aw, %bb.i ]
  %.pn4.i.i = phi i64 [ %i.as, %bb.h ], [ %i.bg, %bb.i ]
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.bh, i64 %.pn4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.c, ptr %4, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.bi, align 8, !tbaa !55
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.bj, align 8, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %bb.ah, %bb.j
  %.sroa.12.0 = phi i64 [ %.sroa.speculated.i.i, %bb.j ], [ %i.ee, %bb.ah ] ; 2 uses
  %.sroa.068.0 = phi ptr [ %.pn6.i.i, %bb.j ], [ %i.ed, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bk = load ptr, ptr %0, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !41

.noexc:                                           ; preds = %bb.l
  br i1 %i.bn, label %bb.m, label %.thread

.thread:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.loopexit87

bb.m:                                             ; preds = %.noexc
  %i.bo = load i32, ptr %i.b, align 4, !tbaa !6   ; 4 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.l, label %bb.n, !llvm.loop !42

bb.n:                                             ; preds = %bb.m
  %i.bq = load i32, ptr %i.d, align 4, !tbaa !6   ; 2 uses
  %i.br = icmp sgt i32 %i.bo, %i.bq
  br i1 %i.br, label %bb.o, label %.thread122

.thread122:                                       ; preds = %bb.n
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.bt = sub nsw i32 %i.bo, %i.bq
  %i.bu = load ptr, ptr %0, align 8, !tbaa !31
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  invoke void %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bt)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !41

bb.p:                                             ; preds = %bb.o
  %i.bx = load i32, ptr %i.d, align 4, !tbaa !6   ; 2 uses
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bz = icmp eq i32 %i.bx, 0
  br i1 %i.bz, label %.loopexit87, label %bb.aa

.loopexit87:                                      ; preds = %bb.p, %.thread
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !17  ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !34
  store i8 1, ptr %3, align 8, !tbaa !18
  %i.cb = load i8, ptr %5, align 8, !tbaa !18     ; 3 uses
  %i.cc = trunc i8 %i.cb to i1
  br i1 %i.cc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit87
  %i.cd = ashr i8 %i.cb, 1
  %i.ce = sext i8 %i.cd to i64
  br label %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i

bb.r:                                             ; preds = %.loopexit87
  %i.cf = load ptr, ptr %5, align 8               ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !24
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = trunc i64 %i.ch to i8
  br label %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i

_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i: ; preds = %bb.r, %bb.q
  %i.cj = phi i8 [ %i.cb, %bb.q ], [ %i.ci, %bb.r ] ; 2 uses
  %i.ck = phi i64 [ %i.ce, %bb.q ], [ %i.cg, %bb.r ]
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit, label %bb.s, !prof !35

bb.s:                                             ; preds = %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i
  %i.cm = load i8, ptr %i.ca, align 1, !tbaa !18
  %i.cn = trunc i8 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cp = load ptr, ptr %i.co, align 8            ; 4 uses
  %i.cq = icmp ne ptr %i.cp, null
  %.not6.i.i = select i1 %i.cn, i1 %i.cq, i1 false
  br i1 %.not6.i.i, label %bb.t, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !24
  %.not.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i, label %bb.u, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i, !prof !35

bb.u:                                             ; preds = %bb.t
  %i.cs = load i64, ptr %i.ca, align 8, !tbaa !18
  %i.ct = add nsw i64 %i.cs, -1                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i, label %bb.v, !prof !36

bb.v:                                             ; preds = %bb.u
  %i.cu = inttoptr i64 %i.ct to ptr
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.cu)
          to label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i unwind label %bb.z

_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i: ; preds = %bb.v, %bb.u
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cw = atomicrmw add ptr %i.cv, i32 -2 acq_rel, align 4
  %.not.i4.i.i = icmp eq i32 %i.cw, 2
  br i1 %.not.i4.i.i, label %bb.w, label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i, !prof !35

bb.w:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.cp)
          to label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i unwind label %bb.z

_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i: ; preds = %bb.w, %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  %.pre.i = load i8, ptr %5, align 8, !tbaa !18
  br label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i

_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i, %bb.t, %bb.s
  %i.cx = phi i8 [ %i.cj, %bb.s ], [ %i.cj, %bb.t ], [ %.pre.i, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i ] ; 2 uses
  %i.cy = trunc i8 %i.cx to i1
  br i1 %i.cy, label %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i, label %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i

_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i: ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.da = ashr i8 %i.cx, 1
  %i.db = sext i8 %i.da to i64
  store i8 1, ptr %5, align 8, !tbaa !18
  br label %bb.y

_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i
  %i.dc = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  store i8 1, ptr %5, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.dc, null
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  invoke void @_ZN4absl12lts_202505124Cord9InlineRep10AppendTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull %i.dc, i32 noundef 2)
          to label %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit unwind label %bb.z

bb.y:                                             ; preds = %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i
  %.sroa.5.08.i = phi ptr [ %i.cz, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i ], [ null, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  %.sroa.0.07.i = phi i64 [ %i.db, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i ], [ 0, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  invoke void @_ZN4absl12lts_202505124Cord13AppendPreciseESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 %.sroa.0.07.i, ptr %.sroa.5.08.i, i32 noundef 2)
          to label %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit unwind label %bb.z

_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit: ; preds = %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i, %bb.x, %bb.y
  %i.dd = load i8, ptr %5, align 8, !tbaa !18
  %i.de = trunc i8 %i.dd to i1
  br i1 %i.de, label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit53, label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit53.sink.split

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit58.a

bb.aa:                                            ; preds = %.thread122, %bb.p
  %.in = phi i32 [ %i.bo, %.thread122 ], [ %i.bx, %bb.p ]
  %i.dg = phi ptr [ %i.bs, %.thread122 ], [ %i.by, %bb.p ] ; 2 uses
  %i.dh = sext i32 %.in to i64                    ; 3 uses
  %i.di = icmp eq i64 %.sroa.12.0, 0
  br i1 %i.di, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dj = invoke fastcc { ptr, i64 } @"_ZZN6google8protobuf2io19ZeroCopyInputStream8ReadCordEPN4absl12lts_202505124CordEiENK3$_1clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.dk = extractvalue { ptr, i64 } %i.dj, 0
  %i.dl = extractvalue { ptr, i64 } %i.dj, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.sroa.12.1 = phi i64 [ %i.dl, %bb.ac ], [ %.sroa.12.0, %bb.aa ] ; 3 uses
  %.sroa.068.1 = phi ptr [ %i.dk, %bb.ac ], [ %.sroa.068.0, %bb.aa ] ; 2 uses
  %i.dm = icmp ult i64 %.sroa.12.1, %i.dh
  br i1 %i.dm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ad, %bb.ag
  %.sroa.0.095 = phi ptr [ %i.dn, %bb.ag ], [ %i.dg, %bb.ad ] ; 2 uses
  %.sroa.10.094 = phi i64 [ %i.do, %bb.ag ], [ %i.dh, %bb.ad ]
  %.sroa.068.293 = phi ptr [ %i.ea, %bb.ag ], [ %.sroa.068.1, %bb.ad ]
  %.sroa.12.292 = phi i64 [ %i.eb, %bb.ag ], [ %.sroa.12.1, %bb.ad ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.068.293, ptr align 1 %.sroa.0.095, i64 %.sroa.12.292, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.095, i64 %.sroa.12.292 ; 2 uses
  %i.do = sub nuw i64 %.sroa.10.094, %.sroa.12.292 ; 3 uses
  %i.dp = load i32, ptr %i.d, align 4, !tbaa !6
  %i.dq = trunc i64 %.sroa.12.292 to i32
  %i.dr = sub i32 %i.dp, %i.dq
  store i32 %i.dr, ptr %i.d, align 4, !tbaa !6
  %i.ds = load i8, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.dt = trunc i8 %i.ds to i1
  br i1 %i.dt, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph
  %.tr.i.i.i = trunc i64 %.sroa.12.292 to i8
  %i.du = shl i8 %.tr.i.i.i, 1
  %i.dv = add i8 %i.ds, %i.du
  store i8 %i.dv, ptr %3, align 8, !tbaa !18
  br label %"_ZZN6google8protobuf2io19ZeroCopyInputStream8ReadCordEPN4absl12lts_202505124CordEiENK3$_2clERNS4_4SpanIcEERNS8_IKcEEm.exit"

bb.af:                                            ; preds = %.lr.ph
  %i.dw = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !24
  %i.dy = add i64 %i.dx, %.sroa.12.292
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !24
  br label %"_ZZN6google8protobuf2io19ZeroCopyInputStream8ReadCordEPN4absl12lts_202505124CordEiENK3$_2clERNS4_4SpanIcEERNS8_IKcEEm.exit"

"_ZZN6google8protobuf2io19ZeroCopyInputStream8ReadCordEPN4absl12lts_202505124CordEiENK3$_2clERNS4_4SpanIcEERNS8_IKcEEm.exit": ; preds = %bb.af, %bb.ae
  %i.dz = invoke fastcc { ptr, i64 } @"_ZZN6google8protobuf2io19ZeroCopyInputStream8ReadCordEPN4absl12lts_202505124CordEiENK3$_1clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ag:                                            ; preds = %"_ZZN6google8protobuf2io19ZeroCopyInputStream8ReadCordEPN4absl12lts_202505124CordEiENK3$_2clERNS4_4SpanIcEERNS8_IKcEEm.exit"
  %i.ea = extractvalue { ptr, i64 } %i.dz, 0      ; 2 uses
  %i.eb = extractvalue { ptr, i64 } %i.dz, 1      ; 3 uses
  %i.ec = icmp ugt i64 %i.do, %i.eb
  br i1 %i.ec, label %.lr.ph, label %._crit_edge, !llvm.loop !43

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZZN6google8protobuf2io19ZeroCopyInputStream8ReadCordEPN4absl12lts_202505124CordEiENK3$_2clERNS4_4SpanIcEERNS8_IKcEEm.exit", %bb.l, %bb.o, %bb.ab
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.ag, %bb.ad
  %.sroa.12.2.lcssa = phi i64 [ %.sroa.12.1, %bb.ad ], [ %i.eb, %bb.ag ]
  %.sroa.068.2.lcssa = phi ptr [ %.sroa.068.1, %bb.ad ], [ %i.ea, %bb.ag ] ; 2 uses
  %.sroa.10.0.lcssa = phi i64 [ %i.dh, %bb.ad ], [ %i.do, %bb.ag ] ; 6 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.dg, %bb.ad ], [ %i.dn, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.068.2.lcssa, ptr align 1 %.sroa.0.0.lcssa, i64 %.sroa.10.0.lcssa, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.068.2.lcssa, i64 %.sroa.10.0.lcssa
  %i.ee = sub nuw i64 %.sroa.12.2.lcssa, %.sroa.10.0.lcssa
  %i.ef = load i32, ptr %i.d, align 4, !tbaa !6
  %i.eg = trunc i64 %.sroa.10.0.lcssa to i32
  %i.eh = sub i32 %i.ef, %i.eg                    ; 2 uses
  store i32 %i.eh, ptr %i.d, align 4, !tbaa !6
  %i.ei = load i8, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.ej = trunc i8 %i.ei to i1
  br i1 %i.ej, label %.split, label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit

.split:                                           ; preds = %._crit_edge
  %.tr.i.i.i28 = trunc i64 %.sroa.10.0.lcssa to i8
  %i.ek = shl i8 %.tr.i.i.i28, 1
  %i.el = add i8 %i.ei, %i.ek
  store i8 %i.el, ptr %3, align 8, !tbaa !18
  br label %bb.ah

_ZN4absl12lts_2025051210CordBufferD2Ev.exit:      ; preds = %._crit_edge
  %i.em = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !24
  %i.eo = add i64 %i.en, %.sroa.10.0.lcssa
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !24
  br label %bb.ah

bb.ah:                                            ; preds = %.split, %_ZN4absl12lts_2025051210CordBufferD2Ev.exit
  %i.ep = icmp sgt i32 %i.eh, 0
  br i1 %i.ep, label %bb.k, label %bb.ai, !llvm.loop !44

bb.ai:                                            ; preds = %bb.ah
  %i.eq = load ptr, ptr %i.c, align 8, !tbaa !17  ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !34
  store i8 1, ptr %3, align 8, !tbaa !18
  %i.er = load i8, ptr %6, align 8, !tbaa !18     ; 3 uses
  %i.es = trunc i8 %i.er to i1
  br i1 %i.es, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.et = ashr i8 %i.er, 1
  %i.eu = sext i8 %i.et to i64
  br label %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i30

bb.ak:                                            ; preds = %bb.ai
  %i.ev = load ptr, ptr %6, align 8               ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !24
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = trunc i64 %i.ex to i8
  br label %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i30

_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i30: ; preds = %bb.ak, %bb.aj
  %i.ez = phi i8 [ %i.er, %bb.aj ], [ %i.ey, %bb.ak ] ; 2 uses
  %i.fa = phi i64 [ %i.eu, %bb.aj ], [ %i.ew, %bb.ak ]
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit48, label %bb.al, !prof !35

bb.al:                                            ; preds = %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i30
  %i.fc = load i8, ptr %i.eq, align 1, !tbaa !18
  %i.fd = trunc i8 %i.fc to i1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8            ; 4 uses
  %i.fg = icmp ne ptr %i.ff, null
  %.not6.i.i31 = select i1 %i.fd, i1 %i.fg, i1 false
  br i1 %.not6.i.i31, label %bb.am, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i32

bb.am:                                            ; preds = %bb.al
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !24
  %.not.i.i38 = icmp eq i64 %i.fh, 0
  br i1 %.not.i.i38, label %bb.an, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i32, !prof !35

bb.an:                                            ; preds = %bb.am
  %i.fi = load i64, ptr %i.eq, align 8, !tbaa !18
  %i.fj = add nsw i64 %i.fi, -1                   ; 2 uses
  %.not.i.i.i39 = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i.i39, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i40, label %bb.ao, !prof !36

bb.ao:                                            ; preds = %bb.an
  %i.fk = inttoptr i64 %i.fj to ptr
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.fk)
          to label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i40 unwind label %bb.as

_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i40: ; preds = %bb.ao, %bb.an
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fm = atomicrmw add ptr %i.fl, i32 -2 acq_rel, align 4
  %.not.i4.i.i41 = icmp eq i32 %i.fm, 2
  br i1 %.not.i4.i.i41, label %bb.ap, label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i42, !prof !35

bb.ap:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i40
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.ff)
          to label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i42 unwind label %bb.as

_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i42: ; preds = %bb.ap, %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i8 0, i64 16, i1 false)
  %.pre.i43 = load i8, ptr %6, align 8, !tbaa !18
  br label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i32

_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i32: ; preds = %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i42, %bb.am, %bb.al
  %i.fn = phi i8 [ %i.ez, %bb.al ], [ %i.ez, %bb.am ], [ %.pre.i43, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i42 ] ; 2 uses
  %i.fo = trunc i8 %i.fn to i1
  br i1 %i.fo, label %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i37, label %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i33

_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i37: ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i32
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.fq = ashr i8 %i.fn, 1
  %i.fr = sext i8 %i.fq to i64
  store i8 1, ptr %6, align 8, !tbaa !18
  br label %bb.ar

_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i33: ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i32
  %i.fs = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  store i8 1, ptr %6, align 8, !tbaa !18
  %.not.i34 = icmp eq ptr %i.fs, null
  br i1 %.not.i34, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i33
  invoke void @_ZN4absl12lts_202505124Cord9InlineRep10AppendTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef nonnull %i.fs, i32 noundef 2)
          to label %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit48 unwind label %bb.as

bb.ar:                                            ; preds = %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i33, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i37
  %.sroa.5.08.i35 = phi ptr [ %i.fp, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i37 ], [ null, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i33 ]
  %.sroa.0.07.i36 = phi i64 [ %i.fr, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i37 ], [ 0, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i33 ]
  invoke void @_ZN4absl12lts_202505124Cord13AppendPreciseESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i64 %.sroa.0.07.i36, ptr %.sroa.5.08.i35, i32 noundef 2)
          to label %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit48 unwind label %bb.as

_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit48: ; preds = %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i30, %bb.aq, %bb.ar
  %i.ft = load i8, ptr %6, align 8, !tbaa !18
  %i.fu = trunc i8 %i.ft to i1
  br i1 %i.fu, label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit53, label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit53.sink.split

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit58.a

_ZN4absl12lts_2025051210CordBufferD2Ev.exit53.sink.split: ; preds = %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit48, %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit
  %.sink142 = phi ptr [ %5, %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit ], [ %6, %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit48 ]
  %.212.ph = phi i1 [ false, %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit ], [ true, %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit48 ]
  %i.fw = load ptr, ptr %.sink142, align 8, !tbaa !18 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %i.fy = load i8, ptr %i.fx, align 4, !tbaa !25  ; 3 uses
  %i.fz = zext i8 %i.fy to i32
  %i.ga = icmp ult i8 %i.fy, 67                   ; 2 uses
  %i.gb = icmp ult i8 %i.fy, -69                  ; 2 uses
  %..i.i.i = select i1 %i.gb, i32 6, i32 12
  %.7.i.i.i = select i1 %i.gb, i32 -3712, i32 -753664
  %.sink6.i.i.i = select i1 %i.ga, i32 3, i32 %..i.i.i
  %.sink5.i.i.i = select i1 %i.ga, i32 -16, i32 %.7.i.i.i
  %i.gc = shl nuw nsw i32 %i.fz, %.sink6.i.i.i
  %i.gd = add nsw i32 %i.gc, %.sink5.i.i.i
  %i.ge = sext i32 %i.gd to i64
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ge) #16
  br label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit53

_ZN4absl12lts_2025051210CordBufferD2Ev.exit53:    ; preds = %_ZN4absl12lts_2025051210CordBufferD2Ev.exit53.sink.split, %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit, %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit48
  %.212 = phi i1 [ true, %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit48 ], [ false, %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit ], [ %.212.ph, %_ZN4absl12lts_2025051210CordBufferD2Ev.exit53.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.gf = load i8, ptr %3, align 8, !tbaa !18
  %i.gg = trunc i8 %i.gf to i1
  br i1 %i.gg, label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit58, label %bb.at

bb.at:                                            ; preds = %_ZN4absl12lts_2025051210CordBufferD2Ev.exit53
  %i.gh = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  %i.gj = load i8, ptr %i.gi, align 4, !tbaa !25  ; 3 uses
  %i.gk = zext i8 %i.gj to i32
  %i.gl = icmp ult i8 %i.gj, 67                   ; 2 uses
  %i.gm = icmp ult i8 %i.gj, -69                  ; 2 uses
  %..i.i.i54 = select i1 %i.gm, i32 6, i32 12
  %.7.i.i.i55 = select i1 %i.gm, i32 -3712, i32 -753664
  %.sink6.i.i.i56 = select i1 %i.gl, i32 3, i32 %..i.i.i54
  %.sink5.i.i.i57 = select i1 %i.gl, i32 -16, i32 %.7.i.i.i55
  %i.gn = shl nuw nsw i32 %i.gk, %.sink6.i.i.i56
  %i.go = add nsw i32 %i.gn, %.sink5.i.i.i57
  %i.gp = sext i32 %i.go to i64
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gp) #16
  br label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit58

_ZN4absl12lts_2025051210CordBufferD2Ev.exit58:    ; preds = %_ZN4absl12lts_2025051210CordBufferD2Ev.exit53, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.au

_ZN4absl12lts_2025051210CordBufferD2Ev.exit58.a:  ; preds = %bb.as, %bb.z
  %.sink = phi ptr [ %5, %bb.z ], [ %6, %bb.as ]
  %.pn14.ph = phi { ptr, i32 } [ %i.df, %bb.z ], [ %i.fv, %bb.as ]
  call void @_ZN4absl12lts_2025051210CordBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.sink) #16
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN4absl12lts_2025051210CordBufferD2Ev.exit58.a
  %.pn14 = phi { ptr, i32 } [ %.pn14.ph, %_ZN4absl12lts_2025051210CordBufferD2Ev.exit58.a ], [ %lpad.loopexit.split-lp153, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @_ZN4absl12lts_2025051210CordBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn14

bb.au:                                            ; preds = %bb.a, %_ZN4absl12lts_2025051210CordBufferD2Ev.exit58
  %.3 = phi i1 [ %.212, %_ZN4absl12lts_2025051210CordBufferD2Ev.exit58 ], [ true, %bb.a ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051210CordBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !57 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !18
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i8, ptr %i.d, align 4, !tbaa !25    ; 3 uses
  %i.f = zext i8 %i.e to i32
  %i.g = icmp ult i8 %i.e, 67                     ; 2 uses
  %i.h = icmp ult i8 %i.e, -69                    ; 2 uses
  %..i.i = select i1 %i.h, i32 6, i32 12
  %.7.i.i = select i1 %i.h, i32 -3712, i32 -753664
  %.sink6.i.i = select i1 %i.g, i32 3, i32 %..i.i
  %.sink5.i.i = select i1 %i.g, i32 -16, i32 %.7.i.i
  %i.i = shl nuw nsw i32 %i.f, %.sink6.i.i
  %i.j = add nsw i32 %i.i, %.sink5.i.i
  %i.k = sext i32 %i.j to i64
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.k) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc { ptr, i64 } @"_ZZN6google8protobuf2io19ZeroCopyInputStream8ReadCordEPN4absl12lts_202505124CordEiENK3$_1clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !60 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::CordBuffer", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !62, !nonnull !63, !align !64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65, !nonnull !63, !align !64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !34
  store i8 1, ptr %i.d, align 8, !tbaa !18
  %i.e = load i8, ptr %1, align 8, !tbaa !18      ; 3 uses
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = ashr i8 %i.e, 1
  %i.h = sext i8 %i.g to i64
  br label %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = trunc i64 %i.k to i8
  br label %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i

_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i: ; preds = %bb.c, %bb.b
  %i.m = phi i8 [ %i.e, %bb.b ], [ %i.l, %bb.c ]  ; 2 uses
  %i.n = phi i64 [ %i.h, %bb.b ], [ %i.j, %bb.c ]
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit, label %bb.d, !prof !35

bb.d:                                             ; preds = %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i
  %i.p = load i8, ptr %i.b, align 1, !tbaa !18
  %i.q = trunc i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 4 uses
  %i.t = icmp ne ptr %i.s, null
  %.not6.i.i = select i1 %i.q, i1 %i.t, i1 false
  br i1 %.not6.i.i, label %bb.e, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8, !tbaa !24
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %bb.f, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i, !prof !35

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.b, align 8, !tbaa !18
  %i.w = add nsw i64 %i.v, -1                     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i, label %bb.g, !prof !36

bb.g:                                             ; preds = %bb.f
  %i.x = inttoptr i64 %i.w to ptr
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.x)
          to label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i unwind label %bb.p

_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i: ; preds = %bb.g, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -2 acq_rel, align 4
  %.not.i4.i.i = icmp eq i32 %i.z, 2
  br i1 %.not.i4.i.i, label %bb.h, label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i, !prof !35

bb.h:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.s)
          to label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i unwind label %bb.p

_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i: ; preds = %bb.h, %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.pre.i = load i8, ptr %1, align 8, !tbaa !18
  br label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i

_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i, %bb.e, %bb.d
  %i.aa = phi i8 [ %i.m, %bb.d ], [ %i.m, %bb.e ], [ %.pre.i, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i ] ; 2 uses
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i, label %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i

_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i: ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ad = ashr i8 %i.aa, 1
  %i.ae = sext i8 %i.ad to i64
  store i8 1, ptr %1, align 8, !tbaa !18
  br label %bb.j

_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i
  %i.af = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  store i8 1, ptr %1, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  invoke void @_ZN4absl12lts_202505124Cord9InlineRep10AppendTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.af, i32 noundef 2)
          to label %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit unwind label %bb.p

bb.j:                                             ; preds = %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i
  %.sroa.5.08.i = phi ptr [ %i.ac, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i ], [ null, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  %.sroa.0.07.i = phi i64 [ %i.ae, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i ], [ 0, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  invoke void @_ZN4absl12lts_202505124Cord13AppendPreciseESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 %.sroa.0.07.i, ptr %.sroa.5.08.i, i32 noundef 2)
          to label %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit unwind label %bb.p

_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit: ; preds = %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i, %bb.i, %bb.j
  %i.ag = load i8, ptr %1, align 8, !tbaa !18
  %i.ah = trunc i8 %i.ag to i1
  br i1 %i.ah, label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit
  %i.ai = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !25  ; 3 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = icmp ult i8 %i.ak, 67                   ; 2 uses
  %i.an = icmp ult i8 %i.ak, -69                  ; 2 uses
  %..i.i.i = select i1 %i.an, i32 6, i32 12
  %.7.i.i.i = select i1 %i.an, i32 -3712, i32 -753664
  %.sink6.i.i.i = select i1 %i.am, i32 3, i32 %..i.i.i
  %.sink5.i.i.i = select i1 %i.am, i32 -16, i32 %.7.i.i.i
  %i.ao = shl nuw nsw i32 %i.al, %.sink6.i.i.i
  %i.ap = add nsw i32 %i.ao, %.sink5.i.i.i
  %i.aq = sext i32 %i.ap to i64
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.aq) #16
  br label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit

_ZN4absl12lts_2025051210CordBufferD2Ev.exit:      ; preds = %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !66, !nonnull !63, !align !67
  %i.at = load i32, ptr %i.as, align 4, !tbaa !6  ; 3 uses
  %i.au = icmp ugt i32 %i.at, 15
  br i1 %i.au, label %bb.l, label %_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm.exit

bb.l:                                             ; preds = %_ZN4absl12lts_2025051210CordBufferD2Ev.exit
  %i.av = icmp ult i32 %i.at, 20
  %i.aw = call i32 @llvm.umin.i32(i32 %i.at, i32 4083)
  %narrow = add nuw nsw i32 %i.aw, 13
  %narrow18 = select i1 %i.av, i32 32, i32 %narrow ; 2 uses
  %.0.i.i.i = zext nneg i32 %narrow18 to i64
  %i.ax = icmp samesign ult i32 %narrow18, 513    ; 2 uses
  %.neg.i.i.i = select i1 %i.ax, i64 -8, i64 -64
  %i.ay = select i1 %i.ax, i64 8, i64 64
  %i.az = add nsw i64 %.0.i.i.i, -1
  %i.ba = add nuw nsw i64 %i.az, %i.ay
  %i.bb = and i64 %i.ba, %.neg.i.i.i              ; 3 uses
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #17, !noalias !68 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 2, ptr %i.bd, align 8, !noalias !68
  %i.be = icmp samesign ult i64 %i.bb, 513        ; 2 uses
  %.sink6.i.i.i.i.i = select i1 %i.be, i64 3, i64 6
  %.sink5.i.i.i.i.i = select i1 %i.be, i64 2, i64 58
  %i.bf = lshr i64 %i.bb, %.sink6.i.i.i.i.i
  %i.bg = add nuw nsw i64 %i.bf, %.sink5.i.i.i.i.i
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i8 %i.bh, ptr %i.bi, align 4, !tbaa !25, !noalias !68
  store i64 0, ptr %i.bc, align 8, !tbaa !24, !noalias !68
  br label %_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm.exit

_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm.exit: ; preds = %_ZN4absl12lts_2025051210CordBufferD2Ev.exit, %bb.l
  %.sroa.0.0 = phi ptr [ %i.bc, %bb.l ], [ inttoptr (i64 1 to ptr), %_ZN4absl12lts_2025051210CordBufferD2Ev.exit ]
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !65, !nonnull !63, !align !64 ; 4 uses
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !18
  %i.bl = trunc i8 %i.bk to i1
  br i1 %i.bl, label %_ZN4absl12lts_2025051210CordBufferaSEOS1_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2025051210CordBuffer22CreateWithDefaultLimitEm.exit
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !18 ; 2 uses
end_hunk_0
