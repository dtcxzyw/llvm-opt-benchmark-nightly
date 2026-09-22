Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E:bb.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp slt i8 %.sroa.01.2.extract.trunc, 26
  tail call void @llvm.assume(i1 %i.u)
  %.sroa.021.0.insert.insert = zext i24 %2 to i32
  %i.v = icmp eq i32 %.sroa.016.0.insert.insert, %.sroa.021.0.insert.insert
  br i1 %i.v, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i8, ptr %i.w, align 4, !noundef !21 ; 2 uses
  %i.y = icmp ult i8 %i.x, 60
  tail call void @llvm.assume(i1 %i.y)
  %i.z = zext nneg i8 %i.x to i16
  %i.aa = sext i8 %i.b to i16
  %i.ab = sub nsw i16 %i.z, %i.aa
  %i.ac = sext i8 %.sroa.01.0.extract.trunc to i16
  %i.ad = add nsw i16 %i.ab, %i.ac                ; 9 uses
  %i.ae = icmp sgt i16 %i.ad, -1
  br i1 %i.ae, label %bb.e, label %bb.d, !prof !49

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !range !106, !noundef !21 ; 2 uses
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
  br i1 %i.al, label %bb.h, label %bb.i, !prof !49

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
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !21 ; 2 uses
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
  br i1 %i.aw, label %bb.m, label %bb.l, !prof !49

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
  br i1 %i.bb, label %bb.p, label %bb.q, !prof !49

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
  %i.bf = load i8, ptr %i.be, align 2, !noundef !21 ; 2 uses
  %i.bg = icmp ult i8 %i.bf, 24
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = sub nsw i8 %.sroa.01.2.extract.trunc, %i.i
  %i.bi = add nsw i8 %i.bh, %.sroa.043.0
  %i.bj = add nsw i8 %i.bi, %i.bf                 ; 13 uses
  %i.bk = icmp sgt i8 %i.bj, -1
  br i1 %i.bk, label %bb.u, label %bb.t, !prof !49

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
  br i1 %i.bp, label %bb.z, label %bb.aa, !prof !49

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
  %i.bv = load i32, ptr %i.bu, align 4, !range !106, !noundef !21 ; 2 uses
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
  br i1 %i.cd, label %bb.af, label %bb.ag, !prof !23

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
  br i1 %i.cl, label %bb.ah, label %bb.ai, !prof !23

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
  %i.ct = load i32, ptr %1, align 4, !noundef !21 ; 2 uses
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
  %i.g = load i64, ptr %i.a, align 8, !range !32, !noundef !21
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !21 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i32, ptr %i.k, align 8, !range !84, !noundef !21 ; 3 uses
  %i.m = urem i64 %i.j, 60                        ; 4 uses
  %i.n = udiv i64 %i.j, 60
  %i.o = urem i64 %i.n, 60                        ; 4 uses
  br i1 %i.h, label %bb.b, label %_ZN4time4time4Time17adjusting_add_std17hf0195822e7fec443E.exit.i.thread

bb.b:                                             ; preds = %bb.a
  %i.p = sub nsw i64 0, %i.o
  %i.q = udiv i64 %i.j, 3600
  %i.r = urem i64 %i.q, 24                        ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.thread.i.i, label %.thread.i.i.thread, !prof !49

.thread.i.i.thread:                               ; preds = %bb.b
  %i.s = sub nuw nsw i32 1000000000, %i.l
  %i.t = xor i64 %i.m, -1
  br label %.thread43.i.i.thread

.thread.i.i:                                      ; preds = %bb.b
  %i.u = sub nsw i64 0, %i.m
  %.not83 = icmp eq i64 %i.m, 0
  br i1 %.not83, label %.thread43.i.i, label %.thread43.i.i.thread, !prof !39

.thread43.i.i.thread:                             ; preds = %.thread.i.i, %.thread.i.i.thread
  %.sroa.04.040.i.i41 = phi i32 [ %i.s, %.thread.i.i.thread ], [ 0, %.thread.i.i ]
  %.sroa.09.041.i.i39 = phi i64 [ %i.t, %.thread.i.i.thread ], [ %i.u, %.thread.i.i ]
  %i.v = add nsw i64 %.sroa.09.041.i.i39, 60
  %i.w = xor i64 %i.o, -1
  br label %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread

.thread43.i.i:                                    ; preds = %.thread.i.i
  %.not84 = icmp eq i64 %i.o, 0
  br i1 %.not84, label %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i, label %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread, !prof !39

