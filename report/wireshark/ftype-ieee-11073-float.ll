Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/ftype-ieee-11073-float?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
begin_hunk_0_@float_ieee_11073_val_from_literal:bb.a
  %i.k = load i8, ptr %.1113, align 1             ; 2 uses
  %i.l = icmp eq i8 %i.k, 48
  %i.m = getelementptr i8, ptr %.1113, i64 1
  br i1 %i.l, label %bb.k, label %.preheader144, !llvm.loop !36

.preheader144:                                    ; preds = %bb.k, %bb.x
  %i.n = phi i8 [ %.pr, %bb.x ], [ %i.k, %bb.k ]  ; 2 uses
  %.2114 = phi ptr [ %i.au, %bb.x ], [ %.1113, %bb.k ] ; 13 uses
  %.0105 = phi i32 [ %.3108, %bb.x ], [ 0, %bb.k ] ; 15 uses
  %.0103 = phi i16 [ %spec.select138, %bb.x ], [ 0, %bb.k ] ; 14 uses
  %.0 = phi i8 [ %.1, %bb.x ], [ 0, %bb.k ]       ; 12 uses
  switch i8 %i.n, label %.loopexit145 [
    i8 0, label %bb.y
    i8 48, label %bb.l
    i8 49, label %bb.n
    i8 50, label %bb.o
    i8 51, label %bb.p
    i8 52, label %bb.q
    i8 53, label %bb.r
    i8 54, label %bb.s
    i8 55, label %bb.t
    i8 56, label %bb.u
    i8 57, label %bb.v
    i8 46, label %bb.w
  ]

bb.l:                                             ; preds = %.preheader144
  %i.o = mul i32 %.0105, 10                       ; 2 uses
  %i.p = icmp ugt i32 %i.o, %.0111
  br i1 %i.p, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.q = add i16 %.0103, 1                        ; 2 uses
  %i.r = icmp slt i16 %i.q, 128
  br i1 %i.r, label %.loopexit145, label %.loopexit

bb.n:                                             ; preds = %.preheader144
  %i.s = mul i32 %.0105, 10
  %i.t = or disjoint i32 %i.s, 1
  br label %.loopexit

bb.o:                                             ; preds = %.preheader144
  %i.u = mul i32 %.0105, 10
  %i.v = add i32 %i.u, 2
  br label %.loopexit

bb.p:                                             ; preds = %.preheader144
  %i.w = mul i32 %.0105, 10
  %i.x = add i32 %i.w, 3
  br label %.loopexit

bb.q:                                             ; preds = %.preheader144
  %i.y = mul i32 %.0105, 10
  %i.z = add i32 %i.y, 4
  br label %.loopexit

bb.r:                                             ; preds = %.preheader144
  %i.aa = mul i32 %.0105, 10
  %i.ab = add i32 %i.aa, 5
  br label %.loopexit

bb.s:                                             ; preds = %.preheader144
  %i.ac = mul i32 %.0105, 10
  %i.ad = add i32 %i.ac, 6
  br label %.loopexit

bb.t:                                             ; preds = %.preheader144
  %i.ae = mul i32 %.0105, 10
  %i.af = add i32 %i.ae, 7
  br label %.loopexit

bb.u:                                             ; preds = %.preheader144
  %i.ag = mul i32 %.0105, 10
  %i.ah = add i32 %i.ag, 8
  br label %.loopexit

bb.v:                                             ; preds = %.preheader144
  %i.ai = mul i32 %.0105, 10
  %i.aj = add i32 %i.ai, 9
  br label %.loopexit

bb.w:                                             ; preds = %.preheader144
  %i.ak = trunc nuw i8 %.0 to i1
  br i1 %i.ak, label %.loopexit145, label %.preheader

