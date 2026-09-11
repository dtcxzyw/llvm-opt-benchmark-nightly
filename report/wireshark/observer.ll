Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/observer?download=true
inline.NumInlined: 12
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@observer_open:bb.a
  %i.am = zext i16 %i.ai to i32                   ; 3 uses
  %i.an = add nsw i32 %i.am, -4                   ; 3 uses
  %i.ao = add i32 %.099134, %i.am                 ; 3 uses
  %i.ap = icmp ugt i32 %i.ao, %i.t
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 -13, ptr %1, align 4
  %i.aq = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.1)
  store ptr %i.aq, ptr %2, align 8
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %cond1 = icmp eq i16 %i.ah, 4
  br i1 %cond1, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %.not113 = icmp eq i32 %i.an, 4
  br i1 %.not113, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 -13, ptr %1, align 4
  %i.ar = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef %i.am, i64 noundef 8)
  store ptr %i.ar, ptr %2, align 8
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.as = load ptr, ptr %0, align 8
  %i.at = call zeroext i1 @wtap_read_bytes(ptr noundef %i.as, ptr noundef %i.x, i32 noundef 4, ptr noundef %1, ptr noundef %2)
  br i1 %i.at, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.au = add i32 %.099134, 8
  br label %bb.u

bb.s:                                             ; preds = %bb.n
  %.not112 = icmp eq i32 %i.an, 0
  br i1 %.not112, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = load ptr, ptr %0, align 8
  %i.aw = call zeroext i1 @wtap_read_bytes(ptr noundef %i.av, ptr noundef null, i32 noundef %i.an, ptr noundef %1, ptr noundef %2)
  br i1 %i.aw, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.2101 = phi i32 [ %i.ao, %bb.s ], [ %i.au, %bb.r ], [ %i.ao, %bb.t ] ; 2 uses
  %i.ax = add nuw nsw i32 %.098135, 1             ; 2 uses
  %i.ay = load i8, ptr %i.z, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = icmp samesign ult i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.g, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.u, %bb.f
  %.099.lcssa = phi i32 [ 36, %bb.f ], [ %.2101, %bb.u ] ; 2 uses
  %.not109 = icmp eq i32 %i.t, %.099.lcssa
  br i1 %.not109, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.bb = sub i32 %i.t, %.099.lcssa
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = call zeroext i1 @wtap_read_bytes(ptr noundef %i.bc, ptr noundef null, i32 noundef %i.bb, ptr noundef %1, ptr noundef %2)
  br i1 %i.bd, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v, %._crit_edge
  %i.be = load ptr, ptr %0, align 8
  %i.bf = call zeroext i1 @wtap_read_bytes_or_eof(ptr noundef %i.be, ptr noundef nonnull %5, i32 noundef 48, ptr noundef %1, ptr noundef %2)
  br i1 %i.bf, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = load i32, ptr %1, align 4
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  store i32 -13, ptr %1, align 4
  %i.bi = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.4)
  store ptr %i.bi, ptr %2, align 8
  br label %.critedge

bb.z:                                             ; preds = %bb.w
  %i.bj = load i32, ptr %5, align 8               ; 2 uses
  %.not110 = icmp eq i32 %i.bj, -2004318072
  br i1 %.not110, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 -4, ptr %1, align 4
  %i.bk = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef %i.bj)
  store ptr %i.bk, ptr %2, align 8
  br label %.critedge

bb.ab:                                            ; preds = %bb.z
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bm = load i8, ptr %i.bl, align 8             ; 5 uses
  %i.bn = icmp ult i8 %i.bm, 10
  %switch.maskindex = zext nneg i8 %i.bm to i16
  %switch.shifted = lshr i16 771, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.bn, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %observer_to_wtap_encap.exit

observer_to_wtap_encap.exit:                      ; preds = %bb.ab
  store i32 -4, ptr %1, align 4
  %i.bo = zext i8 %i.bm to i32
  %i.bp = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef %i.bo)
  store ptr %i.bp, ptr %2, align 8
  br label %.critedge