_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread: ; preds = %.thread43.i.i, %.thread43.i.i.thread
  %.sroa.09.150.i.i49 = phi i64 [ %i.v, %.thread43.i.i.thread ], [ 0, %.thread43.i.i ]
  %.sroa.016.051.i.i47 = phi i64 [ %i.w, %.thread43.i.i.thread ], [ %i.p, %.thread43.i.i ]
  %.sroa.04.040.i.i4046 = phi i32 [ %.sroa.04.040.i.i41, %.thread43.i.i.thread ], [ 0, %.thread43.i.i ]
  %i.x = add nsw i64 %.sroa.016.051.i.i47, 60
  %i.y = icmp ugt i64 %i.j, 185542587187199
  br i1 %i.y, label %bb.k, label %bb.e

_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i: ; preds = %.thread43.i.i
  %.not85 = icmp eq i64 %i.r, 0
  br i1 %.not85, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i
  %or.cond = icmp ugt i64 %i.j, 377705203199
  br i1 %or.cond, label %bb.f, label %_ZN4time4date4Date15checked_sub_std17h167d6e489177bdf9E.exit.i, !prof !21881

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
  %.sroa.09.150.i.i485666 = phi i64 [ %.sroa.09.150.i.i49, %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread ], [ 0, %bb.d ] ; 2 uses
  %.sroa.04.040.i.i40455865 = phi i32 [ %.sroa.04.040.i.i4046, %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread ], [ 0, %bb.d ] ; 2 uses
  %.sroa.016.1.i.i6064 = phi i64 [ %i.x, %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread ], [ 0, %bb.d ] ; 2 uses
  %.pn = phi i64 [ 23, %_ZN4time4time4Time17adjusting_sub_std17hf29ef2d769c2f610E.exit.i.thread ], [ 24, %bb.d ] ; 2 uses
  %i.bj = udiv i64 %i.j, 86400
  %i.bk = trunc nuw nsw i64 %i.bj to i32          ; 2 uses
  %i.bl = add i32 %i.bk, -4371588
  %or.cond.i.i16.i = icmp ult i32 %i.bl, -7304484
  br i1 %or.cond.i.i16.i, label %bb.k, label %bb.g, !prof !44

bb.f:                                             ; preds = %bb.c
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @87, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1087) #57, !noalias !21882
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
  br i1 %i.ct, label %bb.h, label %bb.i, !prof !23

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
  %i.cz = icmp slt i32 %i.cx, 1
  %i.da = sub nsw i32 1, %i.cx
