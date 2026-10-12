Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E:bb.a

bb.h:                                             ; preds = %bb.e, %bb.j, %bb.k, %bb.f, %bb.g
  %.sroa.040.0 = phi i16 [ %i.am, %bb.f ], [ %i.az, %bb.k ], [ %i.ay, %bb.j ], [ %i.an, %bb.g ], [ %i.ad, %bb.e ]
  %.sroa.041.0 = phi i16 [ -2, %bb.f ], [ 1, %bb.k ], [ 2, %bb.j ], [ -1, %bb.g ], [ 0, %bb.e ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !57 ; 2 uses
  %i.aq = icmp ult i8 %i.ap, 60
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = zext nneg i8 %i.ap to i16
  %.neg70 = mul i16 %i.d, -256
  %.neg = ashr exact i16 %.neg70, 8
  %i.as = sext i8 %.sroa.01.1.extract.trunc to i16
  %i.at = add nsw i16 %.neg, %i.as
  %i.au = add nsw i16 %i.at, %.sroa.041.0
  %i.av = add nsw i16 %i.au, %i.ar                ; 9 uses
  %i.aw = icmp sgt i16 %i.av, -1
  br i1 %i.aw, label %bb.m, label %bb.l, !prof !58

bb.i:                                             ; preds = %bb.e
  %i.ax = icmp samesign ult i16 %i.ad, 120
  br i1 %i.ax, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = add nsw i16 %i.ad, -120
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.az = add nsw i16 %i.ad, -60
  br label %bb.h

bb.l:                                             ; preds = %bb.h
  %i.ba = icmp samesign ugt i16 %i.av, -61
  br i1 %i.ba, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.bb = icmp samesign ult i16 %i.av, 60
  br i1 %i.bb, label %bb.p, label %bb.q, !prof !58

bb.n:                                             ; preds = %bb.l
  %i.bc = add nsw i16 %i.av, 120
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.bd = add nsw i16 %i.av, 60
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.r, %bb.s, %bb.n, %bb.o
  %.sroa.042.0 = phi i16 [ %i.bc, %bb.n ], [ %i.bn, %bb.s ], [ %i.bm, %bb.r ], [ %i.bd, %bb.o ], [ %i.av, %bb.m ]
  %.sroa.043.0 = phi i8 [ -2, %bb.n ], [ 1, %bb.s ], [ 2, %bb.r ], [ -1, %bb.o ], [ 0, %bb.m ]
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bf = load i8, ptr %i.be, align 2, !noundef !57 ; 2 uses
  %i.bg = icmp ult i8 %i.bf, 24
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = sub nsw i8 %.sroa.01.2.extract.trunc, %i.i
  %i.bi = add nsw i8 %i.bh, %.sroa.043.0
  %i.bj = add nsw i8 %i.bi, %i.bf                 ; 13 uses
  %i.bk = icmp sgt i8 %i.bj, -1
  br i1 %i.bk, label %bb.u, label %bb.t, !prof !58

bb.q:                                             ; preds = %bb.m
  %i.bl = icmp samesign ult i16 %i.av, 120
  br i1 %i.bl, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = add nsw i16 %i.av, -120
  br label %bb.p

bb.s:                                             ; preds = %bb.q
  %i.bn = add nsw i16 %i.av, -60
  br label %bb.p

bb.t:                                             ; preds = %bb.p
  %i.bo = icmp samesign ugt i8 %i.bj, -25
  br i1 %i.bo, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.bp = icmp samesign ult i8 %i.bj, 24
  br i1 %i.bp, label %bb.z, label %bb.aa, !prof !58

bb.v:                                             ; preds = %bb.t
  %i.bq = icmp samesign ugt i8 %i.bj, -49
  br i1 %i.bq, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.br = add nsw i8 %i.bj, 24
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bs = add nsw i8 %i.bj, 72
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.bt = add nsw i8 %i.bj, 48
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %bb.ac, %bb.ae, %bb.ad, %bb.w, %bb.y, %bb.x
  %.sroa.044.0 = phi i8 [ %i.bs, %bb.x ], [ %i.cg, %bb.ac ], [ %i.ci, %bb.ae ], [ %i.ch, %bb.ad ], [ %i.br, %bb.w ], [ %i.bt, %bb.y ], [ %i.bj, %bb.u ]
  %.sroa.045.0 = phi i16 [ -3, %bb.x ], [ 1, %bb.ac ], [ 2, %bb.ae ], [ 3, %bb.ad ], [ -1, %bb.w ], [ -2, %bb.y ], [ 0, %bb.u ]
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !range !100, !noundef !57 ; 2 uses
  %i.bw = ashr i32 %i.bv, 10                      ; 6 uses
  %i.bx = trunc i32 %i.bv to i16
  %i.by = and i16 %i.bx, 511
  %i.bz = add nsw i16 %i.by, %.sroa.045.0         ; 5 uses
  %.sroa.037.0 = tail call i32 @llvm.abs.i32(i32 %i.bw, i1 true)
  %i.ca = mul i32 %.sroa.037.0, 33555415
  %i.cb = and i32 %i.ca, 100695055
  %i.cc = icmp samesign ult i32 %i.cb, 31745
  %.sroa.012.0 = select i1 %i.cc, i16 366, i16 365 ; 2 uses
  %i.cd = icmp sgt i16 %i.bz, %.sroa.012.0
  br i1 %i.cd, label %bb.af, label %bb.ag, !prof !60

bb.aa:                                            ; preds = %bb.u
  %i.ce = icmp samesign ult i8 %i.bj, 48
  br i1 %i.ce, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = icmp samesign ult i8 %i.bj, 72
  br i1 %i.cf, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cg = add nsw i8 %i.bj, -24
  br label %bb.z

bb.ad:                                            ; preds = %bb.ab
  %i.ch = add nsw i8 %i.bj, -72
  br label %bb.z

bb.ae:                                            ; preds = %bb.ab
  %i.ci = add nsw i8 %i.bj, -48
  br label %bb.z

bb.af:                                            ; preds = %bb.z
  %i.cj = sub nuw nsw i16 %i.bz, %.sroa.012.0
  %i.ck = add nsw i32 %i.bw, 1
  br label %bb.ai

bb.ag:                                            ; preds = %bb.z
  %i.cl = icmp slt i16 %i.bz, 1
  br i1 %i.cl, label %bb.ah, label %bb.ai, !prof !60

bb.ah:                                            ; preds = %bb.ag
  %i.cm = add nsw i32 %i.bw, -1                   ; 2 uses
  %i.cn = icmp slt i32 %i.bw, 1
  %i.co = sub nsw i32 1, %i.bw
  %.sroa.038.0 = select i1 %i.cn, i32 %i.co, i32 %i.cm
  %i.cp = mul i32 %.sroa.038.0, 33555415
  %i.cq = and i32 %i.cp, 100695055
  %i.cr = icmp samesign ult i32 %i.cq, 31745
  %.sroa.013.0 = select i1 %i.cr, i16 366, i16 365
  %i.cs = add nsw i16 %.sroa.013.0, %i.bz
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %.sroa.07.0 = phi i16 [ %i.cj, %bb.af ], [ %i.cs, %bb.ah ], [ %i.bz, %bb.ag ]
  %.sroa.02.0 = phi i32 [ %i.ck, %bb.af ], [ %i.cm, %bb.ah ], [ %i.bw, %bb.ag ]
  %.sroa.3.0.insert.ext.i = zext nneg i16 %.sroa.042.0 to i64
  %.sroa.2.0.insert.ext.i = zext nneg i16 %.sroa.040.0 to i64
  %i.ct = load i32, ptr %1, align 4, !noundef !57 ; 2 uses
  %i.cu = icmp ult i32 %i.ct, 1000000000
  tail call void @llvm.assume(i1 %i.cu)
  %.sroa.4.0.insert.ext.i = zext nneg i8 %.sroa.044.0 to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 48
  %.sroa.3.0.insert.shift.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i, 40
  %.sroa.3.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.3.0.insert.shift.i
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.2.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.insert.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.ct to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.c
  %.sroa.02.0.sink = phi i32 [ %.sroa.02.0, %bb.ai ], [ %i.ah, %bb.c ]
  %.sroa.07.0.sink = phi i16 [ %.sroa.07.0, %bb.ai ], [ %i.aj, %bb.c ]
  %.sroa.0.0.insert.insert.i.sink = phi i64 [ %.sroa.0.0.insert.insert.i, %bb.ai ], [ %.sroa.046.0.copyload, %bb.c ]
  store i32 %.sroa.02.0.sink, ptr %0, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %.sroa.07.0.sink, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.insert.insert.i.sink, ptr %i.cw, align 4
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4time16offset_date_time14OffsetDateTime7now_utc17h9389a0b5e004fd02E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i32 } @_ZN3std4time10SystemTime3now17h41032f879594e847E() ; 2 uses
  %i.d = extractvalue { i64, i32 } %i.c, 0
  %i.e = extractvalue { i64, i32 } %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.e, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN3std4time10SystemTime14duration_since17h85cfc48171ee6db2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 0, i32 noundef 0)
  %i.g = load i64, ptr %i.a, align 8, !range !71, !noundef !57
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !57 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i32, ptr %i.k, align 8, !range !181, !noundef !57 ; 3 uses
  br i1 %i.h, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !141812)
  call void @llvm.experimental.noalias.scope.decl(metadata !141813)
  %i.m = urem i64 %i.j, 60                        ; 3 uses
  %i.n = udiv i64 %i.j, 60
  %i.o = urem i64 %i.n, 60                        ; 3 uses
  %i.p = sub nsw i64 0, %i.o
  %i.q = udiv i64 %i.j, 3600
  %i.r = urem i64 %i.q, 24                        ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.thread.i.i, label %.thread.i.i.thread, !prof !58