switch.lookup:                                    ; preds = %bb.ab
  %i.bq = zext nneg i8 %i.bm to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.observer_open, i64 %i.bq
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.br = zext nneg i8 %i.bm to i64
  %switch.gep162 = getelementptr inbounds nuw i8, ptr @switch.table.observer_open.2, i64 %i.br
  %switch.load163 = load i8, ptr %switch.gep162, align 1
  %i.bs = getelementptr i8, ptr %0, i64 168
  store i32 %switch.ext, ptr %i.bs, align 8
  store i64 0, ptr %i.w, align 8
  %i.bt = getelementptr i8, ptr %i.w, i64 8
  store i8 %switch.load163, ptr %i.bt, align 8
  %i.bu = getelementptr i8, ptr %0, i64 136
  store ptr @observer_read, ptr %i.bu, align 8
  %i.bv = getelementptr i8, ptr %0, i64 144
  store ptr @observer_seek_read, ptr %i.bv, align 8
  %i.bw = getelementptr i8, ptr %0, i64 152
  %i.bx = getelementptr i8, ptr %0, i64 24
  store i32 0, ptr %i.bx, align 8
  %i.by = getelementptr i8, ptr %0, i64 172
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  store i32 9, ptr %i.by, align 4
  %i.bz = load i32, ptr @observer_file_type_subtype, align 4
  %i.ca = getelementptr i8, ptr %0, i64 20
  store i32 %i.bz, ptr %i.ca, align 4
  %i.cb = load ptr, ptr %0, align 8
  %i.cc = zext nneg i32 %i.t to i64
  %i.cd = call i64 @file_seek(ptr noundef %i.cb, i64 noundef %i.cc, i32 noundef 0, ptr noundef %1)
  %i.ce = icmp eq i64 %i.cd, -1
  br i1 %i.ce, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %switch.lookup
  %i.cf = call fastcc ptr @init_gmt_to_localtime_offset() ; 2 uses
  %.not111 = icmp eq ptr %i.cf, null
  br i1 %.not111, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 -21, ptr %1, align 4
  %i.cg = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.cf)
  store ptr %i.cg, ptr %2, align 8
  br label %.critedge

