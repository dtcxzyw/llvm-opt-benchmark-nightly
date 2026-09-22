Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E:bb.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc, 26
  tail call void @llvm.assume(i1 %i.u)
  %.sroa.021.0.insert.insert = zext i24 %2 to i32
  %i.v = icmp eq i32 %.sroa.016.0.insert.insert, %.sroa.021.0.insert.insert
  br i1 %i.v, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i8, ptr %i.w, align 4, !noundef !57 ; 2 uses
  %i.y = icmp ult i8 %i.x, 60
  tail call void @llvm.assume(i1 %i.y)
  %i.z = zext nneg i8 %i.x to i16
  %i.aa = sext i8 %i.b to i16
  %i.ab = sub nsw i16 %i.z, %i.aa
  %i.ac = sext i8 %.sroa.01.0.extract.trunc to i16
  %i.ad = add nsw i16 %i.ab, %i.ac                ; 9 uses
  %i.ae = icmp sgt i16 %i.ad, -1
  br i1 %i.ae, label %bb.e, label %bb.d, !prof !58

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !range !100, !noundef !57 ; 2 uses
  %i.ah = ashr i32 %i.ag, 10
  %i.ai = trunc i32 %i.ag to i16
  %i.aj = and i16 %i.ai, 511
  %.sroa.046.0.copyload = load i64, ptr %1, align 4
  br label %bb.aj

bb.d:                                             ; preds = %bb.b
  %i.ak = icmp samesign ugt i16 %i.ad, -61
  br i1 %i.ak, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.al = icmp samesign ult i16 %i.ad, 60
  br i1 %i.al, label %bb.h, label %bb.i, !prof !58

bb.f:                                             ; preds = %bb.d
  %i.am = add nsw i16 %i.ad, 120
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.an = add nsw i16 %i.ad, 60
  br label %bb.h

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
  %i.ct = load i32, ptr %1, align 4, !noundef !57 ; 2 uses
  %i.cu = icmp ult i32 %i.ct, 1000000000
  tail call void @llvm.assume(i1 %i.cu)
  %.sroa.4.0.insert.ext.i = zext nneg i8 %.sroa.044.0 to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 48
  %.sroa.3.0.insert.ext.i = zext nneg i16 %.sroa.042.0 to i64
  %.sroa.3.0.insert.shift.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i, 40
  %.sroa.3.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.3.0.insert.shift.i
  %.sroa.2.0.insert.ext.i = zext nneg i16 %.sroa.040.0 to i64
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
  call void @llvm.experimental.noalias.scope.decl(metadata !141783)
  call void @llvm.experimental.noalias.scope.decl(metadata !141784)
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
  br i1 %or.cond, label %bb.f, label %_ZN4time4date4Date15checked_sub_std17h167d6e489177bdf9E.exit.i, !prof !141785

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
  %i.bj = udiv i64 %i.j, 86400
  %i.bk = trunc nuw nsw i64 %i.bj to i32          ; 2 uses
  %i.bl = add i32 %i.bk, -4371588
  %or.cond.i.i16.i = icmp ult i32 %i.bl, -7304484
  br i1 %or.cond.i.i16.i, label %bb.k, label %bb.g, !prof !107

bb.f:                                             ; preds = %bb.c
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @220, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2277) #80, !noalias !141786
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bm = sub i32 869850581, %i.bk                ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = mul nuw nsw i64 %i.bn, 3853261555       ; 2 uses
  %i.bp = lshr i64 %i.bo, 15
  %i.bq = lshr i64 %i.bo, 47
  %i.br = trunc nuw nsw i64 %i.bq to i32          ; 3 uses
  %i.bs = trunc i64 %i.bp to i32
  %i.bt = icmp ugt i32 %i.bs, 42920275
  %i.bu = and i32 %i.br, 3
  %i.bv = icmp eq i32 %i.bu, 0
  %.sroa.0.0.i.i.i17.i = or i1 %i.bt, %i.bv       ; 2 uses
  %i.bw = lshr i32 %i.br, 2
  %i.bx = add nuw nsw i32 %i.bm, %i.br
  %i.by = sub nuw nsw i32 %i.bx, %i.bw
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = mul nuw nsw i64 %i.bz, 3010298776       ; 2 uses
  %i.cb = lshr i64 %i.ca, 8
  %i.cc = lshr i64 %i.ca, 40
  %i.cd = trunc nuw nsw i64 %i.cc to i32          ; 2 uses
  %i.ce = and i64 %i.cb, 4294967295
  %i.cf = mul nuw nsw i64 %i.ce, 1461
  %i.cg = lshr i64 %i.cf, 34
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = zext i1 %.sroa.0.0.i.i.i17.i to i32
  %i.cj = add nuw nsw i32 %i.ch, %i.ci            ; 2 uses
  %i.ck = and i32 %i.cd, 3
  %i.cl = icmp eq i32 %i.ck, 0
  %i.cm = and i1 %.sroa.0.0.i.i.i17.i, %i.cl
  %i.cn = shl nuw i32 %i.cd, 10
  %i.co = add nsw i32 %i.cn, 1858256896           ; 2 uses
  %i.cp = select i1 %i.cm, i32 512, i32 0
  %i.cq = or disjoint i32 %i.cp, %i.co
  %i.cr = or i32 %i.cq, %i.cj                     ; 3 uses
  %i.cs = icmp ne i32 %i.cr, 0
  call void @llvm.assume(i1 %i.cs)
  %i.ct = icmp eq i32 %i.cj, 1
  br i1 %i.ct, label %bb.h, label %bb.i, !prof !60

bb.h:                                             ; preds = %bb.g
  %i.cu = icmp eq i32 %i.cr, -10238975
  br i1 %i.cu, label %_ZN4time4date4Date12previous_day17hc52982cc18842e31E.exit.i, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cv = add i32 %i.cr, -1                       ; 2 uses
  %i.cw = icmp ne i32 %i.cv, 0
  call void @llvm.assume(i1 %i.cw)
  br label %"_ZN108_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..ops..arith..Sub$LT$core..time..Duration$GT$$GT$3sub17ha87334fc6f4304bdE.exit"

bb.j:                                             ; preds = %bb.h
  %i.cx = ashr exact i32 %i.co, 10                ; 3 uses
  %i.cy = add nsw i32 %i.cx, -1                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5milli6update3new7indexer7extract11extract_all17h1568aed28bab08d9E:bb.a
          to label %bb.vx unwind label %.split1489.thread

bb.vx:                                            ; preds = %.thread1544
  br i1 %i.bqi, label %bb.vy, label %.thread1548

bb.vy:                                            ; preds = %bb.vx
  %i.bqj = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h93c5d965e4053196E, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kk)
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqj, i64 48
  store i64 1, ptr %i.kk, align 8
  %.sroa.4521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4521.0..sroa_idx, align 8
  %.sroa.5522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store i64 0, ptr %.sroa.5522.0..sroa_idx, align 8
  %i.bql = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  store ptr %i.bqk, ptr %i.bql, align 8
  invoke void @_ZN7tracing4span4Span3new17hf7eba8cb0dd6baa4E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.kl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bqj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kk)
          to label %bb.wh unwind label %.split1489.thread

bb.vz:                                            ; preds = %.thread1548, %bb.wc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kl, ptr noundef nonnull align 8 dereferenceable(40) %i.kj, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kj)
  br label %bb.wd

bb.wa:                                            ; preds = %bb.wb
  %i.bqm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.kj) #81
          to label %.thread1475 unwind label %bb.p

.thread1548:                                      ; preds = %bb.vu, %bb.vw, %bb.vx, %bb.vt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kj)
  %i.bqn = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h93c5d965e4053196E, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  store i64 2, ptr %i.kj, align 8
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  store ptr %i.bqn, ptr %i.bqo, align 8
  %i.bqp = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.bqq = icmp eq i8 %i.bqp, 0
  br i1 %i.bqq, label %bb.wb, label %bb.vz

bb.wb:                                            ; preds = %.thread1548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ki)
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqn, i64 48
  store i64 1, ptr %i.ki, align 8
  %.sroa.4526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4526.0..sroa_idx, align 8
  %.sroa.5527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store i64 0, ptr %.sroa.5527.0..sroa_idx, align 8
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  store ptr %i.bqr, ptr %i.bqs, align 8
  %i.bqt = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ki)
          to label %bb.wc unwind label %bb.wa     ; 0 uses

bb.wc:                                            ; preds = %bb.wb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ki)
  br label %bb.vz