.preheader:                                       ; preds = %bb.w
  %.3115148 = getelementptr i8, ptr %.2114, i64 1 ; 2 uses
  %i.al = load i8, ptr %.3115148, align 1
  %i.am = icmp eq i8 %i.al, 48
  br i1 %i.am, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.3115151 = phi ptr [ %.3115, %.lr.ph ], [ %.3115148, %.preheader ] ; 2 uses
  %.1104150 = phi i16 [ %.2, %.lr.ph ], [ %.0103, %.preheader ] ; 2 uses
  %.1106149 = phi i32 [ %.2107, %.lr.ph ], [ %.0105, %.preheader ] ; 2 uses
  %i.an = mul i32 %.1106149, 10                   ; 2 uses
  %.not130 = icmp ule i32 %i.an, %.0111           ; 2 uses
  %i.ao = icmp sgt i16 %.1104150, -135
  %.2107 = select i1 %.not130, i32 %i.an, i32 %.1106149 ; 2 uses
  %narrow = select i1 %.not130, i1 %i.ao, i1 false
  %spec.select = sext i1 %narrow to i16
  %.2 = add i16 %.1104150, %spec.select           ; 2 uses
  %.3115 = getelementptr i8, ptr %.3115151, i64 1 ; 2 uses
  %i.ap = load i8, ptr %.3115, align 1
  %i.aq = icmp eq i8 %i.ap, 48
  br i1 %i.aq, label %.lr.ph, label %.loopexit, !llvm.loop !37

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m
  %.4116 = phi ptr [ %.2114, %bb.m ], [ %.2114, %bb.l ], [ %.2114, %bb.n ], [ %.2114, %bb.o ], [ %.2114, %bb.p ], [ %.2114, %bb.q ], [ %.2114, %bb.r ], [ %.2114, %bb.s ], [ %.2114, %bb.t ], [ %.2114, %bb.u ], [ %.2114, %bb.v ], [ %.2114, %.preheader ], [ %.3115151, %.lr.ph ]
  %.3108 = phi i32 [ %.0105, %bb.m ], [ %i.o, %bb.l ], [ %i.t, %bb.n ], [ %i.v, %bb.o ], [ %i.x, %bb.p ], [ %i.z, %bb.q ], [ %i.ab, %bb.r ], [ %i.ad, %bb.s ], [ %i.af, %bb.t ], [ %i.ah, %bb.u ], [ %i.aj, %bb.v ], [ %.0105, %.preheader ], [ %.2107, %.lr.ph ] ; 2 uses
  %.3 = phi i16 [ %i.q, %bb.m ], [ %.0103, %bb.l ], [ %.0103, %bb.n ], [ %.0103, %bb.o ], [ %.0103, %bb.p ], [ %.0103, %bb.q ], [ %.0103, %bb.r ], [ %.0103, %bb.s ], [ %.0103, %bb.t ], [ %.0103, %bb.u ], [ %.0103, %bb.v ], [ %.0103, %.preheader ], [ %.2, %.lr.ph ]
  %.1 = phi i8 [ %.0, %bb.m ], [ %.0, %bb.l ], [ %.0, %bb.n ], [ %.0, %bb.o ], [ %.0, %bb.p ], [ %.0, %bb.q ], [ %.0, %bb.r ], [ %.0, %bb.s ], [ %.0, %bb.t ], [ %.0, %bb.u ], [ %.0, %bb.v ], [ 1, %.preheader ], [ 1, %.lr.ph ] ; 2 uses
  %i.ar = icmp ugt i32 %.3108, %.0111
  br i1 %i.ar, label %.loopexit145, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %.not = icmp eq i8 %i.n, 46
  %i.as = select i1 %.not, i8 0, i8 %.1
  %i.at = zext nneg i8 %i.as to i16
  %spec.select138 = sub i16 %.3, %i.at
  %i.au = getelementptr i8, ptr %.4116, i64 1     ; 2 uses
  %.pr = load i8, ptr %i.au, align 1
  br label %.preheader144, !llvm.loop !38