bb.ae:                                            ; preds = %bb.ac
  call void @wtap_add_generated_idb(ptr noundef %0)
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %bb.i, %bb.q, %bb.h, %bb.k, %bb.m, %bb.p, %switch.lookup, %bb.x, %bb.y, %bb.v, %bb.c, %bb.b, %bb.ae, %bb.ad, %observer_to_wtap_encap.exit, %bb.aa, %bb.e
  %.2 = phi i32 [ %., %bb.b ], [ -1, %bb.e ], [ -1, %switch.lookup ], [ -1, %bb.aa ], [ -1, %observer_to_wtap_encap.exit ], [ -1, %bb.x ], [ -1, %bb.ad ], [ 1, %bb.ae ], [ -1, %bb.v ], [ 0, %bb.c ], [ -1, %bb.y ], [ -1, %bb.m ], [ -1, %bb.k ], [ -1, %bb.h ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %bb.i ], [ -1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_read_bytes(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_read_bytes_or_eof(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @observer_read(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #0 {
bb.a:
  %5 = alloca %struct.packet_entry_header, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call i64 @file_tell(ptr noundef %i.a)
  store i64 %i.b, ptr %4, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %i.e = call fastcc i32 @read_packet_header(ptr noundef %0, ptr noundef %i.c, ptr noundef %i.d, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %skip_to_next_packet.exit30, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 19
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 14 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %skip_to_next_packet.exit
  %i.i = phi i32 [ %i.e, %.lr.ph ], [ %i.v, %skip_to_next_packet.exit ] ; 8 uses
  %i.j = load i8, ptr %i.g, align 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i16, ptr %i.h, align 2
  %i.m = zext i16 %i.l to i32                     ; 3 uses
  %i.n = icmp samesign ugt i32 %i.i, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 -13, ptr %2, align 4
  %i.o = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef range(i32 0, 65536) %i.m, i32 noundef range(i32 1, -1) %i.i)
  store ptr %i.o, ptr %3, align 8
  br label %skip_to_next_packet.exit30

bb.e:                                             ; preds = %bb.c
  %i.p = sub nuw nsw i32 %i.m, %i.i
  %i.q = load ptr, ptr %0, align 8
  %i.r = call zeroext i1 @wtap_read_bytes(ptr noundef %i.q, ptr noundef null, i32 noundef %i.p, ptr noundef %2, ptr noundef %3)
  br i1 %i.r, label %skip_to_next_packet.exit, label %skip_to_next_packet.exit30

skip_to_next_packet.exit:                         ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8
  %i.t = call i64 @file_tell(ptr noundef %i.s)
  store i64 %i.t, ptr %4, align 8
  %i.u = load ptr, ptr %0, align 8
  %i.v = call fastcc i32 @read_packet_header(ptr noundef %0, ptr noundef %i.u, ptr noundef %i.d, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %skip_to_next_packet.exit30, label %bb.b

bb.f:                                             ; preds = %bb.b
  %i.x = call fastcc zeroext i1 @process_packet_header(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br i1 %i.x, label %bb.g, label %skip_to_next_packet.exit30

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.aa = load i16, ptr %i.z, align 4
  %i.ab = zext i16 %i.aa to i32                   ; 4 uses
  %i.ac = icmp samesign ugt i32 %i.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 -13, ptr %2, align 4
  %i.ad = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef range(i32 0, 65536) %i.ab, i32 noundef range(i32 1, -2147483648) %i.i)
  store ptr %i.ad, ptr %3, align 8
  br label %skip_to_next_packet.exit30

bb.i:                                             ; preds = %bb.g
  %i.ae = sub nuw nsw i32 %i.ab, %i.i             ; 2 uses
  %.not.i = icmp eq i32 %i.i, %i.ab
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = call zeroext i1 @wtap_read_bytes(ptr noundef %i.y, ptr noundef null, i32 noundef %i.ae, ptr noundef %2, ptr noundef %3)
  br i1 %i.af, label %bb.k, label %skip_to_next_packet.exit30

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr i8, ptr %1, i64 264
  %i.ah = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = call zeroext i1 @wtap_read_bytes_buffer(ptr noundef %i.y, ptr noundef %i.ag, i32 noundef %i.ai, ptr noundef %2, ptr noundef %3)
  br i1 %i.aj, label %read_packet_data.exit, label %read_packet_data.exit.thread33

read_packet_data.exit:                            ; preds = %bb.k
  %i.ak = load i32, ptr %i.ah, align 8
  %i.al = add i32 %i.ak, %i.ae                    ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %skip_to_next_packet.exit30, label %read_packet_data.exit.thread33

read_packet_data.exit.thread33:                   ; preds = %bb.k, %read_packet_data.exit
  %.023.i35 = phi i32 [ %i.al, %read_packet_data.exit ], [ 0, %bb.k ]
  %i.an = load i16, ptr %i.h, align 2
  %i.ao = zext i16 %i.an to i32                   ; 3 uses
  %i.ap = add nuw i32 %.023.i35, %i.i             ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, %i.ao
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %read_packet_data.exit.thread33
  store i32 -13, ptr %2, align 4
  %i.ar = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef range(i32 0, 65536) %i.ao, i32 noundef range(i32 1, -1) %i.ap)
  store ptr %i.ar, ptr %3, align 8
  br label %skip_to_next_packet.exit30

bb.m:                                             ; preds = %read_packet_data.exit.thread33
  %i.as = sub i32 %i.ao, %i.ap                    ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %0, align 8
  %i.av = call zeroext i1 @wtap_read_bytes(ptr noundef %i.au, ptr noundef null, i32 noundef %i.as, ptr noundef %2, ptr noundef %3)
  br i1 %i.av, label %bb.o, label %skip_to_next_packet.exit30

bb.o:                                             ; preds = %bb.n, %bb.m
  br label %skip_to_next_packet.exit30

skip_to_next_packet.exit30:                       ; preds = %skip_to_next_packet.exit, %bb.e, %bb.a, %bb.j, %bb.h, %bb.d, %bb.o, %bb.n, %bb.l, %read_packet_data.exit, %bb.f
  %.0 = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ false, %read_packet_data.exit ], [ false, %bb.j ], [ false, %bb.n ], [ false, %bb.l ], [ true, %bb.o ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.e ], [ false, %skip_to_next_packet.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @observer_seek_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %5 = alloca %struct.packet_entry_header, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i64 @file_seek(ptr noundef %i.b, i64 noundef %1, i32 noundef 0, ptr noundef %3)
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %read_packet_data.exit.thread23, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = call fastcc i32 @read_packet_header(ptr noundef %0, ptr noundef %i.f, ptr noundef %i.e, ptr noundef nonnull %5, ptr noundef %3, ptr noundef %4) ; 5 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %read_packet_data.exit.thread23, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call fastcc zeroext i1 @process_packet_header(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br i1 %i.i, label %bb.d, label %read_packet_data.exit.thread23

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.l = load i16, ptr %i.k, align 4
  %i.m = zext i16 %i.l to i32                     ; 4 uses
  %i.n = icmp samesign ugt i32 %i.g, %i.m
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 -13, ptr %3, align 4
  %i.o = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef range(i32 0, 65536) %i.m, i32 noundef range(i32 1, -2147483648) %i.g)
  store ptr %i.o, ptr %4, align 8
  br label %read_packet_data.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.p = sub nuw nsw i32 %i.m, %i.g               ; 2 uses
  %.not.i = icmp eq i32 %i.g, %i.m
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = call zeroext i1 @wtap_read_bytes(ptr noundef %i.j, ptr noundef null, i32 noundef %i.p, ptr noundef %3, ptr noundef %4)
  br i1 %i.q, label %bb.h, label %read_packet_data.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr i8, ptr %2, i64 264
  %i.s = getelementptr i8, ptr %2, i64 48         ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = call zeroext i1 @wtap_read_bytes_buffer(ptr noundef %i.j, ptr noundef %i.r, i32 noundef %i.t, ptr noundef %3, ptr noundef %4)
  br i1 %i.u, label %read_packet_data.exit, label %read_packet_data.exit.thread23

read_packet_data.exit:                            ; preds = %bb.h
  %i.v = load i32, ptr %i.s, align 8
  %i.w = add i32 %i.v, %i.p
  %.fr = freeze i32 %i.w
  %i.x = icmp slt i32 %.fr, 0
  br i1 %i.x, label %read_packet_data.exit.thread, label %read_packet_data.exit.thread23

read_packet_data.exit.thread:                     ; preds = %bb.g, %bb.e, %read_packet_data.exit
  br label %read_packet_data.exit.thread23

read_packet_data.exit.thread23:                   ; preds = %bb.h, %read_packet_data.exit.thread, %read_packet_data.exit, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ], [ false, %read_packet_data.exit.thread ], [ true, %read_packet_data.exit ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare i64 @file_seek(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef ptr @init_gmt_to_localtime_offset() unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %struct.tm, align 8                 ; 4 uses
  %1 = alloca %struct.tm, align 8                 ; 5 uses
  %i.b = load i64, ptr @gmt_to_localtime_offset, align 8
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 86400, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.d = call ptr @gmtime(ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  %i.f = call ptr @localtime(ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.h, align 8
  %i.i = call i64 @mktime(ptr noundef nonnull %0) #12
  %i.j = call i64 @mktime(ptr noundef nonnull %1) #12
  %i.k = sub i64 %i.i, %i.j
  store i64 %i.k, ptr @gmt_to_localtime_offset, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b, %bb.d
  %.1.ph = phi ptr [ null, %bb.d ], [ @.str.12, %bb.c ], [ @.str.11, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.1.ph, %.sink.split ]
  ret ptr %.1
}

; Function Attrs: null_pointer_is_valid
end_hunk_0