.thread.i.i.thread:                               ; preds = %bb.b
  %i.s = sub nuw nsw i32 1000000000, %i.l
  %i.t = xor i64 %i.m, -1
  br label %.thread43.i.i.thread

.thread.i.i:                                      ; preds = %bb.b
  %i.u = sub nsw i64 0, %i.m
  %.not32 = icmp eq i64 %i.m, 0
  br i1 %.not32, label %.thread43.i.i, label %.thread43.i.i.thread, !prof !59

.thread43.i.i.thread:                             ; preds = %.thread.i.i, %.thread.i.i.thread
  %.sroa.04.040.i.i6 = phi i32 [ %i.s, %.thread.i.i.thread ], [ 0, %.thread.i.i ]
  %.sroa.09.041.i.i4 = phi i64 [ %i.t, %.thread.i.i.thread ], [ %i.u, %.thread.i.i ]
  %i.v = add nsw i64 %.sroa.09.041.i.i4, 60
  %i.w = xor i64 %i.o, -1
  br label %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread

.thread43.i.i:                                    ; preds = %.thread.i.i
  %.not33 = icmp eq i64 %i.o, 0
  br i1 %.not33, label %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i, label %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread, !prof !59

_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread: ; preds = %.thread43.i.i, %.thread43.i.i.thread
  %.sroa.09.150.i.i14 = phi i64 [ %i.v, %.thread43.i.i.thread ], [ 0, %.thread43.i.i ]
  %.sroa.016.051.i.i12 = phi i64 [ %i.w, %.thread43.i.i.thread ], [ %i.p, %.thread43.i.i ]
  %.sroa.04.040.i.i511 = phi i32 [ %.sroa.04.040.i.i6, %.thread43.i.i.thread ], [ 0, %.thread43.i.i ]
  %i.x = add nsw i64 %.sroa.016.051.i.i12, 60
  %i.y = icmp ugt i64 %i.j, 185542587187199
  br i1 %i.y, label %bb.k, label %bb.e