bb.wd:                                            ; preds = %bb.wh, %bb.vz
  call void @llvm.experimental.noalias.scope.decl(metadata !160813)
  %i.bqu = load i64, ptr %i.kl, align 8, !range !72, !alias.scope !160813, !noundef !57
  %.not.i907 = icmp eq i64 %i.bqu, 2
  br i1 %.not.i907, label %.noexc911, label %bb.we

bb.we:                                            ; preds = %bb.wd
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch5enter17h6f967286d4d2ad95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bqv)
          to label %.noexc911 unwind label %bb.wj

.noexc911:                                        ; preds = %bb.wd, %bb.we
  %i.bqw = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.bqx = icmp eq i8 %i.bqw, 0
  br i1 %i.bqx, label %bb.wf, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913

bb.wf:                                            ; preds = %.noexc911
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %i.bqz = load ptr, ptr %i.bqy, align 8, !alias.scope !160813, !align !61, !noundef !57 ; 3 uses
  %.not4.i908 = icmp eq ptr %i.bqz, null
  br i1 %.not4.i908, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913, label %bb.wg

bb.wg:                                            ; preds = %bb.wf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gx), !noalias !160813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw), !noalias !160813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv), !noalias !160813
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqz, i64 16
  %i.brb = load ptr, ptr %i.bra, align 8, !nonnull !57, !align !64, !noundef !57
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bqz, i64 24
  %i.brd = load i64, ptr %i.brc, align 8, !noundef !57
  store ptr %i.brb, ptr %i.gv, align 8, !noalias !160813
  %i.bre = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store i64 %i.brd, ptr %i.bre, align 8, !noalias !160813
  store ptr %i.gv, ptr %i.gw, align 8, !noalias !160813
  %.sroa.43.0..sroa_idx.i909 = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.43.0..sroa_idx.i909, align 8, !noalias !160813
  store ptr @4688, ptr %i.gx, align 8, !noalias !160813
  %i.brf = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i64 2, ptr %i.brf, align 8, !noalias !160813
  %i.brg = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  store ptr null, ptr %i.brg, align 8, !noalias !160813
  %i.brh = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store ptr %i.gw, ptr %i.brh, align 8, !noalias !160813
  %i.bri = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  store i64 1, ptr %i.bri, align 8, !noalias !160813
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kl, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4686, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.gx)
          to label %.noexc912 unwind label %bb.wj

.noexc912:                                        ; preds = %bb.wg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx), !noalias !160813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv), !noalias !160813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw), !noalias !160813
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913

bb.wh:                                            ; preds = %bb.vy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kk)
  br label %bb.wd

bb.wi:                                            ; preds = %bb.wk, %bb.wj
  %.sroa.0318.2 = phi i1 [ %.sroa.0318.3, %bb.wj ], [ %.sroa.0318.4, %bb.wk ]
  %.pn819 = phi { ptr, i32 } [ %i.brj, %bb.wj ], [ %i.brk, %bb.wk ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.kl) #81
          to label %bb.qh unwind label %bb.p

bb.wj:                                            ; preds = %bb.wg, %bb.wn, %bb.wo, %bb.we
  %.sroa.0318.3 = phi i1 [ false, %bb.wn ], [ false, %bb.wo ], [ true, %bb.wg ], [ true, %bb.we ]
  %i.brj = landingpad { ptr, i32 }
          cleanup
  br label %bb.wi

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913: ; preds = %.noexc912, %bb.wf, %.noexc911
  %.val1037 = load ptr, ptr %.sroa.91345.0.copyload, align 8, !nonnull !57, !noundef !57
  invoke fastcc void @_ZN5milli8progress8Progress15update_progress17h18657a77adb5e993E(ptr nonnull %.val1037, i8 noundef 4)
          to label %bb.wl unwind label %bb.wk

bb.wk:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913, %bb.wl
  %.sroa.0318.4 = phi i1 [ false, %bb.wl ], [ true, %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913 ]
  %i.brk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.kl) #81
          to label %bb.wi unwind label %bb.p

bb.wl:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kh)
  %i.brl = getelementptr inbounds nuw i8, ptr %i.ol, i64 168
  %i.brm = load i64, ptr %i.brl, align 8, !noundef !57
  %i.brn = getelementptr inbounds nuw i8, ptr %i.ol, i64 176
  %i.bro = load i32, ptr %i.brn, align 8, !noundef !57
  invoke fastcc void @_ZN5milli6update3new6merger21merge_and_send_docids17ha9f19ff55660ae50E(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.kh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.kg, i64 noundef %i.brm, i32 noundef %i.bro, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.ol, ptr noundef nonnull align 8 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.81344.0.copyload)
          to label %bb.wm unwind label %bb.wk

bb.wm:                                            ; preds = %bb.wl
  %i.brp = load i64, ptr %i.kh, align 8, !range !111, !noundef !57 ; 2 uses
  %.not752 = icmp eq i64 %i.brp, 97
  br i1 %.not752, label %bb.wo, label %bb.wn

bb.wn:                                            ; preds = %bb.wm
  %.sroa.4531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %.sroa.2533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.2533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.4531.0..sroa_idx, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kh)
  store i64 %i.brp, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.kl)
          to label %bb.aev unwind label %bb.wj

bb.wo:                                            ; preds = %bb.wm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kh)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.kl)
          to label %bb.wp unwind label %bb.wj

bb.wp:                                            ; preds = %bb.wo
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.kl)
          to label %bb.wq unwind label %.thread1744.thread

bb.wq:                                            ; preds = %bb.wp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kf)
  invoke void @_ZN5milli5index5Index19proximity_precision17h8e78e56f18548c13E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.kf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.ol, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mt)
          to label %bb.wr unwind label %bb.dz

bb.wr:                                            ; preds = %bb.wq
  %i.brq = load i32, ptr %i.kf, align 8, !range !145, !noundef !57 ; 2 uses
  %.not754 = icmp eq i32 %i.brq, 5
  %i.brr = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.brs = load i8, ptr %i.brr, align 4           ; 2 uses
  br i1 %.not754, label %bb.wt, label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  %.sroa.5539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kf, i64 5
  %.sroa.3179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.3179.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.5539.0..sroa_idx, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kf)
  store i32 %i.brq, ptr %i.hz, align 8
  %.sroa.2178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  store i8 %i.brs, ptr %.sroa.2178.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hy)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.hy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.hz)
          to label %bb.aet unwind label %bb.dz

bb.wt:                                            ; preds = %bb.wr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kf)
  %i.brt = icmp eq i8 %i.brs, 1
  br i1 %i.brt, label %bb.yq, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ke)
  %i.bru = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.brv = icmp eq i64 %i.bru, 0
  br i1 %i.brv, label %bb.wv, label %.thread1564

bb.wv:                                            ; preds = %bb.wu
  %i.brw = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.brw, label %bb.ww [
    i8 0, label %.thread1564
    i8 1, label %.thread1560
    i8 2, label %.thread1560
  ], !prof !69

bb.ww:                                            ; preds = %bb.wv
  %i.brx = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E)
          to label %bb.wx unwind label %bb.dz     ; 2 uses

bb.wx:                                            ; preds = %bb.ww
  %.not758 = icmp eq i8 %i.brx, 0
  br i1 %.not758, label %.thread1564, label %.thread1560

.thread1560:                                      ; preds = %bb.wv, %bb.wv, %bb.wx
  %.sroa.0190.01563 = phi i8 [ %i.brx, %bb.wx ], [ %i.brw, %bb.wv ], [ %i.brw, %bb.wv ]
  %i.bry = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E, align 8, !nonnull !57, !align !61, !noundef !57
  %i.brz = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bry, i8 noundef %.sroa.0190.01563)
          to label %bb.wy unwind label %bb.dz

bb.wy:                                            ; preds = %.thread1560
  br i1 %i.brz, label %bb.wz, label %.thread1564

bb.wz:                                            ; preds = %bb.wy
  %i.bsa = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kd)
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.bsa, i64 48
  store i64 1, ptr %i.kd, align 8
  %.sroa.4542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4542.0..sroa_idx, align 8
  %.sroa.5543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store i64 0, ptr %.sroa.5543.0..sroa_idx, align 8
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  store ptr %i.bsb, ptr %i.bsc, align 8
  invoke void @_ZN7tracing4span4Span3new17hf7eba8cb0dd6baa4E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ke, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bsa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kd)
          to label %bb.xi unwind label %bb.dz

bb.xa:                                            ; preds = %.thread1564, %bb.xd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ke, ptr noundef nonnull align 8 dereferenceable(40) %i.kc, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kc)
  br label %bb.xe