bb.y:                                             ; preds = %.preheader144
  %i.av = sub i32 0, %.0105
  %i.aw = and i32 %i.av, 16777215
  %.4109 = select i1 %.not128, i32 %i.aw, i32 %.0105 ; 2 uses
  %i.ax = icmp eq i32 %.4109, 0
  br i1 %i.ax, label %.critedge, label %.lr.ph157.preheader

.lr.ph157.preheader:                              ; preds = %bb.y
  %i.ay = sext i16 %.0103 to i32
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %bb.z
  %.6156 = phi i32 [ %i.bd, %bb.z ], [ %i.ay, %.lr.ph157.preheader ] ; 3 uses
  %.5110155 = phi i32 [ %i.ba, %bb.z ], [ %.4109, %.lr.ph157.preheader ] ; 4 uses
  %i.az = urem i32 %.5110155, 10
  %i.ba = udiv i32 %.5110155, 10                  ; 2 uses
  %i.bb = icmp eq i32 %i.az, 0
  %i.bc = icmp slt i32 %.6156, 127
  %or.cond10 = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond10, label %bb.z, label %.critedge

bb.z:                                             ; preds = %.lr.ph157
  %i.bd = add nsw i32 %.6156, 1                   ; 2 uses
  %.not129 = icmp ult i32 %.5110155, 10
  br i1 %.not129, label %.critedge, label %.lr.ph157, !llvm.loop !39

.critedge:                                        ; preds = %bb.z, %.lr.ph157, %bb.y
  %.5110.lcssa = phi i32 [ 0, %bb.y ], [ %.5110155, %.lr.ph157 ], [ %i.ba, %bb.z ]
  %.6.lcssa = phi i32 [ 0, %bb.y ], [ %.6156, %.lr.ph157 ], [ %i.bd, %bb.z ] ; 2 uses
  %i.be = icmp slt i32 %.6.lcssa, -128
  br i1 %i.be, label %.loopexit145, label %bb.aa

bb.aa:                                            ; preds = %.critedge
  %i.bf = shl i32 %.6.lcssa, 24
  %i.bg = or i32 %i.bf, %.5110.lcssa
  br label %.loopexit145.sink.split

.loopexit145.sink.split:                          ; preds = %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.aa
  %.sink = phi i32 [ %i.bg, %bb.aa ], [ 8388607, %bb.g ], [ 8388608, %bb.f ], [ 8388609, %bb.e ], [ 8388610, %bb.d ], [ 8388606, %bb.i ]
  %i.bh = getelementptr i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.bh, align 8
  br label %.loopexit145