_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i: ; preds = %.thread43.i.i
  %.not34 = icmp eq i64 %i.r, 0
  br i1 %.not34, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i
  %or.cond = icmp ugt i64 %i.j, 377705203199
  br i1 %or.cond, label %bb.f, label %_ZN4time4date4Date15checked_sub_std17h167d6e489177bdf9E.exit.i, !prof !141814

_ZN4time4date4Date15checked_sub_std17h167d6e489177bdf9E.exit.i: ; preds = %bb.c
  %i.z = udiv i64 %i.j, 86400
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = sub nuw nsw i32 869850581, %i.aa        ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 3853261555       ; 2 uses
  %i.ae = lshr i64 %i.ad, 15
  %i.af = lshr i64 %i.ad, 47
  %i.ag = trunc nuw nsw i64 %i.af to i32          ; 3 uses
  %i.ah = trunc i64 %i.ae to i32
  %i.ai = icmp ugt i32 %i.ah, 42920275
  %i.aj = and i32 %i.ag, 3
  %i.ak = icmp eq i32 %i.aj, 0
  %.sroa.0.0.i.i.i.i = or i1 %i.ai, %i.ak         ; 2 uses
  %i.al = lshr i32 %i.ag, 2
  %i.am = add nuw nsw i32 %i.ab, %i.ag
  %i.an = sub nuw nsw i32 %i.am, %i.al
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = mul nuw nsw i64 %i.ao, 3010298776       ; 2 uses
  %i.aq = lshr i64 %i.ap, 8
  %i.ar = lshr i64 %i.ap, 40
  %i.as = trunc nuw nsw i64 %i.ar to i32          ; 2 uses
  %i.at = and i64 %i.aq, 4294967295
  %i.au = mul nuw nsw i64 %i.at, 1461
  %i.av = lshr i64 %i.au, 34
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = zext i1 %.sroa.0.0.i.i.i.i to i32
  %i.ay = add nuw nsw i32 %i.aw, %i.ax
  %i.az = and i32 %i.as, 3
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = and i1 %.sroa.0.0.i.i.i.i, %i.ba
  %i.bc = shl nuw i32 %i.as, 10
  %i.bd = add nsw i32 %i.bc, 1858256896
  %i.be = select i1 %i.bb, i32 512, i32 0
  %i.bf = or disjoint i32 %i.be, %i.bd
  %i.bg = or i32 %i.bf, %i.ay                     ; 2 uses
  %i.bh = icmp ne i32 %i.bg, 0
  call void @llvm.assume(i1 %i.bh)
  br label %"_ZN108_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..ops..arith..Sub$LT$core..time..Duration$GT$$GT$3sub17ha87334fc6f4304bdE.exit"