bb.xb:                                            ; preds = %bb.xc
  %i.bsd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.kc) #81
          to label %.thread1409 unwind label %bb.p

.thread1564:                                      ; preds = %bb.wv, %bb.wx, %bb.wy, %bb.wu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kc)
  %i.bse = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  store i64 2, ptr %i.kc, align 8
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  store ptr %i.bse, ptr %i.bsf, align 8
  %i.bsg = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.bsh = icmp eq i8 %i.bsg, 0
  br i1 %i.bsh, label %bb.xc, label %bb.xa

bb.xc:                                            ; preds = %.thread1564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kb)
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bse, i64 48
  store i64 1, ptr %i.kb, align 8
  %.sroa.4547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4547.0..sroa_idx, align 8
  %.sroa.5548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store i64 0, ptr %.sroa.5548.0..sroa_idx, align 8
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  store ptr %i.bsi, ptr %i.bsj, align 8
  %i.bsk = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kb)
          to label %bb.xd unwind label %bb.xb     ; 0 uses

bb.xd:                                            ; preds = %bb.xc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kb)
  br label %bb.xa

bb.xe:                                            ; preds = %bb.xi, %bb.xa
  call void @llvm.experimental.noalias.scope.decl(metadata !160814)
  %i.bsl = load i64, ptr %i.ke, align 8, !range !72, !alias.scope !160814, !noundef !57
  %.not.i900 = icmp eq i64 %i.bsl, 2
  br i1 %.not.i900, label %.noexc904, label %bb.xf

bb.xf:                                            ; preds = %bb.xe
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch5enter17h6f967286d4d2ad95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ke, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bsm)
          to label %.noexc904 unwind label %bb.xk

.noexc904:                                        ; preds = %bb.xe, %bb.xf
  %i.bsn = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.bso = icmp eq i8 %i.bsn, 0
  br i1 %i.bso, label %bb.xg, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906

bb.xg:                                            ; preds = %.noexc904
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  %i.bsq = load ptr, ptr %i.bsp, align 8, !alias.scope !160814, !align !61, !noundef !57 ; 3 uses
  %.not4.i901 = icmp eq ptr %i.bsq, null
  br i1 %.not4.i901, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha), !noalias !160814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gz), !noalias !160814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gy), !noalias !160814
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 16
  %i.bss = load ptr, ptr %i.bsr, align 8, !nonnull !57, !align !64, !noundef !57
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bsq, i64 24
  %i.bsu = load i64, ptr %i.bst, align 8, !noundef !57
  store ptr %i.bss, ptr %i.gy, align 8, !noalias !160814
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i64 %i.bsu, ptr %i.bsv, align 8, !noalias !160814
  store ptr %i.gy, ptr %i.gz, align 8, !noalias !160814
  %.sroa.43.0..sroa_idx.i902 = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.43.0..sroa_idx.i902, align 8, !noalias !160814
  store ptr @4688, ptr %i.ha, align 8, !noalias !160814
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i64 2, ptr %i.bsw, align 8, !noalias !160814
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  store ptr null, ptr %i.bsx, align 8, !noalias !160814
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store ptr %i.gz, ptr %i.bsy, align 8, !noalias !160814
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store i64 1, ptr %i.bsz, align 8, !noalias !160814
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ke, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4686, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.ha)
          to label %.noexc905 unwind label %bb.xk

.noexc905:                                        ; preds = %bb.xh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !noalias !160814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy), !noalias !160814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz), !noalias !160814
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906

bb.xi:                                            ; preds = %bb.wz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kd)
  br label %bb.xe

bb.xj:                                            ; preds = %bb.xl, %bb.xk
  %.pn759 = phi { ptr, i32 } [ %i.btb, %bb.xl ], [ %i.bta, %bb.xk ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.ke) #81
          to label %.thread1409 unwind label %bb.p

bb.xk:                                            ; preds = %bb.xh, %bb.xf
  %i.bta = landingpad { ptr, i32 }
          cleanup
  br label %bb.xj

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906: ; preds = %.noexc905, %bb.xg, %.noexc904
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ka)
  invoke fastcc void @_ZN5milli6update3new7extract10searchable34extract_word_pair_proximity_docids32WordPairProximityDocidsExtractor14run_extraction17h745e06cb748460ebE(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef align 8 captures(address) dereferenceable(64) %2, ptr noalias noundef align 8 dereferenceable(512) %6)
          to label %bb.xm unwind label %bb.xl

bb.xl:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906
  %i.btb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.ke) #81
          to label %bb.xj unwind label %bb.p

bb.xm:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906
  %i.btc = load i64, ptr %i.ka, align 8, !range !111, !noundef !57 ; 2 uses
  %.not761 = icmp eq i64 %i.btc, 97
  %i.btd = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7193, ptr noundef nonnull align 8 dereferenceable(24) %i.btd, i64 24, i1 false)
  br i1 %.not761, label %bb.xo, label %bb.xn

bb.xn:                                            ; preds = %bb.xm
  %.sroa.5554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %.sroa.3557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.3557.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.5554.0..sroa_idx, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ka)
  %.sroa.2556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2556.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7193, i64 24, i1 false)
  store i64 %i.btc, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.ke)
          to label %bb.yt unwind label %bb.xp

bb.xo:                                            ; preds = %bb.xm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ka)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ju, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7193, i64 24, i1 false)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.ke)
          to label %bb.xq unwind label %bb.xp

bb.xp:                                            ; preds = %bb.xn, %bb.xo
  %i.bte = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.ke) #81
          to label %.thread1409 unwind label %bb.p

bb.xq:                                            ; preds = %bb.xo
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.ke)
          to label %bb.xs unwind label %bb.dz

bb.xr:                                            ; preds = %bb.yh
  br i1 %.sroa.0333.2, label %.thread1570, label %.thread1409
end_hunk_1
begin_hunk_2_@_ZN5milli6update3new7indexer7extract11extract_all17h3ec799c870dcaa05E:bb.a
          to label %bb.vx unwind label %.split1489.thread

bb.vx:                                            ; preds = %.thread1544
  br i1 %i.bqj, label %bb.vy, label %.thread1548

bb.vy:                                            ; preds = %bb.vx
  %i.bqk = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h93c5d965e4053196E, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kk)
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqk, i64 48
  store i64 1, ptr %i.kk, align 8
  %.sroa.4521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4521.0..sroa_idx, align 8
  %.sroa.5522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store i64 0, ptr %.sroa.5522.0..sroa_idx, align 8
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  store ptr %i.bql, ptr %i.bqm, align 8
  invoke void @_ZN7tracing4span4Span3new17hf7eba8cb0dd6baa4E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.kl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bqk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kk)
          to label %bb.wh unwind label %.split1489.thread

bb.vz:                                            ; preds = %.thread1548, %bb.wc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kl, ptr noundef nonnull align 8 dereferenceable(40) %i.kj, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kj)
  br label %bb.wd

bb.wa:                                            ; preds = %bb.wb
  %i.bqn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.kj) #81
          to label %.thread1475 unwind label %bb.p

.thread1548:                                      ; preds = %bb.vu, %bb.vw, %bb.vx, %bb.vt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kj)
  %i.bqo = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h93c5d965e4053196E, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  store i64 2, ptr %i.kj, align 8
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  store ptr %i.bqo, ptr %i.bqp, align 8
  %i.bqq = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.bqr = icmp eq i8 %i.bqq, 0
  br i1 %i.bqr, label %bb.wb, label %bb.vz

bb.wb:                                            ; preds = %.thread1548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ki)
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqo, i64 48
  store i64 1, ptr %i.ki, align 8
  %.sroa.4526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4526.0..sroa_idx, align 8
  %.sroa.5527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store i64 0, ptr %.sroa.5527.0..sroa_idx, align 8
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  store ptr %i.bqs, ptr %i.bqt, align 8
  %i.bqu = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ki)
          to label %bb.wc unwind label %bb.wa     ; 0 uses

bb.wc:                                            ; preds = %bb.wb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ki)
  br label %bb.vz

bb.wd:                                            ; preds = %bb.wh, %bb.vz
  call void @llvm.experimental.noalias.scope.decl(metadata !161744)
  %i.bqv = load i64, ptr %i.kl, align 8, !range !72, !alias.scope !161744, !noundef !57
  %.not.i907 = icmp eq i64 %i.bqv, 2
  br i1 %.not.i907, label %.noexc911, label %bb.we

bb.we:                                            ; preds = %bb.wd
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch5enter17h6f967286d4d2ad95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bqw)
          to label %.noexc911 unwind label %bb.wj