end_hunk_0
begin_hunk_1_@"_ZN87_$LT$meilisearch_types..settings..Settings$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc718a1a8acdae3dfE":bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = tail call fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h26c013d7f6254ff4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dc)
  br i1 %i.dd, label %bb.r, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.df = load i64, ptr %i.de, align 8, !range !50, !noundef !21 ; 2 uses
  %i.dg = icmp slt i64 %i.df, 0
  %i.dh = add i64 %i.df, -9223372036854775807
  %i.di = select i1 %i.dg, i64 %i.dh, i64 0       ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.dk = load i64, ptr %i.dj, align 8, !range !50, !noundef !21 ; 2 uses
  %i.dl = icmp slt i64 %i.dk, 0
  %i.dm = add i64 %i.dk, -9223372036854775807
  %i.dn = select i1 %i.dl, i64 %i.dm, i64 0
  %i.do = icmp eq i64 %i.di, %i.dn
  br i1 %i.do, label %bb.s, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.s:                                             ; preds = %bb.r
  %i.dp = icmp eq i64 %i.di, 0
  br i1 %i.dp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 664
  %.val43.a = load ptr, ptr %i.dq, align 8, !nonnull !21, !noundef !21
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 672
  %.val44.a = load i64, ptr %i.dr, align 8, !noundef !21
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 664
  %.val45.a = load ptr, ptr %i.ds, align 8, !nonnull !21, !noundef !21
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 672
  %.val46.a = load i64, ptr %i.dt, align 8, !noundef !21
  %i.du = tail call fastcc noundef zeroext i1 @"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hc1a92d777e55ed8dE"(ptr nonnull %.val43.a, i64 %.val44.a, ptr nonnull %.val45.a, i64 %.val46.a)
  br i1 %i.du, label %bb.u, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.dw = load i64, ptr %i.dv, align 8, !range !50, !noundef !21 ; 2 uses
  %i.dx = icmp slt i64 %i.dw, 0
  %i.dy = add i64 %i.dw, -9223372036854775807
  %i.dz = select i1 %i.dx, i64 %i.dy, i64 0       ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.eb = load i64, ptr %i.ea, align 8, !range !50, !noundef !21 ; 2 uses
  %i.ec = icmp slt i64 %i.eb, 0
  %i.ed = add i64 %i.eb, -9223372036854775807
  %i.ee = select i1 %i.ec, i64 %i.ed, i64 0
  %i.ef = icmp eq i64 %i.dz, %i.ee
  br i1 %i.ef, label %bb.v, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.v:                                             ; preds = %bb.u
  %i.eg = icmp eq i64 %i.dz, 0
  br i1 %i.eg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 688
  %.val47.a = load ptr, ptr %i.eh, align 8, !nonnull !21, !noundef !21
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 696
  %.val48.a = load i64, ptr %i.ei, align 8, !noundef !21
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 688
  %.val49 = load ptr, ptr %i.ej, align 8, !nonnull !21, !noundef !21
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 696
  %.val50.a = load i64, ptr %i.ek, align 8, !noundef !21
  %i.el = tail call fastcc noundef zeroext i1 @"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hb54e4a5f71b413aeE"(ptr nonnull %.val47.a, i64 %.val48.a, ptr nonnull %.val49, i64 %.val50.a)
  br i1 %i.el, label %bb.x, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.en = load i64, ptr %i.em, align 8, !range !36, !noundef !21 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ep = load i64, ptr %i.eo, align 8, !range !36, !noundef !21
  %i.eq = icmp eq i64 %i.en, %i.ep
  br i1 %i.eq, label %bb.y, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.y:                                             ; preds = %bb.x
  %i.er = icmp eq i64 %i.en, 0
  br i1 %i.er, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.eu = tail call fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h26c013d7f6254ff4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.es, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.et)
  br i1 %i.eu, label %bb.aa, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ew = load i64, ptr %i.ev, align 8, !range !36, !noundef !21 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ey = load i64, ptr %i.ex, align 8, !range !36, !noundef !21
  %i.ez = icmp eq i64 %i.ew, %i.ey
  br i1 %i.ez, label %bb.ab, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.ab:                                            ; preds = %bb.aa
  %i.fa = icmp eq i64 %i.ew, 0
  br i1 %i.fa, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fd = tail call fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h26c013d7f6254ff4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fc)
  br i1 %i.fd, label %bb.ad, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ff = load i64, ptr %i.fe, align 8, !range !36, !noundef !21 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.fh = load i64, ptr %i.fg, align 8, !range !36, !noundef !21
  %i.fi = icmp eq i64 %i.ff, %i.fh
  br i1 %i.fi, label %bb.ae, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.ae:                                            ; preds = %bb.ad
  %i.fj = icmp eq i64 %i.ff, 0
  br i1 %i.fj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.fm = tail call fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h26c013d7f6254ff4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fl)
  br i1 %i.fm, label %bb.ag, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fo = load i64, ptr %i.fn, align 8, !range !36, !noundef !21 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fq = load i64, ptr %i.fp, align 8, !range !36, !noundef !21
  %i.fr = icmp eq i64 %i.fo, %i.fq
  br i1 %i.fr, label %bb.ah, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.ah:                                            ; preds = %bb.ag
  %i.fs = icmp eq i64 %i.fo, 0
  br i1 %i.fs, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.fv = tail call fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h26c013d7f6254ff4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ft, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fu)
  br i1 %i.fv, label %bb.aj, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fx = load i64, ptr %i.fw, align 8, !range !36, !noundef !21 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.fz = load i64, ptr %i.fy, align 8, !range !36, !noundef !21
  %i.ga = icmp eq i64 %i.fx, %i.fz
  br i1 %i.ga, label %bb.ak, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.ak:                                            ; preds = %bb.aj
  %i.gb = icmp eq i64 %i.fx, 0
  br i1 %i.gb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ge = tail call fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc17cb0316b02f439E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gd)
  br i1 %i.ge, label %bb.am, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.gg = load i64, ptr %i.gf, align 8, !range !50, !noundef !21 ; 2 uses
  %i.gh = icmp slt i64 %i.gg, 0
  %i.gi = add i64 %i.gg, -9223372036854775807
  %i.gj = select i1 %i.gh, i64 %i.gi, i64 0       ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.gl = load i64, ptr %i.gk, align 8, !range !50, !noundef !21 ; 2 uses
  %i.gm = icmp slt i64 %i.gl, 0
  %i.gn = add i64 %i.gl, -9223372036854775807
  %i.go = select i1 %i.gm, i64 %i.gn, i64 0
  %i.gp = icmp eq i64 %i.gj, %i.go
  br i1 %i.gp, label %bb.an, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.an:                                            ; preds = %bb.am
  %i.gq = icmp eq i64 %i.gj, 0
  br i1 %i.gq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 720
  %.val28.a = load i64, ptr %i.gr, align 8, !noundef !21 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 720
  %.val30 = load i64, ptr %i.gs, align 8, !noundef !21
  %.not.i.i82 = icmp eq i64 %.val28.a, %.val30
  br i1 %.not.i.i82, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit": ; preds = %bb.ao
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 712
  %.val29 = load ptr, ptr %i.gt, align 8, !nonnull !21, !noundef !21
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 712
  %.val = load ptr, ptr %i.gu, align 8, !nonnull !21, !noundef !21
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val29, i64 %.val28.a), !alias.scope !30937
  %i.gv = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.gv, label %bb.ap, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.ap:                                            ; preds = %bb.an, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit"
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.gx = load i8, ptr %i.gw, align 8, !range !38, !noundef !21 ; 3 uses
  %i.gy = icmp samesign ult i8 %i.gx, 2           ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.ha = load i8, ptr %i.gz, align 8, !range !38, !noundef !21 ; 3 uses
  %i.hb = icmp samesign ugt i8 %i.ha, 1
  %i.hc = icmp eq i8 %i.gx, %i.ha
  %not. = xor i1 %i.gy, true
  %i.hd = and i1 %i.hc, %not.
  %i.he = select i1 %i.hb, i1 %i.hd, i1 %i.gy
  br i1 %i.he, label %2, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