bb.d:                                             ; preds = %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i
  %i.bi = icmp ugt i64 %i.j, 185542587187199
  br i1 %i.bi, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread
  %.sroa.09.150.i.i132131 = phi i64 [ %.sroa.09.150.i.i14, %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread ], [ 0, %bb.d ] ; 2 uses
  %.sroa.04.040.i.i5102330 = phi i32 [ %.sroa.04.040.i.i511, %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread ], [ 0, %bb.d ] ; 2 uses
  %.sroa.016.1.i.i2529 = phi i64 [ %i.x, %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread ], [ 0, %bb.d ] ; 2 uses
  %.pn = phi i64 [ 23, %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread ], [ 24, %bb.d ] ; 2 uses
  %1 = udiv i64 %i.j, 86400
  %2 = trunc nuw nsw i64 %1 to i32                ; 2 uses
  %3 = add i32 %2, -4371588
  %or.cond.i.i16.i = icmp ult i32 %3, -7304484
  br i1 %or.cond.i.i16.i, label %bb.k, label %bb.g, !prof !107

bb.f:                                             ; preds = %bb.c
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @220, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2277) #78, !noalias !141815
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bj = sub i32 869850581, %2                   ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = mul nuw nsw i64 %i.bk, 3853261555       ; 2 uses
  %i.bm = lshr i64 %i.bl, 15
  %i.bn = lshr i64 %i.bl, 47
  %i.bo = trunc nuw nsw i64 %i.bn to i32          ; 3 uses
  %i.bp = trunc i64 %i.bm to i32
  %i.bq = icmp ugt i32 %i.bp, 42920275
  %i.br = and i32 %i.bo, 3
  %i.bs = icmp eq i32 %i.br, 0
  %.sroa.0.0.i.i.i17.i = or i1 %i.bq, %i.bs       ; 2 uses
  %i.bt = lshr i32 %i.bo, 2
  %i.bu = add nuw nsw i32 %i.bj, %i.bo
  %i.bv = sub nuw nsw i32 %i.bu, %i.bt
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = mul nuw nsw i64 %i.bw, 3010298776       ; 2 uses
  %i.by = lshr i64 %i.bx, 8
  %i.bz = lshr i64 %i.bx, 40
  %i.ca = trunc nuw nsw i64 %i.bz to i32          ; 2 uses
  %i.cb = and i64 %i.by, 4294967295
  %i.cc = mul nuw nsw i64 %i.cb, 1461
  %i.cd = lshr i64 %i.cc, 34
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = zext i1 %.sroa.0.0.i.i.i17.i to i32
  %i.cg = add nuw nsw i32 %i.ce, %i.cf            ; 2 uses
  %i.ch = and i32 %i.ca, 3
  %i.ci = icmp eq i32 %i.ch, 0
  %i.cj = and i1 %.sroa.0.0.i.i.i17.i, %i.ci
  %i.ck = shl nuw i32 %i.ca, 10
  %i.cl = add nsw i32 %i.ck, 1858256896           ; 2 uses
  %i.cm = select i1 %i.cj, i32 512, i32 0
  %i.cn = or disjoint i32 %i.cm, %i.cl
  %i.co = or i32 %i.cn, %i.cg                     ; 3 uses
  %i.cp = icmp ne i32 %i.co, 0
  call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp eq i32 %i.cg, 1
  br i1 %i.cq, label %bb.h, label %bb.i, !prof !60