.noexc911:                                        ; preds = %bb.wd, %bb.we
  %i.bqx = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.bqy = icmp eq i8 %i.bqx, 0
  br i1 %i.bqy, label %bb.wf, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913

bb.wf:                                            ; preds = %.noexc911
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %i.bra = load ptr, ptr %i.bqz, align 8, !alias.scope !161744, !align !61, !noundef !57 ; 3 uses
  %.not4.i908 = icmp eq ptr %i.bra, null
  br i1 %.not4.i908, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913, label %bb.wg

bb.wg:                                            ; preds = %bb.wf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gx), !noalias !161744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw), !noalias !161744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv), !noalias !161744
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bra, i64 16
  %i.brc = load ptr, ptr %i.brb, align 8, !nonnull !57, !align !64, !noundef !57
  %i.brd = getelementptr inbounds nuw i8, ptr %i.bra, i64 24
  %i.bre = load i64, ptr %i.brd, align 8, !noundef !57
  store ptr %i.brc, ptr %i.gv, align 8, !noalias !161744
  %i.brf = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store i64 %i.bre, ptr %i.brf, align 8, !noalias !161744
  store ptr %i.gv, ptr %i.gw, align 8, !noalias !161744
  %.sroa.43.0..sroa_idx.i909 = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.43.0..sroa_idx.i909, align 8, !noalias !161744
  store ptr @4688, ptr %i.gx, align 8, !noalias !161744
  %i.brg = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i64 2, ptr %i.brg, align 8, !noalias !161744
  %i.brh = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  store ptr null, ptr %i.brh, align 8, !noalias !161744
  %i.bri = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store ptr %i.gw, ptr %i.bri, align 8, !noalias !161744
  %i.brj = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  store i64 1, ptr %i.brj, align 8, !noalias !161744
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kl, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4686, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.gx)
          to label %.noexc912 unwind label %bb.wj

.noexc912:                                        ; preds = %bb.wg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx), !noalias !161744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv), !noalias !161744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw), !noalias !161744
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913

bb.wh:                                            ; preds = %bb.vy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kk)
  br label %bb.wd

bb.wi:                                            ; preds = %bb.wk, %bb.wj
  %.sroa.0318.2 = phi i1 [ %.sroa.0318.3, %bb.wj ], [ %.sroa.0318.4, %bb.wk ]
  %.pn819 = phi { ptr, i32 } [ %i.brk, %bb.wj ], [ %i.brl, %bb.wk ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.kl) #81
          to label %bb.qh unwind label %bb.p

bb.wj:                                            ; preds = %bb.wg, %bb.wn, %bb.wo, %bb.we
  %.sroa.0318.3 = phi i1 [ false, %bb.wn ], [ false, %bb.wo ], [ true, %bb.wg ], [ true, %bb.we ]
  %i.brk = landingpad { ptr, i32 }
          cleanup
  br label %bb.wi

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913: ; preds = %.noexc912, %bb.wf, %.noexc911
  %.val1037 = load ptr, ptr %.sroa.91345.0.copyload, align 8, !nonnull !57, !noundef !57
  invoke fastcc void @_ZN5milli8progress8Progress15update_progress17h18657a77adb5e993E(ptr nonnull %.val1037, i8 noundef 4)
          to label %bb.wl unwind label %bb.wk

bb.wk:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913, %bb.wl
  %.sroa.0318.4 = phi i1 [ false, %bb.wl ], [ true, %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913 ]
  %i.brl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.kl) #81
          to label %bb.wi unwind label %bb.p

bb.wl:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kh)
  %i.brm = getelementptr inbounds nuw i8, ptr %i.ol, i64 168
  %i.brn = load i64, ptr %i.brm, align 8, !noundef !57
  %i.bro = getelementptr inbounds nuw i8, ptr %i.ol, i64 176
  %i.brp = load i32, ptr %i.bro, align 8, !noundef !57
  invoke fastcc void @_ZN5milli6update3new6merger21merge_and_send_docids17ha9f19ff55660ae50E(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.kh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.kg, i64 noundef %i.brn, i32 noundef %i.brp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.ol, ptr noundef nonnull align 8 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.81344.0.copyload)
          to label %bb.wm unwind label %bb.wk

bb.wm:                                            ; preds = %bb.wl
  %i.brq = load i64, ptr %i.kh, align 8, !range !111, !noundef !57 ; 2 uses
  %.not752 = icmp eq i64 %i.brq, 97
  br i1 %.not752, label %bb.wo, label %bb.wn

bb.wn:                                            ; preds = %bb.wm
  %.sroa.4531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %.sroa.2533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.2533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.4531.0..sroa_idx, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kh)
  store i64 %i.brq, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.kl)
          to label %bb.aev unwind label %bb.wj

bb.wo:                                            ; preds = %bb.wm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kh)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.kl)
          to label %bb.wp unwind label %bb.wj

bb.wp:                                            ; preds = %bb.wo
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.kl)
          to label %bb.wq unwind label %.thread1744.thread

bb.wq:                                            ; preds = %bb.wp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kf)
  invoke void @_ZN5milli5index5Index19proximity_precision17h8e78e56f18548c13E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.kf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.ol, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mt)
          to label %bb.wr unwind label %bb.dz

bb.wr:                                            ; preds = %bb.wq
  %i.brr = load i32, ptr %i.kf, align 8, !range !145, !noundef !57 ; 2 uses
  %.not754 = icmp eq i32 %i.brr, 5
  %i.brs = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.brt = load i8, ptr %i.brs, align 4           ; 2 uses
  br i1 %.not754, label %bb.wt, label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  %.sroa.5539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kf, i64 5
  %.sroa.3179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.3179.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.5539.0..sroa_idx, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kf)
  store i32 %i.brr, ptr %i.hz, align 8
  %.sroa.2178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  store i8 %i.brt, ptr %.sroa.2178.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hy)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.hy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.hz)
          to label %bb.aet unwind label %bb.dz

bb.wt:                                            ; preds = %bb.wr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kf)
  %i.bru = icmp eq i8 %i.brt, 1
  br i1 %i.bru, label %bb.yq, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ke)
  %i.brv = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.brw = icmp eq i64 %i.brv, 0
  br i1 %i.brw, label %bb.wv, label %.thread1564

bb.wv:                                            ; preds = %bb.wu
  %i.brx = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.brx, label %bb.ww [
    i8 0, label %.thread1564
    i8 1, label %.thread1560
    i8 2, label %.thread1560
  ], !prof !69

bb.ww:                                            ; preds = %bb.wv
  %i.bry = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E)
          to label %bb.wx unwind label %bb.dz     ; 2 uses

bb.wx:                                            ; preds = %bb.ww
  %.not758 = icmp eq i8 %i.bry, 0
  br i1 %.not758, label %.thread1564, label %.thread1560

.thread1560:                                      ; preds = %bb.wv, %bb.wv, %bb.wx
  %.sroa.0190.01563 = phi i8 [ %i.bry, %bb.wx ], [ %i.brx, %bb.wv ], [ %i.brx, %bb.wv ]
  %i.brz = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E, align 8, !nonnull !57, !align !61, !noundef !57
  %i.bsa = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.brz, i8 noundef %.sroa.0190.01563)
          to label %bb.wy unwind label %bb.dz

bb.wy:                                            ; preds = %.thread1560
  br i1 %i.bsa, label %bb.wz, label %.thread1564

bb.wz:                                            ; preds = %bb.wy
  %i.bsb = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kd)
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.bsb, i64 48
  store i64 1, ptr %i.kd, align 8
  %.sroa.4542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4542.0..sroa_idx, align 8
  %.sroa.5543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store i64 0, ptr %.sroa.5543.0..sroa_idx, align 8
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  store ptr %i.bsc, ptr %i.bsd, align 8
  invoke void @_ZN7tracing4span4Span3new17hf7eba8cb0dd6baa4E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ke, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bsb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kd)
          to label %bb.xi unwind label %bb.dz

bb.xa:                                            ; preds = %.thread1564, %bb.xd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ke, ptr noundef nonnull align 8 dereferenceable(40) %i.kc, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kc)
  br label %bb.xe

bb.xb:                                            ; preds = %bb.xc
  %i.bse = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.kc) #81
          to label %.thread1409 unwind label %bb.p

.thread1564:                                      ; preds = %bb.wv, %bb.wx, %bb.wy, %bb.wu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kc)
  %i.bsf = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  store i64 2, ptr %i.kc, align 8
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  store ptr %i.bsf, ptr %i.bsg, align 8
  %i.bsh = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.bsi = icmp eq i8 %i.bsh, 0
  br i1 %i.bsi, label %bb.xc, label %bb.xa