2:                                                ; preds = %bb.ap
  %3 = and i8 %i.ha, 1
  %4 = icmp ne i8 %i.gx, %3
  %or.cond.not = and i1 %i.gy, %4
  br i1 %or.cond.not, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread", label %bb.aq

bb.aq:                                            ; preds = %2
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !range !55, !noundef !21 ; 2 uses
  %i.hh = tail call i64 @llvm.usub.sat.i64(i64 %i.hg, i64 2)
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !range !55, !noundef !21
  %i.hk = tail call i64 @llvm.usub.sat.i64(i64 %i.hj, i64 2)
  %i.hl = icmp eq i64 %i.hh, %i.hk
  br i1 %i.hl, label %bb.ar, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.ar:                                            ; preds = %bb.aq
  %i.hm = icmp samesign ult i64 %i.hg, 3
  br i1 %i.hm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hn = tail call fastcc noundef zeroext i1 @"_ZN82_$LT$meilisearch_types..settings..TypoSettings$u20$as$u20$core..cmp..PartialEq$GT$2eq17h552a020dd64ae5dcE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.hf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.hi)
  br i1 %i.hn, label %bb.at, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !range !55, !noundef !21 ; 2 uses
  %i.hq = tail call i64 @llvm.usub.sat.i64(i64 %i.hp, i64 2)
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !range !55, !noundef !21
  %i.ht = tail call i64 @llvm.usub.sat.i64(i64 %i.hs, i64 2)
  %i.hu = icmp eq i64 %i.hq, %i.ht
  br i1 %i.hu, label %bb.au, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.au:                                            ; preds = %bb.at
  %i.hv = icmp samesign ult i64 %i.hp, 3
  br i1 %i.hv, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hw = tail call fastcc noundef zeroext i1 @"_ZN86_$LT$meilisearch_types..settings..FacetingSettings$u20$as$u20$core..cmp..PartialEq$GT$2eq17h01af5596a6ddf5a0E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ho, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hr)
  br i1 %i.hw, label %bb.aw, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.hy = load i64, ptr %i.hx, align 8, !range !55, !noundef !21 ; 4 uses
  %i.hz = tail call i64 @llvm.usub.sat.i64(i64 %i.hy, i64 2)
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ib = load i64, ptr %i.ia, align 8, !range !55, !noundef !21 ; 2 uses
  %i.ic = tail call i64 @llvm.usub.sat.i64(i64 %i.ib, i64 2)
  %i.id = icmp eq i64 %i.hz, %i.ic
  br i1 %i.id, label %bb.ax, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.ax:                                            ; preds = %bb.aw
  %i.ie = icmp samesign ult i64 %i.hy, 3
  br i1 %i.ie, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.if = icmp eq i64 %i.hy, %i.ib
  br i1 %i.if, label %"_ZN82_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hfdab3a0d1938b721E.exit", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