bb.h:                                             ; preds = %bb.g
  %i.cr = icmp eq i32 %i.co, -10238975
  br i1 %i.cr, label %_ZN4time4date4Date12previous_day17hc52982cc18842e31E.exit.i, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cs = add i32 %i.co, -1                       ; 2 uses
  %i.ct = icmp ne i32 %i.cs, 0
  call void @llvm.assume(i1 %i.ct)
  br label %"_ZN108_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..ops..arith..Sub$LT$core..time..Duration$GT$$GT$3sub17ha87334fc6f4304bdE.exit"

bb.j:                                             ; preds = %bb.h
  %i.cu = ashr exact i32 %i.cl, 10                ; 3 uses
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  %i.cw = icmp slt i32 %i.cu, 1
  %i.cx = sub nsw i32 1, %i.cu
  %.sroa.04.0.i.i = select i1 %i.cw, i32 %i.cx, i32 %i.cv
  %i.cy = mul i32 %.sroa.04.0.i.i, 33555415
  %i.cz = and i32 %i.cy, 100695055
  %i.da = icmp samesign ult i32 %i.cz, 31745      ; 2 uses
  %i.db = select i1 %i.da, i32 512, i32 0
  %.sroa.01.0.i.i = select i1 %i.da, i32 366, i32 365
  %i.dc = shl nsw i32 %i.cv, 10
  %i.dd = or disjoint i32 %i.db, %i.dc
  %i.de = or disjoint i32 %i.dd, %.sroa.01.0.i.i
  br label %"_ZN108_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..ops..arith..Sub$LT$core..time..Duration$GT$$GT$3sub17ha87334fc6f4304bdE.exit"