bb.xc:                                            ; preds = %.thread1564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kb)
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bsf, i64 48
  store i64 1, ptr %i.kb, align 8
  %.sroa.4547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4547.0..sroa_idx, align 8
  %.sroa.5548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store i64 0, ptr %.sroa.5548.0..sroa_idx, align 8
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  store ptr %i.bsj, ptr %i.bsk, align 8
  %i.bsl = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kb)
          to label %bb.xd unwind label %bb.xb     ; 0 uses

bb.xd:                                            ; preds = %bb.xc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kb)
  br label %bb.xa

bb.xe:                                            ; preds = %bb.xi, %bb.xa
  call void @llvm.experimental.noalias.scope.decl(metadata !161745)
  %i.bsm = load i64, ptr %i.ke, align 8, !range !72, !alias.scope !161745, !noundef !57
  %.not.i900 = icmp eq i64 %i.bsm, 2
  br i1 %.not.i900, label %.noexc904, label %bb.xf

bb.xf:                                            ; preds = %bb.xe
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch5enter17h6f967286d4d2ad95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ke, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bsn)
          to label %.noexc904 unwind label %bb.xk

.noexc904:                                        ; preds = %bb.xe, %bb.xf
  %i.bso = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.bsp = icmp eq i8 %i.bso, 0
  br i1 %i.bsp, label %bb.xg, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906

bb.xg:                                            ; preds = %.noexc904
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  %i.bsr = load ptr, ptr %i.bsq, align 8, !alias.scope !161745, !align !61, !noundef !57 ; 3 uses
  %.not4.i901 = icmp eq ptr %i.bsr, null
  br i1 %.not4.i901, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha), !noalias !161745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gz), !noalias !161745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gy), !noalias !161745
  %i.bss = getelementptr inbounds nuw i8, ptr %i.bsr, i64 16
  %i.bst = load ptr, ptr %i.bss, align 8, !nonnull !57, !align !64, !noundef !57
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bsr, i64 24
  %i.bsv = load i64, ptr %i.bsu, align 8, !noundef !57
  store ptr %i.bst, ptr %i.gy, align 8, !noalias !161745
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i64 %i.bsv, ptr %i.bsw, align 8, !noalias !161745
  store ptr %i.gy, ptr %i.gz, align 8, !noalias !161745
  %.sroa.43.0..sroa_idx.i902 = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.43.0..sroa_idx.i902, align 8, !noalias !161745
  store ptr @4688, ptr %i.ha, align 8, !noalias !161745
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i64 2, ptr %i.bsx, align 8, !noalias !161745
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  store ptr null, ptr %i.bsy, align 8, !noalias !161745
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store ptr %i.gz, ptr %i.bsz, align 8, !noalias !161745
  %i.bta = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store i64 1, ptr %i.bta, align 8, !noalias !161745
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ke, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4686, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.ha)
          to label %.noexc905 unwind label %bb.xk

.noexc905:                                        ; preds = %bb.xh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !noalias !161745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy), !noalias !161745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz), !noalias !161745
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906

bb.xi:                                            ; preds = %bb.wz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kd)
  br label %bb.xe

bb.xj:                                            ; preds = %bb.xl, %bb.xk
  %.pn759 = phi { ptr, i32 } [ %i.btc, %bb.xl ], [ %i.btb, %bb.xk ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.ke) #81
          to label %.thread1409 unwind label %bb.p

bb.xk:                                            ; preds = %bb.xh, %bb.xf
  %i.btb = landingpad { ptr, i32 }
          cleanup
  br label %bb.xj

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906: ; preds = %.noexc905, %bb.xg, %.noexc904
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ka)
  invoke fastcc void @_ZN5milli6update3new7extract10searchable34extract_word_pair_proximity_docids32WordPairProximityDocidsExtractor14run_extraction17h9177f836fabdc1f9E(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.ka, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 captures(address) dereferenceable(64) %2, ptr noalias noundef align 8 dereferenceable(512) %6)
          to label %bb.xm unwind label %bb.xl

bb.xl:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906
  %i.btc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.ke) #81
          to label %bb.xj unwind label %bb.p

bb.xm:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906
  %i.btd = load i64, ptr %i.ka, align 8, !range !111, !noundef !57 ; 2 uses
  %.not761 = icmp eq i64 %i.btd, 97
  %i.bte = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7193, ptr noundef nonnull align 8 dereferenceable(24) %i.bte, i64 24, i1 false)
  br i1 %.not761, label %bb.xo, label %bb.xn

bb.xn:                                            ; preds = %bb.xm
  %.sroa.5554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %.sroa.3557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.3557.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.5554.0..sroa_idx, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ka)
  %.sroa.2556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2556.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7193, i64 24, i1 false)
  store i64 %i.btd, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.ke)
          to label %bb.yt unwind label %bb.xp

bb.xo:                                            ; preds = %bb.xm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ka)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ju, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7193, i64 24, i1 false)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.ke)
          to label %bb.xq unwind label %bb.xp

bb.xp:                                            ; preds = %bb.xn, %bb.xo
  %i.btf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.ke) #81
          to label %.thread1409 unwind label %bb.p

bb.xq:                                            ; preds = %bb.xo
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.ke)
          to label %bb.xs unwind label %bb.dz

bb.xr:                                            ; preds = %bb.yh
  br i1 %.sroa.0333.2, label %.thread1570, label %.thread1409
end_hunk_2
begin_hunk_3_@_ZN5milli6update3new7indexer7extract11extract_all17hc37ca11824f0c72bE:bb.a
          to label %bb.vx unwind label %.split1489.thread

bb.vx:                                            ; preds = %.thread1544
  br i1 %i.bqi, label %bb.vy, label %.thread1548

bb.vy:                                            ; preds = %bb.vx
  %i.bqj = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h93c5d965e4053196E, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kk)
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqj, i64 48
  store i64 1, ptr %i.kk, align 8
  %.sroa.4521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4521.0..sroa_idx, align 8
  %.sroa.5522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store i64 0, ptr %.sroa.5522.0..sroa_idx, align 8
  %i.bql = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  store ptr %i.bqk, ptr %i.bql, align 8
  invoke void @_ZN7tracing4span4Span3new17hf7eba8cb0dd6baa4E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.kl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bqj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kk)
          to label %bb.wh unwind label %.split1489.thread

bb.vz:                                            ; preds = %.thread1548, %bb.wc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kl, ptr noundef nonnull align 8 dereferenceable(40) %i.kj, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kj)
  br label %bb.wd

bb.wa:                                            ; preds = %bb.wb
  %i.bqm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.kj) #81
          to label %.thread1475 unwind label %bb.p

.thread1548:                                      ; preds = %bb.vu, %bb.vw, %bb.vx, %bb.vt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kj)
  %i.bqn = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h93c5d965e4053196E, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  store i64 2, ptr %i.kj, align 8
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  store ptr %i.bqn, ptr %i.bqo, align 8
  %i.bqp = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.bqq = icmp eq i8 %i.bqp, 0
  br i1 %i.bqq, label %bb.wb, label %bb.vz

bb.wb:                                            ; preds = %.thread1548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ki)
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqn, i64 48
  store i64 1, ptr %i.ki, align 8
  %.sroa.4526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4526.0..sroa_idx, align 8
  %.sroa.5527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store i64 0, ptr %.sroa.5527.0..sroa_idx, align 8
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  store ptr %i.bqr, ptr %i.bqs, align 8
  %i.bqt = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ki)
          to label %bb.wc unwind label %bb.wa     ; 0 uses

bb.wc:                                            ; preds = %bb.wb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ki)
  br label %bb.vz

bb.wd:                                            ; preds = %bb.wh, %bb.vz
  call void @llvm.experimental.noalias.scope.decl(metadata !162681)
  %i.bqu = load i64, ptr %i.kl, align 8, !range !72, !alias.scope !162681, !noundef !57
  %.not.i907 = icmp eq i64 %i.bqu, 2
  br i1 %.not.i907, label %.noexc911, label %bb.we

bb.we:                                            ; preds = %bb.wd
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch5enter17h6f967286d4d2ad95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bqv)
          to label %.noexc911 unwind label %bb.wj

.noexc911:                                        ; preds = %bb.wd, %bb.we
  %i.bqw = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.bqx = icmp eq i8 %i.bqw, 0
  br i1 %i.bqx, label %bb.wf, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913