.loopexit145:                                     ; preds = %.loopexit, %.preheader144, %bb.w, %bb.m, %.loopexit145.sink.split, %bb.c, %bb.c, %.critedge, %bb.i, %bb.g, %bb.e, %bb.d, %bb.a, %bb.a
  %.0117 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.c ], [ false, %.critedge ], [ false, %bb.d ], [ false, %bb.g ], [ false, %bb.e ], [ true, %.loopexit145.sink.split ], [ false, %bb.i ], [ false, %bb.m ], [ false, %bb.w ], [ false, %.preheader144 ], [ false, %.loopexit ]
  ret i1 %.0117
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @float_ieee_11073_val_from_uinteger64(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @float_ieee_11073_val_from_literal(ptr noundef %0, ptr noundef %1, i1 zeroext poison, ptr poison)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @float_ieee_11073_val_from_sinteger64(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @float_ieee_11073_val_from_literal(ptr noundef %0, ptr noundef %1, i1 zeroext poison, ptr poison)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @float_ieee_11073_val_from_double(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, double %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @float_ieee_11073_val_from_literal(ptr noundef %0, ptr noundef %1, i1 zeroext poison, ptr poison)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noalias ptr @float_ieee_11073_val_to_repr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 8 uses
  %i.b = alloca [136 x i8], align 16              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8              ; 7 uses
  %i.e = add i32 %i.d, -8388606
  %or.cond = icmp ult i32 %i.e, 5
  br i1 %or.cond, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr [8 x i8], ptr @switch.table.float_ieee_11073_val_to_repr, i64 %i.f
  %switch.gep = getelementptr i8, ptr %i.g, i64 -67108848
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.h = tail call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull %switch.load)
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %4 = lshr i32 %i.d, 24
  %5 = zext nneg i32 %4 to i64
  %i.i = and i32 %i.d, 8388607
  %i.j = and i32 %i.d, 8388608
  %.not = icmp eq i32 %i.j, 0                     ; 2 uses
  %i.k = or i32 %i.d, -8388608
  %i.l = sub nsw i32 0, %i.k
  %.069 = select i1 %.not, i32 %i.i, i32 %i.l     ; 2 uses
  %i.m = icmp eq i32 %.069, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull @.str.9)
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 45, ptr %i.b, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.068 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]      ; 7 uses
  %i.o = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 8, i32 noundef 2, i64 noundef 8, ptr noundef nonnull @.str.10, i32 noundef %.069) ; 3 uses
  %i.p = ashr i32 %i.d, 24                        ; 7 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = zext nneg i32 %.068 to i64               ; 2 uses
  %i.s = getelementptr i8, ptr %i.b, i64 %i.r
  %.mask80 = and i32 %i.o, 255                    ; 2 uses
  %i.t = zext nneg i32 %.mask80 to i64
  %i.u = sub nuw nsw i64 136, %i.r
  %i.v = call ptr @__memcpy_chk(ptr noundef %i.s, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.t, i64 noundef %i.u) #13, !alias.scope !55 ; 0 uses
  %i.w = add nuw nsw i32 %.mask80, %.068
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.x = icmp sgt i32 %i.p, 0
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = zext nneg i32 %.068 to i64               ; 2 uses
  %i.z = getelementptr i8, ptr %i.b, i64 %i.y
  %.mask79 = and i32 %i.o, 255                    ; 2 uses
  %i.aa = zext nneg i32 %.mask79 to i64
  %i.ab = sub nuw nsw i64 136, %i.y
  %i.ac = call ptr @__memcpy_chk(ptr noundef %i.z, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.aa, i64 noundef %i.ab) #13, !alias.scope !56 ; 0 uses
  %i.ad = add nuw nsw i32 %.mask79, %.068         ; 3 uses
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = getelementptr i8, ptr %i.b, i64 %i.ae
  %sext = shl nuw i64 %5, 56
  %6 = ashr exact i64 %sext, 56
  %i.ag = sub nsw i64 136, %i.ae
  %i.ah = icmp samesign ugt i32 %i.ad, 136
  %i.ai = select i1 %i.ah, i64 0, i64 %i.ag       ; 2 uses
  %i.aj = icmp ne i64 %i.ai, -1
  call void @llvm.assume(i1 %i.aj)
  %i.ak = call ptr @__memset_chk(ptr noundef %i.af, i32 noundef 48, i64 noundef range(i64 -128, 129) %6, i64 noundef %i.ai) #13 ; 0 uses
  %i.al = add nuw nsw i32 %i.ad, %i.p
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.am = sub nsw i32 0, %i.p                     ; 4 uses
  %i.an = and i32 %i.o, 255                       ; 7 uses
  %i.ao = icmp samesign ugt i32 %i.an, %i.am
  %i.ap = zext nneg i32 %.068 to i64              ; 2 uses
  %i.aq = getelementptr i8, ptr %i.b, i64 %i.ap   ; 3 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %i.an, %i.p                 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = sub nuw nsw i64 136, %i.ap
  %i.au = call ptr @__memcpy_chk(ptr noundef %i.aq, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.as, i64 noundef %i.at) #13, !alias.scope !57 ; 0 uses
  %i.av = add nuw nsw i32 %i.ar, %.068            ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %i.b, i64 %i.aw
  store i8 46, ptr %i.ax, align 1
  %i.ay = add nsw i32 %i.av, 1                    ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr i8, ptr %i.b, i64 %i.az
  %i.bb = zext nneg i32 %i.an to i64
  %i.bc = getelementptr i8, ptr %i.a, i64 %i.bb
  %i.bd = sext i32 %i.p to i64
  %i.be = getelementptr i8, ptr %i.bc, i64 %i.bd
  %i.bf = zext nneg i32 %i.am to i64
  %i.bg = sub nsw i64 136, %i.az
  %i.bh = icmp ugt i32 %i.ay, 136
  %i.bi = select i1 %i.bh, i64 0, i64 %i.bg       ; 2 uses
  %i.bj = icmp ne i64 %i.bi, -1
  call void @llvm.assume(i1 %i.bj)
  %i.bk = call ptr @__memcpy_chk(ptr noundef %i.ba, ptr noundef %i.be, i64 noundef range(i64 -127, 256) %i.bf, i64 noundef %i.bi) #13, !alias.scope !58 ; 0 uses
  %i.bl = sub nsw i32 %i.ay, %i.p
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  store i8 48, ptr %i.aq, align 1
  %i.bm = getelementptr i8, ptr %i.aq, i64 1
  store i8 46, ptr %i.bm, align 1
  %i.bn = or disjoint i32 %.068, 2                ; 3 uses
  %.not87 = icmp eq i32 %i.an, %i.am
  br i1 %.not87, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = sub nuw nsw i32 %i.am, %i.an            ; 2 uses
  %i.bp = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bq = getelementptr i8, ptr %i.b, i64 %i.bp
  %i.br = zext nneg i32 %i.bo to i64
  %i.bs = sub nuw nsw i64 136, %i.bp
  %i.bt = call ptr @__memset_chk(ptr noundef %i.bq, i32 noundef 48, i64 noundef range(i64 -128, 129) %i.br, i64 noundef %i.bs) #13 ; 0 uses
  %i.bu = add nuw nsw i32 %i.bo, %i.bn
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1 = phi i32 [ %i.bu, %bb.m ], [ %i.bn, %bb.l ] ; 2 uses
  %i.bv = zext nneg i32 %.1 to i64                ; 2 uses
  %i.bw = getelementptr i8, ptr %i.b, i64 %i.bv
  %i.bx = zext nneg i32 %i.an to i64
  %i.by = sub nuw nsw i64 136, %i.bv
  %i.bz = call ptr @__memcpy_chk(ptr noundef %i.bw, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.bx, i64 noundef %i.by) #13, !alias.scope !59 ; 0 uses
  %i.ca = add nuw nsw i32 %.1, %i.an
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n, %bb.k, %bb.g
  %.2 = phi i32 [ %i.w, %bb.g ], [ %i.al, %bb.i ], [ %i.bl, %bb.k ], [ %i.ca, %bb.n ]
  %i.cb = zext i32 %.2 to i64
  %i.cc = getelementptr i8, ptr %i.b, i64 %i.cb
  store i8 0, ptr %i.cc, align 1
  %i.cd = call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull %i.b)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.c
  %.070 = phi ptr [ %i.n, %bb.c ], [ %i.cd, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %switch.lookup
  %.171 = phi ptr [ %i.h, %switch.lookup ], [ %.070, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.171
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal noundef i32 @float_ieee_11073_val_to_double(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %switch.tableidx = add i32 %i.b, -8388606       ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 5
  br i1 %i.c, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 65535                      ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %i.b, 24
  %i.g = trunc nuw i32 %i.f to i8
  %i.h = uitofp nneg i32 %i.d to double
  %i.i = sitofp i8 %i.g to double
  %i.j = tail call double @pow(double noundef 1.000000e+01, double noundef %i.i) #13
  %i.k = fmul double %i.j, %i.h
  br label %bb.d

switch.lookup:                                    ; preds = %bb.a
  %i.l = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.float_ieee_11073_val_to_double, i64 %i.l
  %switch.load = load double, ptr %switch.gep, align 8
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.b, %bb.c
  %.sink = phi double [ %i.k, %bb.c ], [ %switch.load, %switch.lookup ], [ 0.000000e+00, %bb.b ]
  store double %.sink, ptr %1, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal void @float_ieee_11073_value_set(ptr nofree noundef writeonly captures(none) initializes((8, 12)) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal i32 @float_ieee_11073_value_get(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable
define internal noundef i32 @float_ieee_11073_cmp_order(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.a, align 8             ; 9 uses
  %i.b = add i32 %.val, -8388606
  %or.cond.i.i = icmp ult i32 %i.b, 5             ; 2 uses
  br i1 %or.cond.i.i, label %float_to_normal_form.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %.val, 8388608                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  %i.d = trunc i32 %.val to i16                   ; 3 uses
  %i.e = sub i16 0, %i.d
  %.017.i.i = select i1 %.not.i.i, i16 %i.d, i16 %i.e ; 3 uses
  %i.f = lshr i32 %.val, 24                       ; 2 uses
  %i.g = urem i16 %.017.i.i, 10
  %.not2224.i.i = icmp eq i16 %i.g, 0
  %i.h = icmp ne i16 %i.d, 0
  %i.i = and i1 %i.h, %.not2224.i.i
  br i1 %i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.126.i.i = phi i16 [ %i.j, %bb.c ], [ %.017.i.i, %bb.b ] ; 2 uses
  %.018.in25.i.i = phi i32 [ %i.m, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.j = udiv i16 %.126.i.i, 10                   ; 4 uses
  %sext.i.i = shl i32 %.018.in25.i.i, 24          ; 2 uses
  %i.k = icmp eq i32 %sext.i.i, 2130706432
  br i1 %i.k, label %._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = ashr exact i32 %sext.i.i, 24
  %i.m = add nsw i32 %i.l, 1                      ; 2 uses
  %i.n = urem i16 %i.j, 10
  %.not22.i.i = icmp eq i16 %i.n, 0
  %i.o = icmp ugt i16 %.126.i.i, 9
  %i.p = and i1 %i.o, %.not22.i.i
  br i1 %i.p, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !60

._crit_edge.i.i:                                  ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.018.in.lcssa.i.i = phi i32 [ %i.f, %bb.b ], [ %.018.in25.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ]
  %.2.i.i = phi i16 [ %.017.i.i, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ %i.j, %bb.c ]
  %sext23.i.i = shl i32 %.018.in.lcssa.i.i, 24
  %i.q = zext i16 %.2.i.i to i32
  %i.r = or disjoint i32 %sext23.i.i, %i.q
  %i.s = or disjoint i32 %i.r, %i.c
  br label %float_to_normal_form.exit.i

float_to_normal_form.exit.i:                      ; preds = %._crit_edge.i.i, %bb.a
  %.019.i.i = phi i32 [ %i.s, %._crit_edge.i.i ], [ %.val, %bb.a ] ; 5 uses
  %i.t = getelementptr i8, ptr %1, i64 8
  %i.u = load i32, ptr %i.t, align 8              ; 9 uses
  %i.v = add i32 %i.u, -8388606
  %or.cond.i62.i = icmp ult i32 %i.v, 5           ; 2 uses
  br i1 %or.cond.i62.i, label %float_to_normal_form.exit76.i, label %bb.d

bb.d:                                             ; preds = %float_to_normal_form.exit.i
  %i.w = and i32 %i.u, 8388608                    ; 2 uses
  %.not.i63.i = icmp eq i32 %i.w, 0
  %i.x = trunc i32 %i.u to i16                    ; 3 uses
  %i.y = sub i16 0, %i.x
  %.017.i64.i = select i1 %.not.i63.i, i16 %i.x, i16 %i.y ; 3 uses
  %i.z = lshr i32 %i.u, 24                        ; 2 uses
  %i.aa = urem i16 %.017.i64.i, 10
  %.not2224.i65.i = icmp eq i16 %i.aa, 0
end_hunk_0