bb.k:                                             ; preds = %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread, %bb.e, %bb.d
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @220, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2277) #78, !noalias !141815
  unreachable

_ZN4time4date4Date12previous_day17hc52982cc18842e31E.exit.i: ; preds = %bb.h
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @219, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2277) #78, !noalias !141815
  unreachable

"_ZN108_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..ops..arith..Sub$LT$core..time..Duration$GT$$GT$3sub17ha87334fc6f4304bdE.exit": ; preds = %_ZN4time4date4Date15checked_sub_std17h167d6e489177bdf9E.exit.i, %bb.i, %bb.j
  %.pn35 = phi i64 [ 0, %_ZN4time4date4Date15checked_sub_std17h167d6e489177bdf9E.exit.i ], [ %.pn, %bb.j ], [ %.pn, %bb.i ]
  %.sroa.016.1.i.i24 = phi i64 [ 0, %_ZN4time4date4Date15checked_sub_std17h167d6e489177bdf9E.exit.i ], [ %.sroa.016.1.i.i2529, %bb.j ], [ %.sroa.016.1.i.i2529, %bb.i ]
  %.sroa.04.040.i.i51022 = phi i32 [ 0, %_ZN4time4date4Date15checked_sub_std17h167d6e489177bdf9E.exit.i ], [ %.sroa.04.040.i.i5102330, %bb.j ], [ %.sroa.04.040.i.i5102330, %bb.i ]
  %.sroa.09.150.i.i1320 = phi i64 [ 0, %_ZN4time4date4Date15checked_sub_std17h167d6e489177bdf9E.exit.i ], [ %.sroa.09.150.i.i132131, %bb.j ], [ %.sroa.09.150.i.i132131, %bb.i ]
  %.sroa.02.0.i = phi i32 [ %i.bg, %_ZN4time4date4Date15checked_sub_std17h167d6e489177bdf9E.exit.i ], [ %i.de, %bb.j ], [ %i.cs, %bb.i ]
  %spec.select.i.i26 = sub nsw i64 %.pn35, %i.r
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i64 %spec.select.i.i26, 48
  %.sroa.3.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.016.1.i.i24, 40
  %.sroa.3.0.insert.insert.i.i.i = add nuw nsw i64 %.sroa.4.0.insert.shift.i.i.i, %.sroa.3.0.insert.shift.i.i.i
  %.sroa.2.0.insert.ext.i.i.i = shl nuw nsw i64 %.sroa.09.150.i.i1320, 32
  %.sroa.2.0.insert.shift.i.i.i = and i64 %.sroa.2.0.insert.ext.i.i.i, 1095216660480
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.3.0.insert.insert.i.i.i
  %.sroa.0.0.insert.ext.i.i.i = zext nneg i32 %.sroa.04.040.i.i51022 to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.df, ptr noundef nonnull align 4 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @2274, i64 12), i64 3, i1 false), !alias.scope !141815
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %0, align 4, !alias.scope !141812, !noalias !141813
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.02.0.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !141812, !noalias !141813
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  call fastcc void @"_ZN108_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..ops..arith..Add$LT$core..time..Duration$GT$$GT$3add17hae9eda09555ad14cE"(ptr noalias noundef align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) @2274, i64 noundef %i.j, i32 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2276)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %"_ZN108_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..ops..arith..Sub$LT$core..time..Duration$GT$$GT$3sub17ha87334fc6f4304bdE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc { i32, i8 } @_ZN4time4date4Date13iso_year_week17hc476b8733af73f1cE(i32 noundef range(i32 1, 0) %0) unnamed_addr #14 {
switch.lookup:
  %i.a = ashr i32 %0, 10                          ; 147 uses
  %i.b = trunc i32 %0 to i16
  %i.c = and i16 %i.b, 511
  %i.d = add nuw nsw i16 %i.c, 10
  %i.e = and i32 %0, 511
  %i.f = add nuw nsw i32 %i.e, -363521075
  %i.g = add nsw i32 %i.a, 999999                 ; 3 uses
  %.neg.i = sdiv i32 %i.g, -100
  %i.h = add nsw i32 %i.f, %.neg.i
  %i.i = sdiv i32 %i.g, 400
  %i.j = add nsw i32 %i.h, %i.i
  %i.k = sext i32 %i.g to i64
  %i.l = mul nsw i64 %i.k, 1461
  %i.m = sdiv i64 %i.l, 4
  %i.n = trunc nsw i64 %i.m to i32
  %i.o = add nsw i32 %i.j, %i.n
  %i.p = srem i32 %i.o, 7
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [2 x i8], ptr @switch.table._ZN4time4date4Date13iso_year_week17hc476b8733af73f1cE, i64 %i.q
  %switch.gep = getelementptr i8, ptr %i.r, i64 12
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.s = add nsw i16 %i.d, %switch.load
  %i.t = udiv i16 %i.s, 7
  %i.u = trunc nuw nsw i16 %i.t to i8             ; 2 uses
  switch i8 %i.u, label %bb.d [
    i8 0, label %bb.a
    i8 53, label %bb.b
  ]