bb.wf:                                            ; preds = %.noexc911
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %i.bqz = load ptr, ptr %i.bqy, align 8, !alias.scope !162681, !align !61, !noundef !57 ; 3 uses
  %.not4.i908 = icmp eq ptr %i.bqz, null
  br i1 %.not4.i908, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913, label %bb.wg

bb.wg:                                            ; preds = %bb.wf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gx), !noalias !162681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw), !noalias !162681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv), !noalias !162681
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqz, i64 16
  %i.brb = load ptr, ptr %i.bra, align 8, !nonnull !57, !align !64, !noundef !57
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bqz, i64 24
  %i.brd = load i64, ptr %i.brc, align 8, !noundef !57
  store ptr %i.brb, ptr %i.gv, align 8, !noalias !162681
  %i.bre = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store i64 %i.brd, ptr %i.bre, align 8, !noalias !162681
  store ptr %i.gv, ptr %i.gw, align 8, !noalias !162681
  %.sroa.43.0..sroa_idx.i909 = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.43.0..sroa_idx.i909, align 8, !noalias !162681
  store ptr @4688, ptr %i.gx, align 8, !noalias !162681
  %i.brf = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i64 2, ptr %i.brf, align 8, !noalias !162681
  %i.brg = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  store ptr null, ptr %i.brg, align 8, !noalias !162681
  %i.brh = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store ptr %i.gw, ptr %i.brh, align 8, !noalias !162681
  %i.bri = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  store i64 1, ptr %i.bri, align 8, !noalias !162681
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kl, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4686, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.gx)
          to label %.noexc912 unwind label %bb.wj

.noexc912:                                        ; preds = %bb.wg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx), !noalias !162681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv), !noalias !162681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw), !noalias !162681
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913

bb.wh:                                            ; preds = %bb.vy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kk)
  br label %bb.wd

bb.wi:                                            ; preds = %bb.wk, %bb.wj
  %.sroa.0318.2 = phi i1 [ %.sroa.0318.3, %bb.wj ], [ %.sroa.0318.4, %bb.wk ]
  %.pn819 = phi { ptr, i32 } [ %i.brj, %bb.wj ], [ %i.brk, %bb.wk ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.kl) #81
          to label %bb.qh unwind label %bb.p

bb.wj:                                            ; preds = %bb.wg, %bb.wn, %bb.wo, %bb.we
  %.sroa.0318.3 = phi i1 [ false, %bb.wn ], [ false, %bb.wo ], [ true, %bb.wg ], [ true, %bb.we ]
  %i.brj = landingpad { ptr, i32 }
          cleanup
  br label %bb.wi

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913: ; preds = %.noexc912, %bb.wf, %.noexc911
  %.val1037 = load ptr, ptr %.sroa.91345.0.copyload, align 8, !nonnull !57, !noundef !57
  invoke fastcc void @_ZN5milli8progress8Progress15update_progress17h18657a77adb5e993E(ptr nonnull %.val1037, i8 noundef 4)
          to label %bb.wl unwind label %bb.wk

bb.wk:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913, %bb.wl
  %.sroa.0318.4 = phi i1 [ false, %bb.wl ], [ true, %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913 ]
  %i.brk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.kl) #81
          to label %bb.wi unwind label %bb.p

bb.wl:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kh)
  %i.brl = getelementptr inbounds nuw i8, ptr %i.ol, i64 168
  %i.brm = load i64, ptr %i.brl, align 8, !noundef !57
  %i.brn = getelementptr inbounds nuw i8, ptr %i.ol, i64 176
  %i.bro = load i32, ptr %i.brn, align 8, !noundef !57
  invoke fastcc void @_ZN5milli6update3new6merger21merge_and_send_docids17ha9f19ff55660ae50E(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.kh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.kg, i64 noundef %i.brm, i32 noundef %i.bro, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.ol, ptr noundef nonnull align 8 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.81344.0.copyload)
          to label %bb.wm unwind label %bb.wk

bb.wm:                                            ; preds = %bb.wl
  %i.brp = load i64, ptr %i.kh, align 8, !range !111, !noundef !57 ; 2 uses
  %.not752 = icmp eq i64 %i.brp, 97
  br i1 %.not752, label %bb.wo, label %bb.wn

bb.wn:                                            ; preds = %bb.wm
  %.sroa.4531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %.sroa.2533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.2533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.4531.0..sroa_idx, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kh)
  store i64 %i.brp, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.kl)
          to label %bb.aev unwind label %bb.wj

bb.wo:                                            ; preds = %bb.wm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kh)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.kl)
          to label %bb.wp unwind label %bb.wj

bb.wp:                                            ; preds = %bb.wo
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.kl)
          to label %bb.wq unwind label %.thread1744.thread

bb.wq:                                            ; preds = %bb.wp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kf)
  invoke void @_ZN5milli5index5Index19proximity_precision17h8e78e56f18548c13E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.kf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.ol, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mt)
          to label %bb.wr unwind label %bb.dz

bb.wr:                                            ; preds = %bb.wq
  %i.brq = load i32, ptr %i.kf, align 8, !range !145, !noundef !57 ; 2 uses
  %.not754 = icmp eq i32 %i.brq, 5
  %i.brr = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.brs = load i8, ptr %i.brr, align 4           ; 2 uses
  br i1 %.not754, label %bb.wt, label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  %.sroa.5539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kf, i64 5
  %.sroa.3179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.3179.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.5539.0..sroa_idx, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kf)
  store i32 %i.brq, ptr %i.hz, align 8
  %.sroa.2178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  store i8 %i.brs, ptr %.sroa.2178.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hy)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.hy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.hz)
          to label %bb.aet unwind label %bb.dz

bb.wt:                                            ; preds = %bb.wr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kf)
  %i.brt = icmp eq i8 %i.brs, 1
  br i1 %i.brt, label %bb.yq, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ke)
  %i.bru = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.brv = icmp eq i64 %i.bru, 0
  br i1 %i.brv, label %bb.wv, label %.thread1564

bb.wv:                                            ; preds = %bb.wu
  %i.brw = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.brw, label %bb.ww [
    i8 0, label %.thread1564
    i8 1, label %.thread1560
    i8 2, label %.thread1560
  ], !prof !69

bb.ww:                                            ; preds = %bb.wv
  %i.brx = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E)
          to label %bb.wx unwind label %bb.dz     ; 2 uses

bb.wx:                                            ; preds = %bb.ww
  %.not758 = icmp eq i8 %i.brx, 0
  br i1 %.not758, label %.thread1564, label %.thread1560

.thread1560:                                      ; preds = %bb.wv, %bb.wv, %bb.wx
  %.sroa.0190.01563 = phi i8 [ %i.brx, %bb.wx ], [ %i.brw, %bb.wv ], [ %i.brw, %bb.wv ]
  %i.bry = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E, align 8, !nonnull !57, !align !61, !noundef !57
  %i.brz = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bry, i8 noundef %.sroa.0190.01563)
          to label %bb.wy unwind label %bb.dz

bb.wy:                                            ; preds = %.thread1560
  br i1 %i.brz, label %bb.wz, label %.thread1564

bb.wz:                                            ; preds = %bb.wy
  %i.bsa = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kd)
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.bsa, i64 48
  store i64 1, ptr %i.kd, align 8
  %.sroa.4542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4542.0..sroa_idx, align 8
  %.sroa.5543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store i64 0, ptr %.sroa.5543.0..sroa_idx, align 8
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  store ptr %i.bsb, ptr %i.bsc, align 8
  invoke void @_ZN7tracing4span4Span3new17hf7eba8cb0dd6baa4E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ke, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bsa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kd)
          to label %bb.xi unwind label %bb.dz

bb.xa:                                            ; preds = %.thread1564, %bb.xd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ke, ptr noundef nonnull align 8 dereferenceable(40) %i.kc, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kc)
  br label %bb.xe

bb.xb:                                            ; preds = %bb.xc
  %i.bsd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.kc) #81
          to label %.thread1409 unwind label %bb.p

.thread1564:                                      ; preds = %bb.wv, %bb.wx, %bb.wy, %bb.wu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kc)
  %i.bse = load ptr, ptr @_ZN5milli6update3new7indexer7extract11extract_all10__CALLSITE17h16d4438b54e1cac6E, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  store i64 2, ptr %i.kc, align 8
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  store ptr %i.bse, ptr %i.bsf, align 8
  %i.bsg = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.bsh = icmp eq i8 %i.bsg, 0
  br i1 %i.bsh, label %bb.xc, label %bb.xa