"_ZN82_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hfdab3a0d1938b721E.exit": ; preds = %bb.ay
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.val54.a = load i64, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.val52 = load i64, ptr %i.ih, align 8
  %or.cond.i = icmp ne i64 %i.hy, 0
  %i.ii = icmp eq i64 %.val52, %.val54.a
  %spec.select.i = select i1 %or.cond.i, i1 true, i1 %i.ii
  br i1 %spec.select.i, label %bb.az, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.az:                                            ; preds = %bb.ax, %"_ZN82_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hfdab3a0d1938b721E.exit"
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ik = load i64, ptr %i.ij, align 8, !range !36, !noundef !21 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.im = load i64, ptr %i.il, align 8, !range !36, !noundef !21
  %i.in = icmp eq i64 %i.ik, %i.im
  br i1 %i.in, label %bb.ba, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.ba:                                            ; preds = %bb.az
  %i.io = icmp eq i64 %i.ik, 0
  br i1 %i.io, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ir = tail call fastcc noundef zeroext i1 @"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h522e16044a4b4305E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ip, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iq)
  br i1 %i.ir, label %bb.bc, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.it = load i64, ptr %i.is, align 8, !range !36, !noundef !21 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.iw = load i64, ptr %i.iv, align 8, !range !36, !noundef !21
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.iy = icmp eq i64 %i.it, %i.iw
  br i1 %i.iy, label %bb.bd, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.bd:                                            ; preds = %bb.bc
  %i.iz = icmp eq i64 %i.it, 0
  br i1 %i.iz, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ja = load i64, ptr %i.iu, align 8, !noundef !21
  %i.jb = load i64, ptr %i.ix, align 8, !noundef !21
  %i.jc = icmp eq i64 %i.ja, %i.jb
  br i1 %i.jc, label %bb.bf, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.je = load i64, ptr %i.jd, align 8, !range !50, !noundef !21 ; 2 uses
  %i.jf = icmp slt i64 %i.je, 0
  %i.jg = add i64 %i.je, -9223372036854775807
  %i.jh = select i1 %i.jf, i64 %i.jg, i64 0       ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.jj = load i64, ptr %i.ji, align 8, !range !50, !noundef !21 ; 2 uses
  %i.jk = icmp slt i64 %i.jj, 0
  %i.jl = add i64 %i.jj, -9223372036854775807
  %i.jm = select i1 %i.jk, i64 %i.jl, i64 0
  %i.jn = icmp eq i64 %i.jh, %i.jm
  br i1 %i.jn, label %bb.bg, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.bg:                                            ; preds = %bb.bf
  %i.jo = icmp eq i64 %i.jh, 0
  br i1 %i.jo, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 736
  %.val55.a = load ptr, ptr %i.jp, align 8, !nonnull !21, !noundef !21
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 744
  %.val56.a = load i64, ptr %i.jq, align 8, !noundef !21
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 736
  %.val57 = load ptr, ptr %i.jr, align 8, !nonnull !21, !noundef !21
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 744
  %.val58 = load i64, ptr %i.js, align 8, !noundef !21
  %i.jt = tail call fastcc noundef zeroext i1 @"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hdfd485f3900883c7E"(ptr nonnull %.val55.a, i64 %.val56.a, ptr nonnull %.val57, i64 %.val58)
  br i1 %i.jt, label %bb.bi, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 753
  %i.jv = load i8, ptr %i.ju, align 1, !range !38, !noundef !21 ; 3 uses
  %i.jw = icmp samesign ult i8 %i.jv, 2           ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 753
  %i.jy = load i8, ptr %i.jx, align 1, !range !38, !noundef !21 ; 3 uses
  %i.jz = icmp samesign ugt i8 %i.jy, 1
  %i.ka = icmp eq i8 %i.jv, %i.jy
  %not.90 = xor i1 %i.jw, true
  %i.kb = and i1 %i.ka, %not.90
  %i.kc = select i1 %i.jz, i1 %i.kb, i1 %i.jw
  %.not.a = xor i1 %i.kc, true
  %i.kd = icmp ne i8 %i.jv, %i.jy
  %or.cond24.not = and i1 %i.jw, %i.kd
  %or.cond.a = or i1 %or.cond24.not, %.not.a
  br i1 %or.cond.a, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread", label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 754
  %i.kf = load i8, ptr %i.ke, align 2, !range !38, !noundef !21 ; 3 uses
  %i.kg = icmp samesign ult i8 %i.kf, 2           ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 754
  %i.ki = load i8, ptr %i.kh, align 2, !range !38, !noundef !21 ; 3 uses
  %i.kj = icmp samesign ugt i8 %i.ki, 1
  %i.kk = icmp eq i8 %i.kf, %i.ki
  %not.91 = xor i1 %i.kg, true
  %i.kl = and i1 %i.kk, %not.91
  %i.km = select i1 %i.kj, i1 %i.kl, i1 %i.kg
  br i1 %i.km, label %5, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