bb.a:                                             ; preds = %switch.lookup
  %i.v = add nsw i32 %i.a, -1                     ; 3 uses
  %i.w = srem i32 %i.v, 400
  switch i32 %i.w, label %bb.d [
    i32 -396, label %bb.c
    i32 -391, label %bb.c
    i32 -385, label %bb.c
    i32 -380, label %bb.c
    i32 -374, label %bb.c
    i32 -368, label %bb.c
    i32 -363, label %bb.c
    i32 -357, label %bb.c
    i32 -352, label %bb.c
    i32 -346, label %bb.c
    i32 -340, label %bb.c
    i32 -335, label %bb.c
    i32 -329, label %bb.c
    i32 -324, label %bb.c
    i32 -318, label %bb.c
    i32 -312, label %bb.c
    i32 -307, label %bb.c
    i32 -301, label %bb.c
    i32 -295, label %bb.c
    i32 -289, label %bb.c
    i32 -284, label %bb.c
    i32 -278, label %bb.c
    i32 -272, label %bb.c
    i32 -267, label %bb.c
    i32 -261, label %bb.c
    i32 -256, label %bb.c
    i32 -250, label %bb.c
    i32 -244, label %bb.c
    i32 -239, label %bb.c
    i32 -233, label %bb.c
    i32 -228, label %bb.c
    i32 -222, label %bb.c
    i32 -216, label %bb.c
    i32 -211, label %bb.c
    i32 -205, label %bb.c
    i32 -199, label %bb.c
    i32 -193, label %bb.c
    i32 -188, label %bb.c
    i32 -182, label %bb.c
    i32 -176, label %bb.c
    i32 -171, label %bb.c
    i32 -165, label %bb.c
    i32 -160, label %bb.c
    i32 -154, label %bb.c
    i32 -148, label %bb.c
    i32 -143, label %bb.c
    i32 -137, label %bb.c
    i32 -132, label %bb.c
    i32 -126, label %bb.c
    i32 -120, label %bb.c
    i32 -115, label %bb.c
    i32 -109, label %bb.c
    i32 -104, label %bb.c
    i32 -97, label %bb.c
    i32 -92, label %bb.c
    i32 -86, label %bb.c
    i32 -80, label %bb.c
    i32 -75, label %bb.c
    i32 -69, label %bb.c
    i32 -64, label %bb.c
    i32 -58, label %bb.c
end_hunk_0