bb.xc:                                            ; preds = %.thread1564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kb)
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bse, i64 48
  store i64 1, ptr %i.kb, align 8
  %.sroa.4547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4547.0..sroa_idx, align 8
  %.sroa.5548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store i64 0, ptr %.sroa.5548.0..sroa_idx, align 8
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  store ptr %i.bsi, ptr %i.bsj, align 8
  %i.bsk = invoke noundef align 8 dereferenceable(40) ptr @_ZN7tracing4span4Span10record_all17hb9e98382ea24c54cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kb)
          to label %bb.xd unwind label %bb.xb     ; 0 uses

bb.xd:                                            ; preds = %bb.xc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kb)
  br label %bb.xa

bb.xe:                                            ; preds = %bb.xi, %bb.xa
  call void @llvm.experimental.noalias.scope.decl(metadata !162682)
  %i.bsl = load i64, ptr %i.ke, align 8, !range !72, !alias.scope !162682, !noundef !57
  %.not.i900 = icmp eq i64 %i.bsl, 2
  br i1 %.not.i900, label %.noexc904, label %bb.xf

bb.xf:                                            ; preds = %bb.xe
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  invoke void @_ZN12tracing_core10dispatcher8Dispatch5enter17h6f967286d4d2ad95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ke, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bsm)
          to label %.noexc904 unwind label %bb.xk

.noexc904:                                        ; preds = %bb.xe, %bb.xf
  %i.bsn = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.bso = icmp eq i8 %i.bsn, 0
  br i1 %i.bso, label %bb.xg, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906

bb.xg:                                            ; preds = %.noexc904
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  %i.bsq = load ptr, ptr %i.bsp, align 8, !alias.scope !162682, !align !61, !noundef !57 ; 3 uses
  %.not4.i901 = icmp eq ptr %i.bsq, null
  br i1 %.not4.i901, label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha), !noalias !162682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gz), !noalias !162682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gy), !noalias !162682
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 16
  %i.bss = load ptr, ptr %i.bsr, align 8, !nonnull !57, !align !64, !noundef !57
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bsq, i64 24
  %i.bsu = load i64, ptr %i.bst, align 8, !noundef !57
  store ptr %i.bss, ptr %i.gy, align 8, !noalias !162682
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i64 %i.bsu, ptr %i.bsv, align 8, !noalias !162682
  store ptr %i.gy, ptr %i.gz, align 8, !noalias !162682
  %.sroa.43.0..sroa_idx.i902 = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.43.0..sroa_idx.i902, align 8, !noalias !162682
  store ptr @4688, ptr %i.ha, align 8, !noalias !162682
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i64 2, ptr %i.bsw, align 8, !noalias !162682
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  store ptr null, ptr %i.bsx, align 8, !noalias !162682
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store ptr %i.gz, ptr %i.bsy, align 8, !noalias !162682
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store i64 1, ptr %i.bsz, align 8, !noalias !162682
  invoke fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ke, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4686, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.ha)
          to label %.noexc905 unwind label %bb.xk

.noexc905:                                        ; preds = %bb.xh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !noalias !162682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy), !noalias !162682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz), !noalias !162682
  br label %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906

bb.xi:                                            ; preds = %bb.wz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kd)
  br label %bb.xe

bb.xj:                                            ; preds = %bb.xl, %bb.xk
  %.pn759 = phi { ptr, i32 } [ %i.btb, %bb.xl ], [ %i.bta, %bb.xk ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.ke) #81
          to label %.thread1409 unwind label %bb.p

bb.xk:                                            ; preds = %bb.xh, %bb.xf
  %i.bta = landingpad { ptr, i32 }
          cleanup
  br label %bb.xj

_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906: ; preds = %.noexc905, %bb.xg, %.noexc904
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ka)
  invoke fastcc void @_ZN5milli6update3new7extract10searchable34extract_word_pair_proximity_docids32WordPairProximityDocidsExtractor14run_extraction17h2a37d7b66789d489E(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(64) %2, ptr noalias noundef align 8 dereferenceable(512) %6)
          to label %bb.xm unwind label %bb.xl

bb.xl:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906
  %i.btb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.ke) #81
          to label %bb.xj unwind label %bb.p

bb.xm:                                            ; preds = %_ZN7tracing4span4Span8do_enter17h936e449ccced4d74E.exit906
  %i.btc = load i64, ptr %i.ka, align 8, !range !111, !noundef !57 ; 2 uses
  %.not761 = icmp eq i64 %i.btc, 97
  %i.btd = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7193, ptr noundef nonnull align 8 dereferenceable(24) %i.btd, i64 24, i1 false)
  br i1 %.not761, label %bb.xo, label %bb.xn

bb.xn:                                            ; preds = %bb.xm
  %.sroa.5554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %.sroa.3557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.3557.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.5554.0..sroa_idx, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ka)
  %.sroa.2556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2556.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7193, i64 24, i1 false)
  store i64 %i.btc, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.ke)
          to label %bb.yt unwind label %bb.xp

bb.xo:                                            ; preds = %bb.xm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ka)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ju, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7193, i64 24, i1 false)
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$tracing..span..Entered$GT$17h6f0320d654eece31E"(ptr nonnull %i.ke)
          to label %bb.xq unwind label %bb.xp

bb.xp:                                            ; preds = %bb.xn, %bb.xo
  %i.bte = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.ke) #81
          to label %.thread1409 unwind label %bb.p

bb.xq:                                            ; preds = %bb.xo
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$tracing..span..Span$GT$17h7a8571ebc6e9e86cE"(ptr noalias noundef align 8 dereferenceable(40) %i.ke)
          to label %bb.xs unwind label %bb.dz

bb.xr:                                            ; preds = %bb.yh
  br i1 %.sroa.0333.2, label %.thread1570, label %.thread1409
end_hunk_3
begin_hunk_4_@"_ZN98_$LT$liquid_core..model..object..map..Object$u20$as$u20$liquid_core..model..object..ObjectView$GT$8as_value17h7291b4afb3da083eE":bb.a
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @6303, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN98_$LT$meilisearch_types..index_uid..AnyIndex$u20$as$u20$index_scheduler..index_mapper..IndexUid$GT$5count17hc59c1e3ebea77a01E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([344 x i8]) align 8 captures(none) dereferenceable(344) %0, i64 noundef %1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251543)
  %i.d = load i64, ptr %3, align 8, !range !71, !alias.scope !251543, !noalias !251544, !noundef !57
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = trunc nuw i64 %i.d to i1
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !251543, !noalias !251544, !nonnull !57, !align !61
  %.sroa.011.0.i = select i1 %i.f, ptr %i.e, ptr %i.g
  %i.h = load ptr, ptr %.sroa.011.0.i, align 8, !noalias !251544, !nonnull !57, !noundef !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !noalias !251545, !nonnull !57, !noundef !57
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = icmp eq i64 %1, %i.k
  br i1 %i.l, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !251545
  store ptr @2206, ptr %i.b, align 8, !noalias !251545
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.m, align 8, !noalias !251545
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.n, align 8, !noalias !251545
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8, !noalias !251545
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.p, align 8, !noalias !251545
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2215) #80, !noalias !251545
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !251545
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !251543, !noalias !251544, !noundef !57 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !60

bb.d:                                             ; preds = %bb.c
  %i.s = call noundef i32 @mdb_stat(ptr noundef nonnull %i.r, i32 noundef %2, ptr noundef nonnull %i.a) #79, !noalias !251545
  %i.t = call { i32, i32 } @_ZN4heed3mdb10lmdb_error10mdb_result17h91f495da5828afd4E(i32 noundef %i.s), !noalias !251545 ; 2 uses
  %i.u = extractvalue { i32, i32 } %i.t, 0        ; 2 uses
  %.not14.i = icmp eq i32 %i.u, 22
  br i1 %.not14.i, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2201) #80, !noalias !251545
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = extractvalue { i32, i32 } %i.t, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @"_ZN87_$LT$heed..Error$u20$as$u20$core..convert..From$LT$heed..mdb..lmdb_error..Error$GT$$GT$4from17hea4d5b0dd9c7836fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, i32 noundef %i.u, i32 %i.v), !noalias !251543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !251545
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.622.0.copyload = load i64, ptr %.sroa.622.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load <2 x i32>, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store <2 x i32> %i.x, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.622.0.copyload, ptr %.sroa.638.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !251545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !251545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink45 = phi i64 [ 8, %bb.g ], [ 24, %bb.f ]
  %.sroa.8.0.copyload.i.sink = phi i64 [ %.sroa.8.0.copyload.i, %bb.g ], [ %.sroa.7.0.copyload, %bb.f ]
  %.sink = phi i64 [ 152, %bb.g ], [ 127, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.sink45
  store i64 %.sroa.8.0.copyload.i.sink, ptr %i.y, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN98_$LT$meilisearch_types..index_uid..DsrIndex$u20$as$u20$index_scheduler..index_mapper..IndexUid$GT$12try_from_uid17h59ba2711b2af2b70E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([344 x i8]) align 8 captures(none) dereferenceable(344) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %2, 10
  br i1 %.not, label %bb.d, label %.split3

.split3:                                          ; preds = %bb.a
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !85

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %.split3
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !251560
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #79, !noalias !251560 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit"

bb.c:                                             ; preds = %bb.b, %.split3
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.b ], [ 0, %.split3 ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80, !noalias !251561
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !251562
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 1
  %i.f = xor i64 %i.e, 7232615440925945134
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load i16, ptr %i.g, align 1
  %i.i = zext i16 %i.h to i64
  %i.j = xor i64 %i.i, 29299
  %i.k = or i64 %i.f, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %.split

.split:                                           ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !251563
  %i.o = tail call noundef dereferenceable_or_null(10) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 10, i64 noundef range(i64 1, 9) 1) #79, !noalias !251563 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit9"

