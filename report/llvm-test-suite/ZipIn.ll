Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ZipIn?download=true
inline.NumInlined: 215
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8NArchive4NZip10CInArchive9ReadExtraEjRNS0_11CExtraBlockERyS4_S4_Rj:bb.a
  %lpad.loopexit102 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp101:                            ; preds = %.invoke128
  %lpad.loopexit.split-lp103 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.e
  %i.am = load i64, ptr %3, align 8, !tbaa !41
  %i.an = icmp eq i64 %i.am, 4294967295
  br i1 %i.an, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ao = icmp samesign ult i32 %spec.select, 8
  br i1 %i.ao, label %bb.ag, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  %i.ap = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.l, i32 noundef 8, ptr noundef nonnull %i.k)
          to label %.noexc64 unwind label %.loopexit100

.noexc64:                                         ; preds = %bb.h
  %.not.i.i.i62 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i62, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i63, label %.invoke128

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i63: ; preds = %.noexc64
  %i.aq = load i32, ptr %i.k, align 4, !tbaa !4
  %i.ar = icmp eq i32 %i.aq, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  br i1 %i.ar, label %bb.i, label %.invoke128

bb.i:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i63
  %i.as = load i64, ptr %i.l, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  store i64 %i.as, ptr %3, align 8, !tbaa !41
  %i.at = add i32 %.044, -12
  %i.au = add nsw i32 %spec.select, -8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.145 = phi i32 [ %i.at, %bb.i ], [ %i.aj, %bb.f ] ; 3 uses
  %.1 = phi i32 [ %i.au, %bb.i ], [ %spec.select, %bb.f ] ; 3 uses
  %i.av = load i64, ptr %4, align 8, !tbaa !41
  %i.aw = icmp eq i64 %i.av, 4294967295
  br i1 %i.aw, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ax = icmp samesign ult i32 %.1, 8
  br i1 %i.ax, label %bb.ag, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %i.ay = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.j, i32 noundef 8, ptr noundef nonnull %i.i)
          to label %.noexc69 unwind label %.loopexit100

.noexc69:                                         ; preds = %bb.l
  %.not.i.i.i67 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i67, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i68, label %.invoke128

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i68: ; preds = %.noexc69
  %i.az = load i32, ptr %i.i, align 4, !tbaa !4
  %i.ba = icmp eq i32 %i.az, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  br i1 %i.ba, label %bb.m, label %.invoke128

bb.m:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i68
  %i.bb = load i64, ptr %i.j, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  store i64 %i.bb, ptr %4, align 8, !tbaa !41
  %i.bc = add i32 %.145, -8
  %i.bd = add nsw i32 %.1, -8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.246 = phi i32 [ %i.bc, %bb.m ], [ %.145, %bb.j ] ; 3 uses
  %.2 = phi i32 [ %i.bd, %bb.m ], [ %.1, %bb.j ]  ; 3 uses
  %i.be = load i64, ptr %5, align 8, !tbaa !41
  %i.bf = icmp eq i64 %i.be, 4294967295
  br i1 %i.bf, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp samesign ult i32 %.2, 8
  br i1 %i.bg, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.bh = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.h, i32 noundef 8, ptr noundef nonnull %i.g)
          to label %.noexc75 unwind label %.loopexit100

.noexc75:                                         ; preds = %bb.p
  %.not.i.i.i73 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i73, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i74, label %.invoke128

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i74: ; preds = %.noexc75
  %i.bi = load i32, ptr %i.g, align 4, !tbaa !4
  %i.bj = icmp eq i32 %i.bi, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br i1 %i.bj, label %bb.q, label %.invoke128

bb.q:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i74
  %i.bk = load i64, ptr %i.h, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  store i64 %i.bk, ptr %5, align 8, !tbaa !41
  %i.bl = add i32 %.246, -8
  %i.bm = add nsw i32 %.2, -8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.347 = phi i32 [ %i.bl, %bb.q ], [ %.246, %bb.n ] ; 3 uses
  %.3 = phi i32 [ %i.bm, %bb.q ], [ %.2, %bb.n ]  ; 3 uses
  %i.bn = load i32, ptr %6, align 4, !tbaa !4
  %i.bo = icmp eq i32 %i.bn, 65535
  br i1 %i.bo, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bp = icmp samesign ult i32 %.3, 4
  br i1 %i.bp, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.bq = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.f, i32 noundef 4, ptr noundef nonnull %i.e)
          to label %.noexc81 unwind label %.loopexit100

