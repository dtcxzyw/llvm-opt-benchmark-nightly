Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/describe?download=true
inline.NumInlined: 47
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@listTables:bb.a
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = load i8, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 434), align 2, !range !6
  %i.at = trunc nuw i8 %i.as to i1
  %or.cond19 = select i1 %i.ar, i1 true, i1 %i.at
  br i1 %or.cond19, label %bb.bs, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not107 = icmp eq i32 %i.ab, 1                 ; 2 uses
  br i1 %i.am, label %bb.ak, label %bb.bb

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not107, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.293, ptr noundef nonnull %1) #7
  br label %bb.bt

bb.am:                                            ; preds = %bb.ak
  br i1 %.0102, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.294, ptr noundef nonnull %1) #7
  br label %bb.bt

bb.ao:                                            ; preds = %bb.am
  br i1 %i.e, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.295, ptr noundef nonnull %1) #7
  br label %bb.bt

bb.aq:                                            ; preds = %bb.ao
  br i1 %.0101, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.296, ptr noundef nonnull %1) #7
  br label %bb.bt

bb.as:                                            ; preds = %bb.aq
  br i1 %.0100, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.297, ptr noundef nonnull %1) #7
  br label %bb.bt

bb.au:                                            ; preds = %bb.as
  br i1 %.099, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.298, ptr noundef nonnull %1) #7
  br label %bb.bt

bb.aw:                                            ; preds = %bb.au
  br i1 %.098, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.299, ptr noundef nonnull %1) #7
  br label %bb.bt

bb.ay:                                            ; preds = %bb.aw
  br i1 %.097, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.300, ptr noundef nonnull %1) #7
  br label %bb.bt

bb.ba:                                            ; preds = %bb.ay
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.301, ptr noundef nonnull %1) #7
  br label %bb.bt

bb.bb:                                            ; preds = %bb.aj
  br i1 %.not107, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.216) #7
  br label %bb.bt

bb.bd:                                            ; preds = %bb.bb
  br i1 %.0102, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.302) #7
  br label %bb.bt

bb.bf:                                            ; preds = %bb.bd
  br i1 %i.e, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.303) #7
  br label %bb.bt

bb.bh:                                            ; preds = %bb.bf
  br i1 %.0101, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.304) #7
  br label %bb.bt

bb.bj:                                            ; preds = %bb.bh
  br i1 %.0100, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.305) #7
  br label %bb.bt

bb.bl:                                            ; preds = %bb.bj
  br i1 %.099, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.306) #7
  br label %bb.bt

bb.bn:                                            ; preds = %bb.bl
  br i1 %.098, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.307) #7
  br label %bb.bt

bb.bp:                                            ; preds = %bb.bn
  br i1 %.097, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.308) #7
  br label %bb.bt

bb.br:                                            ; preds = %bb.bp
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.309) #7
  br label %bb.bt

bb.bs:                                            ; preds = %bb.ai
  %.not108 = icmp ne i32 %i.ab, 1                 ; 2 uses
  %brmerge = select i1 %.not108, i1 true, i1 %.0102
  %brmerge111 = or i1 %i.e, %brmerge              ; 2 uses
  %.str.310.mux = select i1 %.0102, ptr @.str.311, ptr @.str.312
  %.str.310.mux.mux = select i1 %.not108, ptr @.str.310, ptr %.str.310.mux
  %brmerge112 = or i1 %.0101, %brmerge111
  %brmerge113 = or i1 %.0100, %brmerge112
  %.str.310.mux.mux.mux = select i1 %.0101, ptr @.str.313, ptr @.str.314
  %.str.310.mux.mux.mux.mux = select i1 %brmerge111, ptr %.str.310.mux.mux, ptr %.str.310.mux.mux.mux
  %i.au = select i1 %.097, ptr @.str.317, ptr @.str.318
  %i.av = select i1 %.098, ptr @.str.316, ptr %i.au
  %.str.310.mux.mux.mux.mux.mux = select i1 %.099, ptr @.str.315, ptr %i.av
  %i.aw = select i1 %brmerge113, ptr %.str.310.mux.mux.mux.mux, ptr %.str.310.mux.mux.mux.mux.mux
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 144
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i8 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 168
  store ptr %i.a, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i32 9, ptr %i.ba, align 8
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 16), align 8
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 408), align 8
  call void @printQuery(ptr noundef nonnull %i.ap, ptr noundef nonnull %5, ptr noundef %i.bb, i1 noundef zeroext false, ptr noundef %i.bc) #7
  br label %bb.bt

bb.bt:                                            ; preds = %bb.an, %bb.ar, %bb.av, %bb.az, %bb.ba, %bb.ax, %bb.at, %bb.ap, %bb.al, %bb.be, %bb.bi, %bb.bm, %bb.bq, %bb.br, %bb.bo, %bb.bk, %bb.bg, %bb.bc, %bb.bs
  call void @PQclear(ptr noundef nonnull %i.ap) #7
  br label %bb.bu