bb.e:                                             ; preds = %.split
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80, !noalias !251564
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit9": ; preds = %.split
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.o, ptr noundef nonnull readonly align 1 dereferenceable(10) %1, i64 10, i1 false), !noalias !251565
  br label %bb.f

bb.f:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit9"
  %.sroa.6.0 = phi ptr [ %i.o, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit9" ], [ %.sroa.10.0.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit" ]
  store i64 115, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  store i64 152, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN98_$LT$meilisearch_types..index_uid..DsrIndex$u20$as$u20$index_scheduler..index_mapper..IndexUid$GT$5count17hb4e47228114b2fdfE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([344 x i8]) align 8 captures(none) dereferenceable(344) initializes((0, 16)) %0, i64 noundef %1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.7.sroa.8 = alloca [16 x i8], align 1     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h047f5fe9fe85c352E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, i64 %1, i32 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @905, i64 noundef 10)
  %i.b = load i32, ptr %i.a, align 8, !range !145, !noundef !57 ; 2 uses
  %.not = icmp eq i32 %i.b, 5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.010.0.copyload = load i8, ptr %i.c, align 4 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.7.sroa.8, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.615.0..sroa_idx, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.724.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7.0..sroa_idx, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.623.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.7.sroa.8, i64 16, i1 false)
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.010.0.copyload, ptr %.sroa.522.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8)
  %. = zext nneg i8 %.sroa.010.0.copyload to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %., ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 152, %bb.c ], [ 127, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17h14e18aefbfb6bcebE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 3, 16) %2, ptr nofree readonly captures(none) %.8.val, i64 %.16.val) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !74, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6304) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251605)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !251606, !noalias !251607, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !65, !alias.scope !251606, !noalias !251607, !noundef !57
  %i.g = icmp eq i8 %i.f, 1
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !noalias !251608 ; 6 uses
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251612)
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !251613, !noalias !251614, !noundef !57 ; 3 uses
  %i.j = load i64, ptr %.val.i.i.i, align 8, !range !56, !alias.scope !251613, !noalias !251614, !noundef !57
  %i.k = icmp eq i64 %i.j, %i.i
  br i1 %i.k, label %bb.e, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i", !prof !60

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, i64 noundef %i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !251614
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !251615, !noalias !251614
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i": ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.i, %bb.d ], [ %.pre.i.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !251615, !noalias !251614, !nonnull !57, !noundef !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i8 44, ptr %i.p, align 1, !noalias !251616
  %i.q = add nuw i64 %i.l, 1
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !251615, !noalias !251614
  %.val9.pre.i.i.i = load ptr, ptr %i.d, align 8, !noalias !251608
  br label %bb.f

bb.f:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i", %bb.c
  %.val9.i.i.i = phi ptr [ %.val.i.i.i, %bb.c ], [ %.val9.pre.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i" ]
  store i8 2, ptr %i.e, align 1, !alias.scope !251606, !noalias !251607
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 2, 20) %2)
  %.val.i7.i.i = load ptr, ptr %i.d, align 8, !noalias !251617, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251621)
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i7.i.i, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !251622, !noalias !251623, !noundef !57 ; 3 uses
  %i.t = load i64, ptr %.val.i7.i.i, align 8, !range !56, !alias.scope !251622, !noalias !251623, !noundef !57
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.g, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h109770cd78803a66E.exit", !prof !60

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i7.i.i, i64 noundef %i.s, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !251623
  %.pre.i.i.i.i.i.i.i8.i.i = load i64, ptr %i.r, align 8, !alias.scope !251624, !noalias !251623
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h109770cd78803a66E.exit"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h109770cd78803a66E.exit": ; preds = %bb.f, %bb.g
  %i.v = phi i64 [ %i.s, %bb.f ], [ %.pre.i.i.i.i.i.i.i8.i.i, %bb.g ] ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i7.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !251624, !noalias !251623, !nonnull !57, !noundef !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 58, ptr %i.z, align 1, !noalias !251625
  %i.aa = add nuw i64 %i.v, 1
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !251624, !noalias !251623
  %.val11.i.i.i = load ptr, ptr %i.d, align 8, !noalias !251617, !nonnull !57, !align !61, !noundef !57
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val11.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.8.val, i64 noundef %.16.val)
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17h1fe04ab1dcafa749E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i8 %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !74, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6304) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251663)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !251664, !noalias !251665, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !65, !alias.scope !251664, !noalias !251665, !noundef !57
  %i.g = icmp eq i8 %i.f, 1
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !noalias !251666 ; 6 uses
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251670)
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !251671, !noalias !251672, !noundef !57 ; 3 uses
  %i.j = load i64, ptr %.val.i.i.i, align 8, !range !56, !alias.scope !251671, !noalias !251672, !noundef !57
  %i.k = icmp eq i64 %i.j, %i.i
  br i1 %i.k, label %bb.e, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i", !prof !60

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, i64 noundef %i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !251672
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !251673, !noalias !251672
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i": ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.i, %bb.d ], [ %.pre.i.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !251673, !noalias !251672, !nonnull !57, !noundef !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i8 44, ptr %i.p, align 1, !noalias !251674
  %i.q = add nuw i64 %i.l, 1
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !251673, !noalias !251672
  %.val9.pre.i.i.i = load ptr, ptr %i.d, align 8, !noalias !251666
  br label %bb.f

bb.f:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i", %bb.c
  %.val9.i.i.i = phi ptr [ %.val.i.i.i, %bb.c ], [ %.val9.pre.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17he3b1a2f4a939052dE.exit.i.i.i.i" ]
  store i8 2, ptr %i.e, align 1, !alias.scope !251664, !noalias !251665
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val9.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1392, i64 noundef 19)
  %.val.i6.i.i = load ptr, ptr %i.d, align 8, !noalias !251675, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251679)
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i6.i.i, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !251680, !noalias !251681, !noundef !57 ; 3 uses
  %i.t = load i64, ptr %.val.i6.i.i, align 8, !range !56, !alias.scope !251680, !noalias !251681, !noundef !57
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.g, label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i, !prof !60

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i, i64 noundef %i.s, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !251681
  %.pre.i.i.i.i.i.i.i7.i.i = load i64, ptr %i.r, align 8, !alias.scope !251682, !noalias !251681
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.v = phi i64 [ %i.s, %bb.f ], [ %.pre.i.i.i.i.i.i.i7.i.i, %bb.g ] ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i6.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !251682, !noalias !251681, !nonnull !57, !noundef !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 58, ptr %i.z, align 1, !noalias !251683
  %i.aa = add nuw i64 %i.v, 1
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !251682, !noalias !251681
  %.val10.i.i.i = load ptr, ptr %i.d, align 8, !noalias !251675, !nonnull !57, !noundef !57 ; 2 uses
  %i.ab = trunc nuw i8 %.0.val to i1
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val10.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1866, i64 noundef 4)
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h310f0610d027ebbcE.exit"

bb.i:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17hc3c982f6b4e8fc9cE.exit.i.i.i
  tail call fastcc void @_ZN10serde_json3ser18format_escaped_str17hdc1eee1856b98b5bE(ptr nonnull %.val10.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1865, i64 noundef 6)
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h310f0610d027ebbcE.exit"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h310f0610d027ebbcE.exit": ; preds = %bb.h, %bb.i
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN98_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStructVariant$GT$15serialize_field17h2b4a9d678d0abd2cE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(17) %1) unnamed_addr #0 {
end_hunk_4