.noexc81:                                         ; preds = %bb.t
  %.not.i.i.i79 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i79, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i80, label %.invoke128

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i80: ; preds = %.noexc81
  %i.br = load i32, ptr %i.e, align 4, !tbaa !4
  %i.bs = icmp eq i32 %i.br, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br i1 %i.bs, label %bb.u, label %.invoke128

bb.u:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i80
  %i.bt = load i32, ptr %i.f, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  store i32 %i.bt, ptr %6, align 4, !tbaa !4
  %i.bu = add i32 %.347, -4
  %i.bv = add nsw i32 %.3, -4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.448 = phi i32 [ %i.bu, %bb.u ], [ %.347, %bb.r ] ; 2 uses
  %.4 = phi i32 [ %i.bv, %bb.u ], [ %.3, %bb.r ]  ; 3 uses
  %.not = icmp eq i32 %.4, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v, %bb.ad
  %.0123 = phi i32 [ %i.cy, %bb.ad ], [ 0, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 1, ptr %i.a, align 8, !tbaa !35
  %i.bw = load i8, ptr %i.s, align 8, !tbaa !8, !range !44, !noundef !45
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %.lr.ph
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !46  ; 2 uses
  %i.bz = load ptr, ptr %i.t, align 8, !tbaa !47  ; 5 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = and i64 %i.cc, 4294967295
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %.preheader.i.i.preheader, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.ce = load i8, ptr %i.bz, align 1, !tbaa !36
  store i8 %i.ce, ptr %i.d, align 1, !tbaa !36
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store ptr %i.cf, ptr %i.t, align 8, !tbaa !47
  br label %_ZN9CInBuffer9ReadBytesEPhj.exit.i

.preheader.i.i.preheader:                         ; preds = %bb.w
  %.not22.i.i = icmp ult ptr %i.bz, %i.by
  br i1 %.not22.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.preheader.i.i.preheader
  %i.cg = invoke noundef zeroext i1 @_ZN9CInBuffer9ReadBlockEv(ptr noundef nonnull align 8 dereferenceable(45) %i.t)
          to label %.noexc.i unwind label %bb.z

.noexc.i:                                         ; preds = %bb.x
  br i1 %i.cg, label %._crit_edge34.i.i, label %_ZN9CInBuffer9ReadBytesEPhj.exit.i

._crit_edge34.i.i:                                ; preds = %.noexc.i
  %.pre35.i.i = load ptr, ptr %i.t, align 8, !tbaa !47
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge34.i.i, %.preheader.i.i.preheader
  %i.ch = phi ptr [ %.pre35.i.i, %._crit_edge34.i.i ], [ %i.bz, %.preheader.i.i.preheader ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store ptr %i.ci, ptr %i.t, align 8, !tbaa !47
  %i.cj = load i8, ptr %i.ch, align 1, !tbaa !36
  store i8 %i.cj, ptr %i.d, align 1, !tbaa !36
  br label %_ZN9CInBuffer9ReadBytesEPhj.exit.i, !llvm.loop !51

bb.z:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI18CInBufferException     ; 3 uses
  %i.cl = extractvalue { ptr, i32 } %i.ck, 1
  %i.cm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI18CInBufferException) #19
  %i.cn = icmp eq i32 %i.cl, %i.cm
  br i1 %i.cn, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.co = extractvalue { ptr, i32 } %i.ck, 0
  %i.cp = call ptr @__cxa_begin_catch(ptr %i.co) #19
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !52
  invoke void @__cxa_end_catch()
          to label %.noexc86 unwind label %.loopexit94

bb.ab:                                            ; preds = %.lr.ph
  %i.cr = load ptr, ptr %0, align 8, !tbaa !26
  %i.cs = invoke noundef i32 @_Z10ReadStreamP19ISequentialInStreamPvPm(ptr noundef %i.cr, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
          to label %.noexc92 unwind label %.loopexit94

.noexc92:                                         ; preds = %bb.ab
  %.pre.pre.i = load i64, ptr %i.a, align 8, !tbaa !35
  br label %_ZN9CInBuffer9ReadBytesEPhj.exit.i

_ZN9CInBuffer9ReadBytesEPhj.exit.i:               ; preds = %.noexc.i, %bb.y, %.noexc92, %.lr.ph.i.i.preheader
  %.pre.i = phi i64 [ %.pre.pre.i, %.noexc92 ], [ 1, %.lr.ph.i.i.preheader ], [ 0, %.noexc.i ], [ 1, %bb.y ] ; 2 uses
  %.013.i = phi i32 [ %i.cs, %.noexc92 ], [ 0, %.lr.ph.i.i.preheader ], [ 0, %.noexc.i ], [ 0, %bb.y ]
  %i.ct = load i64, ptr %i.v, align 8, !tbaa !29
  %i.cu = add i64 %i.ct, %.pre.i
  store i64 %i.cu, ptr %i.v, align 8, !tbaa !29
  %i.cv = and i64 %.pre.i, 4294967295
  %i.cw = icmp ne i64 %i.cv, 1
  br label %.noexc86

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.body

.noexc86:                                         ; preds = %_ZN9CInBuffer9ReadBytesEPhj.exit.i, %bb.aa
  %.093 = phi i1 [ %i.cw, %_ZN9CInBuffer9ReadBytesEPhj.exit.i ], [ undef, %bb.aa ]
  %.0.i = phi i32 [ %.013.i, %_ZN9CInBuffer9ReadBytesEPhj.exit.i ], [ %i.cq, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not.i.i.i84 = icmp ne i32 %.0.i, 0            ; 2 uses
  %brmerge = select i1 %.not.i.i.i84, i1 true, i1 %.093
  br i1 %brmerge, label %.invoke130, label %bb.ad

.invoke130:                                       ; preds = %.noexc86
  %.mux = select i1 %.not.i.i.i84, i32 6, i32 0
  %i.cx = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 %.mux, ptr %i.cx, align 4, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
          to label %.cont131 unwind label %.loopexit.split-lp

.cont131:                                         ; preds = %.invoke130
  unreachable

bb.ad:                                            ; preds = %.noexc86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.cy = add nuw i32 %.0123, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.cy, %.4
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !75

.loopexit94:                                      ; preds = %bb.aa, %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke130
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.e
  invoke void @_ZN8NArchive4NZip10CInArchive10ReadBufferER7CBufferIhEj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i32 noundef %spec.select)
          to label %bb.af unwind label %.loopexit100

bb.af:                                            ; preds = %bb.ae
  %i.cz = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.loopexit unwind label %.loopexit100 ; 0 uses

.loopexit:                                        ; preds = %bb.ad, %bb.v, %bb.af
  %.549 = phi i32 [ %i.aj, %bb.af ], [ %.448, %bb.v ], [ %.448, %bb.ad ]
  %.5 = phi i32 [ %spec.select, %bb.af ], [ 0, %bb.v ], [ %.4, %bb.ad ]
  %i.da = sub i32 %.549, %.5
  br label %bb.ag

bb.ag:                                            ; preds = %bb.s, %bb.o, %bb.k, %bb.g, %.loopexit
  %.6 = phi i32 [ %i.da, %.loopexit ], [ %i.aj, %bb.g ], [ %.145, %bb.k ], [ %.246, %bb.o ], [ %.347, %bb.s ] ; 2 uses
  %i.db = phi i1 [ true, %.loopexit ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.o ], [ false, %bb.s ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.q, align 8, !tbaa !23
  %i.dc = load ptr, ptr %i.w, align 8, !tbaa !34  ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.dc) #18, !inline_history !43
  br label %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit

_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit:       ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br i1 %i.db, label %bb.b, label %bb.aj

.body:                                            ; preds = %.loopexit94, %.loopexit.split-lp, %.loopexit100, %.loopexit.split-lp101, %.loopexit95, %.loopexit.split-lp96, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.ac ], [ %lpad.loopexit.split-lp98, %.loopexit.split-lp96 ], [ %lpad.loopexit.split-lp103, %.loopexit.split-lp101 ], [ %lpad.loopexit97, %.loopexit95 ], [ %lpad.loopexit102, %.loopexit100 ], [ %lpad.loopexit, %.loopexit94 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.q, align 8, !tbaa !23
  %i.de = load ptr, ptr %i.w, align 8, !tbaa !34  ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit89, label %bb.ai

bb.ai:                                            ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.de) #18, !inline_history !43
  br label %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit89

_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit89:     ; preds = %.body, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn.pn

bb.aj:                                            ; preds = %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit, %bb.b
  %.7 = phi i32 [ %.6, %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit ], [ %.044, %bb.b ] ; 2 uses
  %i.dg = zext i32 %.7 to i64
  %.not.i = icmp eq i32 %.7, 0
  br i1 %.not.i, label %_ZN8NArchive4NZip10CInArchive4SkipEy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aj, %_ZN8NArchive4NZip10CInArchive8ReadByteEv.exit.i
  %.03.i = phi i64 [ %i.dm, %_ZN8NArchive4NZip10CInArchive8ReadByteEv.exit.i ], [ 0, %bb.aj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.dh = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull %i.b)
  %.not.i.i.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i.i.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i
  %i.di = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.di, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.di, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i.i: ; preds = %.lr.ph.i
  %i.dj = load i32, ptr %i.b, align 4, !tbaa !4
  %i.dk = icmp eq i32 %i.dj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br i1 %i.dk, label %_ZN8NArchive4NZip10CInArchive8ReadByteEv.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i.i
  %i.dl = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 0, ptr %i.dl, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive8ReadByteEv.exit.i:  ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.dm = add nuw nsw i64 %.03.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dm, %i.dg
  br i1 %exitcond.not.i, label %_ZN8NArchive4NZip10CInArchive4SkipEy.exit, label %.lr.ph.i, !llvm.loop !57

_ZN8NArchive4NZip10CInArchive4SkipEy.exit:        ; preds = %_ZN8NArchive4NZip10CInArchive8ReadByteEv.exit.i, %bb.aj
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  %i.b = load i16, ptr %1, align 8, !tbaa !73
  store i16 %i.b, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.g = load i64, ptr %i.f, align 8, !tbaa !33   ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN8NArchive4NZip14CExtraSubBlockC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #20
          to label %.noexc unwind label %bb.e     ; 3 uses

.noexc:                                           ; preds = %bb.b
  %i.i = load i64, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %.not10.i.i.i.i = icmp eq i64 %i.i, 0
  %.pr.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !34 ; 3 uses
  br i1 %.not10.i.i.i.i, label %thread-pre-split.i.i.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.j = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 %i.g)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %.pr.i.i.i, i64 %i.j, i1 false)
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %bb.c, %.noexc
  %i.k = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.k, label %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pr.i.i.i) #18
  br label %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i

_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i:         ; preds = %bb.d, %thread-pre-split.i.i.i
  store ptr %i.h, ptr %i.e, align 8, !tbaa !34
  store i64 %i.g, ptr %i.d, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.n = load i64, ptr %i.f, align 8, !tbaa !33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %i.m, i64 %i.n, i1 false)
  br label %_ZN8NArchive4NZip14CExtraSubBlockC2ERKS1_.exit

_ZN8NArchive4NZip14CExtraSubBlockC2ERKS1_.exit:   ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i, %bb.a
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !78   ; 3 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.s
  store ptr %i.a, ptr %i.t, align 8, !tbaa !79
  %i.u = add nsw i32 %i.r, 1
  store i32 %i.u, ptr %i.q, align 4, !tbaa !78
  ret i32 %i.r

bb.e:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #18
  resume { ptr, i32 } %i.v
}

end_hunk_0