bb.bu:                                            ; preds = %bb.ah, %bb.bt, %bb.ag
  %.0103 = phi i1 [ true, %bb.bt ], [ false, %bb.ag ], [ false, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i1 %.0103
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @listPartitionedTables(ptr nofree noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.PQExpBufferData, align 8    ; 30 uses
  %4 = alloca %struct.PQExpBufferData, align 8    ; 6 uses
  %5 = alloca %struct.printQueryOpt, align 8      ; 8 uses
  %i.a = alloca [10 x i8], align 1                ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 3 uses
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 116) #8
  %i.d = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 105) #8
  %i.e = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 110) #8
  %i.f = icmp ne ptr %i.e, null                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef nonnull align 8 dereferenceable(184) getelementptr inbounds nuw (i8, ptr @pset, i64 48), i64 184, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.a, i8 0, i64 10, i1 false)
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 364), align 4 ; 2 uses
  %i.h = icmp slt i32 %i.g, 100000
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.i = call ptr @formatPGVersionNumber(i32 noundef %i.g, i1 noundef zeroext false, ptr noundef nonnull %i.b, i64 noundef 32) #7
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.319, ptr noundef %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ne ptr %i.d, null                   ; 2 uses
  %i.k = icmp ne ptr %i.c, null                   ; 2 uses
  %or.cond = select i1 %i.k, i1 true, i1 %i.j
  %not.or.cond = xor i1 %or.cond, true            ; 2 uses
  %spec.select = or i1 %i.k, %not.or.cond         ; 3 uses
  %spec.select51.a = select i1 %not.or.cond, i1 true, i1 %i.j ; 5 uses
  %.not = xor i1 %spec.select51.a, true
  %or.cond3 = or i1 %spec.select, %.not           ; 2 uses
  %.not4 = xor i1 %spec.select, true
  %or.cond6 = or i1 %spec.select51.a, %.not4      ; 2 uses
  %.str.322..str.321 = select i1 %or.cond6, ptr @.str.322, ptr @.str.321
  %.042 = select i1 %or.cond3, ptr %.str.322..str.321, ptr @.str.320
  %.0 = and i1 %or.cond3, %or.cond6               ; 2 uses
  call void @initPQExpBuffer(ptr noundef nonnull %3) #7
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.323) #7
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str.324, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.30) #7
  br i1 %.0, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str.325, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.21) #7
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 1, ptr %i.l, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = icmp ne ptr %1, null                     ; 2 uses
  %or.cond8 = or i1 %i.m, %i.f                    ; 4 uses
  br i1 %or.cond8, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str.326, ptr noundef nonnull @.str.327) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  br i1 %spec.select51.a, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str.328, ptr noundef nonnull @.str.20) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %2, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.274) #7
  br i1 %i.f, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str.329, ptr noundef nonnull @.str.330) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.332) #7
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str.333, ptr noundef nonnull @.str.8) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull @.str.276) #7
  br i1 %spec.select51.a, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull @.str.278) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %or.cond8, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull @.str.334) #7
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  br i1 %2, label %.sink.split, label %bb.r

.sink.split:                                      ; preds = %bb.q
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull @.str.335) #7
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 364), align 4
  %i.o = icmp slt i32 %i.n, 120000
  %.str.336..str.337 = select i1 %i.o, ptr @.str.336, ptr @.str.337
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull %.str.336..str.337) #7
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.q
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull @.str.279) #7
  br i1 %spec.select, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull @.str.338) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %spec.select51.a, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull @.str.339) #7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull @.str.289) #7
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull @.str.290) #7
  %spec.select52 = select i1 %or.cond8, ptr @.str.239, ptr @.str.340
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull %spec.select52) #7
  br i1 %i.m, label %.split, label %bb.w

.split:                                           ; preds = %bb.v
  %i.p = call fastcc zeroext i1 @validateSQLNamePattern(ptr noundef %3, ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.175, ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef null, i32 noundef 3)
  br i1 %i.p, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull @.str.291) #7
  %i.q = call fastcc zeroext i1 @validateSQLNamePattern(ptr noundef %3, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.175, ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef null, i32 noundef 3)
  br i1 %i.q, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.split, %bb.w
  call void @termPQExpBuffer(ptr noundef nonnull %3) #7
  br label %bb.aa