5:                                                ; preds = %bb.bj
  %6 = and i8 %i.ki, 1
  %7 = icmp ne i8 %i.kf, %6
  %or.cond27.not = and i1 %i.kg, %7
  br i1 %or.cond27.not, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread", label %bb.bk

bb.bk:                                            ; preds = %5
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !range !55, !noundef !21 ; 2 uses
  %i.kp = tail call i64 @llvm.usub.sat.i64(i64 %i.ko, i64 2)
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !range !55, !noundef !21
  %i.ks = tail call i64 @llvm.usub.sat.i64(i64 %i.kr, i64 2)
  %i.kt = icmp eq i64 %i.kp, %i.ks
  br i1 %i.kt, label %bb.bl, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.bl:                                            ; preds = %bb.bk
  %i.ku = icmp samesign ult i64 %i.ko, 3
  br i1 %i.ku, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.kv = tail call fastcc noundef zeroext i1 @"_ZN74_$LT$milli..update..chat..ChatSettings$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b149e9f51b7ab3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.kn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.kq)
  br i1 %i.kv, label %bb.bn, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.thread": ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i, %.lr.ph.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i68, %.lr.ph.i.i63, %.split.i.i, %bb.l, %bb.o, %.lr.ph.i.i78, %bb.n, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.i.i.i.i", %_ZN4core3cmp9PartialEq2ne17h52a6103a9f868bcaE.exit.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %bb.ay, %bb.ao, %bb.i, %bb.f, %bb.c, %5, %2, %bb.q, %bb.t, %bb.w, %bb.z, %bb.ac, %bb.af, %bb.ai, %bb.al, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit", %bb.as, %bb.av, %"_ZN82_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hfdab3a0d1938b721E.exit", %bb.bb, %bb.be, %bb.bh, %bb.bm, %bb.a, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit", %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit74", %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h671c191f740da703E.exit", %bb.r, %bb.u, %bb.x, %bb.aa, %bb.ad, %bb.ag, %bb.aj, %bb.am, %bb.ap, %bb.aq, %bb.at, %bb.aw, %bb.az, %bb.bc, %bb.bf, %bb.bi, %bb.bj, %bb.bk, %bb.bn
  %.sroa.0.0 = phi i1 [ true, %bb.bn ], [ false, %bb.bk ], [ false, %bb.bj ], [ false, %bb.bi ], [ false, %bb.bf ], [ false, %bb.bc ], [ false, %bb.az ], [ false, %bb.aw ], [ false, %bb.at ], [ false, %bb.aq ], [ false, %bb.ap ], [ false, %bb.am ], [ false, %bb.aj ], [ false, %bb.ag ], [ false, %bb.ad ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.u ], [ false, %bb.r ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h671c191f740da703E.exit" ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit74" ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit" ], [ false, %bb.a ], [ false, %bb.bm ], [ false, %5 ], [ false, %bb.ay ], [ false, %bb.bh ], [ false, %bb.be ], [ false, %bb.bb ], [ false, %"_ZN82_$LT$milli..update..settings..Setting$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hfdab3a0d1938b721E.exit" ], [ false, %bb.av ], [ false, %bb.as ], [ false, %2 ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit" ], [ false, %bb.al ], [ false, %bb.ai ], [ false, %bb.af ], [ false, %bb.ac ], [ false, %bb.z ], [ false, %bb.w ], [ false, %bb.t ], [ false, %bb.q ], [ false, %bb.i ], [ false, %.split.i.i ], [ false, %bb.ao ], [ false, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i.i.i.i ], [ false, %bb.c ], [ false, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i68 ], [ false, %bb.f ], [ false, %.lr.ph.i.i.i.i.i.i ], [ false, %_ZN4core3cmp9PartialEq2ne17h52a6103a9f868bcaE.exit.i.i ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h6dfee67475506807E.exit.i.i.i.i" ], [ false, %bb.n ], [ false, %.lr.ph.i.i78 ], [ false, %bb.o ], [ false, %bb.l ], [ false, %.lr.ph.i.i63 ], [ false, %.lr.ph.i.i ], [ false, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN87_$LT$meilisearch_types..settings..Unchecked$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17hfba2e9417e96f5cdE"(ptr dead_on_unwind noalias noundef writable sret([752 x i8]) align 8 captures(address) dereferenceable(752) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [752 x i8], align 8               ; 6 uses
  %i.c = alloca [752 x i8], align 8               ; 4 uses
  %i.d = alloca [752 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN6utoipa7openapi6schema6Object7builder17hb3dfec70c75ef677E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.e, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE"(ptr noalias noundef align 8 dereferenceable(24) %1) #55
          to label %common.resume unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !30946)
  call void @llvm.experimental.noalias.scope.decl(metadata !30947)
  call void @llvm.experimental.noalias.scope.decl(metadata !30948)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 432 ; 2 uses
  %.val.i = load i64, ptr %i.f, align 8, !range !24, !alias.scope !30947, !noalias !30949, !noundef !21 ; 3 uses
  %i.g = icmp ne i64 %.val.i, -9223372036854775807
  call void @llvm.assume(i1 %i.g)
  %or.cond.i.i = icmp slt i64 %.val.i, 1
  br i1 %or.cond.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %.val2.i = load ptr, ptr %i.h, align 8, !alias.scope !30947, !noalias !30949, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !30950
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i64 -9223372036854775806, ptr %i.f, align 8, !alias.scope !30951, !noalias !30946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.c, ptr noundef nonnull align 8 dereferenceable(752) %i.b, i64 752, i1 false), !alias.scope !30952, !noalias !30948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775808, ptr %i.a, align 8
  invoke void @_ZN6utoipa7openapi6schema13ObjectBuilder7default17h8495ed9df1cc8220E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(752) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.a)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @"_ZN6utoipa7openapi6schema157_$LT$impl$u20$core..convert..From$LT$utoipa..openapi..schema..ObjectBuilder$GT$$u20$for$u20$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$4from17h18fe66201e37aeb5E"(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(752) %i.d)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !30953)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !30954, !nonnull !21, !noundef !21 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !30954, !noundef !21
  invoke fastcc void @"_ZN4core3ptr92drop_in_place$LT$$u5b$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$u5d$$GT$17h9c20bce28d094aecE"(ptr noalias noundef nonnull align 8 %i.j, i64 noundef %i.l)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c97d73e757b972cE.exit.i" unwind label %bb.h, !noalias !30953, !inline_history !0

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i3 = load i64, ptr %1, align 8, !range !22, !alias.scope !30953, !noundef !21 ; 2 uses
  %i.n = icmp eq i64 %.val2.i3, 0
  br i1 %i.n, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = mul nuw i64 %.val2.i3, 752
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !30953, !inline_history !26
  br label %common.resume

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c97d73e757b972cE.exit.i": ; preds = %bb.g
  %.val.i4 = load i64, ptr %1, align 8, !range !22, !alias.scope !30953, !noundef !21 ; 2 uses
  %i.p = icmp eq i64 %.val.i4, 0
  br i1 %i.p, label %"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE.exit", label %bb.j

bb.j:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c97d73e757b972cE.exit.i"
  %i.q = mul nuw i64 %.val.i4, 752
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !30953, !inline_history !26
  br label %"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE.exit"

common.resume:                                    ; preds = %bb.b, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.m, %bb.i ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c97d73e757b972cE.exit.i", %bb.j
  ret void

bb.k:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN87_$LT$meilisearch_types..task_view..TaskView$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17h1ee120cac0881a3cE"(ptr dead_on_unwind noalias noundef writable sret([752 x i8]) align 8 captures(address) dereferenceable(752) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [752 x i8], align 8               ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [752 x i8], align 8               ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [752 x i8], align 8               ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [752 x i8], align 8               ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.0955 = alloca [24 x i8], align 8         ; 4 uses
  %.sroa.9965 = alloca [24 x i8], align 8         ; 4 uses
  %.sroa.0943 = alloca [24 x i8], align 8         ; 4 uses
  %.sroa.9953 = alloca [24 x i8], align 8         ; 4 uses
  %.sroa.0933 = alloca [24 x i8], align 8         ; 4 uses
  %.sroa.9 = alloca [24 x i8], align 8            ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [752 x i8], align 8               ; 9 uses
  %i.q = alloca [752 x i8], align 8               ; 9 uses
  %i.r = alloca [752 x i8], align 8               ; 4 uses
  %i.s = alloca [752 x i8], align 8               ; 5 uses
  %i.t = alloca [752 x i8], align 8               ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [72 x i8], align 8                ; 4 uses
  %i.y = alloca [72 x i8], align 8                ; 6 uses
  %i.z = alloca [752 x i8], align 8               ; 6 uses
  %i.aa = alloca [752 x i8], align 8              ; 4 uses
  %i.ab = alloca [408 x i8], align 8              ; 20 uses
  %i.ac = alloca [408 x i8], align 8              ; 10 uses
  %i.ad = alloca [408 x i8], align 8              ; 4 uses
  %i.ae = alloca [752 x i8], align 8              ; 5 uses
  %i.af = alloca [752 x i8], align 8              ; 4 uses
  %i.ag = alloca [72 x i8], align 8               ; 7 uses
  %i.ah = alloca [752 x i8], align 8              ; 7 uses
  %i.ai = alloca [752 x i8], align 8              ; 9 uses
  %i.aj = alloca [752 x i8], align 8              ; 5 uses
  %i.ak = alloca [752 x i8], align 8              ; 4 uses
  %i.al = alloca [752 x i8], align 8              ; 5 uses
  %i.am = alloca [752 x i8], align 8              ; 4 uses
  %i.an = alloca [72 x i8], align 8               ; 7 uses
  %i.ao = alloca [752 x i8], align 8              ; 7 uses
  %i.ap = alloca [752 x i8], align 8              ; 9 uses
  %i.aq = alloca [752 x i8], align 8              ; 5 uses
  %i.ar = alloca [752 x i8], align 8              ; 4 uses
  %i.as = alloca [752 x i8], align 8              ; 5 uses
  %i.at = alloca [752 x i8], align 8              ; 4 uses
  %i.au = alloca [72 x i8], align 8               ; 7 uses
  %i.av = alloca [752 x i8], align 8              ; 7 uses
  %i.aw = alloca [752 x i8], align 8              ; 9 uses
  %i.ax = alloca [752 x i8], align 8              ; 5 uses
  %i.ay = alloca [752 x i8], align 8              ; 4 uses
  %i.az = alloca [752 x i8], align 8              ; 5 uses
  %i.ba = alloca [752 x i8], align 8              ; 4 uses
  %i.bb = alloca [752 x i8], align 8              ; 4 uses
  %i.bc = alloca [72 x i8], align 8               ; 4 uses
  %i.bd = alloca [752 x i8], align 8              ; 9 uses
  %i.be = alloca [752 x i8], align 8              ; 9 uses
  %i.bf = alloca [752 x i8], align 8              ; 4 uses
  %i.bg = alloca [752 x i8], align 8              ; 4 uses
  %i.bh = alloca [752 x i8], align 8              ; 5 uses
  %i.bi = alloca [752 x i8], align 8              ; 4 uses
  %i.bj = alloca [24 x i8], align 8               ; 8 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [24 x i8], align 8               ; 2 uses
  %i.bm = alloca [72 x i8], align 8               ; 9 uses
  %i.bn = alloca [72 x i8], align 8               ; 6 uses
  %i.bo = alloca [752 x i8], align 8              ; 6 uses
  %i.bp = alloca [752 x i8], align 8              ; 4 uses
  %i.bq = alloca [408 x i8], align 8              ; 20 uses
  %i.br = alloca [408 x i8], align 8              ; 10 uses
  %i.bs = alloca [408 x i8], align 8              ; 4 uses
  %i.bt = alloca [752 x i8], align 8              ; 5 uses
  %i.bu = alloca [752 x i8], align 8              ; 4 uses
  %i.bv = alloca [752 x i8], align 8              ; 9 uses
  %i.bw = alloca [752 x i8], align 8              ; 9 uses
  %i.bx = alloca [752 x i8], align 8              ; 4 uses
  %i.by = alloca [752 x i8], align 8              ; 5 uses
  %i.bz = alloca [752 x i8], align 8              ; 4 uses
  %i.ca = alloca [72 x i8], align 8               ; 6 uses
  %i.cb = alloca [752 x i8], align 8              ; 9 uses
  %i.cc = alloca [752 x i8], align 8              ; 4 uses
  %i.cd = alloca [752 x i8], align 8              ; 9 uses
  %i.ce = alloca [752 x i8], align 8              ; 4 uses
  %i.cf = alloca [752 x i8], align 8              ; 6 uses
  %i.cg = alloca [752 x i8], align 8              ; 4 uses
  %i.ch = alloca [752 x i8], align 8              ; 5 uses
  %i.ci = alloca [752 x i8], align 8              ; 4 uses
  %i.cj = alloca [24 x i8], align 8               ; 8 uses
  %i.ck = alloca [16 x i8], align 8               ; 5 uses
  %i.cl = alloca [24 x i8], align 8               ; 2 uses
  %i.cm = alloca [72 x i8], align 8               ; 9 uses
end_hunk_1