bb.y:                                             ; preds = %.split, %bb.w
  %i.r = select i1 %.0, ptr @.str.342, ptr @.str.239
  %i.s = select i1 %or.cond8, ptr @.str.343, ptr @.str.239
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str.341, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s) #7
  %i.t = load ptr, ptr %3, align 8
  %i.u = call ptr @PSQLexec(ptr noundef %i.t) #7  ; 3 uses
  call void @termPQExpBuffer(ptr noundef nonnull %3) #7
  %.not50 = icmp eq ptr %i.u, null
  br i1 %.not50, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @initPQExpBuffer(ptr noundef nonnull %4) #7
  call void @appendPQExpBufferStr(ptr noundef nonnull %4, ptr noundef nonnull %.042) #7
  %i.v = load ptr, ptr %4, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 144
  store ptr %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i8 1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 168
  store ptr %i.a, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i32 10, ptr %i.z, align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 16), align 8
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 408), align 8
  call void @printQuery(ptr noundef nonnull %i.u, ptr noundef nonnull %5, ptr noundef %i.aa, i1 noundef zeroext false, ptr noundef %i.ab) #7
  call void @termPQExpBuffer(ptr noundef nonnull %4) #7
  call void @PQclear(ptr noundef nonnull %i.u) #7
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x, %bb.b
  %.045 = phi i1 [ true, %bb.b ], [ true, %bb.z ], [ false, %bb.x ], [ false, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i1 %.045
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @listLanguages(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.PQExpBufferData, align 8    ; 14 uses
  %4 = alloca %struct.printQueryOpt, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) getelementptr inbounds nuw (i8, ptr @pset, i64 48), i64 184, i1 false)
  call void @initPQExpBuffer(ptr noundef nonnull %3) #7
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.344) #7
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str.345, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.346) #7
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.348, ptr noundef nonnull @.str.349, ptr noundef nonnull @.str.350, ptr noundef nonnull @.str.351) #7
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str.1039, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.1040, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.177) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.8) #7
  %.not12 = icmp eq ptr %0, null
  br i1 %.not12, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = call fastcc zeroext i1 @validateSQLNamePattern(ptr noundef %3, ptr noundef nonnull %0, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @.str.354, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 2)
  br i1 %i.a, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @termPQExpBuffer(ptr noundef nonnull %3) #7
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  br i1 %2, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull @.str.355) #7
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.g, %bb.f
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull @.str.26) #7
  %i.b = load ptr, ptr %3, align 8
  %i.c = call ptr @PSQLexec(ptr noundef %i.b) #7  ; 3 uses
  call void @termPQExpBuffer(ptr noundef nonnull %3) #7
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 144
  store ptr @.str.356, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i8 1, ptr %i.e, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 16), align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 408), align 8
  call void @printQuery(ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr noundef %i.f, i1 noundef zeroext false, ptr noundef %i.g) #7
  call void @PQclear(ptr noundef nonnull %i.c) #7
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h, %bb.e
  %.0 = phi i1 [ true, %bb.h ], [ false, %bb.e ], [ false, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @listDomains(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.PQExpBufferData, align 8    ; 17 uses
  %4 = alloca %struct.printQueryOpt, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) getelementptr inbounds nuw (i8, ptr @pset, i64 48), i64 184, i1 false)
  call void @initPQExpBuffer(ptr noundef nonnull %3) #7
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.357) #7
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.359, ptr noundef nonnull @.str.360, ptr noundef nonnull @.str.361, ptr noundef nonnull @.str.362) #7
  br i1 %1, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull @.str.32) #7
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str.1039, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.1040, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.177) #7
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %3, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.8) #7
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull @.str.364) #7
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %.str.364.sink = phi ptr [ @.str.365, %bb.b ], [ @.str.364, %bb.a ]
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull %.str.364.sink) #7
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull @.str.366) #7
  %i.a = icmp ne ptr %0, null
  %or.cond = or i1 %i.a, %2
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull @.str.10) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %i.b = call fastcc zeroext i1 @validateSQLNamePattern(ptr noundef %3, ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.114, ptr noundef null, ptr noundef nonnull @.str.116, ptr noundef null, i32 noundef 3)
  br i1 %i.b, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @termPQExpBuffer(ptr noundef nonnull %3) #7
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @appendPQExpBufferStr(ptr noundef nonnull %3, ptr noundef nonnull @.str.117) #7
  %i.c = load ptr, ptr %3, align 8
  %i.d = call ptr @PSQLexec(ptr noundef %i.c) #7  ; 3 uses
  call void @termPQExpBuffer(ptr noundef nonnull %3) #7
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 144
  store ptr @.str.367, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i8 1, ptr %i.f, align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 16), align 8
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 408), align 8
  call void @printQuery(ptr noundef nonnull %i.d, ptr noundef nonnull %4, ptr noundef %i.g, i1 noundef zeroext false, ptr noundef %i.h) #7
  call void @PQclear(ptr noundef nonnull %i.d) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.0 = phi i1 [ true, %bb.g ], [ false, %bb.e ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @listConversions(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.PQExpBufferData, align 8    ; 15 uses
end_hunk_0
